{block name="title" prepend}{$LNG.siteTitleNews}{/block}
{block name="content"}

<header id="blog-intro" class="intro-block bg-color-grad">
		<div class="container">
			<h1 class="slogan">{$LNG.siteTitleNews}</h1>
		</div>
		<div class="block-bg" data-stellar-ratio="0.5" style="display: block; -webkit-transform: translate3d(0px, 0px, 0px);"></div>
	</header>


<section class="col-md-6 col-md-offset-3">
{foreach $newsList as $newsRow}
{if !$newsRow@first}<hr>{/if}
<h2>{$newsRow.title}</h2><br>
<div class="info">{$newsRow.from}</div>
<br><div><p>{$newsRow.text}</p></div>
{foreachelse}
<h1>{$LNG.news_does_not_exist}</h1>
{/foreach}
</section>

{/block}