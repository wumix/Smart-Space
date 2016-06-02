	<!-- FOOTER BEGIN -->
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
			<h3 class="modal-title">{$LNG.loginHeader}</h3><br>
			<form id="login" name="login" action="index.php?page=login" data-action="index.php?page=login" method="post">
				<div class="form-group">
					<input type="text" class="form-control" id="username" placeholder="{$LNG.loginUsername}" name="username">
					<input type="password" class="form-control" id="password" placeholder="{$LNG.loginPassword}" name="password">
				</div><br>
				<input type="submit" class="btn btn-danger btn-lg" value="{$LNG.loginButton}">
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
	'isMultiUniverse': {$isMultiUniverse|json},
	'referralEnable' : {$referralEnable|json},
	'basePath' : {$basepath|json}
};
</script>
{if $analyticsEnable}
<script type="text/javascript" src="http://www.google-analytics.com/ga.js"></script>
<script type="text/javascript">
try{
var pageTracker = _gat._getTracker("{$analyticsUID}");
pageTracker._trackPageview();
} catch(err) {}</script>
{/if}
</body>
</html>