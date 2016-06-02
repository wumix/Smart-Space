<?php

/**

	On rules column in uni1_config, you can use HTML data.

 */


class ShowRulesPage extends AbstractPage
{
    public static $requireModule = 0;
	

	function __construct() 
	{
		parent::__construct();
	}
	
	function show()
	{
		global $USER, $PLANET, $LNG, $UNI, $CONF;
		
		$this->setWindow('popup');
		$this->initTemplate();
		

		$this->tplObj->assign_vars(array(	
			'rules' 		=> $CONF['rules'],
			'mobile_version' 		=> $USER['mobile_version'],
			'fixed_navbar' 		=> $USER['fixed_navbar'],
			'fixed_header' 		=> $USER['fixed_header'],
			'game_theme' 		=> $USER['game_theme'],
		));
		
		$this->display('page.rules.default.tpl');
	}
}