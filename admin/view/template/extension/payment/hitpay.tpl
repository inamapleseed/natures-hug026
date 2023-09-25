<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-payment" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning): ?>
    <div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php endif; ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-payment" class="form-horizontal">
           <!-- <div class="form-group">
            <label class="col-sm-2 control-label" for="input-api_key_sandbox"><?php echo $entry_api_key; ?> (Sandbox)</label>
            <div class="col-sm-10">
              <input type="text" name="hitpay_api_key_sandbox" value="<?php echo $hitpay_api_key_sandbox; ?>" placeholder="<?php echo $entry_api_key; ?> (Sandbox)" id="input-api_key_sandbox" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-signature_sandbox"><?php echo $entry_signature; ?> (Sandbox)</label>
            <div class="col-sm-10">
              <input type="text" name="hitpay_signature_sandbox" value="<?php echo $hitpay_signature_sandbox; ?>" placeholder="<?php echo $entry_signature; ?> (Sandbox)" id="input-signature_sandbox" class="form-control" />
            </div>
          </div> -->
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-api_key"><?php echo $entry_api_key; ?></label>
            <div class="col-sm-10">
              <input type="text" name="hitpay_api_key" value="<?php echo $hitpay_api_key; ?>" placeholder="<?php echo $entry_api_key; ?>" id="input-api_key" class="form-control" />
              <?php if ($error_api_key): ?>
              <div class="text-danger"><?php echo $error_api_key; ?></div>
              <?php endif; ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-signature"><?php echo $entry_signature; ?></label>
            <div class="col-sm-10">
              <input type="text" name="hitpay_signature" value="<?php echo $hitpay_signature; ?>" placeholder="<?php echo $entry_signature; ?>" id="input-signature" class="form-control" />
              <?php if ($error_signature): ?>
              <div class="text-danger"><?php echo $error_signature; ?></div>
              <?php endif; ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-mode"><?php echo $entry_mode; ?></label>
            <div class="col-sm-10">
              <select name="hitpay_mode" id="input-mode" class="form-control">
                <?php if ($hitpay_mode == 'live'): ?>
                <option value="live" selected="selected"><?php echo $text_live; ?></option>
                <?php else: ?>
                <option value="live"><?php echo $text_live; ?></option>
                <?php endif; ?>
                <?php if ($hitpay_mode == 'sandbox'): ?>
                <option value="sandbox" selected="selected"><?php echo $text_sandbox; ?></option>
                <?php else: ?>
                <option value="sandbox"><?php echo $text_sandbox; ?></option>
                <?php endif; ?>>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-total"><span data-toggle="tooltip" title="<?php echo $help_total; ?>"><?php echo $entry_total; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="hitpay_total" value="<?php echo $hitpay_total; ?>" placeholder="<?php echo $entry_total; ?>" id="input-total" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-title"><span data-toggle="tooltip" title="<?php echo $help_title; ?>"><?php echo $entry_title; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="hitpay_title" value="<?php echo $hitpay_title; ?>" placeholder="<?php echo $entry_title_placeholder; ?>" id="input-title" class="form-control" />
            </div>
          </div>
    <div class="form-group">
      <label class="col-sm-2 control-label" for="input-order-status"><?php echo $entry_order_status; ?></label>
      <div class="col-sm-10">
        <select name="hitpay_order_status_id" id="input-order-status" class="form-control">
          <?php foreach ($order_statuses as $order_status) { ?>
          <?php if ($order_status['order_status_id'] == $hitpay_order_status_id): ?>
          <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
          <?php else: ?>
          <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
          <?php endif; ?>
          <?php } ?>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2 control-label" for="input-geo-zone"><?php echo $entry_geo_zone; ?></label>
      <div class="col-sm-10">
        <select name="hitpay_geo_zone_id" id="input-geo-zone" class="form-control">
          <option value="0"><?php echo $text_all_zones; ?></option>
          <?php foreach ($geo_zones as $geo_zone) { ?>
          <?php if ($geo_zone['geo_zone_id'] == $hitpay_geo_zone_id): ?>
          <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
          <?php else: ?>
          <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
          <?php endif; ?>
          <?php } ?>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
      <div class="col-sm-10">
        <select name="hitpay_status" id="input-status" class="form-control">
          <?php if ($hitpay_status): ?>
          <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
          <option value="0"><?php echo $text_disabled; ?></option>
          <?php else: ?>
          <option value="1"><?php echo $text_enabled; ?></option>
          <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
          <?php endif; ?>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2 control-label" for="input-logging"><?php echo $entry_logging; ?></label>
      <div class="col-sm-10">
        <select name="hitpay_logging" id="input-logging" class="form-control">
          <?php if ($hitpay_logging): ?>
          <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
          <option value="0"><?php echo $text_disabled; ?></option>
          <?php else: ?>
          <option value="1"><?php echo $text_enabled; ?></option>
          <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
          <?php endif; ?>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
      <div class="col-sm-10">
        <input type="text" name="hitpay_sort_order" value="<?php echo $hitpay_sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
      </div>
    </div>
    </form>
  </div>
</div>
</div>
</div>
<?php echo $footer; ?>