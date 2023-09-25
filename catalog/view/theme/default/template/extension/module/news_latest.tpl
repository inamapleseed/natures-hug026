<div class="bg" style="background-repeat: no-repeat; background-size: 100% 100%; background-position: top right;">
	<h3><?=$name;?></h3>
	<h2 class="home" style="display: none;"><?=$name;?><img src="image/catalog/slicing/homepage/title-deco4-min.png" alt="image"></h2>

	<div class="">
		<?php if (!$article && isset($text_search_no_results)) { ?>
			<h4><?php echo $text_search_no_results; ?></h4>
		<?php } ?>
	    <div id="news_latest" class="bnews-list in-category" style="display: none;">
			<?php foreach ($article as $i => $articles) { ?>
				<div class="artblock art-<?=$i;?>">

					<?php if ($articles['thumb']) { ?>
						<a href="<?php echo $articles['href']; ?>" class="image">
							<?php if ($articles['date_added']) { ?>
								<div class="date data">
									<?php echo $articles['date_added']; ?>
								</div>
							<?php } ?>
							<img class="article-image" src="<?php echo $articles['thumb']; ?>" title="<?php echo $articles['name']; ?>" alt="<?php echo $articles['name']; ?>" />
						</a>
					<?php } ?>

					<div class="artblock-details detail">
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

	    <div class="contain-b">
		    <div class="bnews-list home b-1" style="display: none;">
				<?php foreach ($article as $j => $articles) { ?>
					<?php if ($j == 0): ?>
						<div data-aos="fade-up" class="artblock art-<?=$i;?> home" style="display: none;">

							<?php if ($articles['thumb']) { ?>
								<div class="outer-image">
									<a href="<?php echo $articles['href']; ?>" class="image">
										<?php if ($articles['date_added']) { ?>
											<div class="date data">
												<?php echo $articles['date_added']; ?>
											</div>
										<?php } ?>
										<img class="" src="<?php echo $articles['thumb']; ?>" title="<?php echo $articles['name']; ?>" alt="<?php echo $articles['name']; ?>" />
									</a>
								</div>
							<?php } ?>

							<div class="artblock-details detail">

								<?php if ($articles['name']) { ?>
									<div class="name"><a href="<?php echo $articles['href']; ?>"><?php echo $articles['name']; ?></a></div>
								<?php } ?>								
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


								<?php if ($articles['description']) { ?>
									<div class="description"><?php echo $articles['description']; ?></div>
								<?php } ?>

								<?php if ($articles['button']) { ?>
									<div class="blog-button"><a class="button" href="<?php echo $articles['href']; ?>"><?php echo $button_more; ?></a></div>
								<?php } ?>
							</div>

						</div>
					<?php endif ?>
				<?php } ?>	    	
		    </div>

		    <div class="bnews-list home b-2" style="display: none;">
				<?php foreach ($article as $j => $articles) { ?>
					<?php if ($j >= 1): ?>
						<div data-aos="fade-up" class="artblock art-<?=$i;?> home" style="display: none;">

							<?php if ($articles['thumb']) { ?>
								<div class="img">
									<a href="<?php echo $articles['href']; ?>" class="image">
										<?php if ($articles['date_added']) { ?>
											<div class="date data">
												<?php echo $articles['date_added']; ?>
											</div>
										<?php } ?>
										<img class="" src="<?php echo $articles['thumb']; ?>" title="<?php echo $articles['name']; ?>" alt="<?php echo $articles['name']; ?>" />
									</a>
								</div>
							<?php } ?>

							<div class="artblock-details detail">
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
					<?php endif ?>
				<?php } ?>	    	
		    </div>
		</div>

		<div class="contain-bu">
			<a href="index.php?route=news/ncategory" class="btn blue-butt btn-primary">View More</a>
		</div>

	</div>
</div>
<script type="text/javascript">
	if ($('body').hasClass('news-ncategory')) {
		$('.artblock .data').hide();
		$('.artblock .blog-button').hide();
		$('.artblock .description').hide();
		$('.contain-bu').hide();
		$('.artblock .detail').removeClass('artblock-details');
		let date = $('.artblock .data').html();
		$('.detail').append(date);
		$('#news_latest').addClass('to-slick');
	}
</script>

<script type="text/javascript">
	$(document).ready(function() {
		$('img.article-image').each(function(index, element) {
		var articleWidth = $(this).parent().parent().width() * 0.7;
		var imageWidth = $(this).width() + 10;
		if (imageWidth >= articleWidth) {
			$(this).attr("align","center");
			$(this).parent().addClass('bigimagein');
		}
		});
	});
</script>

<script type="text/javascript">
	if ($('body').hasClass('common-home')) {
		$('.home').show();
		$('.bg h3').hide();
		$('.bg').css("background-image","url('image/catalog/bg2-min.jpg')");
	}
	if ($('body').hasClass('news-ncategory')) {
		$('.in-category').show();
	}	
</script>