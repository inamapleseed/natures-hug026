<h4><?= $product_name; ?></h4>
<h5><?=$mpn;?></h5>

<?php if ($price && !$enquiry) { ?>
<ul class="list-unstyled">
  <?php if (!$special) { ?>
  <li>
    <div class="product-price old-prices" ><?= $price; ?></div>
  </li>
  <?php } else { ?>
  <li>
    <div class="product-special-price new-prices"><?= $special; ?></div>
  </li>
  <li><span style="text-decoration: line-through;" class="old-prices"><?= $price; ?></span></li>
  <?php } ?>
  <?php if ($tax) { ?>
  <li class="product-tax-price product-tax" ><?= $text_tax; ?> <?= $tax; ?></li>
  <?php } ?>
  <?php if ($points) { ?>
  <li><?= $text_points; ?> <?= $points; ?></li>
  <?php } ?>
  <?php if ($discounts) { ?>
  <li>
    <hr>
  </li>
  <?php foreach ($discounts as $discount) { ?>
  <li><?= $discount['quantity']; ?><?= $text_discount; ?><?= $discount['price']; ?></li>
  <?php } ?>
  <?php } ?>
</ul>
<?php } ?>

<?php if($enquiry){ ?>
<div class="enquiry-block">
  <i>Price unavailable</i>
</div>
<?php } ?>
<div class="product-description">
  <?= $description; ?>
</div>

<?php include_once('product_options.tpl'); ?>

<?= $waiting_module; ?>

<?php if($share_html){ ?>
  <div class="input-group-flex">
    <span><?= $text_share; ?></span>
    <div><?= $share_html; ?></div>
  </div>
<?php } ?>

<?php if ($review_status) { ?>
<div class="rating">
  <p>
    <?php for ($i = 1; $i <= 5; $i++) { ?>
    <?php if ($rating < $i) { ?>
    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
    <?php } else { ?>
    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
    <?php } ?>
    <?php } ?>
    <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?= $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?= $text_write; ?></a></p>
</div>
<?php } ?>