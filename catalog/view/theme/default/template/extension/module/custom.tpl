<div class="contain-about">
	<div class="left">
		<h2><?= $title; ?><img src="image/<?=$timage;?>" alt="image"></h2>

		<div class="description">
			<?php echo html_entity_decode($text); ?>
		</div>
	</div>

	<div class="right">
		<?php foreach ($main as $j => $main): ?>
			<div class="contain-image">
				<?php if ($main['mainimage']): ?>
					<img src="image/<?=$main['mainimage'];?>" alt="image" class="main-<?=$j;?>">
				<?php endif ?>
			</div>
		<?php endforeach ?>
		
    <?php if($designs): ?>
		<?php foreach ($designs as $l => $design): ?>
			<?php if ($l >= 1): ?>
				<?php if ($design['design']): ?>
					<img src="image/<?=$design['design'];?>" alt="image" class="design-<?=$l;?> floaters">
				<?php endif ?>
			<?php endif ?>
		<?php endforeach ?>
			<?php endif ?>

	</div>

    <?php if($designs): ?>
	<?php foreach ($designs as $i => $design): ?>
		<?php if ($i == 0): ?>
			<img src="image/<?=$design['design'];?>" alt="image" class="design-<?=$i;?> floaters">
		<?php endif ?>
	<?php endforeach ?>
		<?php endif ?>

</div>
<div style="background: url('image/<?=$bottombg;?>'); background-size: cover; background-position: center; background-repeat: no-repeat;" class="about-footer">
	<div class="inner">
		<?php foreach ($bottom as $key => $content): ?>
			<div class="contain-mv">
				<?php if ($content['bimage']): ?>
					<img src="image/<?=$content['bimage'];?>" alt="image">
				<?php endif ?>
				<div>
					<h3><?=$content['btitle'];?></h3>
					<p><?=$content['description'];?></p>
				</div>
			</div>
		<?php endforeach ?>
	</div>
</div>