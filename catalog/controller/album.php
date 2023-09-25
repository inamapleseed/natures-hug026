<?php 
class ControllerGalleryAlbum extends Controller {
  public function index() {

    $this->load->language('gallery/gallery');
	$this->load->model('catalog/gallimage');
		
		$this->load->model('tool/image');
		
	$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);
		
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_gallery'),
			'href' => $this->url->link('gallery/album')
		); 
	
	$this->document->addScript('https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js');
	$this->document->addStyle('https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css');

	$limit = -1;
	if(isset($this->request->get['limit'])){
		$limit = $this->request->get['limit'];
	}

	if (isset($this->request->get['page'])) {
		$page = (int)$this->request->get['page'];
	} else { 
		$page = 1;
	}	
	if (isset($data['start']) || isset($data['limit'])) {
				if ($data['start'] < 0) {
					$data['start'] = 0;
				}				

				if ($data['limit'] < 1) {
					$data['limit'] = 20;
				}	
			
				$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}	
	$filter = array(
		'start'           => ($page - 1) * $limit,
		'limit'           => $limit
	);

	$data['gallery'] = $this->model_catalog_gallimage->getAllGallalbum($filter);
	foreach ($data["gallery"] as $key => $value) {
		$filter_data = array(
			'start' => 0,
			'limit' => 1000,
			'gallimage_id' => $value['gallimage_id']
		);
		$results2 = $this->model_catalog_gallimage->getGallImages($value['gallimage_id']);	

		foreach ($results2 as $key2 => $value2) {
			$images = $this->model_catalog_gallimage->getGallImages2($value2['gallimage_image_id']);
			$results2[$key2]['image'] = $images;
		}
		$data['gallery'][$key]['repeater'] = $results2;
	}
	// debug($data["gallery"]);
	
	$album_total = $this->model_catalog_gallimage->getAllGallalbumTotal($filter);
	$url = '';
	$pagination = new Pagination();
	$pagination->total = $album_total;
	$pagination->page = $page;
	$pagination->limit = $limit;
	$pagination->url = $this->url->link('gallery/album', $url . '&page={page}');
	$data['pagination'] = $pagination->render();
	
	$data['column_left'] = $this->load->controller('common/column_left');
	$data['column_right'] = $this->load->controller('common/column_right');
	$data['content_top'] = $this->load->controller('common/content_top');
	$data['content_bottom'] = $this->load->controller('common/content_bottom');
	$data['footer'] = $this->load->controller('common/footer');
	$data['header'] = $this->load->controller('common/header');
     

    if (version_compare(VERSION, '2.2.0.0', '>=')) {
    $this->response->setOutput($this->load->view('gallery/album', $data));    
    } else {   
    if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/gallery/album.tpl')) {
      $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/gallery/album.tpl', $data));
    } else {
      $this->response->setOutput($this->load->view('default/template/gallery/album.tpl', $data));
    }
    }
  }
}
?>