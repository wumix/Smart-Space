
<?php

use Illuminate\Database\Eloquent\Model as Eloquent;

class UniConfig extends Eloquent {

	protected $guarded = [];
	protected $table = 'config';
	protected $primaryKey = 'uni';
	public $timestamps = false;

}