<div class="contain-about">
	<div class="left">
		<?php if ($title): ?>
			<h2><?= $title; ?><?php if ($timage): ?><img src="image/<?=$timage;?>" alt="image"><?php endif ?></h2>
		<?php endif ?>

		<?php if ($text): ?>
			<div class="description">
				<?php echo html_entity_decode($text); ?>
			</div>
		<?php endif ?>
	</div>

	<div class="right">

		<?php if ($main): ?>
			<?php foreach ($main as $j => $main): ?>
				<div class="contain-image">
					<?php if ($main['mainimage']): ?>
						<img src="image/<?=$main['mainimage'];?>" alt="image" class="main-<?=$j;?>">
					<?php endif ?>
				</div>
			<?php endforeach ?>
		<?php endif ?>
		<?php if ($designs): ?>
			<?php foreach ($designs as $l => $design): ?>
				<?php if ($l >= 1): ?>
					<?php if ($design['design']): ?>
						<img src="image/<?=$design['design'];?>" alt="image" class="design-<?=$l;?> floaters">
					<?php endif ?>
				<?php endif ?>
			<?php endforeach ?>
		<?php endif ?>
	</div>
	<?php if ($designs): ?>
		<?php foreach ($designs as $i => $design): ?>
			<?php if ($i == 0): ?>
				<img src="image/<?=$design['design'];?>" alt="image" class="design-<?=$i;?> floaters">
			<?php endif ?>
		<?php endforeach ?>
	<?php endif ?>

</div>
<div style="background: url('image/<?=$bottombg;?>'); background-size: cover; background-position: center; background-repeat: no-repeat;" class="about-footer">
	<h2><?=$slicktitle;?><img src="image/<?=$stimage;?>" alt="image"></h2>
	<div class="inner">
		<?php if ($bottom): ?>
			<?php foreach ($bottom as $cake => $content): ?>
				<div class="contain-mv i-<?=$cake;?>">
					<?php if ($content['bimage']): ?>
						<img src="image/<?=$content['bimage'];?>" alt="image">
						<?php else: ?>
						<img src="image/catalog/slicing/general/logo2-min.png" alt="image">
					<?php endif ?>
						<h3><?=$content['btitle'];?></h3>
						<p><?=$content['description'];?></p>
				</div>
			<?php endforeach ?>
		<?php endif ?>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function(){
	    var item_length = $('.inner > div').length - 1;
	    var slider = $('.inner').slick({
	        dots: false,
	        slidesToShow: 5,
	        centerMode: true,
	        arrows: true,
		  //  initialSlide: 5,
	        infinite: true,
	        prevArrow: "<div class='pointer slick-nav left prev absolute'><div class='absolute position-center-center'><img src='image/catalog/slicing/general/left-brown2-min.png' alt='arrow'></div></div>",
			nextArrow: "<div class='pointer slick-nav right next absolute'><div class='absolute position-center-center'><img src='image/catalog/slicing/general/right-brown1-min.png' alt='arrow'></div></div>",
		    responsive: [
		        {
		        breakpoint: 1300,
		            settings: {
		              slidesToShow: 3
		            }
		        },
		        {
		        breakpoint: 767,
		            settings: {
		              slidesToShow: 1
		            }
		        },
		    ],
	     });

	    $('.slick-nav.prev').addClass('hidden');
	   // $('.slick-nav.next').addClass('hidden');

		function jumpBack() {
		  setTimeout(function() {
		    slider.slick("slickGoTo", 0);
		  },500);
		}

		// $('.inner').on('afterChange', function(event, slick, currentSlide, nextSlide) {

		// 	// jumpsback when on the 4/5 slide
		// 	// if (item_length-1 == slider.slick('slickCurrentSlide')) {
		// 	// }
		// });

		// when on the last slide
		// should only jumpback when clicked from the last slide

	    $('.inner').on('afterChange', function (event, slick, currentSlide) {
			if (item_length === slider.slick('slickCurrentSlide')) {
				$(".prev").on("click", function(){
					jumpBack();
				})
			}
	        if(currentSlide === 0) {
	            $('.slick-nav.prev').addClass('hidden');
	        }
	        else {
	            $('.slick-nav.prev').removeClass('hidden');
	        }  
	    
	        if(currentSlide === item_length) {
	            $('.slick-nav.next').addClass('hidden');
	        }
	        else {
	            $('.slick-nav.next').removeClass('hidden');
	        }
	    })
	});
</script>