<div id="footer-area">
	<?php if($mailchimp){ ?>
		<div class="newsletter-section text-center">
			<?= $mailchimp; ?>
		</div>
	<?php } ?>

	<footer>
		<div class="container">
			<div class="footer-upper-contet">

				<?php if ($menu) { ?>
					<?php foreach($menu as $i =>$links){ ?>
						<?php if ($i == 0): ?>
							<div class="footer-contact-links">
								<h3>
									<?php if($links['href'] != '#'){ ?>
									<?= $links['name']; ?>
									<?php }else{ ?>
									<a href="<?= $links['href']; ?>" 
										<?php if($links['new_tab']){ ?>
											target="_blank"
										<?php } ?>
										>
										<?= $links['name']; ?></a>
									<?php } ?>
								</h3>
								<?php if($links['child']){ ?>
									<ul class="list-unstyled">
										<?php foreach ($links['child'] as $each) { ?>
										<li><a href="<?= $each['href']; ?>"
											<?php if($each['new_tab']){ ?>
												target="_blank"
											<?php } ?>
											
											>
												<?= $each['name']; ?></a></li>
										<?php } ?>
									</ul>
								<?php } ?>
							</div>
						<?php endif ?>
					<?php } ?>
				<?php } ?>

				<?php if ($menu) { ?>
					<?php foreach($menu as $i =>$links){ ?>
						<?php if ($i == 1): ?>
							<div class="footer-contact-links">
								<h3>
									<?php if($links['href'] != '#'){ ?>
									<?= $links['name']; ?>
									<?php }else{ ?>
									<a href="<?= $links['href']; ?>" 
										<?php if($links['new_tab']){ ?>
											target="_blank"
										<?php } ?>
										>
										<?= $links['name']; ?></a>
									<?php } ?>
								</h3>
								<?php if($links['child']){ ?>
									<ul class="list-unstyled">
										<?php foreach ($links['child'] as $each) { ?>
										<li><a href="<?= $each['href']; ?>"
											<?php if($each['new_tab']){ ?>
												target="_blank"
											<?php } ?>
											
											>
												<?= $each['name']; ?></a></li>
										<?php } ?>
									</ul>
								<?php } ?>

							<div class="footer-contact-info">
								<h3>Follow Us</h3>
								<?php if($social_icons){ ?>
									<div class="footer-social-icons">
										<?php foreach($social_icons as $icon){ ?>
										<a href="<?= $icon['link']; ?>" title="<?= $icon['title']; ?>" alt="
													<?= $icon['title']; ?>" target="_blank">
											<img src="<?= $icon['icon']; ?>" title="<?= $icon['title']; ?>" class="img-responsive" alt="<?= $icon['title']; ?>" />
										</a>
										<?php } ?>
									</div>
								<?php } ?>
							</div>
							</div>
						<?php endif ?>
					<?php } ?>
				<?php } ?>

				<div class="contain-ig">
					
				</div>

				<div>
				</div>
			</div>

			<script type="text/javascript">
				let ig = $('.module-instagram').html();
				$('.contain-ig').append(ig);
				$('.contain-ig .row').show();
			</script>

			<hr/>
			<div class="footer-bottom row">
				<div class="col-xs-12 col-sm-6">
					<p><?= $powered; ?></p>
				</div>
				<div class="hidden col-xs-12 col-sm-6 text-sm-right">
					<p><?= $text_fcs; ?></p>
				</div>
			</div>
		</div>
	</footer>
</div>
<div id="ToTopHover" ></div>
 <div id="the-modal" class="modal fade">
    <div class="modal-dialog" style="margin-top: 200px">
        <div class="modal-content">

            <div class="modal-body" style="padding: 0; <?php if ($popupimage['image']): ?>display: flex;<?php endif ?>">
            	<?php if ($popupimage['image']): ?>
            		<div class="img" style="<?php if ($popupimage['image']): ?>width: 50%; <?php endif ?>">
						<img style="width: 100%" src="image/<?php echo $popupimage['image']; ?>" alt="image">
            		</div>
            	<?php endif ?>
            	<div class="newsletter-section text-center" style="padding: 10px; <?php if ($popupimage['image']): ?>width: 50%; <?php endif ?>">
					<?= $mailchimp; ?>
				</div>
            </div>

            <div class="eks">
                <button data-dismiss="modal">x</button>
            </div>
        </div>
    </div>
</div>
<style type="text/css">
	.eks {
		position: absolute;
		top: 0;
		right: 0;
	}

	.eks button {
		font-weight: bold;
		background: transparent;
		color: white;
		border: none;
	}

	#the-modal .box-content {
		max-width: 100%;
	}

	#the-modal .newsletter-grid .mi-block {
		height: 40px !important;
	}

	#the-modal .newsletter-section {
		display: flex;
		align-items: center;
	}

	@media (min-width: 1024px) {
		#the-modal .modal-content {
			min-width: 70vh;
		}
	}

	@media (max-width: 767px) {
		.img img {
			width: 100%;
		}
		#the-modal .modal-body {
			display: block;
		}
		#the-modal .modal-body .newsletter-section, .modal-body .img {
			width: 100%;
		}
	}
</style>

<?php if(isset($update_price_status) && $update_price_status) { ?>
	<script type="text/javascript">
        $(".product-inputs input[type='checkbox']").click(function() {
          var product_id = $(this).data('product-id');
          changePrice(product_id);
        });
        $(".product-inputs input[type='radio']").click(function() {
          var product_id = $(this).data('product-id');
          changePrice(product_id);
        });
        $(".product-inputs select").change(function() {
          var product_id = $(this).data('product-id');
          changePrice(product_id);
        });
        $(".input-number").blur(function() {
          var product_id = $(this).data('product-id');
          changePrice(product_id);
        });
        $(".input-number").parent(".input-group").find(".btn-number").click(function() {
          var product_id = $(this).data('product-id');
          changePrice(product_id);
        });
        function changePrice(product_id) {
          $.ajax({
            url: 'index.php?route=product/product/updatePrice&product_id=' + product_id,
            type: 'post',
            dataType: 'json',
            data: $('#product-'+ product_id + ' input[name=\'quantity\'], #product-'+ product_id + ' select, #product-'+ product_id + ' input[type=\'checkbox\']:checked, #product-'+ product_id + ' input[type=\'radio\']:checked'),
            success: function(json) {
              $('.alert-success, .alert-danger').remove();
              if(json['new_price_found']) {
                $('.product-price-'+product_id+' .price .price-new').html(json['total_price']);
                $('.product-price-'+product_id+' .price .price-tax').html(json['tax_price']);
              } else {
                $('.product-price-'+product_id+' .price .price-new').html(json['total_price']);
                $('.product-price-'+product_id+' .price .price-tax').html(json['tax_price']);
              }
            }
          });
        }
	</script>
<?php } ?>
<script>AOS.init({
	once: true
});</script>
<script>
    if($('body').hasClass('common-home')) {
        setTimeout(function(){
            $(document).ready(function(){
                $("#the-modal").modal('show');
            });
        }, 5000);
    }
</script>
<?php 
/* extension bganycombi - Buy Any Get Any Product Combination Pack */
echo $bganycombi_module; 
?>
</body></html>