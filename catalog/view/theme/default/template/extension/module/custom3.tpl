<div class="contain-about">
	<div class="left">
		<h2><?= $about['title']; ?><img src="image/<?=$about['timage'];?>" alt="image"></h2>

		<div class="description">
			<?php echo html_entity_decode($about['text']); ?>
		</div>
	</div>

	<div class="right">
		<?php foreach ($about['homemain'] as $j => $main): ?>
			<div class="contain-image">
				<?php if ($main['homemainimage']): ?>
					<img src="image/<?=$main['homemainimage'];?>" alt="image" class="main-<?=$j;?>">
				<?php endif ?>
			</div>
		<?php endforeach ?>
		
    <?php if($about['designs']): ?>
		<?php foreach ($about['designs'] as $l => $design): ?>
			<?php if ($l >= 1): ?>
				<?php if ($design['design']): ?>
					<img src="image/<?=$design['design'];?>" alt="image" class="design-<?=$l;?> floaters">
				<?php endif ?>
			<?php endif ?>
		<?php endforeach ?>
					<?php endif ?>

	</div>

    <?php if($about['designs']): ?>
	<?php foreach ($about['designs'] as $i => $design): ?>
		<?php if ($i == 0): ?>
			<img src="image/<?=$design['design'];?>" alt="image" class="design-<?=$i;?> floaters">
		<?php endif ?>
	<?php endforeach ?>
		<?php endif ?>

</div>