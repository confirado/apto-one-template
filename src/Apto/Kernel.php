<?php

namespace Apto;

use Symfony\Bundle\FrameworkBundle\Kernel\MicroKernelTrait;
use Symfony\Component\HttpKernel\Kernel as BaseKernel;

class Kernel extends BaseKernel
{
    use MicroKernelTrait;

    /**
     * @return void
     */
    protected function initializeContainer()
    {
        parent::initializeContainer();
        $this->getContainer()->get('Apto\Base\Infrastructure\AptoBaseBundle\DomainEvent\DomainEventSubscriberFactory');
    }
}
