{block name="title" prepend}{$LNG.lm_research}{/block}
{block name="content"}

{if $IsLabinBuild}
<div class="alert alert-danger fade in">
<i class="fa-fw fa fa-times"></i>
<strong>Error!</strong> {$LNG.bd_building_lab}.
</div>
{/if}

{if !empty($Queue)}
<div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-1" data-widget-colorbutton="false" data-widget-editbutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false"  data-widget-sortable="false" role="widget">
<header role="heading">
        <span class="widget-icon"> <i class="fa fa-align-justify"></i> </span>
        <h2>Research In Progress </h2>
</header>
<div role="content">
        <div class="jarviswidget-editbox">
        </div>

        <div class="widget-body">
                {foreach $Queue as $List}
                <div class="row">

                {if isset($ResearchList[$List.element])}
                {$CQueue = $ResearchList[$List.element]}
                {/if}
                {if isset($CQueue) && $CQueue.maxLevel != $CQueue.level && !$IsFullQueue && $CQueue.buyable}
                <div class="col-lg-2">
                                <form class="build_form" action="game.php?page=research" method="post">
                                        <input type="hidden" name="cmd" value="insert">
                                        <input type="hidden" name="building" value="{$List.element}">
                                        <button type="submit" class="btn btn-success btn-block build_submit onlist">
                                                <span class="label label-warning">{$List.level}{if !empty($List.planet)} @ {$List.planet}{/if}</span>
                                                {$LNG.tech.{$List.element}}
                                        </button>
                                </form>
                        </div>
                        <div class="visable-xs visable-sm visable-md hidden-lg"><br></div>
                        {else}
                        {$LNG.tech.{$List.element}} {$List.level} {if $List.destroy}{$LNG.bd_dismantle}{/if}
                        {/if}
                        {if $List@first}
                        <div class="col-lg-8">
                                <div class="progress progress-lg progress-striped active">
                                      <div class="progress-bar bg-color-blue" aria-valuetransitiongoal="25" role="progressbar" id="progressbar" data-time="{$List.resttime}"></div>
                                </div>
                        </div>

                        <div class="col-lg-2">
                                <form action="game.php?page=research" method="post" class="build_form">
                                        <input type="hidden" name="cmd" value="cancel">
                                        <button type="submit" class="btn btn-danger btn-block build_submit onlist">
                                                <span class="label label-warning" id="time" data-time="{$List.time}"></span>
                                                {$LNG.bd_cancel}
                                        </button>
                                </form>
                        </div>
                        <div class="col-lg-12"><hr class="simple"></div>
                        {else}
                        <div class="col-lg-10">
                                <form action="game.php?page=research" method="post" class="build_form">
                                        <input type="hidden" name="cmd" value="remove">
                                        <input type="hidden" name="listid" value="{$List@iteration}">
                                        <button type="submit" class="btn btn-danger btn-block build_submit onlist">
                                                {$LNG.bd_cancel}
                                        </button>
                                </form>
                        </div>
                        {/if}
                </div>
                {/foreach}
        </div>
</div>
</div>
{/if}

<div class="col-xs-12 visable-xs visable-sm visable-md visable-lg">
        <div class="hidden-xs hidden-sm hidden-lg hidden-md jarviswidget jarviswidget-color-darkBlue jarviswidget-sortable" id="wid-id-6" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false" role="widget" style="">
                <header role="heading">
                        <h2>Research</h2>
                        <span class="jarviswidget-loader"><i class="fa fa-refresh fa-spin"></i></span></header>
                        <!-- widget div-->
                        <div role="content">
                                {foreach $ResearchList as $ID => $Element}
                                        {if ($Element.row_var % 4) == 0}
                                                <div class="row">
                                        {/if}
                                                <div class="col-xs-3 hidden-lg hidden-md" style="float:left; border:none; border-color:rgba(0,0,0,0.5)">
                                                        <a href="#" id="m_building_{$ID}" data-id="{$ID}" data-name="{$LNG.tech.{$ID}}" class="m_building_selector">
                                                                <img class="img-responsive" src="styles/gebaeude/{$ID}.gif" alt="{$LNG.tech.{$ID}}" width="" height="">
                                                        </a>
                                                </div>
                                        {if (($Element.row_var - 3) % 4) == 0}
                                                </div>
                                                <br>
                                        {/if}
                                {/foreach}
                                <div class="col-xs-12"><br></div>
                        </div>
                        <!-- end widget div -->

                </div>
        </div>

{foreach $ResearchList as $ID => $Element}
<div class="col-md-4 visable-xs visable-sm visable-md visable-lg">
        <div class="jarviswidget jarviswidget-color-darkBlue jarviswidget-sortable" id="wid-id-6" data-widget-colorbutton="false" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-deletebutton="false" role="widget" style="">
                <header role="heading">
                        <h2><a href="#" onclick="return Dialog.info({$ID})">{$LNG.tech.{$ID}}</a>{if $Element.level > 0} ({$LNG.bd_lvl} {$Element.level}{if $Element.maxLevel != 255}/{$Element.maxLevel}{/if}){/if}</h2>
                        <span class="jarviswidget-loader"><i class="fa fa-refresh fa-spin"></i></span></header>
                        <!-- widget div-->
                        <div role="content">

                                <div class="col-sm-4 thumbnail" style="background-color: rgba(0, 0, 0, 0.5);border: none;">
                                        <a href="#" onclick="return Dialog.info({$ID})">
                                                <img class='img-responsive' src="styles/gebaeude/{$ID}.gif" alt="{$LNG.tech.{$ID}}" width="" height="">
                                        </a>
                                </div>

                                <div class="col-xs-8">
                                        {foreach $Element.costRessources as $RessID => $RessAmount}
                                                <img src="styles/gebaeude/{$RessID}.gif" style="width: 14px;height: 14px;border: 1px solid #000;position:  -moz-border-radius: 11px; -webkit-border-radius: 11px; border-radius: 11px;    z-index: 2;">
                                                <span style="color:{if $Element.costOverflow[$RessID] == 0}lime{else}red{/if}; top:2px">{$RessAmount|number}</span>
                                                <br>
                                        {/foreach}
                                        <br>
                                </div>
                                <div class="col-xs-12">
                                        {if !empty($Element.infoEnergy)}{$Element.infoEnergy}{/if}<br>
                                        {$LNG.fgf_time}: {$Element.elementTime|time}
                                </div>

                                <div class="col-xs-12">
                                        <br>
                                        {if $Element.maxLevel == $Element.levelToBuild}
                                                <button type="submit" class="btn btn-block btn-danger disabled">{$LNG.bd_maxlevel}</button>
                                        {elseif $IsLabinBuild || $IsFullQueue || !$Element.buyable}
                                                <button type="submit" class="btn btn-block btn-danger disabled">{if $Element.level == 0}{$LNG.bd_tech}{else}{$LNG.bd_tech_next_level}{$Element.levelToBuild + 1}{/if}</button>
                                        {else}
                                        <form action="game.php?page=research" method="post" class="build_form">
                                                        <input type="hidden" name="cmd" value="insert">
                                                        <input type="hidden" name="tech" value="{$ID}">
                                                        <button type="submit" class="btn btn-primary btn-block">{if $Element.level == 0}{$LNG.bd_tech}{else}{$LNG.bd_tech_next_level}{$Element.levelToBuild + 1}{/if}</button>
                                                </form>
                                        {/if}
                                        <br>
                                </div>


                        </div>
                        <!-- end widget div -->
                </div>
        </div>
        {/foreach}
        {/block}