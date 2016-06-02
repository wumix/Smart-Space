<?php

use Illuminate\Database\Eloquent\Model as Eloquent;

class Auction extends Eloquent {

	protected $guarded = [];
	protected $table = 'auctions';
	public $timestamps = true;

	public function bidder()
	{
		return $this->belongsTo('User', 'user_id', 'id');
	}

	public function item()
	{
		return $this->belongsTo('Variable', 'var_id', 'elementID');
	}

	public function scopeAvailables($query)
	{
		return $query->where('available', 1);
	}

}