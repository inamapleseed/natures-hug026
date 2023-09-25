<div class="product-gutter" id="product-<?=$product_id?>"> <?php /* product option in product component :: add product id to div  */ ?>
	<div class="product-block <?= $out_of_stock; ?>">
			<?php if($sticker && $sticker['name'] && !$show_special_sticker ){ ?>
				<a 
					href="<?= $href; ?>" 
					title="<?= $name; ?>" 
					class="sticker absolute" 
					style="color: <?= $sticker['color']; ?>; background-color: <?= $sticker['background-color']; ?>">
						<?php echo $sticker['name']; ?>
				</a>
			<?php } ?>
			<?php if($show_special_sticker && !$sticker){ ?>
				<a 
					href="<?= $href; ?>" 
					title="<?= $name; ?>" 
					class="sticker absolute" 
					style="color: #fff; background-color: #E65A27;">
						<?= $text_sale; ?>
				</a>
			<?php } ?>
			<?php if($show_special_sticker && $sticker && $sticker['name']){ ?>
				<a 
					href="<?= $href; ?>" 
					title="<?= $name; ?>" 
					class="sticker absolute" 
					style="color: <?= $sticker['color']; ?>; background-color: <?= $sticker['background-color']; ?>">
						<?php echo $sticker['name']; ?>
				</a>

				<a 
					href="<?= $href; ?>" 
					title="<?= $name; ?>" 
					class="sticker absolute" 
					style="top: 2.5em; color: #fff; background-color: #E65A27;">
						<?= $text_sale; ?>
				</a>
			<?php } ?>
		<div class="product-image-block relative">
			<a 
				href="<?= $href; ?>" 
				title="<?= $name; ?>" 
				class="product-image image-container relative" >
				<img 
					src="<?= $thumb; ?>" 
					alt="<?= $name; ?>" 
					title="<?= $name; ?>"
					class="img-responsive img1" />
				<?php if($thumb2 && $hover_image_change) { ?>
					<img 
						src="<?= $thumb2; ?>" 
						alt="<?= $name; ?>" 
						title="<?= $name; ?>"
						class="img-responsive img2" style="display: none"/>
				<?php } ?>
				<?php /*if($more_options){ ?>
				<div class="more-options-text absolute position-bottom-center">
					<?= $more_options; ?>
				</div>
				<?php }*/ ?>
			</a>
		</div>
		<div class="product-name">
			<a href="<?= $href; ?>"><?= $name; ?></a>
			<h4><?=$mpn;?></h4>
		</div>

		<div class="product-details product-price-<?=$product_id?>">
			<?php if ($price && !$enquiry) { ?>
				<div class="price">
					<?php if (!$special) { ?>
						<span class="price-new"><?= $price; ?></span>
					<?php } else { ?>
						<span class="sale price-new"><?= $special; ?></span>
						<span class="price-old"><?= $price; ?></span>
					<?php } ?>
					<?php if ($tax) { ?>
						<span class="price-tax"><?= $text_tax; ?> <?= $tax; ?></span>
					<?php } ?>
				</div>
			<?php } ?>

			<?php if($enquiry){ ?>
			<span class="label label-primary">
				<?= $label_enquiry; ?>
			</span>
			<?php } ?>
		</div>
		<?php /* product option in product component */ ?>
			<div class="product-inputs">
		    <?php if ($options && count($options) == 1) { ?>
				<div class="product-option">
				    <?php foreach ($options as $option) { ?>
					    <?php if ($option['type'] == 'select') { ?>
					    <div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
					      <label class="control-label" for="input-option<?= $option['product_option_id']; ?>"><?= $option['name']; ?></label>
					      <select name="option[<?= $option['product_option_id']; ?>]" id="input-option<?= $option['product_option_id']; ?>" class="form-control" data-product-id="<?= $product_id; ?>">
					        <option value=""><?= $text_select; ?></option>
					        <?php foreach ($option['product_option_value'] as $option_value) { ?>
					        <option value="<?= $option_value['product_option_value_id']; ?>" <?= $option_value['name']; ?> <?= ($option_value['quantity'] <= 0) ? 'disabled' : ''; ?>>
					        <?= $option_value['name']; ?> 
					        <?php if ($option_value['price']) { ?>
					        (<?= $option_value['price_prefix']; ?><?= $option_value['price']; ?>)
					        <?php } ?>
					        <?= ($option_value['quantity'] <= 0) ? ' (Out of Stock)' : ''; ?>
					        </option>
					        <?php } ?>
					      </select>
					    </div>
					    <?php } ?>
					    <?php if ($option['type'] == 'radio') { ?>
					    <div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
					      <label class="control-label"><?= $option['name']; ?></label>
					      <div id="input-option<?= $option['product_option_id']; ?>">
					        <?php foreach ($option['product_option_value'] as $option_value) { ?>
					        <div class="radio">
					          <label>
					            <input type="radio" name="option[<?= $option['product_option_id']; ?>]" value="<?= $option_value['product_option_value_id']; ?>" data-product-id="<?= $product_id; ?>" />
					            <?php if ($option_value['image']) { ?>
					            <img src="<?= $option_value['image']; ?>" alt="<?= $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
					            <?php } ?>                    
					            <?= $option_value['name']; ?>
					            <?php if ($option_value['price']) { ?>
					            (<?= $option_value['price_prefix']; ?><?= $option_value['price']; ?>)
					            <?php } ?>
					          </label>
					        </div>
					        <?php } ?>
					      </div>
					    </div>
					    <?php } ?>
					    <?php if ($option['type'] == 'checkbox') { ?>
					    <div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
					      <label class="control-label"><?= $option['name']; ?></label>
					      <div id="input-option<?= $option['product_option_id']; ?>">
					        <?php foreach ($option['product_option_value'] as $option_value) { ?>
					        <div class="checkbox">
					          <label>
					            <input type="checkbox" name="option[<?= $option['product_option_id']; ?>][]" value="<?= $option_value['product_option_value_id']; ?>" data-product-id="<?= $product_id; ?>" />
					            <?php if ($option_value['image']) { ?>
					            <img src="<?= $option_value['image']; ?>" alt="<?= $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
					            <?php } ?>
					            <?= $option_value['name']; ?>
					            <?php if ($option_value['price']) { ?>
					            (<?= $option_value['price_prefix']; ?><?= $option_value['price']; ?>)
					            <?php } ?>
					          </label>
					        </div>
					        <?php } ?>
					      </div>
					    </div>
					    <?php } ?>
					    <?php if ($option['type'] == 'text') { ?>
					    <div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
					      <label class="control-label" for="input-option<?= $option['product_option_id']; ?>"><?= $option['name']; ?></label>
					      <input type="text" name="option[<?= $option['product_option_id']; ?>]" value="<?= $option['value']; ?>" placeholder="<?= $option['name']; ?>" id="input-option<?= $option['product_option_id']; ?>" class="form-control" />
					    </div>
					    <?php } ?>
					    <?php if ($option['type'] == 'textarea') { ?>
					    <div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
					      <label class="control-label" for="input-option<?= $option['product_option_id']; ?>"><?= $option['name']; ?></label>
					      <textarea name="option[<?= $option['product_option_id']; ?>]" rows="5" placeholder="<?= $option['name']; ?>" id="input-option<?= $option['product_option_id']; ?>" class="form-control"><?= $option['value']; ?></textarea>
					    </div>
					    <?php } ?>
					    <?php if ($option['type'] == 'file') { ?>
					    <div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
					      <label class="control-label"><?= $option['name']; ?></label>
					      <button type="button" id="button-upload<?= $option['product_option_id']; ?>" data-loading-text="<?= $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?= $button_upload; ?></button>
					      <input type="hidden" name="option[<?= $option['product_option_id']; ?>]" value="" id="input-option<?= $option['product_option_id']; ?>" />
					    </div>
					    <?php } ?>
					    <?php if ($option['type'] == 'date') { ?>
					    <div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
					      <label class="control-label" for="input-option<?= $option['product_option_id']; ?>"><?= $option['name']; ?></label>
					      <div class="input-group date">
					        <input type="text" name="option[<?= $option['product_option_id']; ?>]" value="<?= $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?= $option['product_option_id']; ?>" class="form-control" />
					        <span class="input-group-btn">
					        <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
					        </span></div>
					    </div>
					    <?php } ?>
					    <?php if ($option['type'] == 'datetime') { ?>
					    <div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
					      <label class="control-label" for="input-option<?= $option['product_option_id']; ?>"><?= $option['name']; ?></label>
					      <div class="input-group datetime">
					        <input type="text" name="option[<?= $option['product_option_id']; ?>]" value="<?= $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?= $option['product_option_id']; ?>" class="form-control" />
					        <span class="input-group-btn">
					        <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
					        </span></div>
					    </div>
					    <?php } ?>
					    <?php if ($option['type'] == 'time') { ?>
					    <div class="form-group<?= ($option['required'] ? ' required' : ''); ?>">
					      <label class="control-label" for="input-option<?= $option['product_option_id']; ?>"><?= $option['name']; ?></label>
					      <div class="input-group time">
					        <input type="text" name="option[<?= $option['product_option_id']; ?>]" value="<?= $option['value']; ?>" data-date-format="HH:mm" id="input-option<?= $option['product_option_id']; ?>" class="form-control" />
					        <span class="input-group-btn">
					        <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
					        </span></div>
					    </div>
					    <?php } ?>
				    <?php } ?>
				</div>
		    <?php } ?>
	    	<div class="form-group">
		        <div class="input-group">
		          <span class="input-group-btn"> 
		            <button type="button" class="btn btn-default btn-number" data-type="minus" data-field="qty-<?= $product_id; ?>" data-product-id="<?= $product_id; ?>" onclick="descrement($(this).parent().parent())")>
		              	<span class="glyphicon glyphicon-minus"></span> 
		            </button>
		          </span>
		          <input type="text" name="quantity" class="form-control input-number integer text-center" id="input-quantity-<?= $product_id; ?>" value="<?= $minimum; ?>" data-product-id="<?= $product_id; ?>" >
		          <span class="input-group-btn">
		            <button type="button" class="btn btn-default btn-number" data-type="plus" data-field="qty-<?= $product_id; ?>" data-product-id="<?= $product_id; ?>" onclick="increment($(this).parent().parent())">
		              	<span class="glyphicon glyphicon-plus"></span>
		            </button>
		          </span>
		        </div>
	        </div>
		  </div>
	    <div class="cart-buttons">
	      <input type="hidden" name="product_id" value="<?=$product_id?>">
	      <?php if(!$enquiry){ ?>
	        <?php if(!$not_avail) { ?>
	        	<button type="button" data-loading-text="<?= $text_loading; ?>" class="btn btn-primary btn-cart btn-cart-<?= $product_id; ?>" data-product-id="<?= $product_id; ?>"><?= $button_cart; ?></button>
	        <?php } ?>
	      <?php }else{ ?>
	        <button type="button" data-loading-text="<?= $text_loading; ?>" disabled class="btn btn-primary btn-enquiry btn-enquiry-<?= $product_id; ?>"  data-product-id="<?= $product_id; ?>"><?= $button_cart; ?></button>
	      <?php } ?>
	    </div>
		<?php /* product option in product component */ ?>

	</div>
</div>