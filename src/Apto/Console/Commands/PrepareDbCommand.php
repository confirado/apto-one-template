<?php

namespace Apto\Console\Commands;

use Apto\Base\Domain\Core\Service\AptoParameterInterface;
use Doctrine\DBAL\Exception;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\Output;
use Symfony\Component\Console\Output\OutputInterface;
use Doctrine\DBAL\Connection;
use Symfony\Component\Dotenv\Dotenv;

class PrepareDbCommand extends Command
{
    protected static $defaultName = 'apto:test:prepare-db';

    /**
     * @var Connection
     */
    private Connection $connection;

    /**
     * @var AptoParameterInterface
     */
    private AptoParameterInterface $aptoParameter;

    /**
     * Original db name
     *
     * Example: apto-one-template
     *
     * @var string
     */
    private string $db;

    /**
     * Test db name
     *
     * example: apto-one-template-cypress
     *
     * @var string
     */
    private string $testDb;

    private const TEST_DB_SUFFIX = '-cypress';
    private const MYSQL_ROOT_USER = 'root';
    private const MYSQL_ROOT_PASSWORD = '123456';

    public function __construct(Connection $connection, AptoParameterInterface $aptoParameter)
    {
        parent::__construct();
        $this->connection = $connection;
        $this->aptoParameter = $aptoParameter;
    }

    protected function configure()
    {
        $this
            ->setName('apto:test:prepare-db')
            ->setDescription('Prepare the database for tests.');
    }

    /**
     * @throws Exception
     */
    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        $output->writeln('------------------------------------------------------------------------------------');
        $output->writeln('Preparing the database for tests.');
        $output->writeln('------------------------------------------------------------------------------------');

        $configFileName = __DIR__.'/../../../../.env.local';

        $this->db = $this->recoverDbName($configFileName);
        $this->testDb = $this->changeDbNameForTesting($configFileName);
        $this->prepareTestDb($output, $configFileName);

        $output->writeln('------------------------------------------------------------------------------------');
        $output->writeln('Db successfully prepared for testing :)');
        $output->writeln('------------------------------------------------------------------------------------');

        return Command::SUCCESS;
    }

    /**
     * Creates and fills with data test db
     *
     * @param OutputInterface $output
     * @param string          $configFileName
     *
     * @return void
     */
    private function prepareTestDb(OutputInterface $output, string $configFileName): void
    {
        $output->writeln('db name:              ' . $this->db);
        $output->writeln('test db name:         ' . $this->testDb);

        // read and execute "create.template.sql"
        chdir( __DIR__.'/../../../../_db_');
        if (file_exists('create.sql')) {
            $output->writeln('removing file create.sql');

            shell_exec('rm -f create.sql');
        }

        $output->writeln('copying file:         create.sql');
        shell_exec('cp create.template create.sql');

        $output->writeln('changing db name in:  create.sql');
        $createSqlContent = file_get_contents('create.sql');

        // Replace ###APTO_DB_NAME### with the given database name
        $createSqlContent = str_replace('###APTO_DB_NAME###', $this->testDb, $createSqlContent);

        // Save the modified content back to create.sql
        file_put_contents('create.sql', $createSqlContent);

        // execute create.sql
        $output->writeln('creating db:          ' . $this->testDb);
        shell_exec('sudo mysql -u ' . self::MYSQL_ROOT_USER . ' -p' . self::MYSQL_ROOT_PASSWORD . ' -h localhost < create.sql');

        // execute apto-example-data.sql
        $output->writeln('filling with data:    ' . $this->testDb);
        shell_exec('sudo mysql -u ' . self::MYSQL_ROOT_USER . ' -p' . self::MYSQL_ROOT_PASSWORD . ' -h localhost --default-character-set=utf8 ' . $this->testDb . ' < apto-example-data.sql');

        $output->writeln('removing file:        ' . 'create.sql');
        shell_exec('rm -f create.sql');
    }

    /**
     * Changes in .env.local DATABASE_URL by adding -cypress prefix to it
     *
     * @param string $configFileName
     *
     * @return string
     */
    private function changeDbNameForTesting(string $configFileName): string
    {
        // old verison with regex: sed -i 's/^DATABASE_URL\(.*:3306\)\([^\?.]*\)\(.*\)/DATABASE_URL\1\2-cypress\3/g' .env.local
        //
        // Load the .env file into $_ENV
        $dotenv = new Dotenv();
        $dotenv->load($configFileName);

        // Get the DATABASE_URL value from the .env file
        $databaseUrl = $_ENV['DATABASE_URL'];

        // Modify the database URL to append '-cypress' suffix
        $databaseUrlParts = parse_url($databaseUrl);
        $databaseName = trim($databaseUrlParts['path'], '/');
        $newDatabaseName = $databaseName . self::TEST_DB_SUFFIX;
        $newDatabaseUrl = str_replace($databaseName, $newDatabaseName, $databaseUrl);

        // Update the DATABASE_URL value in the .env file
        $dotenvContent = file_get_contents($configFileName);
        $updatedEnvContent = str_replace($databaseUrl, $newDatabaseUrl, $dotenvContent);

        file_put_contents($configFileName, $updatedEnvContent);

        return $newDatabaseName;
    }

    /**
     * Recovers .env.local by removing -cypress suffix from db name
     *
     * @param string $configFileName
     *
     * @return string
     */
    private function recoverDbName(string $configFileName): string
    {
        // in old version used regex: sed -i \'s/\(-cypress\)*//g' .env.local

        // Load the .env file
        $dotenv = new Dotenv();
        $dotenv->load($configFileName);

        // Get the DATABASE_URL value from the .env file
        $databaseUrl = $_ENV['DATABASE_URL'];

        // Modify the database URL to remove the '-cypress' suffix
        $databaseUrlParts = parse_url($databaseUrl);
        $databaseName = trim($databaseUrlParts['path'], '/');
        $newDatabaseName = str_replace(self::TEST_DB_SUFFIX, '', $databaseName);
        $newDatabaseUrl = str_replace($databaseName, $newDatabaseName, $databaseUrl);

        // Update the DATABASE_URL value in the .env file
        $dotenvContent = file_get_contents($configFileName);
        $updatedEnvContent = str_replace($databaseUrl, $newDatabaseUrl, $dotenvContent);
        file_put_contents($configFileName, $updatedEnvContent);

        return $newDatabaseName;
    }
}
