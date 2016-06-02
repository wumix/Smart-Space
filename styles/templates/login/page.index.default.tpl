{block name="title" prepend}{$LNG.siteTitleIndex}{/block}
{block name="content"}

	<!-- INTRO BEGIN -->
	<header id="full-intro" class="intro-block bg-color-main" >
		<div class="ray ray-vertical y-100 x-50 ray-rotate-135 laser-blink hidden-sm hidden-xs" ></div>
		<div class="ray ray-horizontal y-25 x-0 ray-rotate-45 laser-blink hidden-sm hidden-xs" ></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-sm-12"> <h2>{$gameName}</h2>
					<h1 class="slogan">Conquer the Space</h1>
					<a class="download-btn-alt android-btn invert" data-toggle="modal"  data-target="#login"> <b>{$LNG.loginHeader}</b> </a>
					<a class="download-btn-alt win-btn invert" href="index.php?page=register"><b>{$LNG.buttonRegister}</b> </a> 					</div>
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

{/block}
{block name="script" append}
<script>{if $code}alert({$code|json});{/if}</script>
{/block}