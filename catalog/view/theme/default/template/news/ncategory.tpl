<?php if ($is_author) { ?>
 <?php if ($author_image || $author_desc) { ?>
  <div class="category-info">
    <?php if ($author_image) { ?>
    <div class="image"><img src="<?php echo $author_image; ?>" alt="<?php echo $author; ?>" /></div>
    <?php } ?>
    <?php if ($author_desc) { ?>
    <?php echo $author_desc; ?>
    <?php } ?>
  </div>
  <?php } ?>
<?php } ?>
<?php if ($is_category) { ?>
 <?php if ($thumb || $description) { ?>
  <div class="category-info">
    <?php if ($thumb) { ?>
    <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
    <?php } ?>
    <?php if ($description) { ?>
    <?php echo $description; ?>
    <?php } ?>
  </div>
  <?php } ?>

<?php } ?>
<?php if ($article) { ?>
	<div class="bnews-list<?php if ($display_style) { ?> bnews-list-2<?php } ?>">
		<?php foreach ($article as $articles) { ?>
			<div class="artblock<?php if ($display_style) { ?> artblock-2<?php } ?>">

				<?php if ($articles['thumb']) { ?>
					<a href="<?php echo $articles['href']; ?>" class="image">
						<?php if ($articles['date_added']) { ?>
							<div class="date">
								<?php echo $articles['date_added']; ?>
							</div>
						<?php } ?>
                        <div class="image-co"><img class="article-image" align="left" src="<?php echo $articles['thumb']; ?>" title="<?php echo $articles['name']; ?>" alt="<?php echo $articles['name']; ?>" /></div>
					</a>
				<?php } ?>

				<div class="artblock-details">
					<?php if ($articles['custom1']) { ?>
						<div class="custom1"><?php echo $articles['custom1']; ?></div>
					<?php } ?>
					<?php if ($articles['custom2']) { ?>
						<div class="custom2"><?php echo $articles['custom2']; ?></div>
					<?php } ?>
					<?php if ($articles['custom3']) { ?>
						<div class="custom3"><?php echo $articles['custom3']; ?></div>
					<?php } ?>
					<?php if ($articles['custom4']) { ?>
						<div class="custom4"><?php echo $articles['custom4']; ?></div>
					<?php } ?>

					<?php if ($articles['name']) { ?>
						<div class="name"><a href="<?php echo $articles['href']; ?>"><?php echo $articles['name']; ?></a></div>
					<?php } ?>

					<?php if ($articles['description']) { ?>
						<div class="description"><?php echo $articles['description']; ?></div>
					<?php } ?>

					<?php if ($articles['button']) { ?>
						<div class="blog-button"><a class="button" href="<?php echo $articles['href']; ?>"><?php echo $button_more; ?></a></div>
					<?php } ?>
				</div>
			</div>
		<?php } ?>
  </div>
    <div class="pagination-container"><?php echo $pagination; ?></div>
	<script type="text/javascript"><!--
	$(document).ready(function() {
		$('img.article-image').each(function(index, element) {
		var articleWidth = $(this).parent().parent().width() * 0.7;
		var imageWidth = $(this).width() + 10;
		if (imageWidth >= articleWidth) {
			$(this).attr("align","center");
			$(this).parent().addClass('bigimagein');
		}
		});
		$(window).resize(function() {
		$('img.article-image').each(function(index, element) {
		var articleWidth = $(this).parent().parent().width() * 0.7;
		var imageWidth = $(this).width() + 10;
		if (imageWidth >= articleWidth) {
			$(this).attr("align","center");
			$(this).parent().addClass('bigimagein');
		}
		});
		});
	});
	//--></script> 
<?php } ?>
<?php if ($is_category) { ?>
  <?php if (!$ncategories && !$article) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php } ?>
<?php } else { ?>
  <?php if (!$article) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php } ?>
<?php } ?>
<?php if ($disqus_status) { ?>
<script type="text/javascript">
var disqus_shortname = '<?php echo $disqus_sname; ?>';
(function () {
var s = document.createElement('script'); s.async = true;
s.type = 'text/javascript';
s.src = 'http://' + disqus_shortname + '.disqus.com/count.js';
(document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
}());
</script>
<?php } ?>
<?php if ($fbcom_status) { ?>
<script type="text/javascript">
      window.fbAsyncInit = function() {
        FB.init({
          appId      : '<?php echo $fbcom_appid; ?>',
		  status     : true,
          xfbml      : true,
		  version    : 'v2.0'
        });
      };

      (function(d, s, id){
         var js, fjs = d.getElementsByTagName(s)[0];
         if (d.getElementById(id)) {return;}
         js = d.createElement(s); js.id = id;
         js.src = "//connect.facebook.net/en_US/sdk.js";
         fjs.parentNode.insertBefore(js, fjs);
       }(document, 'script', 'facebook-jssdk'));
</script>
<?php } ?>