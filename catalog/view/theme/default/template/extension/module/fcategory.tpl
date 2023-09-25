<h2><?=$name;?><img src="image/catalog/slicing/homepage/title-deco2-min.png" alt="image"></h2>
<div style="background: url('image/catalog/bg1-min.jpg'); background-size: cover; background-position: bottom; background-repeat: no-repeat;">

	<div class="contain-cats">
	  <?php foreach ($categories as $i => $category) { ?>
	    <div class="each-cat cat-<?=$i;?>">
			<div class="image">
				<a href="<?php echo $category['href']; ?>">
					<img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="img- d-overlay" />
					<img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="img-" style="opacity: 0;"/>
				</a>
			</div>
			<div class="texts">
				<div class="overlay">
					<h3><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></h3>
					<p><?=$category['description'];?></p>
					<a href="<?= $category['href'];?>" class="btn yellow-butt">View</a>
				</div>
			</div>
	    </div>
	  <?php } ?>
	</div>
</div>

