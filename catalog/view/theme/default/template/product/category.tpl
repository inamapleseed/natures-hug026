<?php echo $header; ?>
<img class="floaters leaf-2" src="image/catalog/slicing/general/leaf2-min.png" alt="image">

<div class="container">
  <?php echo $content_top; ?>
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row">

    <h2>Shop <img src="image/catalog/slicing/shop/deco-min.png" alt="image"></h2> 
  
    <?php echo $column_left; ?>

    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>

    <div id="content" class="<?php echo $class; ?>">

      <div id="product-filter-replace">
        <div id="product-filter-loading-overlay"></div>
        
          <?php if ($products) { ?>
          
            <?php include_once('sort_order.tpl'); ?>
              
            <div id="product-filter-detect">
              
              <div class="row row-special">
                <div class="product-view">
                  <?php foreach ($products as $product) { ?>
                    <?php echo $product; ?>
                  <?php } ?>
                </div>
              </div>

              <div class="pagination-container"><?php echo $pagination; ?></div>

            </div> <!-- product-filter-detect -->

          <?php } ?>

          <?php if (!$products) { ?>
          
            <p><?php echo $text_empty; ?></p>
            <div class="buttons hidden">
              <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
            </div>

          <?php } ?>

      </div> <!-- product-filter-replace -->
    </div> <!-- #content -->

    <?php echo $column_right; ?></div>
    <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>
