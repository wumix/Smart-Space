<?php

abstract class AbstractPage 
{
	protected $tplObj;
	protected $ecoObj;
	protected $window;
	protected $disableEcoSystem = false;
	
	protected function __construct() {
		
		if(!AJAX_REQUEST)
		{
			$this->setWindow('full');
			if(!$this->disableEcoSystem)
			{
				$this->ecoObj	= new ResourceUpdate();
				$this->ecoObj->CalcResource();
			}
			$this->initTemplate();
		} else {
			$this->setWindow('ajax');
		}
	}
	
	protected function initTemplate() {
		if(isset($this->tplObj))
			return true;
			
		$this->tplObj	= new template;
		list($tplDir)	= $this->tplObj->getTemplateDir();
		$this->tplObj->setTemplateDir($tplDir.'game/');
		return true;
	}
	
	protected function setWindow($window) {
		$this->window	= $window;
	}
		
	protected function getWindow() {
		return $this->window;
	}
	
	protected function getQueryString() {
		$queryString	= array();
		$page			= HTTP::_GP('page', '');
		
		if(!empty($page)) {
			$queryString['page']	= $page;
		}
		
		$mode			= HTTP::_GP('mode', '');
		if(!empty($mode)) {
			$queryString['mode']	= $mode;
		}
		
		return http_build_query($queryString);
	}
	
	protected function getCronjobsTodo()
	{
		require_once 'includes/classes/Cronjob.class.php';
		
		$this->tplObj->assign_vars(array(	
			'cronjobs'		=> Cronjob::getNeedTodoExecutedJobs()
		));
	}
	
	protected function getNavigationData() 
    {
		global $PLANET, $LNG, $USER, $THEME, $CONF, $resource, $reslist;
		
		if($PLANET[$resource[43]] > 0) {
			$this->tplObj->loadscript("gate.js");
		}
		
		$this->tplObj->loadscript("topnav.js");
			
		$PlanetSelect	= array();
		
		if(isset($USER['PLANETS'])) {
			$USER['PLANETS']	= getPlanets($USER);
		}
		
		foreach($USER['PLANETS'] as $CurPlanetID => $PlanetQuery)
		{
			$PlanetSelect[$PlanetQuery['id']]	= $PlanetQuery['name'].(($PlanetQuery['planet_type'] == 3) ? " (" . $LNG['fcm_moon'] . ")":"")." [".$PlanetQuery['galaxy'].":".$PlanetQuery['system'].":".$PlanetQuery['planet']."]";
		}

		
		$resourceTable	= array();
		$resourceSpeed	= Config::get('resource_multiplier');
		foreach($reslist['resstype'][1] as $resourceID)
		{
			$resourceTable[$resourceID]['name']			= $resource[$resourceID];
			$resourceTable[$resourceID]['current']		= $PLANET[$resource[$resourceID]];
			$resourceTable[$resourceID]['max']			= $PLANET[$resource[$resourceID].'_max'];
			if($USER['urlaubs_modus'] == 1 || $PLANET['planet_type'] != 1)
			{
				$resourceTable[$resourceID]['production']	= $PLANET[$resource[$resourceID].'_perhour'];
			}
			else
			{
				$resourceTable[$resourceID]['production']	= $PLANET[$resource[$resourceID].'_perhour'] + Config::get($resource[$resourceID].'_basic_income') * $resourceSpeed;
			}
		}

		if($USER["prem_time"] < TIMESTAMP && $USER["prem_enabled"] == 1)
		{
		
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
		}
		
		$FountainProd = ($PLANET['fountain'] * 6.75 * 1.2);
		
		if($PLANET['fountain'] != 0){
			$GLOBALS['DATABASE']->query("UPDATE uni1_planets SET  `darkmatter_perhour` = ".$FountainProd." WHERE `id` = ".$PLANET['id'].";");
		}

		foreach($reslist['resstype'][2] as $resourceID)
		{
			$resourceTable[$resourceID]['name']			= $resource[$resourceID];
			$resourceTable[$resourceID]['used']			= $PLANET[$resource[$resourceID].'_used'];
			$resourceTable[$resourceID]['max']			= $PLANET[$resource[$resourceID]];
		}

		foreach($reslist['resstype'][3] as $resourceID)
		{
			$resourceTable[$resourceID]['name']			= $resource[$resourceID];
			$resourceTable[$resourceID]['current']		= $USER[$resource[$resourceID]];
		}
		
		$proc_metal = (int)min(($PLANET[$resource[901]]/$PLANET[$resource[901].'_max'] * 100),100);
		if($proc_metal<50)$proc_metal_color = '#0F0';elseif (90>$proc_metal&&$proc_metal>49) $proc_metal_color = '#F70';elseif(89<$proc_metal&&$proc_metal<100)$proc_metal_color = '#F30';else $proc_metal_color = '#F00';
		$proc_cri = (int)min(($PLANET[$resource[902]]/$PLANET[$resource[902].'_max'] * 100),100);
		if($proc_cri<50)$proc_cri_color = '#0F0';elseif (90>$proc_cri&&$proc_cri>49) $proc_cri_color = '#F70';elseif(89<$proc_cri&&$proc_cri<100)$proc_cri_color = '#F30';else $proc_cri_color = '#F00';
		$proc_dei = (int)min(($PLANET[$resource[903]]/$PLANET[$resource[903].'_max'] * 100),100);
		if($proc_dei<50)$proc_dei_color = '#0F0';elseif (90>$proc_dei&&$proc_dei>49) $proc_dei_color = '#F70';elseif(89<$proc_dei&&$proc_dei<100)$proc_dei_color = '#F30';else $proc_dei_color = '#F00';
		$proc_nrg = min(100, (int)(abs($PLANET[$resource[911]]+$PLANET['energy_used'])/max($PLANET[$resource[911]],1)*100));		

		$themeSettings	= $THEME->getStyleSettings();
		
		$this->tplObj->assign_vars(array(	
			'FountainProd'		=> $FountainProd,
			'PlanetSelect'		=> $PlanetSelect,
			'new_message' 		=> $USER['messages'],
			'mobile_version' 	=> $USER['mobile_version'],
			'fixed_navbar' 		=> $USER['fixed_navbar'],
			'fixed_header' 		=> $USER['fixed_header'],
			'game_theme' 		=> $USER['game_theme'],
			'vacation'			=> $USER['urlaubs_modus'] ? _date($LNG['php_tdformat'], $USER['urlaubs_until'], $USER['timezone']) : false,
			'delete'			=> $USER['db_deaktjava'] ? sprintf($LNG['tn_delete_mode'], _date($LNG['php_tdformat'], $USER['db_deaktjava'] + (Config::get('del_user_manually') * 86400)), $USER['timezone']) : false,
			'darkmatter'		=> $USER['darkmatter'],
			'current_pid'		=> $PLANET['id'],
			'image'				=> $PLANET['image'],
			'resourceTable'		=> $resourceTable,
			'shortlyNumber'		=> $themeSettings['TOPNAV_SHORTLY_NUMBER'],
			'closed'			=> !Config::get('game_disable'),
			'hasBoard'			=> filter_var(Config::get('forum_url'), FILTER_VALIDATE_URL, FILTER_FLAG_SCHEME_REQUIRED),
			'hasAdminAccess'	=> isset($_SESSION['admin_login']),
			'metal'				=> $PLANET[$resource[901]],
			'crystal'			=> $PLANET[$resource[902]],
			'deuterium'			=> $PLANET[$resource[903]],
			'energy'			=> $PLANET[$resource[911]],
			'energy_used'		=> $PLANET['energy_used'],
			'metal_max'			=> $PLANET[$resource[901].'_max'],
			'crystal_max'		=> $PLANET[$resource[902].'_max'],
			'deuterium_max' 	=> $PLANET[$resource[903].'_max'],
			'js_metal_max'		=> $PLANET['metal_max'],
			'js_crystal_max'	=> $PLANET['crystal_max'],
			'js_deuterium_max' 	=> $PLANET['deuterium_max'],
			'js_metal_hr'		=> $PLANET['planet_type'] !=3 ? $PLANET['metal_perhour'] + $CONF['metal_basic_income'] * $CONF['resource_multiplier'] : 0,
			'js_crystal_hr'		=> $PLANET['planet_type'] !=3 ? $PLANET['crystal_perhour'] + $CONF['crystal_basic_income'] * $CONF['resource_multiplier'] : 0,
			'js_deuterium_hr'	=> $PLANET['planet_type'] !=3 ? $PLANET['deuterium_perhour'] + $CONF['deuterium_basic_income'] * $CONF['resource_multiplier'] : 0,
			'proc_metal'		=> $proc_metal,
			'proc_metal_color'	=> $proc_metal_color,
			'proc_cri'			=> $proc_cri,
			'proc_cri_color'	=> $proc_cri_color,
			'proc_dei'			=> $proc_dei,
			'proc_dei_color'	=> $proc_dei_color,
			'proc_nrg'			=> $proc_nrg,
			'inc_attacks'				=> $GLOBALS['DATABASE']->countquery("SELECT count(*) FROM ".FLEETS." WHERE `fleet_start_time` > ".TIMESTAMP." AND `fleet_mission` = 1 AND `fleet_mess` = 0 AND `fleet_owner` <> ".$USER['id']." AND `fleet_target_owner` = ".$USER['id'].";"),
			'inc_spy'				=> $GLOBALS['DATABASE']->countquery("SELECT count(*) FROM ".FLEETS." WHERE `fleet_start_time` > ".TIMESTAMP." AND `fleet_mission` = 6 AND `fleet_mess` = 0 AND `fleet_owner` <> ".$USER['id']." AND `fleet_target_owner` = ".$USER['id'].";"),
			'inc_destruction'				=> $GLOBALS['DATABASE']->countquery("SELECT count(*) FROM ".FLEETS." WHERE `fleet_start_time` > ".TIMESTAMP." AND `fleet_mission` = 9 AND `fleet_mess` = 0 AND `fleet_owner` <> ".$USER['id']." AND `fleet_target_owner` = ".$USER['id'].";"),
			'inc_rockets'			=> $GLOBALS['DATABASE']->countquery("SELECT count(*) FROM ".FLEETS." WHERE `fleet_start_time` > ".TIMESTAMP." AND `fleet_mission` = 10 AND `fleet_owner` <> ".$USER['id']." AND `fleet_target_owner` = ".$USER['id'].";"),
		));
	}
	
	protected function getPageData() 
    {
		global $PLANET, $LNG, $USER, $THEME, $CONF, $resource, $reslist;
		
		if($this->getWindow() === 'full') {
			$this->getNavigationData();
			$this->getCronjobsTodo();
		}
		
		$dateTimeServer		= new DateTime("now");
		if(isset($USER['timezone'])) {
			try {
				$dateTimeUser	= new DateTime("now", new DateTimeZone($USER['timezone']));
			} catch (Exception $e) {
				$dateTimeUser	= $dateTimeServer;
			}
		} else {
			$dateTimeUser	= $dateTimeServer;
		}
		$resourceTable	= array();
		$resourceSpeed	= Config::get('resource_multiplier');
		foreach($reslist['resstype'][1] as $resourceID)
		{
			$resourceTable[$resourceID]['name']			= $resource[$resourceID];
			$resourceTable[$resourceID]['current']		= $PLANET[$resource[$resourceID]];
			$resourceTable[$resourceID]['max']			= $PLANET[$resource[$resourceID].'_max'];
			if($USER['urlaubs_modus'] == 1 || $PLANET['planet_type'] != 1)
			{
				$resourceTable[$resourceID]['production']	= $PLANET[$resource[$resourceID].'_perhour'];
			}
			else
			{
				$resourceTable[$resourceID]['production']	= $PLANET[$resource[$resourceID].'_perhour'] + Config::get($resource[$resourceID].'_basic_income') * $resourceSpeed;
			}
		}

		foreach($reslist['resstype'][2] as $resourceID)
		{
			$resourceTable[$resourceID]['name']			= $resource[$resourceID];
			$resourceTable[$resourceID]['used']			= $PLANET[$resource[$resourceID].'_used'];
			$resourceTable[$resourceID]['max']			= $PLANET[$resource[$resourceID]];
		}

		foreach($reslist['resstype'][3] as $resourceID)
		{
			$resourceTable[$resourceID]['name']			= $resource[$resourceID];
			$resourceTable[$resourceID]['current']		= $USER[$resource[$resourceID]];
		}
		$themeSettings = $THEME->getStyleSettings();
		
        $this->tplObj->assign_vars(array(
            'vmode'				=> $USER['urlaubs_modus'],
			'authlevel'			=> $USER['authlevel'],
			'userID'			=> $USER['id'],
			'resourceTable' 	=> $resourceTable,
			'vacation'			=> $USER['urlaubs_modus'] ? _date($LNG['php_tdformat'], $USER['urlaubs_until'], $USER['timezone']) : false,
			'delete'			=> $USER['db_deaktjava'] ? sprintf($LNG['tn_delete_mode'], _date($LNG['php_tdformat'], $USER['db_deaktjava'] + (Config::get('del_user_manually') * 86400)), $USER['timezone']) : false,
			'closed'			=> !Config::get('game_disable'),
			'bodyclass'			=> $this->getWindow(),
            'game_name'			=> Config::get('game_name'),
            'uni_name'			=> Config::get('uni_name'),
			'ga_active'			=> Config::get('ga_active'),
			'ga_key'			=> Config::get('ga_key'),
			'debug'				=> Config::get('debug'),
			'shortlyNumber'		=> $themeSettings['TOPNAV_SHORTLY_NUMBER'],
			'VERSION'			=> Config::get('VERSION'),
			'date'				=> explode("|", date('Y\|n\|j\|G\|i\|s\|Z', TIMESTAMP)),
			'REV'				=> substr(Config::get('VERSION'), -4),
			'Offset'			=> $dateTimeUser->getOffset() - $dateTimeServer->getOffset(),
			'queryString'		=> $this->getQueryString(),
			'themeSettings'		=> $THEME->getStyleSettings(),
		));
	}
	
	protected function printMessage($Message, $fullSide = true, $redirect = NULL) {
		
		$this->tplObj->assign_vars(array(
			'mes'				=> $Message,
		));
		
		if(isset($redirect)) {
			$this->tplObj->gotoside($redirect[0], $redirect[1]);
		}
		
		if(!$fullSide) {
			$this->setWindow('popup');
		}
		
		$this->display('error.default.tpl');
	}
	
	protected function save() {		
		if(isset($this->ecoObj)) {
			$this->ecoObj->SavePlanetToDB();
		}
	}
	
	protected function display($file) {
		global $THEME, $LNG, $USER;
		
		$this->save();
		
		if($this->getWindow() !== 'ajax') {
			$this->getPageData();
		}

		$this->tplObj->assign_vars(array(
			'PHPDebugBar' 		=> $GLOBALS['debugbarRenderer'],
            'lang'    			=> $LNG->getLanguage(),
            'dpath'				=> $THEME->getTheme(),
			'scripts'			=> $this->tplObj->jsscript,
			'execscript'		=> implode("\n", $this->tplObj->script),
			'basepath'			=> PROTOCOL.HTTP_HOST.HTTP_BASE,
			'mobile_version' 	=> $USER['mobile_version'],
			'fixed_navbar' 		=> $USER['fixed_navbar'],
			'fixed_header' 		=> $USER['fixed_header'],
			'game_theme' 		=> $USER['game_theme'],
		));

		$this->tplObj->assign_vars(array(
			'LNG'			=> $LNG,
		), false);
		
		$this->tplObj->display('extends:layout.'.$this->getWindow().'.tpl|'.$file);
		exit;
	}
	
	protected function sendJSON($data) {
		$this->save();
		echo json_encode($data);
		exit;
	}
	
	protected function redirectTo($url) {
		$this->save();
		HTTP::redirectTo($url);
		exit;
	}
}