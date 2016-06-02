<?php


class ShowVotePage extends AbstractPage
{
    public static $requireModule = 0;
    
    function __construct()
    {
        parent::__construct();
    }
    
    function show()
    {
       global  $USER, $PLANET, $LNG, $LANG,$CONF,$UNI;
        
		$this->tplObj->loadscript('jquery.countdown.js');
        if(!empty($_GET['i'])) {
			$vote_id = (int) $_GET['i'];
            $cautare = $GLOBALS['DATABASE']->query("SELECT *FROM `uni1_votesystem` where `id` = '".$vote_id."';");
            
            if ($GLOBALS['DATABASE']->numRows($cautare) == 0) {
				$this->printMessage("Don't try anything , wont work!", true, array('game.php?page=reward', 2));
                die();
            }
            $cautare = $GLOBALS['DATABASE']->fetch_array($cautare);
      
            $find_vote = $GLOBALS['DATABASE']->query("SELECT *FROM `uni1_votesystem_log` where `user_id` = '".$USER['id']."' AND `vote_system_id` = '".$vote_id."' ;");
            if ($GLOBALS['DATABASE']->numRows($find_vote) > 0) {
                $find = $GLOBALS['DATABASE']->fetch_array($find_vote);
                if (TIMESTAMP < ($find['time'] + $cautare['time'] * 60 * 60)) {
					$this->printMessage("You already voted in the past ".$cautare['time']."h!", true, array('game.php?page=reward', 2));
                    die();
                } else {
					$USER['darkmatter'] += $cautare['prize'];
                    $GLOBALS['DATABASE']->query("UPDATE `uni1_votesystem_log` set `time` = '". TIMESTAMP ."' where `user_id` = ".$USER['id']." AND `vote_system_id` = ".$vote_id." ;");
                    header("Location: " . $cautare['link']);
                }
            } else {
				$USER['darkmatter'] += $cautare['prize'];
                $GLOBALS['DATABASE']->query("INSERT INTO `uni1_votesystem_log` VALUES (".$USER['id'].", ".TIMESTAMP.", ".$vote_id.")");
                header("Location: " . $cautare['link']);
            }
        
        }
                
        $find_vote = $GLOBALS['DATABASE']->query("SELECT *FROM `uni1_votesystem` ");
        $votes     = array();
        while ($vote = $GLOBALS['DATABASE']->fetch_array($find_vote)) {
            $find = $GLOBALS['DATABASE']->query("SELECT *FROM `uni1_votesystem_log` where `user_id` = " . $USER['id'] . " AND `vote_system_id` = " . $vote['id'] . " ;");
            $votes[$vote['id']]        = array();
            $votes[$vote['id']]['pic'] = $vote['image'];
			$votes[$vote['id']]['prize'] = $vote['prize'];
            
            if ($GLOBALS['DATABASE']->numRows($find) > 0) {

                $find =  $GLOBALS['DATABASE']->fetch_array($find);
                if (TIMESTAMP < ($find['time'] + $vote['time'] * 60 * 60)) {

                    $secunde                    = $find['time'] + $vote['time'] * 60 * 60 - TIMESTAMP;
                     $votes[$vote['id']]['link'] = '<font color=\'red\'><button  class="btn btn-primary"><span class=countdown2 secs='.$secunde.'></span></button></font>';
                } else {
                    $votes[$vote['id']]['link'] = '<font color=lime><a  class="btn btn-primary" href=game.php?page=vote&i='.$vote['id'].' target="_blank">VOTE</a></font>';
                }
            } else {
                $votes[$vote['id']]['link'] = '<font color=lime><a class="btn btn-primary" href=game.php?page=vote&i='.$vote['id'].' target="_parent">VOTE</a></font>';
            }
        }
        
        $this->tplObj->assign_vars(array(
            'voturile' => $votes,
			'reward'	=> 2500
        ));
        
       $this->display('page.reward.default.tpl');
        
    }
	
		
}
?>