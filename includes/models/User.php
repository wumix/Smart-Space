<?php

use Illuminate\Database\Eloquent\Model as Eloquent;

class User extends Eloquent {

	protected $guarded = [];
	protected $table = 'users';
	public $timestamps = false;

	public function bids()
	{
		return $this->hasMany('Auction')->with('Variable');
	}

}