<?php

define('MODE', 'LOGIN');
define('ROOT_PATH', str_replace('\\', '/',dirname(__FILE__)).'/');
set_include_path(ROOT_PATH);
require 'includes/common.php';

use Illuminate\Database\Capsule\Manager as Capsule;

// Capsule::schema()->drop('auctions');

Capsule::schema()->create('auctions', function($table) {
	$table->increments('id');
	$table->integer('var_id')->nullable();
	$table->integer('user_id')->nullable();
	$table->bigInteger('amount');
	$table->bigInteger('cost');
	$table->bigInteger('dm_price');
	$table->boolean('available')->default(1);
	$table->timestamps();
});

die('done');