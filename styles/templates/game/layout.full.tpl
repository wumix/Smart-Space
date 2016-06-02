{include file="main.header.tpl" bodyclass="full"}
{include file="main.navigation.tpl"}
{include file="main.topnav.tpl"}
<div id="content">
{include file="_resource_nav.tpl"}
{block name="content"}
{/block}
</div>
{foreach $cronjobs as $cronjob}<img src="cronjob.php?cronjobID={$cronjob}" alt="">{/foreach}
{include file="main.footer.tpl" nocache}