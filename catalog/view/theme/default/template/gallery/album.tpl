<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>

  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
      <h2>Gallery <img src="image/catalog/slicing/gallery/deco-min.png" alt="image"></h2>
      <?php echo $content_top; ?>

      <div class="gallery-view shelf">

        <?php foreach ($gallery as $i => $album): ?>
          <div class="gall-thumb album">
            <div class="image">
              <img src="image/<?= $album['image']; ?>" alt="<?= $album['name']; ?>">
            </div>

              <div class="texts">
                <div class="overlay">
                  <h3><?=$album['name'];?></h3>
                  <p><?php echo html_entity_decode($album['description']); ?></p>
                  <a class="btn yellow-butt" data-toggle="modal" data-target="#album_0<?=$i;?>">View Album</a>
                </div>
                <div class="overlay-two"></div>
              </div>

          </div>

          <div id="album_0<?=$i;?>" class="modal fade" role="dialog">
            <div class="modal-dialog">
              <div>
                <div class="modal-content"> 

                  <div class="slider slider-for">

                    <?php $ctr= 0; foreach ($album['repeater'] as $o => $content): $ctr++; ?>
                                            
                      <?php foreach ($content['image'] as $p => $c): ?>
                        <div class="please" style="background: url(); background-size: cover;">
                            <img src="image/<?=$c['image'];?>" class="bg-img-blur">
                          <?php if ($c['link']): ?>
                              <div><?php echo html_entity_decode($c['link']); ?></div>
                              <?php else: ?>
                              <img src="image/<?=$c['image'];?>" alt="<?=$c['image'];?>">
                          <?php endif ?>

                        </div>
                      <?php endforeach ?>

                    <?php endforeach ?>
                  </div>
                  <div class="slider-nav slider">
                      <?php foreach ($album['repeater'] as $o => $content): ?>
                        <?php foreach ($content['image'] as $p => $c): ?>
                          <div class="modal-body please">
                            <?php if ($c['image']): ?>
                                <div class="img"  id="<?=$i + 1;?>" style="background: url(image/<?=$c['image'];?>); background-size: contain; background-repeat: no-repeat;"></div>
                            <?php endif ?>
                            <?php if ($c['image'] && $c['link']): ?>
                                <div class="img"  id="<?=$i + 1;?>" style="background: url(image/<?=$c['image'];?>); background-size: contain; "></div>
                            <?php endif ?>
                            <?php if (!$c['image'] && $c['link']): ?>
                              <div class="img"><?php echo html_entity_decode($c['link']); ?></div>
                              <div class="overlay"></div>
                            <?php endif ?>
                          </div>  
                        <?php endforeach ?>
                      <?php endforeach ?>
                  </div>
                  <div class="texts">
                    <h3><?=$album['name'];?></h3>
                    <p><?= html_entity_decode($album['description']);?></p>
                  </div>                  
                </div>
              </div>
              <button type="button" class="btn eks" data-dismiss="modal">&#10005;</button>
            </div>
          </div>

        <?php endforeach ?>
      </div>
      <?php foreach ($gallery as $i => $gal): ?>
        <?php if ($i >= 9): ?>
          <div id="pagination-container"></div>
        <?php endif ?>
      <?php endforeach ?>

       <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>

<script type="text/javascript">
  let items = $(".shelf .album");
    let numItems = items.length;
    let perPage = 9;

    items.slice(perPage).hide();

    $('#pagination-container').pagination({
    items: numItems,
    itemsOnPage: perPage,
    hrefTextPrefix: '',
    prevText: "&lt;&nbsp;",
    nextText: "&nbsp;&gt;",
    onPageClick: function (pageNumber) {
        var showFrom = perPage * (pageNumber - 1);
        var showTo = showFrom + perPage;

      $(".simple-pagination a").each(function(e){
        $(this).removeAttr('href');
      });

        items.hide().slice(showFrom, showTo).show();
    }
    });

    $(".simple-pagination a").removeAttr("href");

    $(document).ready(function(){
      $("#pagination-container span").each(function(){
        let prev = $(this).text();
        $(this).text(prev.replace("prev", ""));
      });

      $("#pagination-container a").each(function(){
        let next = $(this).text();
        $(this).text(next.replace("next", ""));
      });
    })
</script>

<script type="text/javascript">
  $('.modal').on('shown.bs.modal', function (e) {
    $('.slider-for').slick('setPosition');
    $('.slider-nav').slick('setPosition');
  });

  $('.slider-for').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true,
      prevArrow: '<i class="fa fa-angle-left slick-prev"></i>',
      nextArrow: '<i class="fa fa-angle-right slick-next"></i>',
      fade: true,
      asNavFor: '.slider-nav'
    });
  $('.slider-nav').slick({
      slidesToShow: 4,
      slidesToScroll: 1,
      asNavFor: '.slider-for',
      dots: false,
      arrows: false,
      focusOnSelect: true,
      responsive: [
      {
        breakpoint: 1023,
        settings: {
          slidesToShow: 3,
        }
      }
    ],
  });
</script>
<style>
    .bg-img-blur {
        filter: blur(10px);
        position: absolute;
        z-index: -1;
        width: 100%;
        height: auto !important;
    }
    .slick-slide {
        cursor: pointer;
    }
</style>
<?php echo $footer; ?> 