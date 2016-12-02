{block name="title" prepend}{$LNG.lm_battlesim}{/block}
{block name="content"}

                                                        <!-- Widget ID (each widget will need unique ID)-->
                                                        <div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-0" data-widget-editbutton="false">
                                                                <header>
                                                                        <span class="widget-icon"> <i class="fa fa-empire"></i> </span>
                                                                        <h2>{$LNG.lm_battlesim}</h2>

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

                                                                                        <table class="table table-bordered">
                                                                                                <thead>
<form id="form" name="battlesim">
        <input type="hidden" name="slots" id="slots" value="{$Slots + 1}">
                <tr>
                        <th>{$LNG.lm_battlesim}</th>
                </tr>
                <tr>
                        <td>{$LNG.bs_steal} {$LNG.tech.901}: <font color="black"><input type="text" size="10" value="{if isset($battleinput.0.1.1)}{$battleinput.0.1.1}{else}0{/if}" name="battleinput[0][1][1]"></font> {$LNG.tech.902}: <font color="black"><input type="text" size="10" value="{if isset($battleinput.0.1.2)}{$battleinput.0.1.2}{else}0{/if}" name="battleinput[0][1][2]"></font> {$LNG.tech.903}: <font color="black"><input type="text" size="10" value="{if isset($battleinput.0.1.3)}{$battleinput.0.1.3}{else}0{/if}" name="battleinput[0][1][3]"></td>
                </tr>
                <tr>
                        <td class="left"><input type="button" class="btn btn-primary" onClick="return add();" value="{$LNG.bs_add_acs_slot}"></td>
                </tr>
                <tr>
                        <td class="transparent" style="padding:0;">
                                <div id="tabs">
                                        <ul>
                                                {section name=tab start=0 loop=$Slots}<li><a href="#tabs-{$smarty.section.tab.index}">{$LNG.bs_acs_slot} {$smarty.section.tab.index + 1}</a></li>{/section}
                                        </ul>
                                        {section name=content start=0 loop=$Slots}
                                        <div id="tabs-{$smarty.section.content.index}">
                                                <table class="table table-bordered">
                                                        <tr>
                                                                <th>{$LNG.bs_techno}</th>
                                                                <th>{$LNG.bs_atter}</th>
                                                                <th>{$LNG.bs_deffer}</th>
                                                        </tr>
                                                        <tr>
                                                                <td></td>
                                                                <td><button class="reset">{$LNG.bs_reset}</button></td>
                                                                <td><button class="reset">{$LNG.bs_reset}</button></td>
                                                        </tr>
                                                        <tr>
                                                                <td>{$LNG.tech.109}:</td>
                                                                <td><font color="black"><input type="text" size="10" value="{if isset($battleinput.{$smarty.section.content.index}.0.109)}{$battleinput.{$smarty.section.content.index}.0.109}{else}0{/if}" name="battleinput[{$smarty.section.content.index}][0][109]"></td>
                                                                <td><font color="black"><input type="text" size="10" value="{if isset($battleinput.{$smarty.section.content.index}.1.109)}{$battleinput.{$smarty.section.content.index}.1.109}{else}0{/if}" name="battleinput[{$smarty.section.content.index}][1][109]"></td>
                                                        </tr>
                                                        <tr>
                                                                <td>{$LNG.tech.110}:</td>
                                                                <td><font color="black"><input type="text" size="10" value="{if isset($battleinput.{$smarty.section.content.index}.0.110)}{$battleinput.{$smarty.section.content.index}.0.110}{else}0{/if}" name="battleinput[{$smarty.section.content.index}][0][110]"></td>
                                                                <td><font color="black"><input type="text" size="10" value="{if isset($battleinput.{$smarty.section.content.index}.1.110)}{$battleinput.{$smarty.section.content.index}.1.110}{else}0{/if}" name="battleinput[{$smarty.section.content.index}][1][110]"></td>
                                                        </tr>
                                                        <tr>
                                                                <td>{$LNG.tech.111}:</td>
                                                                <td><font color="black"><input type="text" size="10" value="{if isset($battleinput.{$smarty.section.content.index}.0.111)}{$battleinput.{$smarty.section.content.index}.0.111}{else}0{/if}" name="battleinput[{$smarty.section.content.index}][0][111]"></td>
                                                                <td><font color="black"><input type="text" size="10" value="{if isset($battleinput.{$smarty.section.content.index}.1.111)}{$battleinput.{$smarty.section.content.index}.1.111}{else}0{/if}" name="battleinput[{$smarty.section.content.index}][1][111]"></td>
                                                        </tr>
                                                </table>
                                                <br>
                                                <table class="table table-bordered">
                                                        <tr>
                                                                <td class="transparent">
                                                                        <table>
                                                                                <tr>
                                                                                        <th>{$LNG.bs_names}</th>
                                                                                        <th>{$LNG.bs_atter}</th>
                                                                                        <th>{$LNG.bs_deffer}</th>
                                                                                </tr>
                                                                                <tr>
                                                                                        <td></td>
                                                                                        <td><button class="reset">{$LNG.bs_reset}</button></td>
                                                                                        <td><button class="reset">{$LNG.bs_reset}</button></td>
                                                                                </tr>
                                                                                {foreach $fleetList as $id}
                                                                                <tr>
                                                                                        <td>{$LNG.tech.$id}:</td>
                                                                                        <td><font color="black"><input type="text" size="10" value="{if isset($battleinput.{$smarty.section.content.index}.0.$id)}{$battleinput.{$smarty.section.content.index}.0.$id}{else}0{/if}" name="battleinput[{$smarty.section.content.index}][0][{$id}]"></td>
                                                                                        <td><font color="black"><input type="text" size="10" value="{if isset($battleinput.{$smarty.section.content.index}.1.$id)}{$battleinput.{$smarty.section.content.index}.1.$id}{else}0{/if}" name="battleinput[{$smarty.section.content.index}][1][{$id}]"></td>
                                                                                </tr>
                                                                                {/foreach}
                                                                        </table>
                                                                </td>
                                                                {if $smarty.section.content.index == 0}
                                                                        <td style="width:50%" class="transparent">
                                                                                <table>
                                                                                        <tr>
                                                                                                <th>{$LNG.bs_names}</td>
                                                                                                <th>{$LNG.bs_atter}</th>
                                                                                                <th>{$LNG.bs_deffer}</th>
                                                                                        </tr>
                                                                                        <tr>
                                                                                                <td></td>
                                                                                                <td></td>
                                                                                                <td><button class="reset">{$LNG.bs_reset}</button></td>
                                                                                        </tr>
                                                                                        {foreach $defensiveList as $id}
                                                                                        <tr>
                                                                                                <td>{$LNG.tech.$id}:</td>
                                                                                                <td>-</td>
                                                                                                <td><font color="black"><input type="text" size="10" value="{if isset($battleinput.{$smarty.section.content.index}.1.$id)}{$battleinput.{$smarty.section.content.index}.1.$id}{else}0{/if}" name="battleinput[{$smarty.section.content.index}][1][{$id}]"></td>
                                                                                        </tr>
                                                                                {/foreach}
                                                                                </table>
                                                                        </td>
                                                                {/if}
                                                        </tr>
                                                </table>
                                        </div>
                                        {/section}
                                </div>
                        </td>
                </tr>
                <tr id="submit">
                        <td><input type="button" class="btn btn-primary" onClick="return check();" value="{$LNG.bs_send}">&nbsp;<input class="btn btn-primary type="reset" value="{$LNG.bs_cancel}"></td>
                </tr>
                <tr id="wait" style="display:none;">
                        <td style="height:20px">{$LNG.bs_wait}</td>
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
                                                        <!-- end widget -->


{/block}