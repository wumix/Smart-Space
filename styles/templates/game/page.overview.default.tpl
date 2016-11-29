{block name="title" prepend}{$LNG.lm_overview}{/block}
{block name="script" append}{/block}
{block name="content"}

                                <!-- row -->
                                <div class="row">

                                        <!-- col -->
                                        <div class="col-xs-16 col-sm-8 col-md-6 col-lg-4">
                  <div class="clearfix visible-xs"></div>
                                                <ul id="sparks" class="">
                                                        <li class="sparks-info">
                                                                <h5> Bauschleife <span class="txt-color-blue" style="font-size: 7pt">{if $buildInfo.buildings}{$LNG.tech[$buildInfo.buildings['id']]} ({$buildInfo.buildings['level']})<div class="timer" data-time="{$buildInfo.buildings['timeleft']}">{$buildInfo.buildings['starttime']}</div>{else}{$LNG.ov_free}{/if}</span></h5>
                                                                <div class="sparkline txt-color-blue hidden-mobile hidden-md hidden-sm">
                        <img src="{$dpath}planeten/{$planetimage}.jpg" height="50" width="50" alt="{$planetname}">
                                                                </div>
                                                        </li>
                                                        <li class="sparks-info">
                                                                <h5> Aktive Forschungen <span class="small txt-color-purple" style="font-size: 7pt">{if $buildInfo.tech}{$LNG.tech[$buildInfo.tech['id']]} ({$buildInfo.tech['level']})<div class="timer" data-time="{$buildInfo.tech['timeleft']}">{$buildInfo.tech['starttime']}</div>{else}{$LNG.ov_free}{/if}</span></h5>
                                                                <div class="sparkline txt-color-purple hidden-mobile hidden-md hidden-sm">
                        <img src="{$dpath}planeten/{$planetimage}.jpg" height="50" width="50" alt="{$planetname}">
                                                                </div>
                                                        </li>
                                                        <li class="sparks-info">
                                                                <h5> Flotten Herstellung <span class="small txt-color-greenDark" style="font-size: 7pt">{if $buildInfo.fleet}{$LNG.tech[$buildInfo.fleet['id']]} ({$buildInfo.fleet['level']})<div class="timer" data-time="{$buildInfo.fleet['timeleft']}">{$buildInfo.fleet['starttime']}</div>{else}{$LNG.ov_free}{/if}</span></h5>
                                                                <div class="sparkline txt-color-greenDark hidden-mobile hidden-md hidden-sm">
                        <img src="{$dpath}planeten/{$planetimage}.jpg" height="50" width="50" alt="{$planetname}">
                                                                </div>
                                                        </li>
                                                </ul>
                                        </div>
                                </div>
                                <!-- end row-->




                            {if !empty($chatOnline)}

                             <div class="row">

                                <div class="col-sm-12">
                                        <div class="alert alert-success alert-block">
                                        <a class="close" data-dismiss="alert" href="#">×</a>
                                        <h4 class="alert-heading">{$LNG.ov_chat_online}</h4>
                                        {foreach $chatOnline as $Name}{if !$Name@first},&nbsp;{/if}<a href="?page=chat">{$Name}</a>{/foreach}
                                </div>


                             </div>
                            {/if}





                              {if $is_news}
                                                <!-- start row -->

                                        <div class="row">

                                                <div class="col-sm-12">
                                                        <div class="alert alert-success alert-block">
                                                                <a class="close" data-dismiss="alert" href="#">×</a>
                                                                <h4 class="alert-heading">{$LNG.ov_news}!</h4>
                                                                {$news}
                                                        </div>

                                                </div>

                                        </div>
                                        {/if}
                                <!-- end row-->





{if !empty($fleets)}
<div class="jarviswidget  jarviswidget-sortable jarviswidget-color-blueDark" id="wid-id-2" data-widget-editbutton="false" role="widget" data-widget-attstyle="jarviswidget-color-blueDark">
        <!-- widget div-->
        <div role="content" style="display: block;">
                <!-- widget edit box -->
                <div class="jarviswidget-editbox">
                        <!-- This area used as dropdown edit box -->
                </div>
                <!-- end widget edit box -->
                <!-- widget content -->
                <div class="widget-body no-padding">

                        <div class="alert alert-info no-margin fade in">
                                <i class="fa-fw fa fa-info"></i>
                                Flotten Bewegung
                        </div>
                        <div class="table-responsive">

                                <table class="table table-hover">
                                        {foreach $fleets as $index => $fleet}
                                        <thead>
                                                <tr>
                                                        <th id="fleettime_{$index}" class="fleets" data-fleet-end-time="{$fleet.returntime}" data-fleet-time="{$fleet.resttime}"><br>{pretty_fly_time({$fleet.resttime})}</th>
                                                        <th colspan="2"><br>{$fleet.text}</th>
                                                </tr>
                                        </thead>
                                        {/foreach}
                                </table>

                        </div>
                </div>
                <!-- end widget content -->
        </div>
        <!-- end widget div -->
</div>{/if}
<div class="jarviswidget jarviswidget-sortable" id="wid-id-0" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-colorbutton="false" data-widget-deletebutton="false" role="widget">
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
                <header role="heading">
                        <span class="widget-icon"> <i class="fa fa-empire"></i> </span>
                        <h2><a href="#" onclick="return Dialog.PlanetAction();" title="{$LNG.ov_planet_rename}/{$LNG.ov_delete_planet}">{$LNG.ov_planet} "<span class="planetname">{$planetname}</span>"</a> [{$galaxy}:{$system}:{$planet}] | [{$LNG.ov_server_time} : <span class="servertime">{$servertime}</span>]</h2>
                <span class="jarviswidget-loader"><i class="fa fa-refresh fa-spin"></i></span></header>
                <!-- widget div-->
                <div class="no-padding" role="content">
                        <div class="">
                                <!-- content -->
                                <div id="myTabContent" class="tab-content">
                                        <div class="tab-pane fade active in padding-10 no-padding-bottom" id="s1">
                                                <div class="row no-space">
                                                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                                                <img class="img-responsive" src="{$dpath}planeten/{$planetimage}.jpg" alt="{$planetname}">
                                                        </div>
                                                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 show-stats">
                                                                <div class="row">
                                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                                        <div class="col-xs-12"><span class="text"> {$LNG.ov_fields} <span class="pull-right">{$planet_diameter} km, <a title="{$LNG.ov_developed_fields}">{$planet_field_current}</a> / <a title="{$LNG.ov_max_developed_fields}">{$planet_field_max}</a></span> </span>
                                                                        <div class="progress">
                                                                                <div class="progress-bar bg-color-blueDark" style="width: {$proc_field}%;"></div>
                                                                        </div> </div> </div>
                                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                                        <div class="col-xs-12">
                                                                        <span class="text"> {$LNG.ov_temperature} <span class="pull-right">{$planet_temp_min}{$LNG.ov_temp_unit} {$LNG.ov_to} {$planet_temp_max}{$LNG.ov_temp_unit}</span> </span>
                                                                                <div class="progress">
                                                                                        <div class="progress-bar bg-color-blueDark" style="width: {$proc_temp}%;"></div>
                                                                                </div>
                                                                                </div>
                                                                                </div>
                                                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                                                <div class="col-xs-12">

                                                                                <span class="text"> {$LNG.ov_points} <span class="pull-right">{$rankInfo}</span> </span>


                                                                                        <div class="progress">
                                                                                                <div class="progress-bar bg-color-blueDark" style="width: 100%;"></div>
                                                                                        </div> </div></div>

                                                                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                                                        <div class="col-xs-12"><hr>
                                                                                        <img src="{$dpath}planeten/mond_.jpg" alt="" style="width:30px;height:30px;">
                                                                                {if $Moon}
                                                                                <a href="game.php?page=overview&amp;cp={$Moon.id}&amp;re=0"  title="{$Moon.name}">{$Moon.name}</a> [{$galaxy}:{$system}:{$planet}]
                                                                                {else}
                                                                                <span>{$LNG.fl_error_no_moon}</span>
                                                                                {/if}<hr></div></div>
                                                                                </div>
                                                                        </div>
                                                                </div>
                                                        </div>
                                                        <!-- end s1 tab pane -->

                                                </div>
                                                <!-- end content -->
                                        </div>
                                </div>
                                <!-- end widget div -->
                        </div>
                        <div class="jarviswidget  jarviswidget-sortable jarviswidget-color-blueDark" id="wid-id-2" data-widget-editbutton="false" role="widget" data-widget-attstyle="jarviswidget-color-blueDark">
                                <!-- widget div-->
                                <div role="content" style="display: block;">
                                        <!-- widget edit box -->
                                        <div class="jarviswidget-editbox">
                                                <!-- This area used as dropdown edit box -->
                                        </div>
                                        <!-- end widget edit box -->


                                        <!-- widget content -->
                                       {if $AllPlanets}
                                        <div class="widget-body no-padding">

                                                <div class="alert alert-info no-margin fade in">
                                                        <i class="fa-fw fa fa-info"></i>
                                                        {$LNG.type_planet.1}
                                                </div>
                                                <div class="table-responsive">

                                                        <table class="table table-hover">
                                                                <thead>
                                                                        {foreach $AllPlanets as $PlanetRow}
                                                                        {if ($PlanetRow@iteration % $themeSettings.PLANET_ROWS_ON_OVERVIEW) === 1}<tr style="height:20px;">{/if}
                                                                                <th>{$PlanetRow.name}<br><a href="game.php?page=overview&amp;cp={$PlanetRow.id}" title="{$PlanetRow.name}"><img src="{$dpath}planeten/small/s_{$PlanetRow.image}.jpg" alt="{$PlanetRow.name}"></a> &nbsp</th>
                                                                                {if $PlanetRow@last && $PlanetRow@total > 1 && ($PlanetRow@iteration % $themeSettings.PLANET_ROWS_ON_OVERVIEW) !== 0}
                                                                                {$to = $themeSettings.PLANET_ROWS_ON_OVERVIEW - ($PlanetRow@iteration % $themeSettings.PLANET_ROWS_ON_OVERVIEW)}
                                                                                {for $foo=1 to $to}
                                                                                <th class="transparent">&nbsp;</th>
                                                                                {/for}
                                                                                {/if}
                                                                        {if ($PlanetRow@iteration % $themeSettings.PLANET_ROWS_ON_OVERVIEW) === 0}</tr>{/if}
                                                                        {/foreach}
                                                                </thead>
                                                        </table>
                                                        {else}&nbsp;{/if}
                                                </div>
                                        </div>
                                        <!-- end widget content -->
                                </div>
                                <!-- end widget div -->
                        </div>

                                                        <!-- start row -->
                                        {if $ref_active}
                                        <div class="row">

                                                <div class="col-sm-12">
                                                        <div class="alert alert-info alert-block">
                                                                <a class="close" data-dismiss="alert" href="#">×</a>
                                                                <h4 class="alert-heading">{$LNG.ov_reflink}</h4>
        <tr>
                <td colspan="3"><input type="text" value="{$path}index.php?ref={$userid}" readonly="readonly" style="width:380px;"></td>
        </tr>
        {foreach $RefLinks as $RefID => $RefLink}
        <tr>
                <td colspan="2"><a href="#" onclick="return Dialog.Playercard({$RefID}, '{$RefLink.username}');">{$RefLink.username}</a></td>
                <td>{{$RefLink.points|number}} / {$ref_minpoints|number}</td>
        </tr>
        {foreachelse}
        <tr>
                <td colspan="3">{$LNG.ov_noreflink}</td>
        </tr>
        {/foreach}
                                                        </div>

                                                </div>

                                        </div>
                                        {/if}
                                <!-- end row-->
                        {/block}