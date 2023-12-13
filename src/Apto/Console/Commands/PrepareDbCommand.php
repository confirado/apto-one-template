<?php

namespace Apto\Console\Commands;

use Apto\Base\Domain\Core\Service\AptoParameterInterface;
use Doctrine\DBAL\Exception;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Doctrine\DBAL\Connection;

class PrepareDbCommand extends Command
{
    protected static $defaultName = 'apto:test:prepare-db';
    private Connection $connection;
    private AptoParameterInterface $aptoParameter;

    // todo read db names from configs (add configs maybe)
    private string $db = 'apto-one-template';
    private string $testDb = 'apto-one-template-cypress';

    private array $tablesToClone = [
        'apto_content_snippet',
        'apto_group',
        'apto_language',
        'plugin_material_picker_material',
        'plugin_material_picker_pool_item',
        'plugin_material_picker_price_group',

        // todo this is clonned now but need maybe to generate new data in fixtures
        'apto_customer',
        'apto_customer_group',
        'apto_shop',
        'apto_user_role',
    ];

    // todo add later
    // later apto_shop
    // apto_user_role

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

        $query = sprintf('DROP DATABASE IF EXISTS `%s`', $this->testDb);
        $output->writeln($query);
        $this->connection->executeQuery($query);

        $sql = sprintf('CREATE DATABASE IF NOT EXISTS `%s` CHARACTER SET utf8 COLLATE utf8_unicode_ci', $this->testDb);
        $output->writeln($sql);
        $this->connection->executeQuery($sql);

        $this->connection->executeQuery('SET foreign_key_checks = 0;');

        // Get all table names in the main database
        $tablesQuery = $this->connection->executeQuery(
            'SELECT table_name FROM information_schema.tables WHERE table_schema = ?', [$this->db]
        );

        // Generate and execute the DROP TABLE statements for each table
        $createdTables = 0;
        $truncatedTables = 0;
        foreach ($tablesQuery->fetchAllAssociativeIndexed() as $tableName => $value) {
            $query = sprintf( 'CREATE TABLE `%s`.`%s` SELECT * FROM `%s`.`%s`', $this->testDb, $tableName, $this->db, $tableName);
            $this->connection->executeQuery($query);
            $createdTables++;

            if (!in_array($tableName, $this->tablesToClone)) {
                $query = sprintf( 'TRUNCATE TABLE `%s`.`%s`', $this->testDb, $tableName);
                $this->connection->executeQuery($query);
                $truncatedTables++;
            }
        }

        $output->writeln("Tables created: $createdTables, data cloned: " . $createdTables - $truncatedTables . ")");
        $output->writeln('------------------------------------------------------------------------------------');


        // Re-enable foreign key checks
        $this->connection->executeQuery('SET foreign_key_checks = 1;');

        // todo before returning success check if all ok

        return Command::SUCCESS;
    }
}
