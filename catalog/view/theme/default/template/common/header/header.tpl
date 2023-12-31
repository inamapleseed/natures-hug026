<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?=$direction; ?>" lang="<?=$lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?=$direction; ?>" lang="<?=$lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?=$direction; ?>" lang="<?=$lang; ?>">
<!--<![endif]-->

<?= $head_tags ?>

<body class="<?=$class; ?> <?= $seo_enabled?'short_hand':''; ?> <?= $isMobile; ?>">

	<div id="loading_wrapper">
		<div class="spinner">
		  <div class="dot1"></div>
		  <div class="dot2"></div>
		</div>
	</div>

	<?php /*** loading page ***/ ?>
	<style>
		.loader {
			position: fixed;
			left: 0px;
			top: 0px;
			width: 100%;
			height: 100%;
			z-index: 9999; 
		}
	</style>
	<div class="loader" style="background: url('<?=$logo; ?>') 50% 50% / auto 100px no-repeat rgb(255, 255, 255);"></div>
	<script tyle="text/javascript">
		$(window).load(function() {
			// hide loading gif when page done loading
			$(".loader").fadeOut("slow");
		});
	</script>
	<?php /*** loading page ***/ ?>

	<?= $fb_messanger; ?>
	<div class="x213"><h1 id="page_heading_title" ><?= $title; ?></h1></div>
	<header class="fixed-header" >
		<?php if ($comment): ?>
			<marquee class="marquee"><?=$comment;?></marquee>
		<?php endif ?>
		<div class="container">
			
			<div class="header-container">

				<div class="top">

					<div class="header-mobile-links visible-xs visible-sm">
						<div class="header-links">
							<a id="mobileNav" href="#sidr" class="pointer esc">
								<i class="fa fa-bars"></i>
							</a>
						</div>
					</div>
					<?php if($social_icons){ ?>
						<div class="footer-social-icons">
							<?php foreach($social_icons as $icon){ ?>
								<?php if ($icon['title'] === 'Instagram' || $icon['title'] === 'Facebook'): ?>
									<a href="<?= $icon['link']; ?>" title="<?= $icon['title']; ?>" alt="
												<?= $icon['title']; ?>" target="_blank">
										<img src="<?= $icon['icon']; ?>" title="<?= $icon['title']; ?>" class="img-responsive" alt="<?= $icon['title']; ?>" />
									</a>
								<?php endif ?>
							<?php } ?>
						</div>
					<?php } ?>

					<div class="header-logo">
						<?php if ($logo) { ?>
							<a class="header-logo-image" href="<?=$home; ?>">
								<img src="<?=$logo; ?>" title="<?=$name; ?>" alt="<?=$name; ?>" class="img-responsive" />
							</a>
						<?php } else { ?>
							<a class="header-logo-text" href="<?=$home; ?>"><?=$name; ?></a>
						<?php } ?>
					</div>

					<div class="header-menu hidden-xs hidden-sm inner3" style="display: none;">
						<?= $menu; ?>
					</div>

					<div class="header-top">
						<div class="search_container hidden-xs hidden-sm">
							<span class="hidden-xs hidden-sm search-button"><?= $search; ?></span>
							<span class="hidden-xs hidden-sm pop-search" style="display: none;">
								<?= $pop_up_search; ?>
							</span>							
						</div>

						<?= $cart; ?>

						<span class="hidden-xs hidden-sm">
							<?= $login_part; ?>
						</span>
						<?php //echo $enquiry; ?>

						<span class="hidden" >
							<?=$currency; ?>
							<?=$language; ?>
							<?=$wishlist; ?>
						</span>
					</div>
				</div>

				<div class="header-menu hidden-xs hidden-sm outer">
					<?= $menu; ?>
				</div>
			</div>
			
		</div>
	</header>

	<div id="sidr">
		<div class="header-mobile">
			<div class="mobile-account relative">
				<?php if($logged){ ?> 
				<a href="<?= $account; ?>">
					<i class="fa fa-user-circle-o" aria-hidden="true"></i>
					<?= $text_account; ?></a>
				<a href="<?= $logout; ?>">
					<i class="fa fa-sign-out" aria-hidden="true"></i>
					<?= $text_logout; ?></a>
				<?php }else{ ?> 
				<a href="<?= $login; ?>">
					<i class="fa fa-user-circle-o" aria-hidden="true"></i>
					<?= $text_login; ?></a>
				<a href="<?= $register; ?>">
					<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
					<?= $text_register; ?></a>
				<?php } ?>
			</div>
			<div class="mobile-search">
				<?= $search; ?>
			</div>
		</div>
		<?= $mobile_menu; ?>
	</div>

	<div id="pg-banner-wrap">
	<?= $page_banner; ?>
	</div>

<script type="text/javascript">
	$(window).scroll(function () {
		if ($(this).scrollTop() > 100) {
			$('.fixed-header').addClass('nav_scroll');
		} else {
			$('.fixed-header').removeClass('nav_scroll');
		}
	});

</script>
