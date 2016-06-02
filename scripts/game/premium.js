function Totalsim()
{
	var prem_sim	= $('#prem_sim').val();

	
	if(isNaN(prem_sim) || prem_sim < 0 ) {
		$('#prem_sim').val(0);
		prem_sim = 0;
	}
	
	cost 	= Number(prem_sim) * 1000;
	
	$('#cost_sim').text(NumberGetHumanReadable(cost));

}

function Total()
{
	var count_day 		= $('#count_day').val();
	var bonusAttack		= $('#bonusAttack').val();
	var bonusDefensive		= $('#bonusDefensive').val();
	var bonusShield		= $('#bonusShield').val();
	var bonusBuildTime		= $('#bonusBuildTime').val();
	var bonusResearchTime		= $('#bonusResearchTime').val();
	var bonusShipTime		= $('#bonusShipTime').val();
	var bonusDefensiveTime		= $('#bonusDefensiveTime').val();
	var bonusResource		= $('#bonusResource').val();
	var bonusEnergy		= $('#bonusEnergy').val();
	var bonusResourceStorage		= $('#bonusResourceStorage').val();
	var bonusShipStorage		= $('#bonusShipStorage').val();
	var bonusFlyTime		= $('#bonusFlyTime').val();
	var bonusFleetSlots		= $('#bonusFleetSlots').val();
	var bonusSpyPower		= $('#bonusSpyPower').val();
	var bonusExpedition		= $('#bonusExpedition').val();
	var bonusGateCoolTime		= $('#bonusGateCoolTime').val();
	var bonusMoreFound		= $('#bonusMoreFound').val();
	
	if(isNaN(bonusAttack) || bonusAttack < 0 || bonusAttack > 150) {
		$('#bonusAttack').val(0);
		bonusAttack = 0;
	}	
	if(isNaN(bonusDefensive) || bonusDefensive < 0  || bonusDefensive > 150 ) {
		$('#bonusDefensive').val(0);
		bonusDefensive = 0;
	}	
	if(isNaN(bonusShield) || bonusShield < 0 || bonusShield > 150 ) {
		$('#bonusShield').val(0);
		bonusShield = 0;
	}	
	if(isNaN(bonusBuildTime) || bonusBuildTime < 0  || bonusBuildTime > 75) {
		$('#bonusBuildTime').val(0);
		bonusBuildTime = 0;
	}	
	if(isNaN(bonusResearchTime) || bonusResearchTime < 0  || bonusResearchTime > 50 ) {
		$('#bonusResearchTime').val(0);
		bonusResearchTime = 0;
	}	
	if(isNaN(bonusShipTime) || bonusShipTime < 0  || bonusShipTime > 50) {
		$('#bonusShipTime').val(0);
		bonusShipTime = 0;
	}	
	if(isNaN(bonusDefensiveTime) || bonusDefensiveTime < 0  || bonusDefensiveTime > 75 ) {
		$('#bonusDefensiveTime').val(0);
		bonusDefensiveTime = 0;
	}	
	if(isNaN(bonusResource) || bonusResource < 0 || bonusResource > 1500) {
		$('#bonusResource').val(0);
		bonusResource = 0;
	}	
	if(isNaN(bonusEnergy) || bonusEnergy < 0  || bonusEnergy > 100 ) {
		$('#bonusEnergy').val(0);
		bonusEnergy = 0;
	}	
	if(isNaN(bonusResourceStorage) || bonusResourceStorage < 0  || bonusResourceStorage > 200 ) {
		$('#bonusResourceStorage').val(0);
		bonusResourceStorage = 0;
	}	
	if(isNaN(bonusShipStorage) || bonusShipStorage < 0  || bonusShipStorage > 200) {
		$('#bonusShipStorage').val(0);
		bonusShipStorage = 0;
	}	
	if(isNaN(bonusFlyTime) || bonusFlyTime < 0  || bonusFlyTime > 50 ) {
		$('#bonusFlyTime').val(0);
		bonusFlyTime = 0;
	}	
	if(isNaN(bonusFleetSlots) || bonusFleetSlots < 0 ) {
		$('#bonusFleetSlots').val(0);
		bonusFleetSlots = 0;
	}	
	if(isNaN(bonusSpyPower) || bonusSpyPower < 0  || bonusSpyPower > 50 ) {
		$('#bonusSpyPower').val(0);
		bonusSpyPower = 0;
	}	
	if(isNaN(bonusExpedition) || bonusExpedition < 0  || bonusExpedition > 200 ) {
		$('#bonusExpedition').val(0);
		bonusExpedition = 0;
	}	
	if(isNaN(bonusGateCoolTime) || bonusGateCoolTime < 0  || bonusGateCoolTime > 50 ) {
		$('#bonusGateCoolTime').val(0);
		bonusGateCoolTime = 0;
	}	
	if(isNaN(bonusMoreFound) || bonusMoreFound < 0  || bonusMoreFound > 200 ) {
		$('#bonusMoreFound').val(0);
		bonusMoreFound = 0;
	}
	if(isNaN(count_day) || count_day < 1 ) {
		$('#count_day').val(1);
		count_day = 1;
	}
	
	var skidka_price = 1;
	
	var bonusAttackPrice			= 18.5 	* Math.pow(1.10, (Math.floor(Number(bonusAttack)/100))) * Number(bonusAttack);
	var bonusDefensivePrice			= 18.5 	* Math.pow(1.10, (Math.floor(Number(bonusDefensive)/100))) * Number(bonusDefensive);
	var bonusShieldPrice			= 18.5 	* Math.pow(1.10, (Math.floor(Number(bonusShield)/100))) * Number(bonusShield);
	var bonusBuildTimePrice			= 75.5 	* Math.pow(1.10, (Math.floor(Number(bonusBuildTime)/100))) * Number(bonusBuildTime);
	var bonusResearchTimePrice			= 185.5 	* Math.pow(1.10, (Math.floor(Number(bonusResearchTime)/100))) * Number(bonusResearchTime);
	var bonusShipTimePrice			= 75.5 	* Math.pow(1.10, (Math.floor(Number(bonusShipTime)/100))) * Number(bonusShipTime);
	var bonusDefensiveTimePrice			= 75.5 	* Math.pow(1.10, (Math.floor(Number(bonusDefensiveTime)/100))) * Number(bonusDefensiveTime);
	var bonusResourcePrice			= 15.5 	* Math.pow(1.10, (Math.floor(Number(bonusResource)/100))) * Number(bonusResource);
	var bonusEnergyPrice			= 50 	* Math.pow(1.10, (Math.floor(Number(bonusEnergy)/100))) * Number(bonusEnergy);
	var bonusResourceStoragePrice			= 20.5 	* Math.pow(1.10, (Math.floor(Number(bonusResourceStorage)/100))) * Number(bonusResourceStorage);
	var bonusShipStoragePrice			= 32.5 	* Math.pow(1.10, (Math.floor(Number(bonusShipStorage)/100))) * Number(bonusShipStorage);
	var bonusFlyTimePrice			= 262.5 	* Math.pow(1.10, (Math.floor(Number(bonusFlyTime)/100))) * Number(bonusFlyTime);
	var bonusFleetSlotsPrice			= 1500 	* Math.pow(1.10, (Math.floor(Number(bonusFleetSlots)/100))) * Number(bonusFleetSlots);
	var bonusSpyPowerPrice			= 32.5 	* Math.pow(1.10, (Math.floor(Number(bonusSpyPower)/100))) * Number(bonusSpyPower);
	var bonusExpeditionPrice			= 18.5 	* Math.pow(1.10, (Math.floor(Number(bonusExpedition)/100))) * Number(bonusExpedition);
	var bonusGateCoolTimePrice			= 107.5 	* Math.pow(1.10, (Math.floor(Number(bonusGateCoolTime)/100))) * Number(bonusGateCoolTime);
	var bonusMoreFoundPrice			= 18.5 	* Math.pow(1.10, (Math.floor(Number(bonusMoreFound)/100))) * Number(bonusMoreFound);

	
	var all_price	= (bonusAttackPrice + bonusDefensivePrice + bonusShieldPrice + bonusBuildTimePrice + bonusResearchTimePrice + bonusShipTimePrice + bonusDefensiveTimePrice + bonusResourcePrice + bonusEnergyPrice  + bonusResourceStoragePrice  + bonusResourceStoragePrice	+ bonusShipStoragePrice	+ bonusFlyTimePrice	+ bonusFleetSlotsPrice + bonusSpyPowerPrice + bonusExpeditionPrice	+ bonusGateCoolTimePrice	+ bonusMoreFoundPrice);
	
	skidka_price =  Number(count_day) * (Number(all_price) - (Number(all_price) * Math.min(0.50,(Number(count_day) * 0.5 / 100))));
	
	$('#cost_prem').text(NumberGetHumanReadable(Math.round((Number(skidka_price)))));
}