{block name="title" prepend}{$LNG.lm_galaxy}{/block}
{block name="content"}


<div class="jarviswidget jarviswidget-color-blueDark">
   <header>
      <span class="widget-icon"><i class="fa fa-globe"></i></span>
      <h2> {$LNG.gl_galaxy} {$galaxy}:{$system} </h2>
      <form action="?page=galaxy" method="post" id="galaxy_form">
         <div class="widget-toolbar" role="menu">
            <input class="btn btn-default" type="submit" value="{$LNG.gl_show}">
         </div>
        
            <div class="widget-toolbar" role="menu"> 
               <input class="btn btn-default" type="button" name="systemRight" value=">" onclick="galaxy_submit('systemRight')">
            </div>
            <div class="widget-toolbar smart-form" role="menu">

               <label class="input"> <i class="icon-append fa fa-question-circle"></i>
                  <input type="text" name="system" value="{$system}" placeholder="System" maxlength="3" tabindex="1">
                  <b class="tooltip tooltip-top-right">
                     <i class="fa fa-warning txt-color-teal"></i> 
                     System</b> 
                  </label>

               </div>
               <div class="widget-toolbar" role="menu"> 
                  <input class="btn btn-default" type="button" name="systemLeft" value="<" onclick="galaxy_submit('systemLeft')">
               </div>
			   
			   <div class="widget-toolbar" role="menu"> 
            <input class="btn btn-default" type="button" name="galaxyRight" value=">" onclick="galaxy_submit('galaxyRight')">
         </div>
         <div class="widget-toolbar smart-form" role="menu">

            <label class="input"> <i class="icon-append fa fa-question-circle"></i>
               <input type="text" name="galaxy" value="{$galaxy}" placeholder="Galaxy" maxlength="3" tabindex="1">
               <b class="tooltip tooltip-top-right">
                  <i class="fa fa-warning txt-color-teal"></i> 
                  Galaxy</b> 
               </label>

            </div>
            <div class="widget-toolbar" role="menu"> 
               <input class="btn btn-default" type="button" name="galaxyLeft" value="<" onclick="galaxy_submit('galaxyLeft')">
            </div>
               <input type="hidden" id="auto" value="dr">
               
            </form>
         </header>
<!-- widget div-->
<div>
   <div class="widget-body no-padding">
       <div id="calendar" style="margin-top:0;" class="fc fc-ltr">
         <div class="fc-content">
            <div class="fc-view fc-view-month fc-grid" unselectable="on">


               <div class="fc-cell-overlay" style="position: absolute; z-index: 3; top: 27px; left: 0px; width: 116px; height: 96px; display: none;"></div>
               <table class="fc-border-separate" style="width:100%" cellspacing="0">
                  <thead>
                     <tr class="fc-first fc-last">
                     </tr>
                  </thead>
                  <tbody>
                     <tr class="fc-week">
                        {for $planet=1 to $max_planets1}
                        {if !isset($GalaxyRows[$planet])}
                        <td class="fc-day fc-tue fc-widget-content fc-past"  style="width: 20%; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('styles/img/exp.jpg');">
                           <div>
                              <div class="fc-day-number"><a href="?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=7">{$planet}</a></div>
                              <div class="fc-day-content">
                                 <div style="position: relative; height: 59px;"><center><a href="?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=7" class="btn btn-primary">{$LNG.type_mission.7}</a></center></div>
                              </div>
                           </div>
                        </td>
                        {elseif $GalaxyRows[$planet] === false}
                        <td class="fc-day fc-tue fc-widget-content fc-past" style="width: 20%; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('styles/img/destroyed.jpg');">
                           <div>
                              <div class="fc-day-number"><a href="?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=7">{$planet}</a></div>
                              <div class="fc-day-content">
                                 <div style="position: relative; height: 59px;"><center>{$LNG.gl_planet_destroyed}</center></div>
                              </div>
                           </div>
                        </td>
                        {else}
                        {$currentPlanet = $GalaxyRows[$planet]}
                        <td class="fc-day fc-tue fc-widget-content fc-past" style="width: 20%; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('{$dpath}planeten/{$currentPlanet.planet.image}.jpg'); // opacity: 0.7">
                           <div>
                              <div class="fc-day-number">	
                             <a href="javascript:void(0);" class="btn btn-default" rel="popover" data-html="true" data-placement="bottom" data-original-title="{$LNG.gl_planet} {$currentPlanet.planet.name} [{$galaxy}:{$system}:{$planet}]" data-content="<table style='width:220px'><tr><th colspan='2'></th></tr><tr><td style='width:80px'><img src='{$dpath}planeten/small/s_{$currentPlanet.planet.image}.jpg' height='75' width='75'></td><td>{if $currentPlanet.missions.6}<a href='javascript:doit(6,{$currentPlanet.planet.id});'>{$LNG.type_mission.6}</a><br><br>{/if}{if $currentPlanet.planet.phalanx}<a href='javascript:OpenPopup(&quot;?page=phalanx&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&quot;, &quot;&quot;, 640, 510);'>{$LNG.gl_phalanx}</a><br>{/if}{if $currentPlanet.missions.1}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=1'>{$LNG.type_mission.1}</a><br>{/if}{if $currentPlanet.missions.5}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=5'>{$LNG.type_mission.5}</a><br>{/if}{if $currentPlanet.missions.4}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=4'>{$LNG.type_mission.4}</a><br>{/if}{if $currentPlanet.missions.3}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=3'>{$LNG.type_mission.3}</a><br>{/if}{if $currentPlanet.missions.10}<a href='?page=galaxy&amp;action=sendMissle&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}'>{$LNG.type_mission.10}</a><br>{/if}</td></tr></table>">{$currentPlanet.planet.name} ({$planet} {$currentPlanet.lastActivity})</a></div>
                            <div class="fc-day-content">

                              <div style="position: relative; height: 59px;">



                                 <center>
                                    {if $currentPlanet.moon}
                                  <a href="javascript:void(0);"  rel="popover" data-html="true" data-placement="bottom" data-original-title="{$LNG.gl_moon} {$currentPlanet.moon.name} [{$galaxy}:{$system}:{$planet}]" data-content="<table style='width:100%'><tr><th colspan='2'>{$LNG.gl_features}</th></tr><tr><td>{$LNG.gl_diameter}</td><td>{$currentPlanet.moon.diameter|number}</td></tr><tr><td>{$LNG.gl_temperature}</td><td>{$currentPlanet.moon.temp_min}</td></tr><tr><th colspan=2>{$LNG.gl_actions}</th></tr><tr><td colspan='2'>{if $currentPlanet.missions.1}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=1'>{$LNG.type_mission.1}</a><br>{/if}{if $currentPlanet.missions.3}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=3'>{$LNG.type_mission.3}</a>{/if}{if $currentPlanet.missions.3}<br><a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=4'>{$LNG.type_mission.4}</a>{/if}{if $currentPlanet.missions.5}<br><a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=5'>{$LNG.type_mission.5}</a>{/if}{if $currentPlanet.missions.6}<br><a href='javascript:doit(6,{$currentPlanet.moon.id});'>{$LNG.type_mission.6}</a>{/if}{if $currentPlanet.missions.9}<br><br><a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=9'>{$LNG.type_mission.9}</a><br>{/if}{if $currentPlanet.missions.10}<a href='?page=galaxy&amp;action=sendMissle&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;type=3'>{$LNG.type_mission.10}</a><br>{/if}</td></tr></table></td></tr></table>">
                                    <img src="{$dpath}planeten/small/s_mond.jpg" height="22" width="22" alt="{$currentPlanet.moon.name}">
                                 </a>
                                 {/if}

                                 {if $currentPlanet.debris}
                                 <a href="javascript:void(0);"  rel="popover" data-html="true" data-placement="bottom" data-original-title="{$LNG.gl_debris_field} [{$galaxy}:{$system}:{$planet}]" data-content="<table style='width:240px'><tr><th colspan='2'></th></tr><tr><td style='width:80px'><img src='{$dpath}planeten/debris.jpg' height='75' style='width:75'></td><td><table style='width:100%'><tr><th colspan='2'>{$LNG.gl_resources}:</th></tr><tr><td>{$LNG.tech.901}: </td><td>{$currentPlanet.debris.metal|number}</td></tr><tr><td>{$LNG.tech.902}: </td><td>{$currentPlanet.debris.crystal|number}</td></tr>{if $currentPlanet.missions.8}<tr><th colspan='2'>{$LNG.gl_actions}</th></tr><tr><td colspan='2'><a href='javascript:doit(8, {$currentPlanet.planet.id});'>{$LNG.type_mission.8}</a></td></tr>{/if}</table></td></tr></table>">
                                 <img src="{$dpath}planeten/debris.jpg" height="22" width="22" alt="">
                              </a>
                              {/if}



                              <br><a href="javascript:void(0);"  rel="popover" data-html="true" data-placement="bottom" data-original-title="{$currentPlanet.user.playerrank}" data-content="<table style='width:240px'><tr><th colspan='2'>{$currentPlanet.user.playerrank}</th></tr><tr>{if !$currentPlanet.ownPlanet}{if $currentPlanet.user.isBuddy}<tr><td><a href='#' onclick='return Dialog.Buddy({$currentPlanet.user.id})'>{$LNG.gl_buddy_request}</a></td></tr>{/if}<tr><td><a href='#' onclick='return Dialog.Playercard({$currentPlanet.user.id});'>{$LNG.gl_playercard}</a></td></tr>{/if}<tr><td><a href='?page=statistics&amp;who=1&amp;start={$currentPlanet.user.rank}'>{$LNG.gl_see_on_stats}</a></td></tr></table>">
                              <span class="{foreach $currentPlanet.user.class as $class}{if !$class@first} {/if}galaxy-username-{$class}{/foreach} galaxy-username">{$currentPlanet.user.username}</span>
                              {if !empty($currentPlanet.user.class)}
                              <span>(</span>{foreach $currentPlanet.user.class as $class}{if !$class@first}&nbsp;{/if}<span class="galaxy-short-{$class} galaxy-short">{$ShortStatus.$class}</span>{/foreach}<span>)</span>
                              {/if}
                           </a>

                           {if $currentPlanet.alliance}(
                           <a href="javascript:void(0);"  rel="popover" data-html="true" data-placement="bottom" data-original-title="{$LNG.gl_alliance} {$currentPlanet.alliance.name} {$currentPlanet.alliance.member}" data-content="<table><tr><td><a href='?page=alliance&amp;mode=info&amp;id={$currentPlanet.alliance.id}'>{$LNG.gl_alliance_page}</a></td></tr><tr><td><a href='?page=statistics&amp;start={$currentPlanet.alliance.rank}&amp;who=2'>{$LNG.gl_see_on_stats}</a></td></tr>{if $currentPlanet.alliance.web}<tr><td><a href='{$currentPlanet.alliance.web}' target='allyweb'>{$LNG.gl_alliance_web_page}</td></tr>{/if}</table></td></table>">
                           <span class="{foreach $currentPlanet.alliance.class as $class}{if !$class@first} {/if}galaxy-alliance-{$class}{/foreach} galaxy-alliance">{$currentPlanet.alliance.tag}</span>
                        </a>)
                        {else}{/if}<br>
                        {if $currentPlanet.action}
                        {if $currentPlanet.action.esp}
                        <a id="eg7" href="javascript:doit(6,{$currentPlanet.planet.id},{$spyShips|json|escape:'html'})">
                          <img src="{$dpath}img/e.gif" title="{$LNG.gl_spy}" alt="">
                       </a>{/if}
                       {if $currentPlanet.action.message}
                       <a href="#" onclick="return Dialog.PM({$currentPlanet.user.id})">
                          <img src="{$dpath}img/m.gif" title="{$LNG.write_message}" alt="">
                       </a>{/if}
                       {if $currentPlanet.action.buddy}
                       <a href="#" onclick="return Dialog.Buddy({$currentPlanet.user.id})">
                          <img src="{$dpath}img/b.gif" title="{$LNG.gl_buddy_request}" alt="">
                       </a>{/if}
                       {if $currentPlanet.action.missle}<a href="?page=galaxy&amp;action=sendMissle&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;type=1">
                       <img src="{$dpath}img/r.gif" title="{$LNG.gl_missile_attack}" alt="">
                    </a>{/if}
                    {else}-{/if}
                    {if $currentPlanet.planet.phalanx}<a class="textForBlind" href="#" onclick="OpenPopup('?page=phalanx&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1','',640,510);return false;"><span>{$LNG.gl_phalanx}</span></a>{/if}
                 </center>
              </div>
           </div>
        </div>
     </td>
     {/if}
     {/for}
  </tr>

  {for $planet=5 to $max_planets2}
  {if !isset($GalaxyRows[$planet])}
  <td class="fc-day fc-tue fc-widget-content fc-past"  style="width: 20%; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('styles/img/exp.jpg');">
   <div>
      <div class="fc-day-number"><a href="?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=7">{$planet}</a></div>
      <div class="fc-day-content">
         <div style="position: relative; height: 59px;"><center><a href="?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=7" class="btn btn-primary">{$LNG.type_mission.7}</a></center></div>
      </div>
   </div>
</td>
{elseif $GalaxyRows[$planet] === false}
<td class="fc-day fc-tue fc-widget-content fc-past" style="width: 20%; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('styles/img/destroyed.jpg');">
   <div>
      <div class="fc-day-number"><a href="?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=7">{$planet}</a></div>
      <div class="fc-day-content">
         <div style="position: relative; height: 59px;"><center>{$LNG.gl_planet_destroyed}</center></div>
      </div>
   </div>
</td>
{else}
{$currentPlanet = $GalaxyRows[$planet]}
<td class="fc-day fc-tue fc-widget-content fc-past" style="width: 20%; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('{$dpath}planeten/{$currentPlanet.planet.image}.jpg'); // opacity: 0.7">
   <div>
      <div class="fc-day-number">	<a href="javascript:void(0);" class="btn btn-default" rel="popover" data-html="true" data-placement="bottom" data-original-title="{$LNG.gl_planet} {$currentPlanet.planet.name} [{$galaxy}:{$system}:{$planet}]" data-content="<table style='width:220px'><tr><th colspan='2'></th></tr><tr><td style='width:80px'><img src='{$dpath}planeten/small/s_{$currentPlanet.planet.image}.jpg' height='75' width='75'></td><td>{if $currentPlanet.missions.6}<a href='javascript:doit(6,{$currentPlanet.planet.id});'>{$LNG.type_mission.6}</a><br><br>{/if}{if $currentPlanet.planet.phalanx}<a href='javascript:OpenPopup(&quot;?page=phalanx&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&quot;, &quot;&quot;, 640, 510);'>{$LNG.gl_phalanx}</a><br>{/if}{if $currentPlanet.missions.1}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=1'>{$LNG.type_mission.1}</a><br>{/if}{if $currentPlanet.missions.5}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=5'>{$LNG.type_mission.5}</a><br>{/if}{if $currentPlanet.missions.4}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=4'>{$LNG.type_mission.4}</a><br>{/if}{if $currentPlanet.missions.3}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=3'>{$LNG.type_mission.3}</a><br>{/if}{if $currentPlanet.missions.10}<a href='?page=galaxy&amp;action=sendMissle&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}'>{$LNG.type_mission.10}</a><br>{/if}</td></tr></table>">{$currentPlanet.planet.name} ({$planet} {$currentPlanet.lastActivity})</a></div>
    <div class="fc-day-content">

      <div style="position: relative; height: 59px;">



         <center>
            {if $currentPlanet.moon}
            <a href="javascript:void(0);"  rel="popover" data-html="true" data-placement="bottom" data-original-title="{$LNG.gl_moon} {$currentPlanet.moon.name} [{$galaxy}:{$system}:{$planet}]" data-content="<table style='width:100%'><tr><th colspan='2'>{$LNG.gl_features}</th></tr><tr><td>{$LNG.gl_diameter}</td><td>{$currentPlanet.moon.diameter|number}</td></tr><tr><td>{$LNG.gl_temperature}</td><td>{$currentPlanet.moon.temp_min}</td></tr><tr><th colspan=2>{$LNG.gl_actions}</th></tr><tr><td colspan='2'>{if $currentPlanet.missions.1}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=1'>{$LNG.type_mission.1}</a><br>{/if}{if $currentPlanet.missions.3}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=3'>{$LNG.type_mission.3}</a>{/if}{if $currentPlanet.missions.3}<br><a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=4'>{$LNG.type_mission.4}</a>{/if}{if $currentPlanet.missions.5}<br><a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=5'>{$LNG.type_mission.5}</a>{/if}{if $currentPlanet.missions.6}<br><a href='javascript:doit(6,{$currentPlanet.moon.id});'>{$LNG.type_mission.6}</a>{/if}{if $currentPlanet.missions.9}<br><br><a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=9'>{$LNG.type_mission.9}</a><br>{/if}{if $currentPlanet.missions.10}<a href='?page=galaxy&amp;action=sendMissle&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;type=3'>{$LNG.type_mission.10}</a><br>{/if}</td></tr></table></td></tr></table>">
            <img src="{$dpath}planeten/small/s_mond.jpg" height="22" width="22" alt="{$currentPlanet.moon.name}">
         </a>
         {/if}

         {if $currentPlanet.debris}
         <a href="javascript:void(0);"  rel="popover" data-html="true" data-placement="bottom" data-original-title="{$LNG.gl_debris_field} [{$galaxy}:{$system}:{$planet}]" data-content="<table style='width:240px'><tr><th colspan='2'></th></tr><tr><td style='width:80px'><img src='{$dpath}planeten/debris.jpg' height='75' style='width:75'></td><td><table style='width:100%'><tr><th colspan='2'>{$LNG.gl_resources}:</th></tr><tr><td>{$LNG.tech.901}: </td><td>{$currentPlanet.debris.metal|number}</td></tr><tr><td>{$LNG.tech.902}: </td><td>{$currentPlanet.debris.crystal|number}</td></tr>{if $currentPlanet.missions.8}<tr><th colspan='2'>{$LNG.gl_actions}</th></tr><tr><td colspan='2'><a href='javascript:doit(8, {$currentPlanet.planet.id});'>{$LNG.type_mission.8}</a></td></tr>{/if}</table></td></tr></table>">
         <img src="{$dpath}planeten/debris.jpg" height="22" width="22" alt="">
      </a>
      {/if}



      <br><a href="javascript:void(0);"  rel="popover" data-html="true" data-placement="bottom" data-original-title="{$currentPlanet.user.playerrank}" data-content="<table style='width:240px'><tr><th colspan='2'>{$currentPlanet.user.playerrank}</th></tr><tr>{if !$currentPlanet.ownPlanet}{if $currentPlanet.user.isBuddy}<tr><td><a href='#' onclick='return Dialog.Buddy({$currentPlanet.user.id})'>{$LNG.gl_buddy_request}</a></td></tr>{/if}<tr><td><a href='#' onclick='return Dialog.Playercard({$currentPlanet.user.id});'>{$LNG.gl_playercard}</a></td></tr>{/if}<tr><td><a href='?page=statistics&amp;who=1&amp;start={$currentPlanet.user.rank}'>{$LNG.gl_see_on_stats}</a></td></tr></table>">
      <span class="{foreach $currentPlanet.user.class as $class}{if !$class@first} {/if}galaxy-username-{$class}{/foreach} galaxy-username">{$currentPlanet.user.username}</span>
      {if !empty($currentPlanet.user.class)}
      <span>(</span>{foreach $currentPlanet.user.class as $class}{if !$class@first}&nbsp;{/if}<span class="galaxy-short-{$class} galaxy-short">{$ShortStatus.$class}</span>{/foreach}<span>)</span>
      {/if}
   </a>

   {if $currentPlanet.alliance}(
   <a href="javascript:void(0);"  rel="popover" data-html="true" data-placement="bottom" data-original-title="{$LNG.gl_alliance} {$currentPlanet.alliance.name} {$currentPlanet.alliance.member}" data-content="<table><tr><td><a href='?page=alliance&amp;mode=info&amp;id={$currentPlanet.alliance.id}'>{$LNG.gl_alliance_page}</a></td></tr><tr><td><a href='?page=statistics&amp;start={$currentPlanet.alliance.rank}&amp;who=2'>{$LNG.gl_see_on_stats}</a></td></tr>{if $currentPlanet.alliance.web}<tr><td><a href='{$currentPlanet.alliance.web}' target='allyweb'>{$LNG.gl_alliance_web_page}</td></tr>{/if}</table></td></table>">
   <span class="{foreach $currentPlanet.alliance.class as $class}{if !$class@first} {/if}galaxy-alliance-{$class}{/foreach} galaxy-alliance">{$currentPlanet.alliance.tag}</span>
</a>)
{else}{/if}<br>
{if $currentPlanet.action}
{if $currentPlanet.action.esp}
<a id="eg7" href="javascript:doit(6,{$currentPlanet.planet.id},{$spyShips|json|escape:'html'})">
  <img src="{$dpath}img/e.gif" title="{$LNG.gl_spy}" alt="">
</a>{/if}
{if $currentPlanet.action.message}
<a href="#" onclick="return Dialog.PM({$currentPlanet.user.id})">
  <img src="{$dpath}img/m.gif" title="{$LNG.write_message}" alt="">
</a>{/if}
{if $currentPlanet.action.buddy}
<a href="#" onclick="return Dialog.Buddy({$currentPlanet.user.id})">
  <img src="{$dpath}img/b.gif" title="{$LNG.gl_buddy_request}" alt="">
</a>{/if}
{if $currentPlanet.action.missle}<a href="?page=galaxy&amp;action=sendMissle&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;type=1">
<img src="{$dpath}img/r.gif" title="{$LNG.gl_missile_attack}" alt="">
</a>{/if}
{else}-{/if}
{if $currentPlanet.planet.phalanx}<a class="textForBlind" href="#" onclick="OpenPopup('?page=phalanx&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1','',640,510);return false;"><span>{$LNG.gl_phalanx}</span></a>{/if}
</center>
</div>
</div>
</div>
</td>
{/if}
{/for}
</tr>

{for $planet=9 to $max_planets3}
{if !isset($GalaxyRows[$planet])}
<td class="fc-day fc-tue fc-widget-content fc-past"  style="width: 20%; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('styles/img/exp.jpg');">
   <div>
      <div class="fc-day-number"><a href="?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=7">{$planet}</a></div>
      <div class="fc-day-content">
         <div style="position: relative; height: 59px;"><center><a href="?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=7" class="btn btn-primary">{$LNG.type_mission.7}</a></center></div>
      </div>
   </div>
</td>
{elseif $GalaxyRows[$planet] === false}
<td class="fc-day fc-tue fc-widget-content fc-past" style="width: 20%; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('styles/img/destroyed.jpg');">
   <div>
      <div class="fc-day-number"><a href="?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=7">{$planet}</a></div>
      <div class="fc-day-content">
         <div style="position: relative; height: 59px;"><center>{$LNG.gl_planet_destroyed}</center></div>
      </div>
   </div>
</td>
{else}
{$currentPlanet = $GalaxyRows[$planet]}
<td class="fc-day fc-tue fc-widget-content fc-past" style="width: 20%; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('{$dpath}planeten/{$currentPlanet.planet.image}.jpg'); // opacity: 0.7">
   <div>
      <div class="fc-day-number">	<a href="javascript:void(0);" class="btn btn-default" rel="popover" data-html="true" data-placement="top" data-original-title="{$LNG.gl_planet} {$currentPlanet.planet.name} [{$galaxy}:{$system}:{$planet}]" data-content="<table style='width:220px'><tr><th colspan='2'></th></tr><tr><td style='width:80px'><img src='{$dpath}planeten/small/s_{$currentPlanet.planet.image}.jpg' height='75' width='75'></td><td>{if $currentPlanet.missions.6}<a href='javascript:doit(6,{$currentPlanet.planet.id});'>{$LNG.type_mission.6}</a><br><br>{/if}{if $currentPlanet.planet.phalanx}<a href='javascript:OpenPopup(&quot;?page=phalanx&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&quot;, &quot;&quot;, 640, 510);'>{$LNG.gl_phalanx}</a><br>{/if}{if $currentPlanet.missions.1}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=1'>{$LNG.type_mission.1}</a><br>{/if}{if $currentPlanet.missions.5}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=5'>{$LNG.type_mission.5}</a><br>{/if}{if $currentPlanet.missions.4}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=4'>{$LNG.type_mission.4}</a><br>{/if}{if $currentPlanet.missions.3}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=3'>{$LNG.type_mission.3}</a><br>{/if}{if $currentPlanet.missions.10}<a href='?page=galaxy&amp;action=sendMissle&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}'>{$LNG.type_mission.10}</a><br>{/if}</td></tr></table>">{$currentPlanet.planet.name} ({$planet} {$currentPlanet.lastActivity})</a></div>
    <div class="fc-day-content">

      <div style="position: relative; height: 59px;">



         <center>
            {if $currentPlanet.moon}
            <a href="javascript:void(0);"  rel="popover" data-html="true" data-placement="top" data-original-title="{$LNG.gl_moon} {$currentPlanet.moon.name} [{$galaxy}:{$system}:{$planet}]" data-content="<table style='width:100%'><tr><th colspan='2'>{$LNG.gl_features}</th></tr><tr><td>{$LNG.gl_diameter}</td><td>{$currentPlanet.moon.diameter|number}</td></tr><tr><td>{$LNG.gl_temperature}</td><td>{$currentPlanet.moon.temp_min}</td></tr><tr><th colspan=2>{$LNG.gl_actions}</th></tr><tr><td colspan='2'>{if $currentPlanet.missions.1}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=1'>{$LNG.type_mission.1}</a><br>{/if}{if $currentPlanet.missions.3}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=3'>{$LNG.type_mission.3}</a>{/if}{if $currentPlanet.missions.3}<br><a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=4'>{$LNG.type_mission.4}</a>{/if}{if $currentPlanet.missions.5}<br><a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=5'>{$LNG.type_mission.5}</a>{/if}{if $currentPlanet.missions.6}<br><a href='javascript:doit(6,{$currentPlanet.moon.id});'>{$LNG.type_mission.6}</a>{/if}{if $currentPlanet.missions.9}<br><br><a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=9'>{$LNG.type_mission.9}</a><br>{/if}{if $currentPlanet.missions.10}<a href='?page=galaxy&amp;action=sendMissle&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;type=3'>{$LNG.type_mission.10}</a><br>{/if}</td></tr></table></td></tr></table>">
            <img src="{$dpath}planeten/small/s_mond.jpg" height="22" width="22" alt="{$currentPlanet.moon.name}">
         </a>
         {/if}

         {if $currentPlanet.debris}
         <a href="javascript:void(0);"  rel="popover" data-html="true" data-placement="top" data-original-title="{$LNG.gl_debris_field} [{$galaxy}:{$system}:{$planet}]" data-content="<table style='width:240px'><tr><th colspan='2'></th></tr><tr><td style='width:80px'><img src='{$dpath}planeten/debris.jpg' height='75' style='width:75'></td><td><table style='width:100%'><tr><th colspan='2'>{$LNG.gl_resources}:</th></tr><tr><td>{$LNG.tech.901}: </td><td>{$currentPlanet.debris.metal|number}</td></tr><tr><td>{$LNG.tech.902}: </td><td>{$currentPlanet.debris.crystal|number}</td></tr>{if $currentPlanet.missions.8}<tr><th colspan='2'>{$LNG.gl_actions}</th></tr><tr><td colspan='2'><a href='javascript:doit(8, {$currentPlanet.planet.id});'>{$LNG.type_mission.8}</a></td></tr>{/if}</table></td></tr></table>">
         <img src="{$dpath}planeten/debris.jpg" height="22" width="22" alt="">
      </a>
      {/if}



      <br><a href="javascript:void(0);"  rel="popover" data-html="true" data-placement="top" data-original-title="{$currentPlanet.user.playerrank}" data-content="<table style='width:240px'><tr><th colspan='2'>{$currentPlanet.user.playerrank}</th></tr><tr>{if !$currentPlanet.ownPlanet}{if $currentPlanet.user.isBuddy}<tr><td><a href='#' onclick='return Dialog.Buddy({$currentPlanet.user.id})'>{$LNG.gl_buddy_request}</a></td></tr>{/if}<tr><td><a href='#' onclick='return Dialog.Playercard({$currentPlanet.user.id});'>{$LNG.gl_playercard}</a></td></tr>{/if}<tr><td><a href='?page=statistics&amp;who=1&amp;start={$currentPlanet.user.rank}'>{$LNG.gl_see_on_stats}</a></td></tr></table>">
      <span class="{foreach $currentPlanet.user.class as $class}{if !$class@first} {/if}galaxy-username-{$class}{/foreach} galaxy-username">{$currentPlanet.user.username}</span>
      {if !empty($currentPlanet.user.class)}
      <span>(</span>{foreach $currentPlanet.user.class as $class}{if !$class@first}&nbsp;{/if}<span class="galaxy-short-{$class} galaxy-short">{$ShortStatus.$class}</span>{/foreach}<span>)</span>
      {/if}
   </a>

   {if $currentPlanet.alliance}(
   <a href="javascript:void(0);"  rel="popover" data-html="true" data-placement="top" data-original-title="{$LNG.gl_alliance} {$currentPlanet.alliance.name} {$currentPlanet.alliance.member}" data-content="<table><tr><td><a href='?page=alliance&amp;mode=info&amp;id={$currentPlanet.alliance.id}'>{$LNG.gl_alliance_page}</a></td></tr><tr><td><a href='?page=statistics&amp;start={$currentPlanet.alliance.rank}&amp;who=2'>{$LNG.gl_see_on_stats}</a></td></tr>{if $currentPlanet.alliance.web}<tr><td><a href='{$currentPlanet.alliance.web}' target='allyweb'>{$LNG.gl_alliance_web_page}</td></tr>{/if}</table></td></table>">
   <span class="{foreach $currentPlanet.alliance.class as $class}{if !$class@first} {/if}galaxy-alliance-{$class}{/foreach} galaxy-alliance">{$currentPlanet.alliance.tag}</span>
</a>)
{else}{/if}<br>
{if $currentPlanet.action}
{if $currentPlanet.action.esp}
<a id="eg7" href="javascript:doit(6,{$currentPlanet.planet.id},{$spyShips|json|escape:'html'})">
  <img src="{$dpath}img/e.gif" title="{$LNG.gl_spy}" alt="">
</a>{/if}
{if $currentPlanet.action.message}
<a href="#" onclick="return Dialog.PM({$currentPlanet.user.id})">
  <img src="{$dpath}img/m.gif" title="{$LNG.write_message}" alt="">
</a>{/if}
{if $currentPlanet.action.buddy}
<a href="#" onclick="return Dialog.Buddy({$currentPlanet.user.id})">
  <img src="{$dpath}img/b.gif" title="{$LNG.gl_buddy_request}" alt="">
</a>{/if}
{if $currentPlanet.action.missle}<a href="?page=galaxy&amp;action=sendMissle&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;type=1">
<img src="{$dpath}img/r.gif" title="{$LNG.gl_missile_attack}" alt="">
</a>{/if}
{else}-{/if}
{if $currentPlanet.planet.phalanx}<a class="textForBlind" href="#" onclick="OpenPopup('?page=phalanx&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1','',640,510);return false;"><span>{$LNG.gl_phalanx}</span></a>{/if}
</center>
</div>
</div>
</div>
</td>
{/if}
{/for}
</tr>

{for $planet=13 to $max_planets4}
{if !isset($GalaxyRows[$planet])}
<td class="fc-day fc-tue fc-widget-content fc-past"  style="width: 20%; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('styles/img/exp.jpg');">
   <div>
      <div class="fc-day-number"><a href="?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=7">{$planet}</a></div>
      <div class="fc-day-content">
         <div style="position: relative; height: 59px;"><center><a href="?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=7" class="btn btn-primary">{$LNG.type_mission.7}</a></center></div>
      </div>
   </div>
</td>
{elseif $GalaxyRows[$planet] === false}
<td class="fc-day fc-tue fc-widget-content fc-past" style="width: 20%; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('styles/img/destroyed.jpg');">
   <div>
      <div class="fc-day-number"><a href="?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=7">{$planet}</a></div>
      <div class="fc-day-content">
         <div style="position: relative; height: 59px;"><center>{$LNG.gl_planet_destroyed}</center></div>
      </div>
   </div>
</td>
{else}
{$currentPlanet = $GalaxyRows[$planet]}
<td class="fc-day fc-tue fc-widget-content fc-past" style="width: 20%; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('{$dpath}planeten/{$currentPlanet.planet.image}.jpg'); // opacity: 0.7">
   <div>
      <div class="fc-day-number">	<a href="javascript:void(0);" class="btn btn-default" rel="popover" data-html="true" data-placement="top" data-original-title="{$LNG.gl_planet} {$currentPlanet.planet.name} [{$galaxy}:{$system}:{$planet}]" data-content="<table style='width:220px'><tr><th colspan='2'></th></tr><tr><td style='width:80px'><img src='{$dpath}planeten/small/s_{$currentPlanet.planet.image}.jpg' height='75' width='75'></td><td>{if $currentPlanet.missions.6}<a href='javascript:doit(6,{$currentPlanet.planet.id});'>{$LNG.type_mission.6}</a><br><br>{/if}{if $currentPlanet.planet.phalanx}<a href='javascript:OpenPopup(&quot;?page=phalanx&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&quot;, &quot;&quot;, 640, 510);'>{$LNG.gl_phalanx}</a><br>{/if}{if $currentPlanet.missions.1}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=1'>{$LNG.type_mission.1}</a><br>{/if}{if $currentPlanet.missions.5}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=5'>{$LNG.type_mission.5}</a><br>{/if}{if $currentPlanet.missions.4}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=4'>{$LNG.type_mission.4}</a><br>{/if}{if $currentPlanet.missions.3}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=3'>{$LNG.type_mission.3}</a><br>{/if}{if $currentPlanet.missions.10}<a href='?page=galaxy&amp;action=sendMissle&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}'>{$LNG.type_mission.10}</a><br>{/if}</td></tr></table>">{$currentPlanet.planet.name} ({$planet} {$currentPlanet.lastActivity})</a></div> | {$planet}</div>
    <div class="fc-day-content">

      <div style="position: relative; height: 59px;">



         <center>
            {if $currentPlanet.moon}
            <a href="javascript:void(0);"  rel="popover" data-html="true" data-placement="top" data-original-title="{$LNG.gl_moon} {$currentPlanet.moon.name} [{$galaxy}:{$system}:{$planet}]" data-content="<table style='width:100%'><tr><th colspan='2'>{$LNG.gl_features}</th></tr><tr><td>{$LNG.gl_diameter}</td><td>{$currentPlanet.moon.diameter|number}</td></tr><tr><td>{$LNG.gl_temperature}</td><td>{$currentPlanet.moon.temp_min}</td></tr><tr><th colspan=2>{$LNG.gl_actions}</th></tr><tr><td colspan='2'>{if $currentPlanet.missions.1}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=1'>{$LNG.type_mission.1}</a><br>{/if}{if $currentPlanet.missions.3}<a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=3'>{$LNG.type_mission.3}</a>{/if}{if $currentPlanet.missions.3}<br><a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=4'>{$LNG.type_mission.4}</a>{/if}{if $currentPlanet.missions.5}<br><a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=5'>{$LNG.type_mission.5}</a>{/if}{if $currentPlanet.missions.6}<br><a href='javascript:doit(6,{$currentPlanet.moon.id});'>{$LNG.type_mission.6}</a>{/if}{if $currentPlanet.missions.9}<br><br><a href='?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=3&amp;target_mission=9'>{$LNG.type_mission.9}</a><br>{/if}{if $currentPlanet.missions.10}<a href='?page=galaxy&amp;action=sendMissle&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;type=3'>{$LNG.type_mission.10}</a><br>{/if}</td></tr></table></td></tr></table>">
            <img src="{$dpath}planeten/small/s_mond.jpg" height="22" width="22" alt="{$currentPlanet.moon.name}">
         </a>
         {/if}

         {if $currentPlanet.debris}
         <a href="javascript:void(0);"  rel="popover" data-html="true" data-placement="top" data-original-title="{$LNG.gl_debris_field} [{$galaxy}:{$system}:{$planet}]" data-content="<table style='width:240px'><tr><th colspan='2'></th></tr><tr><td style='width:80px'><img src='{$dpath}planeten/debris.jpg' height='75' style='width:75'></td><td><table style='width:100%'><tr><th colspan='2'>{$LNG.gl_resources}:</th></tr><tr><td>{$LNG.tech.901}: </td><td>{$currentPlanet.debris.metal|number}</td></tr><tr><td>{$LNG.tech.902}: </td><td>{$currentPlanet.debris.crystal|number}</td></tr>{if $currentPlanet.missions.8}<tr><th colspan='2'>{$LNG.gl_actions}</th></tr><tr><td colspan='2'><a href='javascript:doit(8, {$currentPlanet.planet.id});'>{$LNG.type_mission.8}</a></td></tr>{/if}</table></td></tr></table>">
         <img src="{$dpath}planeten/debris.jpg" height="22" width="22" alt="">
      </a>
      {/if}



      <br><a href="javascript:void(0);"  rel="popover" data-html="true" data-placement="top" data-original-title="{$currentPlanet.user.playerrank}" data-content="<table style='width:240px'><tr><th colspan='2'>{$currentPlanet.user.playerrank}</th></tr><tr>{if !$currentPlanet.ownPlanet}{if $currentPlanet.user.isBuddy}<tr><td><a href='#' onclick='return Dialog.Buddy({$currentPlanet.user.id})'>{$LNG.gl_buddy_request}</a></td></tr>{/if}<tr><td><a href='#' onclick='return Dialog.Playercard({$currentPlanet.user.id});'>{$LNG.gl_playercard}</a></td></tr>{/if}<tr><td><a href='?page=statistics&amp;who=1&amp;start={$currentPlanet.user.rank}'>{$LNG.gl_see_on_stats}</a></td></tr></table>">
      <span class="{foreach $currentPlanet.user.class as $class}{if !$class@first} {/if}galaxy-username-{$class}{/foreach} galaxy-username">{$currentPlanet.user.username}</span>
      {if !empty($currentPlanet.user.class)}
      <span>(</span>{foreach $currentPlanet.user.class as $class}{if !$class@first}&nbsp;{/if}<span class="galaxy-short-{$class} galaxy-short">{$ShortStatus.$class}</span>{/foreach}<span>)</span>
      {/if}
   </a>

   {if $currentPlanet.alliance}(
   <a href="javascript:void(0);"  rel="popover" data-html="true" data-placement="top" data-original-title="{$LNG.gl_alliance} {$currentPlanet.alliance.name} {$currentPlanet.alliance.member}" data-content="<table><tr><td><a href='?page=alliance&amp;mode=info&amp;id={$currentPlanet.alliance.id}'>{$LNG.gl_alliance_page}</a></td></tr><tr><td><a href='?page=statistics&amp;start={$currentPlanet.alliance.rank}&amp;who=2'>{$LNG.gl_see_on_stats}</a></td></tr>{if $currentPlanet.alliance.web}<tr><td><a href='{$currentPlanet.alliance.web}' target='allyweb'>{$LNG.gl_alliance_web_page}</td></tr>{/if}</table></td></table>">
   <span class="{foreach $currentPlanet.alliance.class as $class}{if !$class@first} {/if}galaxy-alliance-{$class}{/foreach} galaxy-alliance">{$currentPlanet.alliance.tag}</span>
</a>)
{else}{/if}<br>
{if $currentPlanet.action}
{if $currentPlanet.action.esp}
<a id="eg7" href="javascript:doit(6,{$currentPlanet.planet.id},{$spyShips|json|escape:'html'})">
  <img src="{$dpath}img/e.gif" title="{$LNG.gl_spy}" alt="">
</a>{/if}
{if $currentPlanet.action.message}
<a href="#" onclick="return Dialog.PM({$currentPlanet.user.id})">
  <img src="{$dpath}img/m.gif" title="{$LNG.write_message}" alt="">
</a>{/if}
{if $currentPlanet.action.buddy}
<a href="#" onclick="return Dialog.Buddy({$currentPlanet.user.id})">
  <img src="{$dpath}img/b.gif" title="{$LNG.gl_buddy_request}" alt="">
</a>{/if}
{if $currentPlanet.action.missle}<a href="?page=galaxy&amp;action=sendMissle&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;type=1">
<img src="{$dpath}img/r.gif" title="{$LNG.gl_missile_attack}" alt="">
</a>{/if}
{else}-{/if}
{if $currentPlanet.planet.phalanx}<a class="textForBlind" href="#" onclick="OpenPopup('?page=phalanx&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1','',640,510);return false;"><span>{$LNG.gl_phalanx}</span></a>{/if}
</center>
</div>
</div>
</div>
</td>
{/if}
{/for}
<td class="fc-day fc-tue fc-widget-content fc-past" style="width: 20%; background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('styles/img/deep.jpg');">
   <div>
      <div class="fc-day-number"><a href="?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$planet}&amp;planettype=1&amp;target_mission=7">{$planet}</a></div>
      <div class="fc-day-content">
         <div style="position: relative; height: 59px;"><center><a class="btn btn-warning" href="?page=fleetTable&amp;galaxy={$galaxy}&amp;system={$system}&amp;planet={$max_planets + 1}&amp;planettype=1&amp;target_mission=15">{$LNG.gl_out_space}</a></center></div>
      </div>
   </div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div>
<!-- end content -->
</div>
</div>
<!-- end widget div -->
</div>



{if $action == 'sendMissle'}
<!-- Widget ID (each widget will need unique ID)-->
<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"

                    -->
                    <header>
                     <span class="widget-icon"> <i class="fa fa-table"></i> </span>
                     <h2>{$LNG.gl_missil_launch}</h2>

                  </header>

                  <!-- widget div-->
                  <div>

                     <!-- widget edit box -->
                     <div class="jarviswidget-editbox">
                      <!-- This area used as dropdown edit box -->

                   </div>
                   <!-- end widget edit box -->

                   <!-- widget content -->
                   <div class="widget-body">

                      <div class="table-responsive">
                         <form action="" method="post" name="countt">
                          <table class="table table-bordered">
                           <thead>


                            <form action="?page=fleetMissile" method="post">
                               <input type="hidden" name="galaxy" value="{$galaxy}">
                               <input type="hidden" name="system" value="{$system}">
                               <input type="hidden" name="planet" value="{$planet}">
                               <input type="hidden" name="type" value="{$type}">
                               <tr>
                                 <th colspan="2">{$LNG.gl_missil_launch} [{$galaxy}:{$system}:{$planet}]</th>
                              </tr>
                              <tr>
                                 <td>{$missile_count} <input type="text" name="SendMI" size="2" maxlength="7"></td>
                                 <td>{$LNG.gl_objective}: 
                                  {html_options name=Target options=$MissleSelector}
                               </td>
                            </tr>
                            <tr>
                              <th colspan="2" style="text-align:center;"><input type="submit" value="{$LNG.gl_missil_launch_action}"></th>
                           </tr>
                        </form>


                     </thead>
                  </table>
               </div>
            </div>
            <!-- end widget content -->

         </div>
         <!-- end widget div -->

      </div>
      <!-- end widget -->{/if}


      <!-- Widget ID (each widget will need unique ID)-->
      <div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
								<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"

                    -->
                    <header>
                     <span class="widget-icon"></span>
                     <h2>&nbsp</h2>

                  </header>

                  <!-- widget div-->
                  <div>

                     <!-- widget edit box -->
                     <div class="jarviswidget-editbox">
                      <!-- This area used as dropdown edit box -->

                   </div>
                   <!-- end widget edit box -->

                   <!-- widget content -->
                   <div class="widget-body">

                      <div class="table-responsive">
                         <form action="" method="post" name="countt">
                          <table class="table table-bordered">
                           <thead>

                            <tr>
                             <td colspan="6">({$planetcount})</td>
                             <td colspan="2">
                              <a rel="tooltip" data-html="true" data-placement="top" data-original-title="<table><tr><th colspan='2'>{$LNG.gl_legend}</td></tr><tr><td style='width:220px'>{$LNG.gl_strong_player}</td><td><span class='galaxy-short-strong'>{$LNG.gl_short_strong}</span></td></tr><tr><td style='width:220px'>{$LNG.gl_week_player}</td><td><span class='galaxy-short-noob'>{$LNG.gl_short_newbie}</span></td></tr><tr><td style='width:220px'>{$LNG.gl_vacation}</td><td><span class='galaxy-short-vacation'>{$LNG.gl_short_vacation}</span></td></tr><tr><td style='width:220px'>{$LNG.gl_banned}</td><td><span class='galaxy-short-banned'>{$LNG.gl_short_ban}</span></td></tr><tr><td style='width:220px'>{$LNG.gl_inactive_seven}</td><td><span class='galaxy-short-inactive'>{$LNG.gl_short_inactive}</span></td></tr><tr><td style='width:220px'>{$LNG.gl_inactive_twentyeight}</td><td><span class='galaxy-short-longinactive'>{$LNG.gl_short_long_inactive}</span></td></tr></table>">{$LNG.gl_legend}</a> 
                           </td>
                        </tr>
                        <tr>
                          <td colspan="3"><span id="missiles">{$currentmip|number}</span> {$LNG.gl_avaible_missiles}</td>
                          <td colspan="5"><span id="slots">{$maxfleetcount}</span>/{$fleetmax} {$LNG.gl_fleets}</td>
                       </tr>
                       <tr>
                          <td colspan="3">
                           <span id="elementID210">{$spyprobes|number}</span> {$LNG.gl_avaible_spyprobes}
                        </td>
                        <td colspan="3">
                           <span id="elementID209">{$recyclers|number}</span> {$LNG.gl_avaible_recyclers}
                        </td>
                        <td colspan="2">
                           <span id="elementID219">{$grecyclers|number}</span> {$LNG.gl_avaible_grecyclers}
                        </td>
                     </tr>
                     <tr style="display: none;" id="fleetstatusrow">
                       <th colspan="8">{$LNG.cff_fleet_target}
                       </tr>


                    </thead>
                 </table>
              </div>
           </div>
           <!-- end widget content -->

        </div>
        <!-- end widget div -->

     </div>
     <!-- end widget -->



     <script type="text/javascript">
      status_ok		= '{$LNG.gl_ajax_status_ok}';
      status_fail		= '{$LNG.gl_ajax_status_fail}';
      MaxFleetSetting = {$settings_fleetactions};
   </script>
   {/block}