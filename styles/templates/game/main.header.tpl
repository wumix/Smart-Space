<!DOCTYPE html>

<!--[if lt IE 7 ]> <html lang="{$lang}" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="{$lang}" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="{$lang}" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="{$lang}" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="{$lang}" class="no-js"> <!--<![endif]-->
<head>
	<title>Smart-Space</title>
	<meta name="generator" content="2Moons {$VERSION}">
	{if !empty($goto)}
	<meta http-equiv="refresh" content="{$gotoinsec};URL={$goto}">
	{/if}
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="./styles/resource/css/base/jquery.css">
	<link rel="stylesheet" type="text/css" href="./styles/resource/css/base/jquery.fancybox.css">
	<!-- <link rel="stylesheet" type="text/css" href="./styles/resource/css/base/fancybox-updated.css"> -->

	<link rel="stylesheet" type="text/css" href="./styles/resource/css/base/validationEngine.jquery.css">
	<link rel="shortcut icon" href="./favicon.ico" type="image/x-icon">
	<script type="text/javascript">
	var ServerTimezoneOffset = {$Offset};
	var serverTime 	= new Date({$date.0}, {$date.1 - 1}, {$date.2}, {$date.3}, {$date.4}, {$date.5});
	var startTime	= serverTime.getTime();
	var localTime 	= serverTime;
	var localTS 	= startTime;
	var Gamename	= document.title;
	var Ready		= "{$LNG.ready}";
	var Skin		= "{$dpath}";
	var Lang		= "{$lang}";
	var head_info	= "{$LNG.fcm_info}";
	var auth		= {$authlevel|default:'0'};
	var days 		= {$LNG.week_day|json|default:'[]'} 
	var months 		= {$LNG.months|json|default:'[]'} ;
	var tdformat	= "{$LNG.js_tdformat}";
	var queryString	= "{$queryString|escape:'javascript'}";

	setInterval(function() {
		serverTime.setSeconds(serverTime.getSeconds()+1);
	}, 1000);
	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>

	<!-- <script type="text/javascript" src="./scripts/base/jquery.js"></script>
	<script type="text/javascript" src="./scripts/base/jquery.ui.js"></script> -->

	<script type="text/javascript" src="./scripts/base/jquery.browser.min.js"></script>


	<script type="text/javascript" src="./scripts/base/jquery.cookie.js"></script>
	<script type="text/javascript" src="./scripts/base/jquery.fancybox.js"></script>

	<!-- <script type="text/javascript" src="./scripts/base/fancybox-updated.min.js"></script> -->

	<script type="text/javascript" src="./scripts/base/jquery.validationEngine.js"></script>
	<script type="text/javascript" src="./scripts/l18n/validationEngine/jquery.validationEngine-{$lang}.js"></script>
	<script type="text/javascript" src="./scripts/base/tooltip.js"></script>
	<script type="text/javascript" src="./scripts/game/base.js"></script>
	{foreach item=scriptname from=$scripts}
	<script type="text/javascript" src="./scripts/game/{$scriptname}.js"></script>
	{/foreach}
	{block name="script"}{/block}
	<script type="text/javascript">
	$(function() {
		{$execscript}
	});
	</script>
	
			<meta name="viewport" content="width=device-width, {$mobile_version}, maximum-scale=1.0, user-scalable=yes">

		<!-- Basic Styles -->
		<link rel="stylesheet" type="text/css" media="screen" href="styles/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="styles/css/ressource.css">
		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
		<!-- SmartAdmin Styles : Caution! DO NOT change the order -->
		<link rel="stylesheet" type="text/css" media="screen" href="styles/css/smartadmin-production-plugins.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="styles/css/smartadmin-production.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="styles/css/smartadmin-skins.min.css">

		<!-- SmartAdmin RTL Support  -->
		<link rel="stylesheet" type="text/css" media="screen" href="styles/css/smartadmin-rtl.min.css">

		<link rel="stylesheet" type="text/css" media="screen" href="styles/css/your_style.css"> 

		<!-- FAVICONS -->
		<link rel="shortcut icon" href="img/favicon/favicon.ico" type="image/x-icon">
		<link rel="icon" href="img/favicon/favicon.ico" type="image/x-icon">

		<!-- GOOGLE FONT -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

		<!-- Specifying a Webpage Icon for Web Clip 
			 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
		<link rel="apple-touch-icon" href="img/splash/sptouch-icon-iphone.png">
		<link rel="apple-touch-icon" sizes="76x76" href="img/splash/touch-icon-ipad.png">
		<link rel="apple-touch-icon" sizes="120x120" href="img/splash/touch-icon-iphone-retina.png">
		<link rel="apple-touch-icon" sizes="152x152" href="img/splash/touch-icon-ipad-retina.png">
		
		<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		
		<!-- Startup image for web apps -->
		<link rel="apple-touch-startup-image" href="img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
		<link rel="apple-touch-startup-image" href="img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
		<link rel="apple-touch-startup-image" href="img/splash/iphone.png" media="screen and (max-device-width: 320px)">
		<style type="text/css">
			.easy-pie-title 
			{
				/*width: 200px;*/
				overflow: visible;
			}

			.smaller-stat 
			{
				margin: 30px 0 0 0;
				font-weight: 600;
			}

			.show-stat-microcharts>div 
			{
				overflow: visible;
			}

			.col-xs-5ths,
			.col-sm-5ths,
			.col-md-5ths,
			.col-lg-5ths {
				position: relative;
				min-height: 1px;
				padding-right: 10px;
				padding-left: 10px;
			}

			.col-xs-5ths {
				width: 20%;
				float: left;
			}
			@media (min-width: 768px) {
				.col-sm-5ths {
					width: 20%;
					float: left;
				}
			}
			@media (min-width: 992px) {
				.col-md-5ths {
					width: 20%;
					float: left;
				}
			}
			@media (min-width: 1200px) {
				.col-lg-5ths {
					width: 20%;
					float: left;
				}
			}
			.txt-color-metal {
			    color: darkgrey !important;
			}

			.txt-color-crystal {
			    color: #00bfff !important;
			}

			.txt-color-deuterium {
			    color: lawngreen !important;
			}

			.txt-color-energy {
			    color: yellow !important;
			}
			.txt-color-darkmatter {
			    color: orange !important;
			}
		</style>

	{$PHPDebugBar->renderHead()}
</head>
<body id="{$smarty.get.page|htmlspecialchars|default:'overview'}" class="desktop-detected  {$fixed_navbar} {$fixed_header} {$game_theme} fixed-page-footer pace-done ">
	<div id="tooltip" class="tip"></div>