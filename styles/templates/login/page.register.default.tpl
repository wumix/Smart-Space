{block name="title" prepend}{$LNG.siteTitleRegister}{/block}
{block name="content"}


<header id="blog-intro" class="intro-block bg-color-grad">
		<div class="container">
			<h1 class="slogan">{$LNG.siteTitleRegister}</h1>
		</div>
		<div class="block-bg" data-stellar-ratio="0.5" style="display: block; -webkit-transform: translate3d(0px, 0px, 0px);"></div>
	</header>


<section class="col-md-6 col-md-offset-3">
<div class="confid">
	
	&nbsp
    </div>
<form id="registerForm" method="post" action="index.php?page=register" data-action="index.php?page=register">
<input type="hidden" value="send" class="form-control"  name="mode">
<input type="hidden" value="{$externalAuth.account}" class="form-control"  name="externalAuth[account]">
<input type="hidden" value="{$externalAuth.method}" class="form-control"  name="externalAuth[method]">
<input type="hidden" value="{$referralData.id}" class="form-control"  name="referralID">
	  
	<table>
         <input type="text"  placeholder="{$LNG.registerUsername}" class="form-control"  name="username" id="username" maxlenght="32" value="">
        <div id="regemailcption" class="reg_caption">
          {if !empty($error.username)}<span class="error errorUsername"></span><br>{/if}    </div>
    </div>
	
  
	<div class="blocks">
         <input type="password" placeholder="{$LNG.registerPassword}"  class="form-control"  name="password" id="password">
        <div id="regemailcption" class="reg_caption">
         {if !empty($error.password)}<span class="error errorPassword"></span><br>{/if}  </div>
    </div>

	<div class="blocks">
         <input type="password" placeholder="{$LNG.registerPasswordReplay}"  class="form-control"  name="passwordReplay" id="passwordReplay">
        <div id="regemailcption" class="reg_caption">
         {if !empty($error.passwordReplay)}<span class="error errorPasswordReplay"></span><br>{/if}       </div>
    </div>

	<div class="blocks">
        <input type="email" placeholder="{$LNG.registerEmail}"  class="form-control"  name="email" id="email">
        <div id="regemailcption" class="reg_caption">
        {if !empty($error.email)}<span class="error errorEmail"></span><br>{/if} </div>
    </div>

	<div class="blocks">
		<input type="email" placeholder="{$LNG.registerEmailReplay}"  class="form-control"  name="emailReplay" id="emailReplay">
        <div id="regemailcption" class="reg_caption">
        {if !empty($error.emailReplay)}<span class="error errorEmailReplay"></span><br>{/if} </div>
    </div>

	<div class="blocks">
		<select class="form-control"  name="lang" class="sel_uni" id="language">{html_options options=$languages selected=$lang}</select>
		</div>
	

        
    <div class="clear"></div>
    <span class="lable"></span><br>
    <input type="submit" class="btn btn-success btn-lg" value="{$LNG.buttonRegister}">

    <div class="clear"></div> 
</form>
</section>
                     



{/block}
{block  name="script" append}
<link rel="stylesheet" type="text/css" href="styles/resource/css/login/register.css?v={$REV}">
{if $recaptchaEnable}
<script type="text/javascript" src="http://www.google.com/recaptcha/api/js/recaptcha_ajax.js"></script>
<script type="text/javascript">
var RecaptchaOptions = {
	lang : '{$lang}',
};

var recaptchaPublicKey = "{$recaptchaPublicKey}";

Recaptcha.create(recaptchaPublicKey, 'display_captcha', {
	theme: 'custom',
	tabindex: '6',
	custom_theme_widget: 'display_captcha'
});
</script>
{/if}
<script type="text/javascript" src="scripts/login/register.js"></script>
<script></script>
{/block}