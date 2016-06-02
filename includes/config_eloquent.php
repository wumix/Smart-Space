<?php

use Illuminate\Database\Capsule\Manager as Capsule;

$capsule = new Capsule;

$capsule->addConnection([
	'driver'    => 'mysql',
	'host'      => '127.0.0.1',
	'database'  => '',
	'username'  => '',
	'password'  => '',
	'charset'   => 'utf8',
	'collation' => 'utf8_unicode_ci',
	'prefix'    => 'uni1_',
]);

$capsule->setAsGlobal();

$capsule->bootEloquent();