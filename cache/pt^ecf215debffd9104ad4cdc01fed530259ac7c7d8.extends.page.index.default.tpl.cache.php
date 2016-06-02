<?php /* Smarty version Smarty-3.1.13, created on 2015-02-03 20:27:23
         compiled from "C:\Wamp\www\awars\styles\templates\login\page.index.default.tpl" */ ?>
<?php /*%%SmartyHeaderCode:411154d12f2b101344-10968132%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ecf215debffd9104ad4cdc01fed530259ac7c7d8' => 
    array (
      0 => 'C:\\Wamp\\www\\awars\\styles\\templates\\login\\page.index.default.tpl',
      1 => 1422994149,
      2 => 'file',
    ),
    '81aa032a548784fe25f040d008d44a58496aea92' => 
    array (
      0 => 'C:\\Wamp\\www\\awars\\styles\\templates\\login\\layout.light.tpl',
      1 => 1420425948,
      2 => 'file',
    ),
    '5ff7ea136be84d1b795b33c892a3c3bd1818dd13' => 
    array (
      0 => 'C:\\Wamp\\www\\awars\\styles\\templates\\login\\main.header.tpl',
      1 => 1422991173,
      2 => 'file',
    ),
    '1a9bd112fbcfa6153a249fda2c9cfc994a717cec' => 
    array (
      0 => 'C:\\Wamp\\www\\awars\\styles\\templates\\login\\main.navigation.tpl',
      1 => 1422995235,
      2 => 'file',
    ),
    '72aad8a9e83a4552d09922a206cba76e6b23cda8' => 
    array (
      0 => 'C:\\Wamp\\www\\awars\\styles\\templates\\login\\main.footer.tpl',
      1 => 1422994306,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '411154d12f2b101344-10968132',
  'function' => 
  array (
  ),
  'has_nocache_code' => true,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_54d12f2b331540_09782235',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54d12f2b331540_09782235')) {function content_54d12f2b331540_09782235($_smarty_tpl) {?><?php /*  Call merged included template "main.header.tpl" */
$_tpl_stack[] = $_smarty_tpl;
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("main.header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0, '411154d12f2b101344-10968132');
content_54d12f2b16da33_76626961($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); /*  End of included template "main.header.tpl" */?>
<?php /*  Call merged included template "main.navigation.tpl" */
$_tpl_stack[] = $_smarty_tpl;
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("main.navigation.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0, '411154d12f2b101344-10968132');
content_54d12f2b203b99_73656992($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); /*  End of included template "main.navigation.tpl" */?>


	<!-- INTRO BEGIN -->
	<header id="full-intro" class="intro-block bg-color-main" >
		<div class="ray ray-vertical y-100 x-50 ray-rotate-135 laser-blink hidden-sm hidden-xs" ></div>
		<div class="ray ray-horizontal y-25 x-0 ray-rotate-45 laser-blink hidden-sm hidden-xs" ></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-sm-12"> <h2><?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo $_smarty_tpl->tpl_vars[\'gameName\']->value;?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
</h2>
					<h1 class="slogan">Conquer the Space</h1>
					<a class="download-btn-alt android-btn invert" data-toggle="modal"  data-target="#login"> <b><?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo $_smarty_tpl->tpl_vars[\'LNG\']->value[\'loginHeader\'];?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
</b> </a>
					<a class="download-btn-alt win-btn invert" href="index.php?page=register"><b><?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo $_smarty_tpl->tpl_vars[\'LNG\']->value[\'buttonRegister\'];?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
</b> </a> 					</div>
				<div class="col-md-4 hidden-sm hidden-xs"> <img class="intro-screen wow bounceInUp" data-wow-delay="0.5s" src="login/images/intro_screen.png"  alt="" /> </div>
			</div>
		</div>
		<div class="block-bg" data-stellar-ratio="0.4"></div>
	</header>
	<!-- INTRO END --> 
	
	<section id="benefits1" class="img-block-2col">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="title">
						<h2>Play today!</h2>
					</div>
					<ul class="item-list-left">
						<li> <i class="icon icon-support color"></i>
							<h4 class="color">A new Civilization</h4>
							<p>You start out with just one undeveloped world and turn that into a mighty empire able to defend your hard earned colonies.</p>
						</li>
						<li> <i class="icon icon-equalizer color"></i>
							<h4 class="color">Stunning flexibility</h4>
							<p>Create an economic and military infrastructure to support your quest for the next greatest technological achievements.</p>
						</li>
						<li> <i class="icon icon-bar-chart color"></i>
							<h4 class="color">What are you?</h4>
							<p>Will you terrorize the area around you? Or will you strike fear into the hearts of those who attack the helpless?</p>
						</li>
					</ul>
				</div>
				<div class="col-md-5 col-md-offset-1 col-sm-6">
					<div class="screen-couple-right wow fadeInRightBig">
						<img class="screen above" src="login/images/screen_couple_above.png" alt="" /> <img class="screen beyond wow fadeInRight" data-wow-delay="0.5s" src="login/images/screen_couple_beyond.png" alt="" height="400" width="400" /> </div>
				</div>
			</div>
		</div>
	</section>


<?php /*  Call merged included template "main.footer.tpl" */
$_tpl_stack[] = $_smarty_tpl;
 $_smarty_tpl = $_smarty_tpl->setupInlineSubTemplate("main.footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0, '411154d12f2b101344-10968132');
content_54d12f2b2a9e99_75759666($_smarty_tpl);
$_smarty_tpl = array_pop($_tpl_stack); /*  End of included template "main.footer.tpl" */?><?php }} ?><?php /* Smarty version Smarty-3.1.13, created on 2015-02-03 20:27:23
         compiled from "C:\Wamp\www\awars\styles\templates\login\main.header.tpl" */ ?>
<?php if ($_valid && !is_callable('content_54d12f2b16da33_76626961')) {function content_54d12f2b16da33_76626961($_smarty_tpl) {?><!DOCTYPE html>

<html lang="en">

<!-- Mirrored from multifour.com/projects/ray/ios-dark/image-intro/ by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 01 Feb 2015 22:57:09 GMT -->
<head>

<!-- Html Page Specific -->
<meta charset="utf-8">
<title><?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo $_smarty_tpl->tpl_vars[\'gameName\']->value;?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
</title>
<meta name="description" content="SmartSpace Engine">
<meta name="author" content="SmartSpace Engine">

<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">

<!--[if lt IE 9]>
    <script type="text/javascript" src="scripts/html5shiv.js"></script>
<![endif]-->

<script src="scripts/base/jquery.cookie.js"></script>
<script src="scripts/base/jquery.fancybox.js"></script>
<script src="scripts/login/main.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<script><?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php if (isset($_smarty_tpl->tpl_vars[\'code\']->value)){?>/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
var loginError = <?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo json_encode($_smarty_tpl->tpl_vars[\'code\']->value);?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
;<?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php }?>/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
</script>


<script><?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php if ($_smarty_tpl->tpl_vars[\'code\']->value){?>/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
alert(<?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo json_encode($_smarty_tpl->tpl_vars[\'code\']->value);?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
);<?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php }?>/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
</script>
	

<!-- CSS -->
<link rel="stylesheet" href="login/css/bootstrap.min.css"/>
<link rel="stylesheet" href="login/css/animate.css"/>
<link rel="stylesheet" href="login/css/simple-line-icons.css"/>
<link rel="stylesheet" href="login/css/icomoon-soc-icons.css"/>
<link rel="stylesheet" href="login/css/magnific-popup.css"/>
<link rel="stylesheet" href="login/css/style.css"/>
<link rel="stylesheet" href="login/css/settings.css"/>
<link rel="alternate stylesheet" title="purple" media="screen" href="login/css/style-purple.css"/>
<link rel="alternate stylesheet" title="red" media="screen" href="login/css/style-red.css"/>
<link rel="alternate stylesheet" title="gold" media="screen" href="login/css/style-gold.css"/>
<link rel="stylesheet" href="login/css/style-black.css"/>
<link rel="alternate stylesheet" title="green" media="screen" href="login/css/style-green.css"/>

<!-- Favicons -->
<link rel="icon" href="login/images/favicon.png">
<link rel="apple-touch-icon" href="login/images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="login/images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="login/images/apple-touch-icon-114x114.png">
</head>

<body data-spy="scroll" data-target=".navMenuCollapse">
<div id="wrap"><?php }} ?><?php /* Smarty version Smarty-3.1.13, created on 2015-02-03 20:27:23
         compiled from "C:\Wamp\www\awars\styles\templates\login\main.navigation.tpl" */ ?>
<?php if ($_valid && !is_callable('content_54d12f2b203b99_73656992')) {function content_54d12f2b203b99_73656992($_smarty_tpl) {?>	<!-- NAVIGATION BEGIN -->
	<nav class="navbar navbar-fixed-top">
		<div class="container_fluid"> <a class="navbar-brand goto" href="#wrap"> </a> <a class="contact-btn icon-paper-plane" data-toggle="modal" data-target="#modalContact"></a>
			<button class="navbar-toggle menu-collapse-btn collapsed" data-toggle="collapse" data-target=".navMenuCollapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
			<div class="collapse navbar-collapse navMenuCollapse">
				<ul class="nav">
			<li><a href="index.php"><?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo $_smarty_tpl->tpl_vars[\'LNG\']->value[\'menu_index\'];?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
</a></li>
			<li><a href="http://endlessuni.com">Buy <?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo $_smarty_tpl->tpl_vars[\'gameName\']->value;?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
</a></li>
			<li><a href="index.php?page=board" target="board"><?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo $_smarty_tpl->tpl_vars[\'LNG\']->value[\'forum\'];?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
</a></li>
			<li><a href="index.php?page=news"><?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo $_smarty_tpl->tpl_vars[\'LNG\']->value[\'menu_news\'];?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
</a></li>
			<li><a href="index.php?page=rules"><?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo $_smarty_tpl->tpl_vars[\'LNG\']->value[\'menu_rules\'];?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
</a></li>
			<li><a data-toggle="modal"  data-target="#login"><?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo $_smarty_tpl->tpl_vars[\'LNG\']->value[\'loginHeader\'];?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
</a></li>
			<li><a href="index.php?page=register"><?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo $_smarty_tpl->tpl_vars[\'LNG\']->value[\'buttonRegister\'];?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- NAVIGAION END --> 
	
	<?php }} ?><?php /* Smarty version Smarty-3.1.13, created on 2015-02-03 20:27:23
         compiled from "C:\Wamp\www\awars\styles\templates\login\main.footer.tpl" */ ?>
<?php if ($_valid && !is_callable('content_54d12f2b2a9e99_75759666')) {function content_54d12f2b2a9e99_75759666($_smarty_tpl) {?>	<!-- FOOTER BEGIN -->
	<footer id="footer">
		<div class="container"> &nbsp
	</footer>
	<!-- FOOTER END --> 
	
</div>



<!-- contact modal-->
<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			<h3 class="modal-title"><?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo $_smarty_tpl->tpl_vars[\'LNG\']->value[\'loginHeader\'];?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
</h3><br>
			<form id="login" name="login" action="index.php?page=login" data-action="index.php?page=login" method="post">
				<div class="form-group">
					<input type="text" class="form-control" id="username" placeholder="<?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo $_smarty_tpl->tpl_vars[\'LNG\']->value[\'loginUsername\'];?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
" name="username">
					<input type="password" class="form-control" id="password" placeholder="<?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo $_smarty_tpl->tpl_vars[\'LNG\']->value[\'loginPassword\'];?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
" name="password">
				</div><br>
				<input type="submit" class="btn btn-danger btn-lg" value="<?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo $_smarty_tpl->tpl_vars[\'LNG\']->value[\'loginButton\'];?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
">
			</form>
		</div>
	</div>
</div>
<!-- MODALS END--> 



<!-- JavaScript --> 
<script src="login/scripts/jquery-1.8.2.min.js"></script> 
<script src="login/scripts/bootstrap.min.js"></script> 
<script src="login/scripts/owl.carousel.min.js"></script> 
<script src="login/scripts/jquery.validate.min.js"></script> 
<script src="login/scripts/wow.min.js"></script> 
<script src="login/scripts/smoothscroll.js"></script> 
<script src="login/scripts/jquery.smooth-scroll.min.js"></script> 
<script src="login/scripts/jquery.superslides.min.js"></script> 
<script src="login/scripts/placeholders.jquery.min.js"></script> 
<script src="login/scripts/jquery.magnific-popup.min.js"></script> 
<script src="login/scripts/jquery.stellar.min.js"></script> 
<script src="login/scripts/custom.js"></script> 

<!--[if lte IE 9]>
	<script src="login/scripts/respond.min.js"></script>
<![endif]-->


<script src="login/scripts/retina.min.js"></script>


<script>
var LoginConfig = {
	'isMultiUniverse': <?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo json_encode($_smarty_tpl->tpl_vars[\'isMultiUniverse\']->value);?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
,
	'referralEnable' : <?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo json_encode($_smarty_tpl->tpl_vars[\'referralEnable\']->value);?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
,
	'basePath' : <?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo json_encode($_smarty_tpl->tpl_vars[\'basepath\']->value);?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>

};
</script>
<?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php if ($_smarty_tpl->tpl_vars[\'analyticsEnable\']->value){?>/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>

<script type="text/javascript" src="http://www.google-analytics.com/ga.js"></script>
<script type="text/javascript">
try{
var pageTracker = _gat._getTracker("<?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php echo $_smarty_tpl->tpl_vars[\'analyticsUID\']->value;?>
/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>
");
pageTracker._trackPageview();
} catch(err) {}</script>
<?php echo '/*%%SmartyNocache:411154d12f2b101344-10968132%%*/<?php }?>/*/%%SmartyNocache:411154d12f2b101344-10968132%%*/';?>

</body>
</html><?php }} ?>