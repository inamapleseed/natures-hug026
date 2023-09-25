<button id="articles-filter-trigger-open" class="btn btn-primary" onclick="$('#articles-column-left').addClass('open');" ><?= $button_filter; ?></button>
<div id="articles-column-left" class="f16">
	<button id="articles-filter-trigger-close" class="btn btn-danger fixed position-right-top" onclick="$('#articles-column-left').removeClass('open');"> <i class="fa fa-times"></i> </button>
		<h3><?= $text_categories ?></h3>

	<div class="pd-b40">
		<div class="list-group news-ctgr">
		<?php foreach ($categories as $c) { ?>
			<div class="list-group-item">
				<a href="<?= $c['url'] ?>" class="block <?= $ncategory_id == $c['ncategory_id'] ? 'active' : '' ?>"><?= $c['name'] ?></a>
			</div>
		<?php } ?>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function () {
		$('.hidesthemonths').on('click', function () {
			$(this).find('div').slideToggle('fast');
		});
	});
</script>