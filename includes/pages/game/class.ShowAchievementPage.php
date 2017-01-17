<?php
	//for NOTEPAD++ Users
	
/**Improved and Re-Created by QwataKayean © All Rights Reserved
 * This Module has been worked before by Avoliq for 2Moons 1.3
 * This Module ONLY works for 2Moons 1.4
 * 
 * 2Moons is a Browsing Game based on PHP, Created by Slaver
 * More info in http://2moons.cc
 * 
 */
class ShowAchievementPage extends AbstractPage 
{
	public static $requireModule = MODULE_SUPPORT;
	function __construct() 
	{
		parent::__construct();
		
	}
		
function show()

{

	global $USER, $PLANET, $LNG, $CONF, $reslist, $resource;
	//Mine Achievement
	
	//Mine Level 1
	if($USER['achievements_mine'] == 1)
	{
		if($PLANET['metal_mine'] >= 15 && $PLANET['crystal_mine'] >= 14 && $PLANET['deuterium_sintetizer'] >=12)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_mine` = achievements_mine+1 WHERE `id` = ".$USER['id'].";");
				 $PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_geologue` = rpg_geologue+5 WHERE `id` = ".$USER['id'].";");
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_mine'],$LNG['achievements_mine_lvl1'],$LNG['achievements_mine_reward_lvl1']),"?page=achievement",4);
			exit;	
		}
		if ($PLANET['metal_mine'] >=15)
			$mine_done1 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done1 = '<img src="styles/achievements/miss.png" >';
		if($PLANET['crystal_mine'] >=14)
			$mine_done2 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done2 = '<img src="styles/achievements/miss.png" >';	
		if($PLANET['deuterium_sintetizer'] >=12)
			$mine_done3 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done3 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'mine_lvl'			=> $LNG['achievements_mine_lvl1'],
			'mine_req_1'		=> sprintf($LNG['achievements_mine_require_1'],15),
			'mine_req_2'		=> sprintf($LNG['achievements_mine_require_2'],14),
			'mine_req_3'		=> sprintf($LNG['achievements_mine_require_3'],12),
			'mine_reward'		=> $LNG['achievements_mine_reward_lvl1'],
			'mine_done1'    	=> $mine_done1,
			'mine_done2'    	=> $mine_done2,
			'mine_done3'    	=> $mine_done3,
		));
	}
	
	//Mine Level 2
	if($USER['achievements_mine'] == 2)
	{
		if($PLANET['metal_mine'] >= 20 && $PLANET['crystal_mine'] >= 18 && $PLANET['deuterium_sintetizer'] >=17)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_mine` = achievements_mine+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_geologue` = rpg_geologue+5 WHERE `id` = ".$USER['id'].";");
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_mine'],$LNG['achievements_mine_lvl2'],$LNG['achievements_mine_reward_lvl2']),"?page=achievement",4);
			exit;	
		}
		if ($PLANET['metal_mine'] >=20)
			$mine_done1 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done1 = '<img src="styles/achievements/miss.png" >';
		if($PLANET['crystal_mine'] >=18)
			$mine_done2 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done2 = '<img src="styles/achievements/miss.png" >';	
		if($PLANET['deuterium_sintetizer'] >=17)
			$mine_done3 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done3 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'mine_lvl'			=> $LNG['achievements_mine_lvl2'],
			'mine_req_1'		=> sprintf($LNG['achievements_mine_require_1'],20),
			'mine_req_2'		=> sprintf($LNG['achievements_mine_require_2'],18),
			'mine_req_3'		=> sprintf($LNG['achievements_mine_require_3'],17),
			'mine_reward'		=> $LNG['achievements_mine_reward_lvl2'],
			'mine_done1'    	=> $mine_done1,
			'mine_done2'    	=> $mine_done2,
			'mine_done3'    	=> $mine_done3,
		));
	}
	
	//Mine Level 3
	if($USER['achievements_mine'] == 3)
	{
		if($PLANET['metal_mine'] >= 28 && $PLANET['crystal_mine'] >= 25 && $PLANET['deuterium_sintetizer'] >=23)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_mine` = achievements_mine+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_geologue` = rpg_geologue+5 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_mine'],$LNG['achievements_mine_lvl3'],$LNG['achievements_mine_reward_lvl3']),"?page=achievement",4);
			exit;	
		}
		if ($PLANET['metal_mine'] >=28)
			$mine_done1 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done1 = '<img src="styles/achievements/miss.png" >';
		if($PLANET['crystal_mine'] >=25)
			$mine_done2 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done2 = '<img src="styles/achievements/miss.png" >';	
		if($PLANET['deuterium_sintetizer'] >=23)
			$mine_done3 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done3 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'mine_lvl'			=> $LNG['achievements_mine_lvl3'],
			'mine_req_1'		=> sprintf($LNG['achievements_mine_require_1'],28),
			'mine_req_2'		=> sprintf($LNG['achievements_mine_require_2'],25),
			'mine_req_3'		=> sprintf($LNG['achievements_mine_require_3'],23),
			'mine_reward'		=> $LNG['achievements_mine_reward_lvl3'],
			'mine_done1'    	=> $mine_done1,
			'mine_done2'    	=> $mine_done2,
			'mine_done3'    	=> $mine_done3,
		));
	}
	
	//Mine Level 4
	if($USER['achievements_mine'] == 4)
	{
		if($PLANET['metal_mine'] >= 35 && $PLANET['crystal_mine'] >= 33 && $PLANET['deuterium_sintetizer'] >=30)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_mine` = achievements_mine+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_geologue` = rpg_geologue+5 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_mine'],$LNG['achievements_mine_lvl4'],$LNG['achievements_mine_reward_lvl4']),"?page=achievement",4);
			exit;	
		}
		if ($PLANET['metal_mine'] >=35)
			$mine_done1 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done1 = '<img src="styles/achievements/miss.png" >';
		if($PLANET['crystal_mine'] >=33)
			$mine_done2 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done2 = '<img src="styles/achievements/miss.png" >';	
		if($PLANET['deuterium_sintetizer'] >=30)
			$mine_done3 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done3 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'mine_lvl'			=> $LNG['achievements_mine_lvl4'],
			'mine_req_1'		=> sprintf($LNG['achievements_mine_require_1'],35),
			'mine_req_2'		=> sprintf($LNG['achievements_mine_require_2'],33),
			'mine_req_3'		=> sprintf($LNG['achievements_mine_require_3'],30),
			'mine_reward'		=> $LNG['achievements_mine_reward_lvl4'],
			'mine_done1'    	=> $mine_done1,
			'mine_done2'    	=> $mine_done2,
			'mine_done3'    	=> $mine_done3,
		));
	}

	//Mine Level 5
	if($USER['achievements_mine'] == 5)
	{
		if($PLANET['metal_mine'] >= 48 && $PLANET['crystal_mine'] >= 45 && $PLANET['deuterium_sintetizer'] >=40)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_mine` = achievements_mine+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_geologue` = rpg_geologue+5 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_mine'],$LNG['achievements_mine_lvl5'],$LNG['achievements_mine_reward_lvl5']),"?page=achievement",4);
			exit;	
		}
		if ($PLANET['metal_mine'] >=48)
			$mine_done1 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done1 = '<img src="styles/achievements/miss.png" >';
		if($PLANET['crystal_mine'] >=45)
			$mine_done2 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done2 = '<img src="styles/achievements/miss.png" >';	
		if($PLANET['deuterium_sintetizer'] >=40)
			$mine_done3 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done3 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'mine_lvl'			=> $LNG['achievements_mine_lvl5'],
			'mine_req_1'		=> sprintf($LNG['achievements_mine_require_1'],48),
			'mine_req_2'		=> sprintf($LNG['achievements_mine_require_2'],45),
			'mine_req_3'		=> sprintf($LNG['achievements_mine_require_3'],40),
			'mine_reward'		=> $LNG['achievements_mine_reward_lvl5'],
			'mine_done1'    	=> $mine_done1,
			'mine_done2'    	=> $mine_done2,
			'mine_done3'    	=> $mine_done3,
		));
	}

	//Mine Level is HARDCORE
	if($USER['achievements_mine'] == 6)
	{
		if($PLANET['metal_mine'] >= 60 && $PLANET['crystal_mine'] >= 57 && $PLANET['deuterium_sintetizer'] >=58)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_mine` = achievements_mine+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_geologue` = rpg_geologue+10 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_mine'],$LNG['achievements_mine_hardcore'],$LNG['achievements_mine_reward_hardcore']),"?page=achievement",4);
			exit;	
		}
		if ($PLANET['metal_mine'] >=60)
			$mine_done1 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done1 = '<img src="styles/achievements/miss.png" >';
		if($PLANET['crystal_mine'] >=57)
			$mine_done2 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done2 = '<img src="styles/achievements/miss.png" >';	
		if($PLANET['deuterium_sintetizer'] >=58)
			$mine_done3 = '<img src="styles/achievements/done.png" >';
		else
			$mine_done3 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'mine_lvl'			=> $LNG['achievements_mine_hardcore'],
			'mine_req_1'		=> sprintf($LNG['achievements_mine_require_1'],60),
			'mine_req_2'		=> sprintf($LNG['achievements_mine_require_2'],57),
			'mine_req_3'		=> sprintf($LNG['achievements_mine_require_3'],58),
			'mine_reward'		=> $LNG['achievements_mine_reward_hardcore'],
			'mine_done1'    	=> $mine_done1,
			'mine_done2'    	=> $mine_done2,
			'mine_done3'    	=> $mine_done3,
		));
	}

	//Mine Finish
	if($USER['achievements_mine'] > 6)
	{
		$mine_done1 = '<img src="styles/achievements/done.png" >';
		$mine_done2 = '<img src="styles/achievements/done.png" >';
		$mine_done3 = '<img src="styles/achievements/done.png" >';
		$this->tplObj->assign_vars(array(
			'mine_lvl'			=> ' <span style="color:lime">'.$LNG['achievements_mine_done'].'</span>',
			'mine_req_1'		=> sprintf($LNG['achievements_mine_require_1'],60),
			'mine_req_2'		=> sprintf($LNG['achievements_mine_require_2'],57),
			'mine_req_3'		=> sprintf($LNG['achievements_mine_require_3'],58),
			'mine_reward'		=> $LNG['achievements_mine_reward_hardcore'],
			'mine_done1'    	=> $mine_done1,
			'mine_done2'    	=> $mine_done2,
			'mine_done3'    	=> $mine_done3,
		));
	}
	
	//Research Achievement
	
	//Research Level 1
	if($USER['achievements_research'] == 1)
	{
		if($USER['spy_tech'] >= 5 && $USER['computer_tech'] >= 5 && $USER['energy_tech'] >=5)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_research` = achievements_research+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_ingenieur` = rpg_ingenieur+5 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_research'],$LNG['achievements_research_lvl1'],$LNG['achievements_research_reward_lvl1']),"?page=achievement",4);
			exit;	
		}
		if ($USER['spy_tech'] >= 5)
			$research_done1 = '<img src="styles/achievements/done.png" >';
		else
			$research_done1 = '<img src="styles/achievements/miss.png" >';
		if($USER['computer_tech'] >= 6)
			$research_done2 = '<img src="styles/achievements/done.png" >';
		else
			$research_done2 = '<img src="styles/achievements/miss.png" >';	
		if($USER['energy_tech'] >=5)
			$research_done3 = '<img src="styles/achievements/done.png" >';
		else
			$research_done3 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'research_lvl'			=> $LNG['achievements_research_lvl1'],
			'research_req_1'		=> $LNG['achievements_research_lvl1_require_1'],
			'research_req_2'		=> $LNG['achievements_research_lvl1_require_2'],
			'research_req_3'		=> $LNG['achievements_research_lvl1_require_3'],
			'research_reward'		=> $LNG['achievements_research_reward_lvl1'],
			'research_done1'    	=> $research_done1,
			'research_done2'    	=> $research_done2,
			'research_done3'    	=> $research_done3,
		));
	}
	
	//Research Level 2
	if($USER['achievements_research'] == 2)
	{
		if($USER['spy_tech'] >= 10 && $USER['computer_tech'] >= 10 && $USER['energy_tech'] >=10)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_research` = achievements_research+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_scientifique` = rpg_scientifique+5 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_research'],$LNG['achievements_research_lvl2'],$LNG['achievements_research_reward_lvl2']),"?page=achievement",4);
			exit;	
		}
		if ($USER['spy_tech'] >= 10)
			$research_done1 = '<img src="styles/achievements/done.png" >';
		else
			$research_done1 = '<img src="styles/achievements/miss.png" >';
		if($USER['computer_tech'] >= 10)
			$research_done2 = '<img src="styles/achievements/done.png" >';
		else
			$research_done2 = '<img src="styles/achievements/miss.png" >';	
		if($USER['energy_tech'] >=10)
			$research_done3 = '<img src="styles/achievements/done.png" >';
		else
			$research_done3 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'research_lvl'			=> $LNG['achievements_research_lvl2'],
			'research_req_1'		=> $LNG['achievements_research_lvl2_require_1'],
			'research_req_2'		=> $LNG['achievements_research_lvl2_require_2'],
			'research_req_3'		=> $LNG['achievements_research_lvl2_require_3'],
			'research_reward'		=> $LNG['achievements_research_reward_lvl2'],
			'research_done1'    	=> $research_done1,
			'research_done2'    	=> $research_done2,
			'research_done3'    	=> $research_done3,
		));
	}
	
	//Research Level 3
	if($USER['achievements_research'] == 3)
	{
		if($USER['combustion_tech'] >=10 && $USER['impulse_motor_tech'] >= 7 && $USER['hyperspace_motor_tech'] >= 5)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_research` = achievements_research+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_amiral` = rpg_amiral+5 WHERE `id` = ".$USER['id'].";");
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_research'],$LNG['achievements_research_lvl3'],$LNG['achievements_research_reward_lvl3']),"?page=achievement",4);
			exit;	
		}
		if ($USER['combustion_tech'] >= 10)
			$research_done1 = '<img src="styles/achievements/done.png" >';
		else
			$research_done1 = '<img src="styles/achievements/miss.png" >';
		if($USER['impulse_motor_tech'] >= 7)
			$research_done2 = '<img src="styles/achievements/done.png" >';
		else
			$research_done2 = '<img src="styles/achievements/miss.png" >';	
		if($USER['hyperspace_motor_tech'] >=5)
			$research_done3 = '<img src="styles/achievements/done.png" >';
		else
			$research_done3 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'research_lvl'			=> $LNG['achievements_research_lvl3'],
			'research_req_1'		=> $LNG['achievements_research_lvl3_require_1'],
			'research_req_2'		=> $LNG['achievements_research_lvl3_require_2'],
			'research_req_3'		=> $LNG['achievements_research_lvl3_require_3'],
			'research_reward'		=> $LNG['achievements_research_reward_lvl3'],
			'research_done1'    	=> $research_done1,
			'research_done2'    	=> $research_done2,
			'research_done3'    	=> $research_done3,
		));
	}
	
	//Research Level 4
	if($USER['achievements_research'] == 4)
	{
		if($USER['metal_proc_tech'] >=18 && $USER['crystal_proc_tech'] >= 16 && $USER['deuterium_proc_tech'] >= 16)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_research` = achievements_research+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_geologue` = rpg_geologue+5 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_research'],$LNG['achievements_research_lvl4'],$LNG['achievements_research_reward_lvl4']),"?page=achievement",4);
			exit;	
		}
		if ($USER['metal_proc_tech'] >=18)
			$research_done1 = '<img src="styles/achievements/done.png" >';
		else
			$research_done1 = '<img src="styles/achievements/miss.png" >';
		if($USER['crystal_proc_tech'] >= 16)
			$research_done2 = '<img src="styles/achievements/done.png" >';
		else
			$research_done2 = '<img src="styles/achievements/miss.png" >';	
		if($USER['deuterium_proc_tech'] >= 16)
			$research_done3 = '<img src="styles/achievements/done.png" >';
		else
			$research_done3 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'research_lvl'			=> $LNG['achievements_research_lvl4'],
			'research_req_1'		=> $LNG['achievements_research_lvl4_require_1'],
			'research_req_2'		=> $LNG['achievements_research_lvl4_require_2'],
			'research_req_3'		=> $LNG['achievements_research_lvl4_require_3'],
			'research_reward'		=> $LNG['achievements_research_reward_lvl4'],
			'research_done1'    	=> $research_done1,
			'research_done2'    	=> $research_done2,
			'research_done3'    	=> $research_done3,
		));
	}
	
	//Research Level 5
	if($USER['achievements_research'] == 5)
	{
		if($USER['military_tech'] >=20 && $USER['defence_tech'] >= 22 && $USER['shield_tech'] >= 25)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_research` = achievements_research+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_amiral` = rpg_amiral+5 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_research'],$LNG['achievements_research_lvl5'],$LNG['achievements_research_reward_lvl5']),"?page=achievement",4);
			exit;	
		}
		if ($USER['military_tech'] >=20)
			$research_done1 = '<img src="styles/achievements/done.png" >';
		else
			$research_done1 = '<img src="styles/achievements/miss.png" >';
		if($USER['defence_tech'] >= 22)
			$research_done2 = '<img src="styles/achievements/done.png" >';
		else
			$research_done2 = '<img src="styles/achievements/miss.png" >';	
		if($USER['shield_tech'] >= 25)
			$research_done3 = '<img src="styles/achievements/done.png" >';
		else
			$research_done3 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'research_lvl'			=> $LNG['achievements_research_lvl5'],
			'research_req_1'		=> $LNG['achievements_research_lvl5_require_1'],
			'research_req_2'		=> $LNG['achievements_research_lvl5_require_2'],
			'research_req_3'		=> $LNG['achievements_research_lvl5_require_3'],
			'research_reward'		=> $LNG['achievements_research_reward_lvl5'],
			'research_done1'    	=> $research_done1,
			'research_done2'    	=> $research_done2,
			'research_done3'    	=> $research_done3,
		));
	}
	
	//Research Level in HARDCORE
	if($USER['achievements_research'] == 6)
	{
		if($USER['military_tech'] >=28 && $USER['defence_tech'] >= 28 && $USER['shield_tech'] >= 30)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_research` = achievements_research+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_amiral` = rpg_amiral+10 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_research'],$LNG['achievements_research_hardcore'],$LNG['achievements_research_reward_hardcore']),"?page=achievement",4);
			exit;	
		}
		if ($USER['military_tech'] >=28)
			$research_done1 = '<img src="styles/achievements/done.png" >';
		else
			$research_done1 = '<img src="styles/achievements/miss.png" >';
		if($USER['defence_tech'] >= 28)
			$research_done2 = '<img src="styles/achievements/done.png" >';
		else
			$research_done2 = '<img src="styles/achievements/miss.png" >';	
		if($USER['shield_tech'] >= 30)
			$research_done3 = '<img src="styles/achievements/done.png" >';
		else
			$research_done3 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'research_lvl'			=> $LNG['achievements_research_hardcore'],
			'research_req_1'		=> $LNG['achievements_research_hardcore_require_1'],
			'research_req_2'		=> $LNG['achievements_research_hardcore_require_2'],
			'research_req_3'		=> $LNG['achievements_research_hardcore_require_3'],
			'research_reward'		=> $LNG['achievements_research_reward_hardcore'],
			'research_done1'    	=> $research_done1,
			'research_done2'    	=> $research_done2,
			'research_done3'    	=> $research_done3,
		));
	}
	//Research Finish
	if($USER['achievements_research'] > 6)
	{
		$research_done1 = '<img src="styles/achievements/done.png" >';
		$research_done2 = '<img src="styles/achievements/done.png" >';
		$research_done3 = '<img src="styles/achievements/done.png" >';
		
		$this->tplObj->assign_vars(array(
			'research_lvl'			=> ' <span style="color:lime">'.$LNG['achievements_research_done'].'</span>',
			'research_req_1'		=> $LNG['achievements_research_hardcore_require_1'],
			'research_req_2'		=> $LNG['achievements_research_hardcore_require_2'],
			'research_req_3'		=> $LNG['achievements_research_hardcore_require_3'],
			'research_reward'		=> $LNG['achievements_research_reward_hardcore'],
			'research_done1'    	=> $research_done1,
			'research_done2'    	=> $research_done2,
			'research_done3'    	=> $research_done3,
		));
	}
	
	//Battle Achievment
	
	//Battle Level 1
	if($USER['achievements_battle'] == 1)
	{
		if(($USER['wons']+$USER['loos']+$USER['draws'])>=150 && $USER['wons']>=50)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_battle` = achievements_battle+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_battle'],$LNG['achievements_battle_lvl1'],$LNG['achievements_battle_reward_lvl1']),"?page=achievement",4);
			exit;	
		}
		if (($USER['wons']+$USER['loos']+$USER['draws']) >=150)
			$battle_done1 = '<img src="styles/achievements/done.png" >';
		else
			$battle_done1 = '<img src="styles/achievements/miss.png" >';
		if($USER['wons']>=50)
			$battle_done2 = '<img src="styles/achievements/done.png" >';
		else
			$battle_done2 = '<img src="styles/achievements/miss.png" >';	
		
		$this->tplObj->assign_vars(array(
			'battle_lvl'		=> $LNG['achievements_battle_lvl1'],
			'battle_req_1'		=> sprintf($LNG['achievements_battle_require_1'],150),
			'battle_req_2'		=> sprintf($LNG['achievements_battle_require_2'],50),
			'battle_reward'		=> $LNG['achievements_battle_reward_lvl1'],
			'battle_done1'    	=> $battle_done1,
			'battle_done2'    	=> $battle_done2,

		));
	}
	
	//Battle Level 2
	if($USER['achievements_battle'] == 2)
	{
		if(($USER['wons']+$USER['loos']+$USER['draws'])>=350 && $USER['wons']>=150)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_battle` = achievements_battle+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_battle'],$LNG['achievements_battle_lvl2'],$LNG['achievements_battle_reward_lvl2']),"?page=achievement",4);
			exit;	
		}
		if (($USER['wons']+$USER['loos']+$USER['draws']) >=350)
			$battle_done1 = '<img src="styles/achievements/done.png" >';
		else
			$battle_done1 = '<img src="styles/achievements/miss.png" >';
		if($USER['wons']>=150)
			$battle_done2 = '<img src="styles/achievements/done.png" >';
		else
			$battle_done2 = '<img src="styles/achievements/miss.png" >';	
		
		$this->tplObj->assign_vars(array(
			'battle_lvl'		=> $LNG['achievements_battle_lvl2'],
			'battle_req_1'		=> sprintf($LNG['achievements_battle_require_1'],350),
			'battle_req_2'		=> sprintf($LNG['achievements_battle_require_2'],150),
			'battle_reward'		=> $LNG['achievements_battle_reward_lvl2'],
			'battle_done1'    	=> $battle_done1,
			'battle_done2'    	=> $battle_done2,

		));
	}
	
	//Battle Level 3
	if($USER['achievements_battle'] == 3)
	{
		if(($USER['wons']+$USER['loos']+$USER['draws'])>=500 && $USER['wons']>=250)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_battle` = achievements_battle+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_battle'],$LNG['achievements_battle_lvl3'],$LNG['achievements_battle_reward_lvl3']),"?page=achievement",4);
			exit;	
		}
		if (($USER['wons']+$USER['loos']+$USER['draws']) >=500)
			$battle_done1 = '<img src="styles/achievements/done.png" >';
		else
			$battle_done1 = '<img src="styles/achievements/miss.png" >';
		if($USER['wons']>=250)
			$battle_done2 = '<img src="styles/achievements/done.png" >';
		else
			$battle_done2 = '<img src="styles/achievements/miss.png" >';	
		
		$this->tplObj->assign_vars(array(
			'battle_lvl'		=> $LNG['achievements_battle_lvl3'],
			'battle_req_1'		=> sprintf($LNG['achievements_battle_require_1'],500),
			'battle_req_2'		=> sprintf($LNG['achievements_battle_require_2'],250),
			'battle_reward'		=> $LNG['achievements_battle_reward_lvl3'],
			'battle_done1'    	=> $battle_done1,
			'battle_done2'    	=> $battle_done2,

		));
	}
	
	//Battle Level 4
	if($USER['achievements_battle'] == 4)
	{
		if(($USER['wons']+$USER['loos']+$USER['draws'])>=850 && $USER['wons']>=400)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_battle` = achievements_battle+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_battle'],$LNG['achievements_battle_lvl4'],$LNG['achievements_battle_reward_lvl4']),"?page=achievement",4);
			exit;	
		}
		if (($USER['wons']+$USER['loos']+$USER['draws']) >=850)
			$battle_done1 = '<img src="styles/achievements/done.png" >';
		else
			$battle_done1 = '<img src="styles/achievements/miss.png" >';
		if($USER['wons']>=400)
			$battle_done2 = '<img src="styles/achievements/done.png" >';
		else
			$battle_done2 = '<img src="styles/achievements/miss.png" >';	
		
		$this->tplObj->assign_vars(array(
			'battle_lvl'		=> $LNG['achievements_battle_lvl4'],
			'battle_req_1'		=> sprintf($LNG['achievements_battle_require_1'],850),
			'battle_req_2'		=> sprintf($LNG['achievements_battle_require_2'],400),
			'battle_reward'		=> $LNG['achievements_battle_reward_lvl4'],
			'battle_done1'    	=> $battle_done1,
			'battle_done2'    	=> $battle_done2,

		));
	}
	
	//Battle Level 5
	if($USER['achievements_battle'] == 5)
	{
		if(($USER['wons']+$USER['loos']+$USER['draws'])>=2000 && $USER['wons']>=1000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_battle` = achievements_battle+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_battle'],$LNG['achievements_battle_lvl5'],$LNG['achievements_battle_reward_lvl5']),"?page=achievement",4);
			exit;	
		}
		if (($USER['wons']+$USER['loos']+$USER['draws']) >=2000)
			$battle_done1 = '<img src="styles/achievements/done.png" >';
		else
			$battle_done1 = '<img src="styles/achievements/miss.png" >';
		if($USER['wons']>=1000)
			$battle_done2 = '<img src="styles/achievements/done.png" >';
		else
			$battle_done2 = '<img src="styles/achievements/miss.png" >';	
		
		$this->tplObj->assign_vars(array(
			'battle_lvl'		=> $LNG['achievements_battle_lvl5'],
			'battle_req_1'		=> sprintf($LNG['achievements_battle_require_1'],2000),
			'battle_req_2'		=> sprintf($LNG['achievements_battle_require_2'],1000),
			'battle_reward'		=> $LNG['achievements_battle_reward_lvl5'],
			'battle_done1'    	=> $battle_done1,
			'battle_done2'    	=> $battle_done2,

		));
	}
		
	//Battle Level in HARDCORE
	if($USER['achievements_battle'] == 6)
	{
		if(($USER['wons']+$USER['loos']+$USER['draws'])>=4500 && $USER['wons']>=2500)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_battle` = achievements_battle+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_battle'],$LNG['achievements_battle_hardcore'],$LNG['achievements_battle_reward_hardcore']),"?page=achievement",4);
			exit;	
		}
		if (($USER['wons']+$USER['loos']+$USER['draws']) >=4500)
			$battle_done1 = '<img src="styles/achievements/done.png" >';
		else
			$battle_done1 = '<img src="styles/achievements/miss.png" >';
		if($USER['wons']>=2500)
			$battle_done2 = '<img src="styles/achievements/done.png" >';
		else
			$battle_done2 = '<img src="styles/achievements/miss.png" >';	
		
		$this->tplObj->assign_vars(array(
			'battle_lvl'		=> $LNG['achievements_battle_hardcore'],
			'battle_req_1'		=> sprintf($LNG['achievements_battle_require_1'],4500),
			'battle_req_2'		=> sprintf($LNG['achievements_battle_require_2'],2500),
			'battle_reward'		=> $LNG['achievements_battle_reward_hardcore'],
			'battle_done1'    	=> $battle_done1,
			'battle_done2'    	=> $battle_done2,

		));
	}

	//Battle Finish
	if($USER['achievements_battle'] > 6)
	{
		$battle_done1 = '<img src="styles/achievements/done.png" >';
		$battle_done2 = '<img src="styles/achievements/done.png" >';

		$this->tplObj->assign_vars(array(
			'battle_lvl'		=> ' <span style="color:lime">'.$LNG['achievements_battle_done'].'</span>',
			'battle_req_1'		=> sprintf($LNG['achievements_battle_require_1'],4500),
			'battle_req_2'		=> sprintf($LNG['achievements_battle_require_2'],2500),
			'battle_reward'		=> $LNG['achievements_battle_reward_hardcore'],
			'battle_done1'    	=> $battle_done1,
			'battle_done2'    	=> $battle_done2,

		));
	}
	
	//Ship Achievement

	//Ship Level 1
	if($USER['achievements_ship'] == 1)
	{
		if($PLANET['battle_ship']>=1000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_ship` = achievements_ship+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_amiral` = rpg_amiral+2 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_ship'],$LNG['achievements_ship_lvl1'],$LNG['achievements_ship_reward_lvl1']),"?page=achievement",4);
			exit;	
		}
		else
			$ship_done1 = '<img src="styles/achievements/miss.png" >';
		
		$this->tplObj->assign_vars(array(
			'ship_lvl'			=> $LNG['achievements_ship_lvl1'],
			'ship_req_1'		=> $LNG['achievements_ship_lvl1_require_1'],
			'ship_reward'		=> $LNG['achievements_ship_reward_lvl1'],
			'ship_done1'    	=> $ship_done1,
			

		));
	}
	
	//Ship Level 2
	if($USER['achievements_ship'] == 2)
	{
		if($PLANET['destructor']>=1000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_ship` = achievements_ship+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_amiral` = rpg_amiral+2 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_ship'],$LNG['achievements_ship_lvl2'],$LNG['achievements_ship_reward_lvl2']),"?page=achievement",4);
			exit;	
		}
		else
			$ship_done1 = '<img src="styles/achievements/miss.png" >';
		
		$this->tplObj->assign_vars(array(
			'ship_lvl'			=> $LNG['achievements_ship_lvl2'],
			'ship_req_1'		=> $LNG['achievements_ship_lvl2_require_1'],
			'ship_reward'		=> $LNG['achievements_ship_reward_lvl2'],
			'ship_done1'    	=> $ship_done1,
			

		));
	}
	
	//Ship Level 3
	if($USER['achievements_ship'] == 3)
	{
		if($PLANET['dearth_star']>=200000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_ship` = achievements_ship+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_commandant` = rpg_commandant+2 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_ship'],$LNG['achievements_ship_lvl3'],$LNG['achievements_ship_reward_lvl3']),"?page=achievement",4);
			exit;
		}
		else
			$ship_done1 = '<img src="styles/achievements/miss.png" >';
		
		$this->tplObj->assign_vars(array(
			'ship_lvl'			=> $LNG['achievements_ship_lvl3'],
			'ship_req_1'		=> $LNG['achievements_ship_lvl3_require_1'],
			'ship_reward'		=> $LNG['achievements_ship_reward_lvl3'],
			'ship_done1'    	=> $ship_done1,
			

		));
	}
	
	//Ship Level 4
	if($USER['achievements_ship'] == 4)
	{
		if($PLANET['lune_noir']>=500000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_ship` = achievements_ship+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_commandant` = rpg_commandant+2 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_ship'],$LNG['achievements_ship_lvl4'],$LNG['achievements_ship_reward_lvl4']),"?page=achievement",4);
			exit;
		}
		else
			$ship_done1 = '<img src="styles/achievements/miss.png" >';
		
		$this->tplObj->assign_vars(array(
			'ship_lvl'			=> $LNG['achievements_ship_lvl4'],
			'ship_req_1'		=> $LNG['achievements_ship_lvl4_require_1'],
			'ship_reward'		=> $LNG['achievements_ship_reward_lvl4'],
			'ship_done1'    	=> $ship_done1,
			

		));
	}
	
	//Ship Level 5	
	if($USER['achievements_ship'] == 5)
	{
		if($PLANET['star_crasher']>=100000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_ship` = achievements_ship+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_general` = rpg_general+2 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_ship'],$LNG['achievements_ship_lvl5'],$LNG['achievements_ship_reward_lvl5']),"?page=achievement",4);
			exit;
		}
		else
			$ship_done1 = '<img src="styles/achievements/miss.png" >';
		
		$this->tplObj->assign_vars(array(
			'ship_lvl'			=> $LNG['achievements_ship_lvl5'],
			'ship_req_1'		=> $LNG['achievements_ship_lvl5_require_1'],
			'ship_reward'		=> $LNG['achievements_ship_reward_lvl5'],
			'ship_done1'    	=> $ship_done1,
			

		));
	}
	
	//Ship Finish
	if($USER['achievements_ship'] > 5)
	{
		
		$ship_done1 = '<img src="styles/achievements/done.png" >';
		
		$this->tplObj->assign_vars(array(
			'ship_lvl'		=> ' <span style="color:lime">'.$LNG['achievements_ship_done'].'</span>',
			'ship_req_1'		=> $LNG['achievements_ship_lvl5_require_1'],
			'ship_reward'		=> $LNG['achievements_ship_reward_lvl5'],
			'ship_done1'    	=> $ship_done1,
			

		));
	}

	//Defence Achievement
	
	//Defence Level 1
	if($USER['achievements_defence'] == 1)
	{
		if($PLANET['gauss_canyon']>=100000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_defence` = achievements_defence+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_defenseur` = rpg_defenseur+2 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_ship'],$LNG['achievements_defence_lvl1'],$LNG['achievements_defence_reward_lvl1']),"?page=achievement",4);
			exit;
		}
		else
			$defence_done1 = '<img src="styles/achievements/miss.png" >';
		
		$this->tplObj->assign_vars(array(
			'defence_lvl'		=> $LNG['achievements_defence_lvl1'],
			'defence_req_1'		=> $LNG['achievements_defence_lvl1_require_1'],
			'defence_reward'	=> $LNG['achievements_defence_reward_lvl1'],
			'defence_done1'    	=> $defence_done1,
			

		));
	}
	
	//Defence Level 2
	if($USER['achievements_defence'] == 2)
	{
		if($PLANET['ionic_canyon']>=100000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_defence` = achievements_defence+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_defenseur` = rpg_defenseur+2 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_ship'],$LNG['achievements_defence_lvl2'],$LNG['achievements_defence_reward_lvl2']),"?page=achievement",4);
			exit;
		}
		else
			$defence_done1 = '<img src="styles/achievements/miss.png" >';
		
		$this->tplObj->assign_vars(array(
			'defence_lvl'		=> $LNG['achievements_defence_lvl2'],
			'defence_req_1'		=> $LNG['achievements_defence_lvl2_require_1'],
			'defence_reward'	=> $LNG['achievements_defence_reward_lvl2'],
			'defence_done1'    	=> $defence_done1,
			

		));
	}
	
	//Defence Level 3
	if($USER['achievements_defence'] == 3)
	{
		if($PLANET['buster_canyon']>=150000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_defence` = achievements_defence+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_defenseur` = rpg_defenseur+2 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_ship'],$LNG['achievements_defence_lvl3'],$LNG['achievements_defence_reward_lvl3']),"?page=achievement",4);
			exit;
		}
		else
			$defence_done1 = '<img src="styles/achievements/miss.png" >';
		
		$this->tplObj->assign_vars(array(
			'defence_lvl'		=> $LNG['achievements_defence_lvl3'],
			'defence_req_1'		=> $LNG['achievements_defence_lvl3_require_1'],
			'defence_reward'	=> $LNG['achievements_defence_reward_lvl3'],
			'defence_done1'    	=> $defence_done1,
			

		));
	}
	
	//Defence Level 4
	if($USER['achievements_defence'] == 4)
	{
		if($PLANET['graviton_canyon']>=20000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_defence` = achievements_defence+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_bunker` = rpg_bunker+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_ship'],$LNG['achievements_defence_lvl4'],$LNG['achievements_defence_reward_lvl4']),"?page=achievement",4);
			exit;
		}
		else
			$defence_done1 = '<img src="styles/achievements/miss.png" >';
		
		$this->tplObj->assign_vars(array(
			'defence_lvl'		=> $LNG['achievements_defence_lvl4'],
			'defence_req_1'		=> $LNG['achievements_defence_lvl4_require_1'],
			'defence_reward'	=> $LNG['achievements_defence_reward_lvl4'],
			'defence_done1'    	=> $defence_done1,
			

		));
	}
	
	//Defence Level 5
	if($USER['achievements_defence'] == 5)
	{
		if($PLANET['orbital_station'] == 1)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_defence` = achievements_defence+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_ship'],$LNG['achievements_defence_lvl5'],$LNG['achievements_defence_reward_lvl5']),"?page=achievement",4);
			exit;	
		}
		else
			$defence_done1 = '<img src="styles/achievements/miss.png" >';
		
		$this->tplObj->assign_vars(array(
			'defence_lvl'		=> $LNG['achievements_defence_lvl5'],
			'defence_req_1'		=> $LNG['achievements_defence_lvl5_require_1'],
			'defence_reward'	=> $LNG['achievements_defence_reward_lvl5'],
			'defence_done1'    	=> $defence_done1,
			

		));
	}
	
	//Defence Finish
	if($USER['achievements_defence'] > 5)
	{		
		$defence_done1 = '<img src="styles/achievements/done.png" >';
		
		$this->tplObj->assign_vars(array(
			'defence_lvl'		=> ' <span style="color:lime">'.$LNG['achievements_defence_done'].'</span>',
			'defence_req_1'		=> $LNG['achievements_defence_lvl5_require_1'],
			'defence_reward'	=> $LNG['achievements_defence_reward_lvl5'],
			'defence_done1'    	=> $defence_done1,
			

		));
	}

	
	//Storage Achievement
	
	//Storage Level 1
	if($USER['achievements_storage'] == 1)
	{
		if($PLANET['metal_store'] >= 8 && $PLANET['crystal_store'] >= 8 && $PLANET['deuterium_store'] >=7)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_storage` = achievements_storage+1 WHERE `id` = ".$USER['id'].";");
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_stockeur` = rpg_stockeur+5 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_storage'],$LNG['achievements_storage_lvl1'],$LNG['achievements_storage_reward_lvl1']),"?page=achievement",4);
			exit;	
		}
		if ($PLANET['metal_store'] >=8)
			$storage_done1 = '<img src="styles/achievements/done.png" >';
		else
			$storage_done1 = '<img src="styles/achievements/miss.png" >';
		if($PLANET['crystal_store'] >=8)
			$storage_done2 = '<img src="styles/achievements/done.png" >';
		else
			$storage_done2 = '<img src="styles/achievements/miss.png" >';	
		if($PLANET['deuterium_store'] >=7)
			$storage_done3 = '<img src="styles/achievements/done.png" >';
		else
			$storage_done3 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'storage_lvl'			=> $LNG['achievements_storage_lvl1'],
			'storage_req_1'		=> sprintf($LNG['achievements_storage_require_1'],8),
			'storage_req_2'		=> sprintf($LNG['achievements_storage_require_2'],8),
			'storage_req_3'		=> sprintf($LNG['achievements_storage_require_3'],7),
			'storage_reward'		=> $LNG['achievements_storage_reward_lvl1'],
			'storage_done1'    	=> $storage_done1,
			'storage_done2'    	=> $storage_done2,
			'storage_done3'    	=> $storage_done3,
		));
	}

	//Storage Level 2
	if($USER['achievements_storage'] == 2)
	{
		if($PLANET['metal_store'] >= 16 && $PLANET['crystal_store'] >= 15 && $PLANET['deuterium_store'] >= 16)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_storage` = achievements_storage+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_stockeur` = rpg_stockeur+5 WHERE `id` = ".$USER['id'].";");
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_storage'],$LNG['achievements_storage_lvl2'],$LNG['achievements_storage_reward_lvl2']),"?page=achievement",4);
			exit;	
		}
		if ($PLANET['metal_store'] >=16)
			$storage_done1 = '<img src="styles/achievements/done.png" >';
		else
			$storage_done1 = '<img src="styles/achievements/miss.png" >';
		if($PLANET['crystal_store'] >=15)
			$storage_done2 = '<img src="styles/achievements/done.png" >';
		else
			$storage_done2 = '<img src="styles/achievements/miss.png" >';	
		if($PLANET['deuterium_store'] >=16)
			$storage_done3 = '<img src="styles/achievements/done.png" >';
		else
			$storage_done3 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'storage_lvl'			=> $LNG['achievements_storage_lvl2'],
			'storage_req_1'		=> sprintf($LNG['achievements_storage_require_1'],16),
			'storage_req_2'		=> sprintf($LNG['achievements_storage_require_2'],15),
			'storage_req_3'		=> sprintf($LNG['achievements_storage_require_3'],16),
			'storage_reward'		=> $LNG['achievements_storage_reward_lvl2'],
			'storage_done1'    	=> $storage_done1,
			'storage_done2'    	=> $storage_done2,
			'storage_done3'    	=> $storage_done3,
		));
	}	

	//Storage Level 3
	if($USER['achievements_storage'] == 3)
	{
		if($PLANET['metal_store'] >= 24 && $PLANET['crystal_store'] >= 25 && $PLANET['deuterium_store'] >= 26)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_storage` = achievements_storage+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `rpg_stockeur` = rpg_stockeur+5 WHERE `id` = ".$USER['id'].";");
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_storage'],$LNG['achievements_storage_lvl3'],$LNG['achievements_storage_reward_lvl3']),"?page=achievement",4);
			exit;	
		}
		if ($PLANET['metal_store'] >=24)
			$storage_done1 = '<img src="styles/achievements/done.png" >';
		else
			$storage_done1 = '<img src="styles/achievements/miss.png" >';
		if($PLANET['crystal_store'] >=25)
			$storage_done2 = '<img src="styles/achievements/done.png" >';
		else
			$storage_done2 = '<img src="styles/achievements/miss.png" >';	
		if($PLANET['deuterium_store'] >=26)
			$storage_done3 = '<img src="styles/achievements/done.png" >';
		else
			$storage_done3 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'storage_lvl'			=> $LNG['achievements_storage_lvl3'],
			'storage_req_1'		=> sprintf($LNG['achievements_storage_require_1'],24),
			'storage_req_2'		=> sprintf($LNG['achievements_storage_require_2'],25),
			'storage_req_3'		=> sprintf($LNG['achievements_storage_require_3'],26),
			'storage_reward'	=> $LNG['achievements_storage_reward_lvl3'],
			'storage_done1'    	=> $storage_done1,
			'storage_done2'    	=> $storage_done2,
			'storage_done3'    	=> $storage_done3,
		));
		
	}	
		
	//Storage Finish
	if($USER['achievements_storage'] > 3)
	{
		$storage_done1 = '<img src="styles/achievements/done.png" >';
		$storage_done2 = '<img src="styles/achievements/done.png" >';
		$storage_done3 = '<img src="styles/achievements/done.png" >';
		$this->tplObj->assign_vars(array(
			'storage_lvl'			=> ' <span style="color:lime">'.$LNG['achievements_storage_done'].'</span>',
			'storage_req_1'		=> sprintf($LNG['achievements_storage_require_1'],24),
			'storage_req_2'		=> sprintf($LNG['achievements_storage_require_2'],25),
			'storage_req_3'		=> sprintf($LNG['achievements_storage_require_3'],26),
			'storage_reward'	=> $LNG['achievements_storage_reward_lvl3'],
			'storage_done1'    	=> $storage_done1,
			'storage_done2'    	=> $storage_done2,
			'storage_done3'    	=> $storage_done3,
		));
	}

	//Moon Achievement
	
	//Moon Level 1
	if($USER['achievements_moon'] == 1)
	{
		if($PLANET['mondbasis'] >= 5)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_moon` = achievements_moon+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_moon'],$LNG['achievements_moon_lvl1'],$LNG['achievements_moon_reward_lvl1']),"?page=achievement",4);
			exit;	
		}
		if ($PLANET['mondbasis'] >=5)
			$moon_done1 = '<img src="styles/achievements/done.png" >';
		else
			$moon_done1 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'moon_lvl'			=> $LNG['achievements_moon_lvl1'],
			'moon_req_1'		=> sprintf($LNG['achievements_moon_require_1'],5),
			'moon_reward'		=> $LNG['achievements_moon_reward_lvl1'],
			'moon_done1'    	=> $moon_done1,
			'moon_done2'    	=> false,
			'moon_req_2'		=> false,
			'moon_req_3'		=> false,
			'moon_done3'    	=> false,
		));
	}

	//Moon Level 2
	if($USER['achievements_moon'] == 2)
	{
		if($PLANET['mondbasis'] >= 11 && $PLANET['phalanx'] >= 5)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_moon` = achievements_moon+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_moon'],$LNG['achievements_moon_lvl2'],$LNG['achievements_moon_reward_lvl2']),"?page=achievement",4);
			exit;	
		}
		if($PLANET['mondbasis'] >= 11)
			$moon_done1 = '<img src="styles/achievements/done.png" >';
		else
			$moon_done1 = '<img src="styles/achievements/miss.png" >';
		if($PLANET['phalanx'] >= 5)
			$moon_done2 = '<img src="styles/achievements/done.png" >';
		else
			$moon_done2 = '<img src="styles/achievements/miss.png" >';	
			
		$this->tplObj->assign_vars(array(
			'moon_lvl'			=> $LNG['achievements_moon_lvl2'],
			'moon_req_1'		=> sprintf($LNG['achievements_moon_require_1'],11),
			'moon_req_2'		=> sprintf($LNG['achievements_moon_require_2'],5),
			'moon_reward'		=> $LNG['achievements_moon_reward_lvl2'],
			'moon_done1'    	=> $moon_done1,
			'moon_done2'    	=> $moon_done2,
			'moon_req_3'		=> false,
			'moon_done3'    	=> false,
		));
	}	

	//Moon Level 3
	if($USER['achievements_moon'] == 3)
	{
		if($PLANET['mondbasis'] >= 16 && $PLANET['phalanx'] >= 9 && $PLANET['sprungtor'] >= 4)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_moon` = achievements_moon+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_moon'],$LNG['achievements_moon_lvl3'],$LNG['achievements_moon_reward_lvl3']),"?page=achievement",4);
			exit;	
		}
		if ($PLANET['mondbasis'] >=16)
			$moon_done1 = '<img src="styles/achievements/done.png" >';
		else
			$moon_done1 = '<img src="styles/achievements/miss.png" >';
		if($PLANET['phalanx'] >=9)
			$moon_done2 = '<img src="styles/achievements/done.png" >';
		else
			$moon_done2 = '<img src="styles/achievements/miss.png" >';	
		if($PLANET['sprungtor'] >=4)
			$moon_done3 = '<img src="styles/achievements/done.png" >';
		else
			$moon_done3 = '<img src="styles/achievements/miss.png" >';	
			
		$this->tplObj->assign_vars(array(
			'moon_lvl'			=> $LNG['achievements_moon_lvl3'],
			'moon_req_1'		=> sprintf($LNG['achievements_moon_require_1'],16),
			'moon_req_2'		=> sprintf($LNG['achievements_moon_require_2'],9),
			'moon_req_3'		=> sprintf($LNG['achievements_moon_require_3'],4),
			'moon_reward'		=> $LNG['achievements_moon_reward_lvl3'],
			'moon_done1'    	=> $moon_done1,
			'moon_done2'    	=> $moon_done2,
			'moon_done3'    	=> $moon_done3,
		));
		
	}	
		
	//Moon Finish
	if($USER['achievements_moon'] > 3)
	{
		$moon_done1 = '<img src="styles/achievements/done.png" >';
		$moon_done2 = '<img src="styles/achievements/done.png" >';
		$moon_done3 = '<img src="styles/achievements/done.png" >';
		$this->tplObj->assign_vars(array(
			'moon_lvl'			=> ' <span style="color:lime">'.$LNG['achievements_moon_done'].'</span>',
			'moon_req_1'		=> sprintf($LNG['achievements_moon_require_1'],16),
			'moon_req_2'		=> sprintf($LNG['achievements_moon_require_2'],9),
			'moon_req_3'		=> sprintf($LNG['achievements_moon_require_3'],4),
			'moon_reward'		=> $LNG['achievements_moon_reward_lvl3'],
			'moon_done1'    	=> $moon_done1,
			'moon_done2'    	=> $moon_done2,
			'moon_done3'    	=> $moon_done3,
		));
	}
	
	//Colony Achievement

	//Colony Level 1
	if($USER['achievements_colony'] == 1)
	{
		$query = $GLOBALS['DATABASE']->uniquequery("SELECT count(*) AS planet_count FROM ".PLANETS." WHERE `id_owner` = '". $USER['id'] ."';");
		$planet_count = $query['planet_count'];
		if($planet_count >=2)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_colony` = achievements_colony+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_colony'],$LNG['achievements_colony_lvl1'],$LNG['achievements_colony_reward']),"?page=achievement",4);
			exit;	
		}
		else
			$colony_done1 = '<img src="styles/achievements/miss.png" >';
		
		$this->tplObj->assign_vars(array(
			'colony_lvl'			=> $LNG['achievements_colony_lvl1'],
			'colony_req_1'		=> $LNG['achievements_colony_lvl1_require_1'],
			'colony_reward'		=> $LNG['achievements_colony_reward'],
			'colony_done1'    	=> $colony_done1,
			

		));
	}

	//Colony Level 2
	if($USER['achievements_colony'] == 2)
	{
		$query = $GLOBALS['DATABASE']->uniquequery("SELECT count(*) AS planet_count FROM ".PLANETS." WHERE `id_owner` = '". $USER['id'] ."';");
		$planet_count = $query['planet_count'];
		if($planet_count >=6)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_colony` = achievements_colony+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_colony'],$LNG['achievements_colony_lvl2'],$LNG['achievements_colony_reward']),"?page=achievement",4);
			exit;	
		}
		else
			$colony_done1 = '<img src="styles/achievements/miss.png" >';
		
		$this->tplObj->assign_vars(array(
			'colony_lvl'			=> $LNG['achievements_colony_lvl2'],
			'colony_req_1'		=> $LNG['achievements_colony_lvl2_require_1'],
			'colony_reward'		=> $LNG['achievements_colony_reward'],
			'colony_done1'    	=> $colony_done1,
			

		));
	}
	
	//Colony Level 3
	if($USER['achievements_colony'] == 3)
	{
		$query = $GLOBALS['DATABASE']->uniquequery("SELECT count(*) AS planet_count FROM ".PLANETS." WHERE `id_owner` = '". $USER['id'] ."';");
		$planet_count = $query['planet_count'];
		if($planet_count >=11)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_colony` = achievements_colony+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_colony'],$LNG['achievements_colony_lvl3'],$LNG['achievements_colony_reward']),"?page=achievement",4);
			exit;	
		}
		else
			$colony_done1 = '<img src="styles/achievements/miss.png" >';
		
		$this->tplObj->assign_vars(array(
			'colony_lvl'			=> $LNG['achievements_colony_lvl3'],
			'colony_req_1'		=> $LNG['achievements_colony_lvl3_require_1'],
			'colony_reward'		=> $LNG['achievements_colony_reward'],
			'colony_done1'    	=> $colony_done1,
			

		));
	}

	//Colony Level 4
	if($USER['achievements_colony'] == 4)
	{
		$query = $GLOBALS['DATABASE']->uniquequery("SELECT count(*) AS planet_count FROM ".PLANETS." WHERE `id_owner` = '". $USER['id'] ."';");
		$planet_count = $query['planet_count'];
		if($planet_count >=16)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_colony` = achievements_colony+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_colony'],$LNG['achievements_colony_lvl4'],$LNG['achievements_colony_reward']),"?page=achievement",4);
			exit;	
		}
		else
			$colony_done1 = '<img src="styles/achievements/miss.png" >';
		
		$this->tplObj->assign_vars(array(
			'colony_lvl'			=> $LNG['achievements_colony_lvl4'],
			'colony_req_1'		=> $LNG['achievements_colony_lvl4_require_1'],
			'colony_reward'		=> $LNG['achievements_colony_reward'],
			'colony_done1'    	=> $colony_done1,
		
		
		));
	}	

	//Colony Level 5
	if($USER['achievements_colony'] == 5)
	{
		$query = $GLOBALS['DATABASE']->uniquequery("SELECT count(*) AS planet_count FROM ".PLANETS." WHERE `id_owner` = '". $USER['id'] ."';");
		$planet_count = $query['planet_count'];
		if($planet_count >=26)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_colony` = achievements_colony+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_colony'],$LNG['achievements_colony_lvl5'],$LNG['achievements_colony_reward']),"?page=achievement",4);
			exit;	
		}
		else
			$colony_done1 = '<img src="styles/achievements/miss.png" >';
		
		$this->tplObj->assign_vars(array(
			'colony_lvl'			=> $LNG['achievements_colony_lvl5'],
			'colony_req_1'		=> $LNG['achievements_colony_lvl5_require_1'],
			'colony_reward'		=> $LNG['achievements_colony_reward'],
			'colony_done1'    	=> $colony_done1,
			

		));
	}	
	
	//Colony Finish
	if($USER['achievements_colony'] > 5)
	{
		
		$colony_done1 = '<img src="styles/achievements/done.png" >';
		
		$this->tplObj->assign_vars(array(
			'colony_lvl'		=> ' <span style="color:lime">'.$LNG['achievements_colony_done'].'</span>',
			'colony_req_1'		=> $LNG['achievements_colony_lvl5_require_1'],
			'colony_reward'		=> $LNG['achievements_colony_reward_lvl5'],
			'colony_done1'    	=> $colony_done1,
			

		));
	}

	//Statpoints Achievement	
	
	//Statpoints Level 1
	if($USER['achievements_statpoints'] == 1)
	{
		if($USER['total_points'] >= 500000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_statpoints` = achievements_statpoints+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_statpoints'],$LNG['achievements_statpoints_lvl1'],$LNG['achievements_statpoints_reward_lvl1']),"?page=achievement",4);
			exit;	
		}
		if($USER['total_points'] >= 500000)
			$statpoints_done1 = '<img src="styles/achievements/done.png" >';
		else
			$statpoints_done1 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'statpoints_lvl'		=> $LNG['achievements_statpoints_lvl1'],
			'statpoints_req_1'		=> $LNG['achievements_statpoints_lvl1_require_1'],
			'statpoints_reward'	=> $LNG['achievements_statpoints_reward_lvl1'],
			'statpoints_done1'    	=> $statpoints_done1,
		));
	}	
	
	//Statpoints Level 2
	if($USER['achievements_statpoints'] == 2)
	{
		if($USER['total_points'] >= 5000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_statpoints` = achievements_statpoints+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_statpoints'],$LNG['achievements_statpoints_lvl2'],$LNG['achievements_statpoints_reward_lvl2']),"?page=achievement",4);
			exit;	
		}
		if($USER['total_points'] >= 5000000)
			$statpoints_done1 = '<img src="styles/achievements/done.png" >';
		else
			$statpoints_done1 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'statpoints_lvl'		=> $LNG['achievements_statpoints_lvl2'],
			'statpoints_req_1'		=> $LNG['achievements_statpoints_lvl2_require_1'],
			'statpoints_reward'	=> $LNG['achievements_statpoints_reward_lvl2'],
			'statpoints_done1'    	=> $statpoints_done1,
		));
	}	
	
	//Statpoints Level 3
	if($USER['achievements_statpoints'] == 3)
	{
		if($USER['total_points'] >= 50000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_statpoints` = achievements_statpoints+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_statpoints'],$LNG['achievements_statpoints_lvl3'],$LNG['achievements_statpoints_reward_lvl3']),"?page=achievement",4);
			exit;	
		}
		if($USER['total_points'] >= 50000000)
			$statpoints_done1 = '<img src="styles/achievements/done.png" >';
		else
			$statpoints_done1 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'statpoints_lvl'		=> $LNG['achievements_statpoints_lvl3'],
			'statpoints_req_1'		=> $LNG['achievements_statpoints_lvl3_require_1'],
			'statpoints_reward'	=> $LNG['achievements_statpoints_reward_lvl3'],
			'statpoints_done1'    	=> $statpoints_done1,
		));
	}	
	
	//Statpoints Level 4
	if($USER['achievements_statpoints'] == 4)
	{
		if($USER['total_points'] >= 100000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_statpoints` = achievements_statpoints+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_statpoints'],$LNG['achievements_statpoints_lvl4'],$LNG['achievements_statpoints_reward_lvl4']),"?page=achievement",4);
			exit;	
		}
		if($USER['total_points'] >= 100000000)
			$statpoints_done1 = '<img src="styles/achievements/done.png" >';
		else
			$statpoints_done1 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'statpoints_lvl'		=> $LNG['achievements_statpoints_lvl4'],
			'statpoints_req_1'		=> $LNG['achievements_statpoints_lvl4_require_1'],
			'statpoints_reward'	=> $LNG['achievements_statpoints_reward_lvl4'],
			'statpoints_done1'    	=> $statpoints_done1,
		));
	}	
	
	//Statpoints Level 5
	if($USER['achievements_statpoints'] == 5)
	{
		if($USER['total_points'] >= 500000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_statpoints` = achievements_statpoints+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_statpoints'],$LNG['achievements_statpoints_lvl5'],$LNG['achievements_statpoints_reward_lvl5']),"?page=achievement",4);
			exit;	
		}
		if($USER['total_points'] >= 500000000)
			$statpoints_done1 = '<img src="styles/achievements/done.png" >';
		else
			$statpoints_done1 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'statpoints_lvl'		=> $LNG['achievements_statpoints_lvl5'],
			'statpoints_req_1'		=> $LNG['achievements_statpoints_lvl5_require_1'],
			'statpoints_reward'	=> $LNG['achievements_statpoints_reward_lvl5'],
			'statpoints_done1'    	=> $statpoints_done1,
		));
	}	
	
	//Statpoints Level 6
	if($USER['achievements_statpoints'] == 6)
	{
		if($USER['total_points'] >= 1000000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_statpoints` = achievements_statpoints+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_statpoints'],$LNG['achievements_statpoints_lvl6'],$LNG['achievements_statpoints_reward_lvl6']),"?page=achievement",4);
			exit;	
		}
		if($USER['total_points'] >= 1000000000)
			$statpoints_done1 = '<img src="styles/achievements/done.png" >';
		else
			$statpoints_done1 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'statpoints_lvl'		=> $LNG['achievements_statpoints_lvl6'],
			'statpoints_req_1'		=> $LNG['achievements_statpoints_lvl6_require_1'],
			'statpoints_reward'	=> $LNG['achievements_statpoints_reward_lvl6'],
			'statpoints_done1'    	=> $statpoints_done1,
		));
	}	

	//Statpoints Finish
	if($USER['achievements_statpoints'] > 6)
	{
		
		$statpoints_done1 = '<img src="styles/achievements/done.png" >';
		
		$this->tplObj->assign_vars(array(
			'statpoints_lvl'		=> ' <span style="color:lime">'.$LNG['achievements_statpoints_done'].'</span>',
			'statpoints_req_1'		=> $LNG['achievements_statpoints_lvl6_require_1'],
			'statpoints_reward'		=> $LNG['achievements_statpoints_reward_lvl6'],
			'statpoints_done1'    	=> $statpoints_done1,
			

		));
	}

	//Destruction Achievement	
	
	//Destruction Level 1
	if($USER['achievements_destroy'] == 1)
	{
		if($USER['desunits'] >= 10000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_destroy` = achievements_destroy+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_destroy'],$LNG['achievements_destroy_lvl1'],$LNG['achievements_destroy_reward_lvl1']),"?page=achievement",4);
			exit;	
		}
		if ($USER['desunits'] >= 10000000)
			$destroy_done1 = '<img src="styles/achievements/done.png" >';
		else
			$destroy_done1 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'destroy_lvl'		=> $LNG['achievements_destroy_lvl1'],
			'destroy_req_1'		=> $LNG['achievements_destroy_lvl1_require_1'],
			'destroy_reward'	=> $LNG['achievements_destroy_reward_lvl1'],
			'destroy_done1'    	=> $destroy_done1,
		));
	}	
	
	//Destruction Level 2
	if($USER['achievements_destroy'] == 2)
	{
		if($USER['desunits'] >= 100000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_destroy` = achievements_destroy+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_destroy'],$LNG['achievements_destroy_lvl2'],$LNG['achievements_destroy_reward_lvl2']),"?page=achievement",4);
			exit;	
		}
		if ($USER['desunits'] >= 100000000)
			$destroy_done1 = '<img src="styles/achievements/done.png" >';
		else
			$destroy_done1 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'destroy_lvl'		=> $LNG['achievements_destroy_lvl2'],
			'destroy_req_1'		=> $LNG['achievements_destroy_lvl2_require_1'],
			'destroy_reward'	=> $LNG['achievements_destroy_reward_lvl2'],
			'destroy_done1'    	=> $destroy_done1,
		));
	}	
	
	//Destruction Level 3
	if($USER['achievements_destroy'] == 3)
	{
		if($USER['desunits'] >= 1000000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_destroy` = achievements_destroy+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_destroy'],$LNG['achievements_destroy_lvl3'],$LNG['achievements_destroy_reward_lvl3']),"?page=achievement",4);
			exit;	
		}
		if ($USER['desunits'] >= 10000000000)
			$destroy_done1 = '<img src="styles/achievements/done.png" >';
		else
			$destroy_done1 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'destroy_lvl'		=> $LNG['achievements_destroy_lvl3'],
			'destroy_req_1'		=> $LNG['achievements_destroy_lvl3_require_1'],
			'destroy_reward'	=> $LNG['achievements_destroy_reward_lvl3'],
			'destroy_done1'    	=> $destroy_done1,
		));
	}	
	
	//Destruction Level 4
	if($USER['achievements_destroy'] == 4)
	{
		if($USER['desunits'] >= 10000000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_destroy` = achievements_destroy+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_destroy'],$LNG['achievements_destroy_lvl4'],$LNG['achievements_destroy_reward_lvl4']),"?page=achievement",4);
			exit;	
		}
		if ($USER['desunits'] >= 10000000000)
			$destroy_done1 = '<img src="styles/achievements/done.png" >';
		else
			$destroy_done1 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'destroy_lvl'		=> $LNG['achievements_destroy_lvl4'],
			'destroy_req_1'		=> $LNG['achievements_destroy_lvl4_require_1'],
			'destroy_reward'	=> $LNG['achievements_destroy_reward_lvl4'],
			'destroy_done1'    	=> $destroy_done1,
		));
	}	
	
	//Destruction Level 5
	if($USER['achievements_destroy'] == 5)
	{
		if($USER['desunits'] >= 100000000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_destroy` = achievements_destroy+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_destroy'],$LNG['achievements_destroy_lvl5'],$LNG['achievements_destroy_reward_lvl5']),"?page=achievement",4);
			exit;	
		}
		if ($USER['desunits'] >= 100000000000)
			$destroy_done1 = '<img src="styles/achievements/done.png" >';
		else
			$destroy_done1 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'destroy_lvl'		=> $LNG['achievements_destroy_lvl5'],
			'destroy_req_1'		=> $LNG['achievements_destroy_lvl5_require_1'],
			'destroy_reward'	=> $LNG['achievements_destroy_reward_lvl5'],
			'destroy_done1'    	=> $destroy_done1,
		));
	}	
	
	//Destruction Level 6
	if($USER['achievements_destroy'] == 6)
	{
		if($USER['desunits'] >= 1000000000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_destroy` = achievements_destroy+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_destroy'],$LNG['achievements_destroy_lvl4'],$LNG['achievements_destroy_reward_lvl4']),"?page=achievement",4);
			exit;	
		}
		if ($USER['desunits'] >= 1000000000000)
			$destroy_done1 = '<img src="styles/achievements/done.png" >';
		else
			$destroy_done1 = '<img src="styles/achievements/miss.png" >';
			
		$this->tplObj->assign_vars(array(
			'destroy_lvl'		=> $LNG['achievements_destroy_lvl4'],
			'destroy_req_1'		=> $LNG['achievements_destroy_lvl4_require_1'],
			'destroy_reward'	=> $LNG['achievements_destroy_reward_lvl4'],
			'destroy_done1'    	=> $destroy_done1,
		));
	}		

	//Destruction Finish
	if($USER['achievements_destroy'] > 6)
	{
		
		$destroy_done1 = '<img src="styles/achievements/done.png" >';
		
		$this->tplObj->assign_vars(array(
			'destroy_lvl'		=> ' <span style="color:lime">'.$LNG['achievements_destroy_done'].'</span>',
			'destroy_req_1'		=> $LNG['achievements_destroy_lvl2_require_1'],
			'destroy_reward'		=> $LNG['achievements_destroy_reward_lvl2'],
			'destroy_done1'    	=> $destroy_done1,
			

		));
	}

	//Debris Achievement	
	
	//Debris Level 1
	if($USER['achievements_debris'] == 1)
	{
		if($USER['kbmetal'] >= 100000000 && $USER['kbcrystal'] >= 100000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_debris` = achievements_debris+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_debris'],$LNG['achievements_debris_lvl1'],$LNG['achievements_debris_reward_lvl1']),"?page=achievement",4);
			exit;	
		}
		if ($USER['kbmetal'] >=100000000)
			$debris_done1 = '<img src="styles/achievements/done.png" >';
		else
			$debris_done1 = '<img src="styles/achievements/miss.png" >';
		if($USER['kbcrystal'] >=100000000)
			$debris_done2 = '<img src="styles/achievements/done.png" >';
		else
			$debris_done2 = '<img src="styles/achievements/miss.png" >';	
			
		$this->tplObj->assign_vars(array(
			'debris_lvl'			=> $LNG['achievements_debris_lvl1'],
			'debris_req_1'		=> sprintf($LNG['achievements_debris_require_1'],100000000),
			'debris_req_2'		=> sprintf($LNG['achievements_debris_require_2'],100000000),
			'debris_reward'		=> $LNG['achievements_debris_reward_lvl1'],
			'debris_done1'    	=> $debris_done1,
			'debris_done2'    	=> $debris_done2,
		));
	}		
	
	//Debris Level 2
	if($USER['achievements_debris'] == 2)
	{
		if($USER['kbmetal'] >= 500000000 && $USER['kbcrystal'] >= 500000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_debris` = achievements_debris+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_debris'],$LNG['achievements_debris_lvl2'],$LNG['achievements_debris_reward_lvl2']),"?page=achievement",4);
			exit;	
		}
		if ($USER['kbmetal'] >=500000000)
			$debris_done1 = '<img src="styles/achievements/done.png" >';
		else
			$debris_done1 = '<img src="styles/achievements/miss.png" >';
		if($USER['kbcrystal'] >=500000000)
			$debris_done2 = '<img src="styles/achievements/done.png" >';
		else
			$debris_done2 = '<img src="styles/achievements/miss.png" >';	
			
		$this->tplObj->assign_vars(array(
			'debris_lvl'			=> $LNG['achievements_debris_lvl2'],
			'debris_req_1'		=> sprintf($LNG['achievements_debris_require_1'],500000000),
			'debris_req_2'		=> sprintf($LNG['achievements_debris_require_2'],500000000),
			'debris_reward'		=> $LNG['achievements_debris_reward_lvl2'],
			'debris_done1'    	=> $debris_done1,
			'debris_done2'    	=> $debris_done2,
		));
	}
	
	//Debris Level 3
	if($USER['achievements_debris'] == 3)
	{
		if($USER['kbmetal'] >= 1000000000 && $USER['kbcrystal'] >= 1000000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_debris` = achievements_debris+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_debris'],$LNG['achievements_debris_lvl3'],$LNG['achievements_debris_reward_lvl3']),"?page=achievement",4);
			exit;	
		}
		if ($USER['kbmetal'] >=1000000000)
			$debris_done1 = '<img src="styles/achievements/done.png" >';
		else
			$debris_done1 = '<img src="styles/achievements/miss.png" >';
		if($USER['kbcrystal'] >=1000000000)
			$debris_done2 = '<img src="styles/achievements/done.png" >';
		else
			$debris_done2 = '<img src="styles/achievements/miss.png" >';	
			
		$this->tplObj->assign_vars(array(
			'debris_lvl'			=> $LNG['achievements_debris_lvl3'],
			'debris_req_1'		=> sprintf($LNG['achievements_debris_require_1'],1000000000),
			'debris_req_2'		=> sprintf($LNG['achievements_debris_require_2'],1000000000),
			'debris_reward'		=> $LNG['achievements_debris_reward_lvl3'],
			'debris_done1'    	=> $debris_done1,
			'debris_done2'    	=> $debris_done2,
		));
	}		
	
	//Debris Level 4
	if($USER['achievements_debris'] == 4)
	{
		if($USER['kbmetal'] >= 5000000000 && $USER['kbcrystal'] >= 5000000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_debris` = achievements_debris+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_debris'],$LNG['achievements_debris_lvl4'],$LNG['achievements_debris_reward_lvl4']),"?page=achievement",4);
			exit;	
		}
		if ($USER['kbmetal'] >=5000000000)
			$debris_done1 = '<img src="styles/achievements/done.png" >';
		else
			$debris_done1 = '<img src="styles/achievements/miss.png" >';
		if($USER['kbcrystal'] >=5000000000)
			$debris_done2 = '<img src="styles/achievements/done.png" >';
		else
			$debris_done2 = '<img src="styles/achievements/miss.png" >';	
			
		$this->tplObj->assign_vars(array(
			'debris_lvl'			=> $LNG['achievements_debris_lvl4'],
			'debris_req_1'		=> sprintf($LNG['achievements_debris_require_1'],5000000000),
			'debris_req_2'		=> sprintf($LNG['achievements_debris_require_2'],5000000000),
			'debris_reward'		=> $LNG['achievements_debris_reward_lvl4'],
			'debris_done1'    	=> $debris_done1,
			'debris_done2'    	=> $debris_done2,
		));
	}
	
	//Debris Level 5
	if($USER['achievements_debris'] == 5)
	{
		if($USER['kbmetal'] >= 10000000000 && $USER['kbcrystal'] >= 10000000000)
		{
			$GLOBALS['DATABASE']->query("UPDATE ".USERS." SET `achievements_debris` = achievements_debris+1 WHERE `id` = ".$USER['id'].";");
			$PLANET[$resource[901]]	+= 1000000; //reward
                    $PLANET[$resource[902]]	+= 1000000; //reward
                    $PLANET[$resource[903]]	+= 1000000; //reward
                    $USER[$resource[921]] += 10000; //reward dm
			$this->printMessage(sprintf($LNG['achievements_success'],$LNG['achievements_typ_debris'],$LNG['achievements_debris_lvl5'],$LNG['achievements_debris_reward_lvl5']),"?page=achievement",4);
			exit;	
		}
		if ($USER['kbmetal'] >=10000000000)
			$debris_done1 = '<img src="styles/achievements/done.png" >';
		else
			$debris_done1 = '<img src="styles/achievements/miss.png" >';
		if($USER['kbcrystal'] >=10000000000)
			$debris_done2 = '<img src="styles/achievements/done.png" >';
		else
			$debris_done2 = '<img src="styles/achievements/miss.png" >';	
			
		$this->tplObj->assign_vars(array(
			'debris_lvl'			=> $LNG['achievements_debris_lvl5'],
			'debris_req_1'		=> sprintf($LNG['achievements_debris_require_1'],10000000000),
			'debris_req_2'		=> sprintf($LNG['achievements_debris_require_2'],10000000000),
			'debris_reward'		=> $LNG['achievements_debris_reward_lvl5'],
			'debris_done1'    	=> $debris_done1,
			'debris_done2'    	=> $debris_done2,
		));
	}		
		
	//Debris Finish
	if($USER['achievements_debris'] > 5)
	{
		$debris_done1 = '<img src="styles/achievements/done.png" >';
		$debris_done2 = '<img src="styles/achievements/done.png" >';
		$this->tplObj->assign_vars(array(
			'debris_lvl'			=> ' <span style="color:lime">'.$LNG['achievements_debris_done'].'</span>',
			'debris_req_1'		=> sprintf($LNG['achievements_debris_require_1'],10000000000),
			'debris_req_2'		=> sprintf($LNG['achievements_debris_require_2'],10000000000),
			'debris_reward'		=> $LNG['achievements_debris_reward_lvl5'],
			'debris_done1'    	=> $debris_done1,
			'debris_done2'    	=> $debris_done2,
		));
	}
	
	$this->display('achievements_body.tpl');
 }
}
?>
