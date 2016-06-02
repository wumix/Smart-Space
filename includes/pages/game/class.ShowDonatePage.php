<?php
class ShowDonatePage extends AbstractPage
{	
	public static $requireModule = 0;
	
	function __construct() 
	{
		parent::__construct();
	}
	
	function show(){
	global $USER, $PLANET, $LNG, $UNI, $CONF,$resource,$pricelist;
	$this->tplObj->loadscript("donation.js");
	$st_out = $USER["prem_time"]-TIMESTAMP;
	$this->tplObj->loadscript('premium.js');
	$this->tplObj->loadscript('jquery.countdown.js');
	
	if($USER['prem_time'] > TIMESTAMP){
		$timeleft  = 'Premium is Enabled until <span class=countdown2 secs='.$st_out.'></span>';
	}else{
		$timeleft  = 'Premium is Disabled';
	}
	
	
	$this->tplObj->assign_vars(
	array(
	'user_id' => $USER['id'],
	'st_out'				=> $st_out,
	'darkmatter'					=> $USER['darkmatter'],		
	'bonusAttack'		=> $USER['bonusAttack'], 
	'bonusDefensive'		=> $USER['bonusDefensive'], 
	'bonusShield'		=> $USER['bonusShield'], 
	'bonusBuildTime'		=> $USER['bonusBuildTime'], 
	'bonusResearchTime'		=> $USER['bonusResearchTime'], 
	'bonusShipTime'		=> $USER['bonusShipTime'], 
	'bonusDefensiveTime'		=> $USER['bonusDefensiveTime'], 
	'bonusResource'		=> $USER['bonusResource'], 
	'bonusEnergy'		=> $USER['bonusEnergy'], 
	'bonusResourceStorage'		=> $USER['bonusResourceStorage'], 
	'bonusShipStorage'		=> $USER['bonusShipStorage'], 
	'bonusFlyTime'		=> $USER['bonusFlyTime'], 
	'bonusFleetSlots'		=> $USER['bonusFleetSlots'], 
	'bonusSpyPower'		=> $USER['bonusSpyPower'], 
	'bonusExpedition'		=> $USER['bonusExpedition'], 
	'bonusGateCoolTime'		=> $USER['bonusGateCoolTime'], 
	'bonusMoreFound'		=> $USER['bonusMoreFound'], 
	'timeleft' => $timeleft,
	'prem_waste' => ($USER['prem_waste']/3),
	)
	);
	$this->display("page.donate.default.tpl");
	}
	
		function send()
	{
		global $USER, $LNG;		
		
		$count_day 					= max(0,HTTP::_GP('count_day',0));
		$bonusAttack 		= max(0,HTTP::_GP('bonusAttack',0));
		$bonusDefensive 		= max(0,HTTP::_GP('bonusDefensive',0));
		$bonusShield 		= max(0,HTTP::_GP('bonusShield',0));
		$bonusBuildTime 		= max(0,HTTP::_GP('bonusBuildTime',0));
		$bonusResearchTime 		= max(0,HTTP::_GP('bonusResearchTime',0));
		$bonusShipTime 		= max(0,HTTP::_GP('bonusShipTime',0));
		$bonusDefensiveTime 		= max(0,HTTP::_GP('bonusDefensiveTime',0));
		$bonusResource 		= max(0,HTTP::_GP('bonusResource',0));
		$bonusEnergy 		= max(0,HTTP::_GP('bonusEnergy',0));
		$bonusResourceStorage 		= max(0,HTTP::_GP('bonusResourceStorage',0));
		$bonusShipStorage 		= max(0,HTTP::_GP('bonusShipStorage',0));
		$bonusFlyTime 		= max(0,HTTP::_GP('bonusFlyTime',0));
		$bonusFleetSlots 		= max(0,HTTP::_GP('bonusFleetSlots',0));
		$bonusSpyPower 		= max(0,HTTP::_GP('bonusSpyPower',0));
		$bonusExpedition 		= max(0,HTTP::_GP('bonusExpedition',0));
		$bonusGateCoolTime 		= max(0,HTTP::_GP('bonusGateCoolTime',0));
		$bonusMoreFound 		= max(0,HTTP::_GP('bonusMoreFound',0));
		
		
		if($bonusAttack < 0 )  $bonusAttack = 0;
		if($bonusDefensive < 0 )  $bonusDefensive = 0;
		if($bonusShield < 0 )  $bonusShield = 0;
		if($bonusBuildTime < 0 )  $bonusBuildTime = 0;
		if($bonusResearchTime < 0 )  $prem_storage = 0;
		if($bonusShipTime < 0 )  $bonusShipTime = 0;
		if($bonusDefensiveTime < 0 )  $bonusDefensiveTime = 0;
		if($bonusResource < 0 )  $bonusResource = 0;
		if($bonusEnergy < 0 )  $bonusEnergy = 0;
		if($bonusResourceStorage < 0 )  $bonusResourceStorage = 0;
		if($bonusShipStorage < 0 )  $bonusShipStorage = 0;
		if($bonusFlyTime < 0 )  $bonusFlyTime = 0;
		if($bonusFleetSlots < 0 )  $bonusFleetSlots = 0;
		if($bonusSpyPower < 0 )  $bonusSpyPower = 0;
		if($bonusExpedition < 0 )  $bonusExpedition = 0;
		if($bonusGateCoolTime < 0 )  $bonusGateCoolTime = 0;
		if($bonusMoreFound < 0 )  $bonusMoreFound = 0;
		
		$skidka_price = 1;

		$bonusAttackPrice			= 18.5		* pow(1.1, (floor($bonusAttack/100))) * $bonusAttack;
		$bonusDefensivePrice			= 18.5		* pow(1.1, (floor($bonusDefensive/100))) * $bonusDefensive;
		$bonusShieldPrice			= 18.5		* pow(1.1, (floor($bonusShield/100))) * $bonusShield;
		$bonusBuildTimePrice			= 75.5		* pow(1.1, (floor($bonusBuildTime/100))) * $bonusBuildTime;
		$bonusResearchTimePrice			= 185.5		* pow(1.1, (floor($bonusResearchTime/100))) * $bonusResearchTime;
		$bonusShipTimePrice			= 75.5		* pow(1.1, (floor($bonusShipTime/100))) * $bonusShipTime;
		$bonusDefensiveTimePrice			= 125		* pow(1.1, (floor($bonusDefensiveTime/100))) * $bonusDefensiveTime;
		$bonusResourcePrice			= 15.5 * pow(1.1, (floor($bonusResource/100))) * $bonusResource;
		$bonusEnergyPrice			= 50		* pow(1.1, (floor($bonusEnergy/100))) * $bonusEnergy;
		$bonusResourceStoragePrice			= 20.5		* pow(1.1, (floor($bonusResourceStorage/100))) * $bonusResourceStorage;
		$bonusShipStoragePrice			= 32.5		* pow(1.1, (floor($bonusShipStorage/100))) * $bonusShipStorage;
		$bonusFlyTimePrice			= 262.5		* pow(1.1, (floor($bonusFlyTime/100))) * $bonusFlyTime;
		$bonusFleetSlotsPrice			= 1500		* pow(1.1, (floor($bonusFleetSlots/100))) * $bonusFleetSlots;
		$bonusSpyPowerPrice			= 32.5		* pow(1.1, (floor($bonusSpyPower/100))) * $bonusSpyPower;
		$bonusExpeditionPrice			= 18.5		* pow(1.1, (floor($bonusExpedition/100))) * $bonusExpedition;
		$bonusGateCoolTimePrice			= 107.5		* pow(1.1, (floor($bonusGateCoolTime/100))) * $bonusGateCoolTime;
		$bonusMoreFoundPrice			= 18.5		* pow(1.1, (floor($bonusMoreFound/100))) * $bonusMoreFound;

		$alll_cost = ($bonusAttackPrice + $bonusDefensivePrice + $bonusShieldPrice  + $bonusBuildTimePrice  +
		$bonusResearchTimePrice + $bonusShipTimePrice + $bonusDefensiveTimePrice + $bonusResourcePrice
		+ $bonusEnergyPrice	+ $bonusResourceStoragePrice	+ $bonusShipStoragePrice	+ $bonusFlyTimePrice + $bonusFleetSlotsPrice
		+ $bonusSpyPowerPrice	+ $bonusExpeditionPrice	+ $bonusGateCoolTimePrice + $bonusMoreFoundPrice);
		
		$skidka_price = $count_day * ($alll_cost - ($alll_cost * min(0.50,($count_day * 0.5 / 100))));
		
		$cost = round($skidka_price);
		
		if($USER["darkmatter"] < $cost || $cost < 1)
		{
			$this->printMessage('You need '.($cost - $USER["darkmatter"]).' darkmatter.',true,  array("game.php?page=donate", 10));
			return;
		}
			
		$day 			= 86400 * $count_day;
		$USER['darkmatter'] 	-= $cost;
		$cost_day		=round($cost / $count_day * 0.9);	
		$time= TIMESTAMP + $day;
					
		$SQLQuery	=  "UPDATE ".USERS." SET
						prem_time = ".$time.",
						prem_waste  = ".$cost.",
						prem_enabled = 1,
						bonusAttack = ".$bonusAttack.",
						bonusDefensive = ".$bonusDefensive.",
						bonusShield = ".$bonusShield.",
						bonusBuildTime = ".$bonusBuildTime.",
						bonusResearchTime = ".$bonusResearchTime.",
						bonusShipTime = ".$bonusShipTime.",
						bonusDefensiveTime = ".$bonusDefensiveTime.",
						bonusResource = ".$bonusResource.",
						bonusEnergy = ".$bonusEnergy.",
						bonusResourceStorage = ".$bonusResourceStorage.",
						bonusShipStorage = ".$bonusShipStorage.",
						bonusFlyTime = ".$bonusFlyTime.",
						bonusFleetSlots = ".$bonusFleetSlots.",
						bonusSpyPower = ".$bonusSpyPower.",
						bonusExpedition = ".$bonusExpedition.",
						bonusGateCoolTime = ".$bonusGateCoolTime.",
						bonusMoreFound = ".$bonusMoreFound."
						WHERE id = ".$USER["id"].";";
		$GLOBALS['DATABASE']->multi_query($SQLQuery);
		
		$this->printMessage( 'Premium account successfully activated.',  array("game.php?page=donate", 1));
	}
	
		function premreset()
	{
		global $USER;
		
		if($USER["prem_time"]  <= TIMESTAMP)
		{
			
			$this->printMessage('Premium has been reseted',true,  array("game.php?page=donate", 2));
			return;
		}
		
		$SQLQuery	=  "UPDATE ".USERS." SET
						prem_time = 0,
						prem_enabled = 0,
						bonusAttack = 0,
						bonusDefensive = 0,
						bonusShield = 0,
						bonusBuildTime = 0,
						bonusResearchTime = 0,
						bonusShipTime = 0,
						bonusDefensiveTime = 0,
						bonusResource = 0,
						bonusEnergy = 0,
						bonusResourceStorage = 0,
						bonusShipStorage = 0,
						bonusFlyTime = 0,
						bonusFleetSlots = 0,
						bonusSpyPower = 0,
						bonusExpedition = 0,
						bonusGateCoolTime = 0,
						bonusMoreFound = 0
						WHERE id = ".$USER["id"].";";
		$GLOBALS['DATABASE']->multi_query($SQLQuery);
		
		$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET prem_time = 0 WHERE id = ".$USER["id"].";");	
		$USER['darkmatter'] 	+= ($USER['prem_waste']/3);
		$this->printMessage('Premium has been reseted',true,  array("game.php?page=donate", 2));		
	}
}
?>