<?php

use Illuminate\Database\Eloquent\Model as Eloquent;

class Variable extends Eloquent {

	protected $guarded = [];
	protected $primaryKey = 'elementID';
	protected $table = 'vars';

	public function scopeBuildings($query)
	{
		return $query->where('class', 0);
	}

	public function scopeTechs($query)
	{
		return $query->where('class', 100);
	}

	public function scopeShips($query)
	{
		return $query->where('class', 200);
	}

	public function scopeDefs($query)
	{
		return $query->where('class', 400);
	}

}