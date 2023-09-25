<?php if($images){ ?>
<div class="product-image-column">
  <div class="product-image-main-container related">
      <?php if($sticker && $sticker['name'] && !$show_special_sticker){ ?>
          <a 
            title="<?= $product_title; ?>" 
            class="sticker absolute" 
            style="color: <?= $sticker['color']; ?>; background-color: <?= $sticker['background-color']; ?>">
                  <?php echo $sticker['name']; ?>
          </a>
      <?php } ?>

      <?php if(!$sticker && $sticker['name'] && $show_special_sticker){ ?>
        <a 
          title="<?= $product_title; ?>" 
          class="sticker absolute" 
          style="color: #fff; background-color: #E65A27;">
            <?= $text_sale; ?>
        </a>
      <?php } ?>

      <?php if($show_special_sticker && $sticker && $sticker['name']){ ?>
        <a 
          title="<?= $product_title; ?>" 
          class="sticker absolute" 
          style="top: 3.25em; color: #fff; background-color: #E65A27;">
            <?= $text_sale; ?>
        </a>

        <a 
          title="<?= $product_title; ?>" 
          class="sticker absolute" 
          style="color: <?= $sticker['color']; ?>; background-color: <?= $sticker['background-color']; ?>">
                <?php echo $sticker['name']; ?>
        </a>
      <?php } ?>

    <div class="product-image-main">
      <?php foreach($images as $image){ ?>
          <img src="<?= $image['thumb']; ?>" alt="<?= $heading_title; ?>" title="<?= $heading_title; ?>"
            class="main_images pointer" href="<?= $image['popup']; ?>" title="<?= $heading_title; ?>"
          />
      <?php } ?>
    </div>
  </div>
  <div class="product-image-additional-container related">
    <div class="product-image-additional">
      <?php foreach($additional_images as $image){ ?>
      <img src="<?= $image['thumb']; ?>" alt="<?= $heading_title; ?>" title="<?= $heading_title; ?>" class="pointer" />
      <?php } ?>
    </div>
  </div>
  <style type="text/css" >
    .product-image-additional-container .slick-slide {
      margin: 0 5px;
    }
    /* the parent */
    .product-image-additional-container .slick-list {
      margin: 0 -5px;
    }
  </style>
</div>
<?php } ?>