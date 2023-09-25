<?= $header; ?>


<div class="contain">
	<?= $content_top; ?>
	<ul class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<li><a href="<?= $breadcrumb['href']; ?>"><?= $breadcrumb['text']; ?></a></li>
		<?php } ?>
	</ul>
	<div class=""><?= $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
			<?php $class = 'col-sm-6'; ?>
			<?php } elseif ($column_left || $column_right) { ?>
			<?php $class = 'col-sm-9'; ?>
			<?php } else { ?>
			<?php $class = 'col-sm-12'; ?>
		<?php } ?>
		<div id="content" class="">
			<h2><?= $heading_title; ?></h2>
			<div class="">
				<div class="iframe">
					<div class="iframe-wrap"><?= $gmap_iframe ?></div>
				</div>

				<div style="background-image: url('image/catalog/bg1-min.jpg'); background-repeat: no-repeat; background-size: cover; background-position: bottom;">
					<div class="contact-bottom">
						<div class="contain-details">
							<h3>Contact Details</h3>
							<div class=""><b>Address:</b><br />
								<address>
									<?= $address; ?>
								</address>
							</div>
							<div class="" style="margin-bottom: 20px"><b>Email:</b><br>
								<a href="tel:<?= $store_email; ?>" alt="<?= $store_email; ?>" title="<?= $store_email; ?>" ><?= $store_email; ?></a><br />
							</div>
							<div class=""><b><?= $text_telephone; ?>:</b><br>
								<a href="tel:<?= $store_telephone; ?>" alt="<?= $store_telephone; ?>" title="<?= $store_telephone; ?>" ><?= $store_telephone; ?></a><br />
							</div>
							<div class="">
								<?php if ($open) { ?>
									<strong><?= $text_open; ?></strong><br />
									<?= $open; ?><br />
									<br />
								<?php } ?>
							</div>						
						</div>

						<div class="form-container">
							<ul id="humantype" class="nav nav-tabs rad">
								<li>
									<a href="#for-supplier" data-id="for-supplier" data-toggle="tab"><span>For Suppliers</span></a>
								</li>
								<li>
									<a href="#for-consumer" data-id="for-consumer" data-toggle="tab"><span>For Consumers</span></a>
								</li>
							</ul>

							<div class="tab-content">
								<div id="for-supplier" class="tab-pane active">
									<form action="<?= $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
										<div class="contact-body">
											<input type="radio" name="humantype" value="Suppliers" id="input-humantype" class="form-control hidden"/>

											<div class="inner inner-supplier">
												<div class="form-group required">
													<input type="text" name="company" value="<?= $company; ?>" id="input-company" class="form-control" placeholder="Company" />
													<?php if ($error_company) { ?>
														<div class="text-danger"><?= $error_company; ?></div>
													<?php } ?>
												</div>
												<div class="form-group required">
													<input type="text" name="companydesc" value="<?= $companydesc; ?>" id="input-companydesc" class="form-control" placeholder="Description of Company" />
													<?php if ($error_companydesc) { ?>
														<div class="text-danger"><?= $error_companydesc; ?></div>
													<?php } ?>								
												</div>

												<div class="form-group required">
													<input type="text" name="name" value="<?= $name; ?>" id="input-name" class="form-control" placeholder="First Name" />
													<?php if ($error_name) { ?>
														<div class="text-danger"><?= $error_name; ?></div>
													<?php } ?>								
												</div>

												<div class="form-group required">
													<input type="text" name="lastname" value="<?= $lastname; ?>" id="input-lastname" class="form-control" placeholder="Last Name" />
													<?php if ($error_lastname) { ?>
														<div class="text-danger"><?= $error_lastname; ?></div>
													<?php } ?>								
												</div>
											
												<div class="form-group required">
													<input type="text" name="email" value="<?= $email; ?>" id="input-email" class="form-control" placeholder="<?= $entry_email; ?>" />
													<?php if ($error_email) { ?>
														<div class="text-danger"><?= $error_email; ?></div>
													<?php } ?>
												</div>
											
												<div class="form-group required">
													<input type="tel" name="telephone" value="<?= $telephone; ?>" id="input-telephone" class="form-control input-number" placeholder="Phone Number" />
													<?php if ($error_telephone) { ?>
														<div class="text-danger"><?= $error_telephone; ?></div>
													<?php } ?>
												</div>

												<div class="form-group required">
													<input type="text" name="website" value="<?= $website; ?>" id="input-website" class="form-control" placeholder="Website" />
													<?php if ($error_website) { ?>
														<div class="text-danger"><?= $error_website; ?></div>
													<?php } ?>
												</div>

												<div class="form-group required">
													<input type="text" name="itemlist" value="<?= $itemlist; ?>" id="input-itemlist" class="form-control" placeholder="Item List" />
													<?php if ($error_itemlist) { ?>
														<div class="text-danger"><?= $error_itemlist; ?></div>
													<?php } ?>
												</div>

												<div class="form-group required">
													<input type="text" name="productname" value="<?= $productname; ?>" id="input-productname" class="form-control" placeholder="Name of Product" />
													<?php if ($error_productname) { ?>
														<div class="text-danger"><?= $error_productname; ?></div>
													<?php } ?>
												</div>

												<div class="form-group required">
													<input type="text" name="origin" value="<?= $origin; ?>" id="input-origin" class="form-control" placeholder="Origin" />
													<?php if ($error_origin) { ?>
														<div class="text-danger"><?= $error_origin; ?></div>
													<?php } ?>
												</div>

												<div class="form-group required">
													<input type="text" name="sp" value="<?= $sp; ?>" id="input-sp" class="form-control" placeholder="Selling Price" />
													<?php if ($error_sp) { ?>
														<div class="text-danger"><?= $error_sp; ?></div>
													<?php } ?>
												</div>

												<div class="form-group required">
													<input type="text" name="srp" value="<?= $srp; ?>" id="input-srp" class="form-control" placeholder="Suggested Retail Price" />
													<?php if ($error_srp) { ?>
														<div class="text-danger"><?= $error_srp; ?></div>
													<?php } ?>
												</div>

												<div class="form-group">
													<label><strong style="color: black;">Photos of Product</strong></label>
													<div class="inner-upload">
														<input type="file" name="upload" class="filestyle" id="input-upload" accept=".docx,.pdf,.doc" data-classButton="btn" data-input="false" data-icon="true" data-buttonText="Select a File">
													</div>

													<?php if ($error_upload) { ?>
														<div class="text-danger"><?= $error_upload; ?></div>
													<?php } ?>
												</div>

												<div class="form-group required">
													<label class="hidden-xs"><strong style="opacity: 0">Available</strong></label>
													<input type="text" name="avail" value="<?= $avail; ?>" id="input-avail" class="form-control" placeholder="Quantity Available For Sale" />
													<?php if ($error_avail) { ?>
														<div class="text-danger"><?= $error_avail; ?></div>
													<?php } ?>
												</div>
											</div>
										</div>
										<div class="contact-footer text-center">
											<input type="hidden" name="contact_form" value="1">

											<?= $captcha ?>
											<input class="btn btn-primary blue-butt pull-sm-right" type="submit" value="<?= $button_submit; ?>" />
										</div>
									</form>
								</div>

								<div id="for-consumer" class="tab-pane">
									<form action="<?= $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
										<div class="contact-body">

											<input checked type="radio" name="humantype" value="Consumers" id="input-humantype" class="form-control hidden"/>
														
											<div class="inner inner-consumer">
												<div class="form-group required">
													<input type="text" name="name2" value="<?= $name2; ?>" id="input-name2" class="form-control" placeholder="First Name" />
													<?php if ($error_name2) { ?>
														<div class="text-danger"><?= $error_name2; ?></div>
													<?php } ?>
												</div>

												<div class="form-group required">
													<input type="text" name="email2" value="<?= $email2; ?>" id="input-email2" class="form-control" placeholder="<?= $entry_email2; ?>" />
													<?php if ($error_email2) { ?>
														<div class="text-danger"><?= $error_email2; ?></div>
													<?php } ?>
												</div>

												<div class="form-group required">
													<input type="tel" name="telephone2" value="<?= $telephone2; ?>" id="input-telephone2" class="form-control input-number" placeholder="Phone Number" />
													<?php if ($error_telephone2) { ?>
														<div class="text-danger"><?= $error_telephone2; ?></div>
													<?php } ?>
												</div>

												<div class="form-group required">
													<input type="text" name="subject2" value="<?= $subject2; ?>" id="input-subject2" class="form-control" placeholder="Subject" />
													<?php if ($error_subject2) { ?>
														<div class="text-danger"><?= $error_subject2; ?></div>
													<?php } ?>
												</div>

												<div class="form-group required">
													<textarea rows="8" name="enquiry" class="form-control" placeholder="Message" value="<?php echo $enquiry; ?>" id="input-enquiry"><?php echo $enquiry; ?></textarea>
												</div>
											</div>

										</div>
										<div class="contact-footer text-center">
											<input type="hidden" name="contact_form2" value="1">

											<?= $captcha; ?>
											<input class="btn btn-primary blue-butt pull-sm-right" type="submit" value="<?= $button_submit; ?>" />
										</div>
									</form>		
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<?php if ($locations) { ?>
				<h3><?= $text_store; ?></h3>
				<div class="panel-group" id="accordion">
					<?php foreach ($locations as $index => $location) { ?>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a href="#collapse-location<?= $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" >
										<?= $location['name']; ?> <i class="fa fa-caret-down"></i>
									</a>
								</h4>
							</div>
							<div class="panel-collapse collapse" id="collapse-location<?= $location['location_id']; ?>" >
								<div class="panel-body">
									<div class="row">
											<div class="col-sm-12">
												<div class="iframe-wrap"><?= $location['gmap_iframe'] ?></div>
											</div>
										
										<?php if ($location['image']) { ?>
											<div class="col-sm-3"><img src="<?= $location['image']; ?>" alt="<?= $location['name']; ?>" title="<?= $location['name']; ?>" class="img-thumbnail" /></div>
										<?php } ?>
										<div class="col-sm-3"><strong><?= $location['name']; ?></strong><br />
											<address>
												<?= $location['address']; ?>
											</address>
											<?php if ($location['geocode']) { ?>
												<a href="https://maps.google.com/maps?q=<?= urlencode($location['geocode']); ?>&hl=<?= $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?= $button_map; ?></a>
											<?php } ?>
										</div>
										<div class="col-sm-3"> <strong><?= $text_telephone; ?></strong><br>
											<?= $location['telephone']; ?><br />
											<br />
											<?php if ($location['fax']) { ?>
												<strong><?= $text_fax; ?></strong><br>
												<?= $location['fax']; ?>
											<?php } ?>
										</div>
										<div class="col-sm-3">
											<?php if ($location['open']) { ?>
												<strong><?= $text_open; ?></strong><br />
												<?= $location['open']; ?><br />
												<br />
											<?php } ?>
										</div>
									</div>
								</div>
							</div>
						</div>
					<?php } ?>
				</div>
			<?php } ?>

		</div>
	<?= $column_right; ?></div>
	<?= $content_bottom; ?>
<script>
  $(":file").filestyle({
    input: false,
    icon: false,
    buttonText: "Select a File",
    buttonName: "upload"
  });

$('.buttonText').html('<span>Select a File</span> <span class="browse">Browse</span>');

// $('#input-upload').css("background-color", "white");

</script>
</div>
<?= $footer; ?>
