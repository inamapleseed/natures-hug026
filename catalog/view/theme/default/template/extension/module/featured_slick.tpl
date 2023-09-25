<div class="featured-module featured_<?= $uqid; ?>">
  <h2 class="text-center target-heading">
    <?= $heading_title; ?>
    <img src="image/catalog/slicing/homepage/fish-deco.png" alt="image">
  </h2>
  <div class="featured section relative" style="opacity: 0;">
    <div id="featured_slider_<?= $uqid; ?>" >
      <?php foreach ($products as $product) { ?>
        <?= html($product); ?>
      <?php } ?>
    </div>
    <script type="text/javascript">

      $(window).load(function(){
        setTimeout(function () {
          featured_product_slick<?= $uqid; ?>();
          AOS.init();
        }, 250);
      });

      function featured_product_slick<?= $uqid; ?>(){
        $("#featured_slider_<?= $uqid; ?>").on('init', function (event, slick) {
          $('#featured_slider_<?= $uqid; ?>').parent().removeAttr('style');
        });

        $("#featured_slider_<?= $uqid; ?>").slick({
          dots: false,
          infinite: false,
          speed: 300,
          slidesToShow: 4,
          slidesToScroll: 1,
          responsive: [
            {
              breakpoint: 1023,
              settings: {
                slidesToShow: 2,
              }
            },
            {
              breakpoint: 767,
              settings: {
                slidesToShow: 1,
              }
            }
          ],
            prevArrow: "<div class='pointer slick-nav left prev absolute'><div class='absolute position-center-center'><img src='image/catalog/slicing/general/left-brown2-min.png' alt='arrow'></div></div>",
            nextArrow: "<div class='pointer slick-nav right next absolute'><div class='absolute position-center-center'><img src='image/catalog/slicing/general/right-brown1-min.png' alt='arrow'></div></div>",
        });

        
      }
    </script>
  </div>
  <div class="containel">
      <a class="home btn blue-butt btn-primary" style="display: none;" href="index.php?route=product/category">View All</a>
  </div>
</div>
<script type="text/javascript">
  if ($('body').hasClass('common-home')) {
    $('.blue-butt').show();
  }
</script>