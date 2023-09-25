<?php
	class ControllerInformationContact extends Controller {
		private $error = array();

		// Add New Post by defining it here
		private $posts = array(
			'humantype'		=>	'',
			'company'		=>	'',
			'companydesc'	=>	'',
			'website'		=>	'',
			'name'			=>	'',
			'lastname'		=>	'',
			'email'			=>	'',
			'telephone'		=>	'',
			'productname'	=>	'',
			'itemlist'		=>	'',
			'origin'		=>	'',
			'srp'			=>	'',
			'sp'			=>	'',
			'avail'			=>	'',
			'subject2'		=>	'',
			'name2'			=>	'',
			'email2'		=>	'',
			'telephone2'	=>	'',
			'enquiry'		=>	'',
		);

		// Add your post value to ignore in the email body content
		private $disallow_in_message_body = array(
			'var_abc_name'
		);

		public function populateDefaultValue(){
			$this->posts['name']		= $this->customer->getFirstName() . ' ' . $this->customer->getLastName();
			$this->posts['email']		= $this->customer->getEmail();
			$this->posts['telephone']	= $this->customer->getTelephone();
			$this->posts['name2']		= $this->customer->getFirstName() . ' ' . $this->customer->getLastName();
			$this->posts['email2']		= $this->customer->getEmail();
			$this->posts['telephone2']	= $this->customer->getTelephone();
		}

		public function index() {
			$this->load->language('information/contact');
			
			$this->document->setTitle($this->language->get('heading_title'));

			// Populate values after customer logged in
			if($this->customer->isLogged()) {
				$this->populateDefaultValue();
			}
			$server = $this->config->get('config_url');

			if ($this->request->server['HTTPS']) {
				$server = $this->config->get('config_ssl');
			}
			$data['images'] = $server ."image/";
			$data['urlServer'] = $server;


			if (isset($this->request->post['contact_form'])) {
				if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->request->post['contact_form'] && $this->validate()) {
					
					$mail = new Mail();
					$mail->protocol = $this->config->get('config_mail_protocol');
					$mail->parameter = $this->config->get('config_mail_parameter');
					$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
					$mail->smtp_username = $this->config->get('config_mail_smtp_username');
					$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
					$mail->smtp_port = $this->config->get('config_mail_smtp_port');
					$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
					
					$mail->setTo($this->config->get('config_email'));
					//$mail->setFrom($this->request->post['email']);
					$mail->setFrom($this->config->get('config_email'));

					$mail->setSender(html_entity_decode($this->request->post['name'], ENT_QUOTES, 'UTF-8'));
					$mail->setSubject(html_entity_decode(sprintf($this->language->get('email_subject'), $this->request->post['company']), ENT_QUOTES, 'UTF-8'));
					
					$message = "";
					
					foreach ($this->posts as $post_var => $post_default_value){
						if( !in_array($post_var, $this->disallow_in_message_body) ){
							$message .= $this->language->get('entry_' .$post_var) . ":\n";
							//$message .= $this->request->post[$post_var]??"";
							$message .= $this->request->post[$post_var] ? $this->request->post[$post_var] : "";
							$message .= "\n\n";
						}
					}
					$tempdir = (DIR_DOWNLOAD); 
					$fileName = $this->request->files['upload']['name'];
					$imageTemp = $tempdir.$fileName;
					move_uploaded_file($this->request->files['upload']['tmp_name'], $tempdir.$fileName);
					$mail->addAttachment($tempdir.$fileName);
					$mail->setText($message);
					$mail->send();
					// Pro email Template Mod
					if($this->config->get('pro_email_template_status')){

						$this->load->model('tool/pro_email');

						$email_params = array(
							'type' => 'admin.information.contact',
							'mail' => $mail,
							'reply_to' => $this->request->post['email'],
							'data' => array(
								'enquiry_subject' => html_entity_decode($this->request->post['company'], ENT_QUOTES, 'UTF-8'),
								'enquiry_company' => html_entity_decode($this->request->post['company'], ENT_QUOTES, 'UTF-8'),
								'enquiry_companydesc' => html_entity_decode($this->request->post['companydesc'], ENT_QUOTES, 'UTF-8'),
								'enquiry_website' => html_entity_decode($this->request->post['website'], ENT_QUOTES, 'UTF-8'),
								'enquiry_name' => html_entity_decode($this->request->post['name'], ENT_QUOTES, 'UTF-8'),
								'enquiry_lastname' => html_entity_decode($this->request->post['lastname'], ENT_QUOTES, 'UTF-8'),
								'enquiry_mail' => html_entity_decode($this->request->post['email'], ENT_QUOTES, 'UTF-8'),
								'enquiry_telephone' => html_entity_decode($this->request->post['telephone'], ENT_QUOTES, 'UTF-8'),
								'enquiry_productname' => html_entity_decode($this->request->post['productname'], ENT_QUOTES, 'UTF-8'),
								'enquiry_itemlist' => html_entity_decode($this->request->post['itemlist'], ENT_QUOTES, 'UTF-8'),
								'enquiry_origin' => html_entity_decode($this->request->post['origin'], ENT_QUOTES, 'UTF-8'),
								'enquiry_srp' => html_entity_decode($this->request->post['srp'], ENT_QUOTES, 'UTF-8'),
								'enquiry_sp' => html_entity_decode($this->request->post['sp'], ENT_QUOTES, 'UTF-8'),
								'enquiry_avail' => html_entity_decode($this->request->post['avail'], ENT_QUOTES, 'UTF-8'),
								'enquiry_message' => 'N/A',
							),
						);

						$this->model_tool_pro_email->generate($email_params);
					}
					else{
						$mail->send();
					}	
					
					$this->response->redirect($this->url->link('information/contact/success'));
				} else {
					if(($this->request->server['REQUEST_METHOD'] == 'POST') && $this->request->post['contact_form'] && !$this->validate()){
						$data['error_contact'] = true;
					}
				}
			}

			if (isset($this->request->post['contact_form2'])) {
				if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->request->post['contact_form2'] && $this->validate()) {
					
					$mail = new Mail();
					$mail->protocol = $this->config->get('config_mail_protocol');
					$mail->parameter = $this->config->get('config_mail_parameter');
					$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
					$mail->smtp_username = $this->config->get('config_mail_smtp_username');
					$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
					$mail->smtp_port = $this->config->get('config_mail_smtp_port');
					$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');
					
					$mail->setTo($this->config->get('config_email'));
					//$mail->setFrom($this->request->post['email']);
					$mail->setFrom($this->config->get('config_email'));

					$mail->setSender(html_entity_decode($this->request->post['name2'], ENT_QUOTES, 'UTF-8'));
					$mail->setSubject(html_entity_decode(sprintf($this->language->get('email_subject2'), $this->request->post['subject2']), ENT_QUOTES, 'UTF-8'));
					
					$message = "";
					
					foreach ($this->posts as $post_var => $post_default_value){
						if( !in_array($post_var, $this->disallow_in_message_body) ){
							$message .= $this->language->get('entry_' .$post_var) . ":\n";
							//$message .= $this->request->post[$post_var]??"";
							$message .= $this->request->post[$post_var] ? $this->request->post[$post_var] : "";
							$message .= "\n\n";
						}
					}
	
					// Pro email Template Mod
					if($this->config->get('pro_email_template_status')){

						$this->load->model('tool/pro_email');

						$email_params = array(
							'type' => 'admin.information.contact',
							'mail' => $mail,
							'reply_to' => $this->request->post['email'],
							'data' => array(
								'enquiry_subject' => html_entity_decode($this->request->post['subject2'], ENT_QUOTES, 'UTF-8'),
								'enquiry_telephone' => html_entity_decode($this->request->post['telephone2'], ENT_QUOTES, 'UTF-8'),
								'enquiry_name' => html_entity_decode($this->request->post['name2'], ENT_QUOTES, 'UTF-8'),
								'enquiry_mail' => html_entity_decode($this->request->post['email2'], ENT_QUOTES, 'UTF-8'),
								'enquiry_message' => html_entity_decode($this->request->post['enquiry'], ENT_QUOTES, 'UTF-8'),
								// 'enquiry_message' => html_entity_decode($message, ENT_QUOTES, 'UTF-8'),
								'enquiry_company' => 'N/A',
								'enquiry_companydesc' => 'N/A',
								'enquiry_website' => 'N/A',
								'enquiry_lastname' => 'N/A',
								'enquiry_productname' => 'N/A',
								'enquiry_itemlist' => 'N/A',
								'enquiry_origin' => 'N/A',
								'enquiry_srp' => 'N/A',
								'enquiry_sp' => 'N/A',
								'enquiry_avail' => 'N/A',
							),
						);
						
						$this->model_tool_pro_email->generate($email_params);
					}
					else{
						$mail->send();
					}				
					$this->response->redirect($this->url->link('information/contact/success'));
				} else {
					if(($this->request->server['REQUEST_METHOD'] == 'POST') && $this->request->post['contact_form2'] && !$this->validate()){
						$data['error_contact'] = true;
					}
				}
			}
			
			$data['breadcrumbs'] = array();
			
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('text_home'),
				'href' => $this->url->link('common/home')
			);
			
			$data['breadcrumbs'][] = array(
				'text' => $this->language->get('heading_title'),
				'href' => $this->url->link('information/contact')
			);
			
			$data['heading_title'] = $this->language->get('heading_title');
			
			$data['text_location'] = $this->language->get('text_location');
			$data['text_store'] = $this->language->get('text_store');
			$data['text_contact'] = $this->language->get('text_contact');
			$data['text_address'] = $this->language->get('text_address');
			$data['text_telephone'] = $this->language->get('text_telephone');
			$data['text_fax'] = $this->language->get('text_fax');
			$data['text_open'] = $this->language->get('text_open');
			$data['text_comment'] = $this->language->get('text_comment');
			
			$data['button_map'] = $this->language->get('button_map');
			
			$data['button_submit'] = $this->language->get('button_submit');
			$data['button_submit2'] = $this->language->get('button_submit');
			
			$data['action'] = $this->url->link('information/contact', '', true);
			
			$this->load->model('tool/image');
			
			$data['store'] = $this->config->get('config_name');
			$data['address'] = nl2br($this->config->get('config_address'));
			
			$data["geocode"] = str_replace(" ", "", $this->config->get('config_geocode'));
			
			$api_key = $this->config->get('config_google_api');
			
			$data['google_map'] = $this->gmap('google_map', $this->config->get('config_address'));
			
			$this->document->addScript("https://maps.googleapis.com/maps/api/js?key=$api_key&callback=gmap", "header", true);
			
			$data['geocode_hl'] = $this->config->get('config_language');
			$data['store_telephone'] = $this->config->get('config_telephone');
			$data['fax'] = $this->config->get('config_fax');
			$data['open'] = nl2br($this->config->get('config_open'));
			$data['comment'] = $this->config->get('config_comment');
			$data['store_email'] = $this->config->get('config_email');
			$data['gmap_iframe'] = html($this->config->get('config_gmap_iframe'));
			
			$data['locations'] = array();
			
			$this->load->model('localisation/location');
			
			foreach((array)$this->config->get('config_location') as $location_id) {
				$location_info = $this->model_localisation_location->getLocation($location_id);
				
				if ($location_info) {
					if ($location_info['image']) {
						$image = $this->model_tool_image->resize($location_info['image'], $this->config->get($this->config->get('config_theme') . '_image_location_width'), $this->config->get($this->config->get('config_theme') . '_image_location_height'));
					}
					else {
						$image = false;
					}
					
					$locaton_maps = $this->gmap("location_map" . $location_id, $location_info['address'], $location_info['name']);
					
					$data['locations'][] = array(
					'location_id' => $location_info['location_id'],
					'name'        => $location_info['name'],
					'address'     => nl2br($location_info['address']),
					'google_map'  => $locaton_maps,
					'geocode'     => str_replace(" ", "", $location_info['geocode']),
					'telephone'   => $location_info['telephone'],
					'fax'         => $location_info['fax'],
					'image'       => $image,
					'open'        => nl2br($location_info['open']),
					'comment'     => $location_info['comment'],
					'gmap_iframe'     => html($location_info['gmap_iframe']),
					);
				}
			}
			
			// Captcha
			$data['captcha'] = '';
			if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('contact', (array)$this->config->get('config_captcha_page'))) {
				$data['captcha'] = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha'), $this->error);
			}
		
			$data = $this->load->controller('component/common', $data);

			foreach ($this->posts as $post_var => $post_default_value){
				$data[$post_var] = $post_default_value;
				$data['error_' . $post_var] = '';

				// Label Value
				$data['entry_' . $post_var] = $this->language->get('entry_' . $post_var);

				// Post Value
				if( isset($this->request->post[$post_var]) ) {
					$data[$post_var] = $this->request->post[$post_var];
				}

				// Error Value
				if( isset($this->error[$post_var]) ) {
					$data['error_' . $post_var] = $this->error[$post_var];
				}
			}
			//debug($this->error);
			$data['error_upload'] = '';
			$this->response->setOutput($this->load->view('information/contact', $data));
		}

		protected function validate() {
			if (isset($this->request->post['contact_form'])) {
				if ((utf8_strlen($this->request->post['company']) < 4) || (utf8_strlen($this->request->post['company']) > 32)) {
					$this->error['company'] = $this->language->get('error_company');
				}
				if ((utf8_strlen($this->request->post['companydesc']) < 8) || (utf8_strlen($this->request->post['companydesc']) > 32)) {
					$this->error['companydesc'] = $this->language->get('error_companydesc');
				}

				if ((utf8_strlen($this->request->post['name']) < 4) || (utf8_strlen($this->request->post['name']) > 32)) {
					$this->error['name'] = $this->language->get('error_name');
				}

				if ((utf8_strlen($this->request->post['lastname']) < 1) || (utf8_strlen($this->request->post['lastname']) > 32)) {
					$this->error['lastname'] = $this->language->get('error_lastname');
				}

				// if ((utf8_strlen($this->request->post['website']) < 8) || (utf8_strlen($this->request->post['website']) > 64)) {
				// 	$this->error['website'] = $this->language->get('error_website');
				// }
				
				if ((int)$this->request->post['telephone'] < 6) {
					$this->error['telephone'] = $this->language->get('error_telephone');
				}
				
				if (!filter_var($this->request->post['email'], FILTER_VALIDATE_EMAIL)) {
					$this->error['email'] = $this->language->get('error_email');
				}
				
				// if (utf8_strlen($this->request->post['avail']) < 1) {
				// 	$this->error['avail'] = $this->language->get('error_avail');
				// }
				
				// Captcha
				if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('contact', (array)$this->config->get('config_captcha_page'))) {
					$captcha = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha') . '/validate');
					
					if ($captcha) {
						$this->error['captcha'] = $captcha;
					}
				}
			}
			if (isset($this->request->post['contact_form2'])) {
				if ((utf8_strlen($this->request->post['name2']) < 4) || (utf8_strlen($this->request->post['name2']) > 32)) {
					$this->error['name2'] = $this->language->get('error_name2');
				}

				if ((utf8_strlen($this->request->post['subject2']) < 4) || (utf8_strlen($this->request->post['subject2']) > 32)) {
					$this->error['subject2'] = $this->language->get('error_subject2');
				}

				if ((utf8_strlen($this->request->post['enquiry']) < 4) || (utf8_strlen($this->request->post['enquiry']) > 2048)) {
					$this->error['enquiry'] = $this->language->get('error_enquiry');
				}

				if ((int)$this->request->post['telephone2'] < 6) {
					$this->error['telephone2'] = $this->language->get('error_telephone2');
				}
				
				if (!filter_var($this->request->post['email2'], FILTER_VALIDATE_EMAIL)) {
					$this->error['email2'] = $this->language->get('error_email2');
				}

				// Captcha
				if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('contact', (array)$this->config->get('config_captcha_page'))) {
					$captcha2 = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha') . '/validate');
					
					if ($captcha2) {
						$this->error['captcha'] = $captcha2;
					}
				}
			}
			
			return !$this->error;
		}
		
		private function gmap($map = '', $address = '', $store = ''){ 
			$details = array();
			
			if($map && $address){
				
				$cached_map = $this->cache->get($map);
				
				if(!$cached_map){
				
					$find = array(
						"\n",
						"\r",
						"\r\n",
						"\n\r",
						" ",
					);
					
					$address = str_replace( $find, ' ', $address );
		
					$param = rawurlencode($address) . '&key=' . $this->config->get('config_google_api');
		
					$api_url = "https://maps.googleapis.com/maps/api/geocode/json?address=" . $param; 
					
					$response = dynamic($api_url);
		
					if($response && isset($response['status']) && $response['status'] == 'OK'){
						$cached_map = array(
							'lat'	=> $response['results'][0]['geometry']['location']['lat'],
							'lng'	=> $response['results'][0]['geometry']['location']['lng'],
							'store'	=> $store?$store:$this->config->get('config_name'),
							'address'=> $address,
						);
						
						$this->cache->set($map, $cached_map);
					}
					else{
						$this->log->write( $map . " - Either the url is invalid or curl / fopen is not enabled" );
					}
				}
				
				$details = $cached_map;
			}
			
			return $details;
		}
		
		public function success() {

			$facebook_pixel_event_params_FAE = array(
				'event_name' => 'Lead');
			  // stores the pixel params in the session
			  $this->request->post['facebook_pixel_event_params_FAE'] =
				addslashes(json_encode($facebook_pixel_event_params_FAE));
				
			$this->load->language('information/contact');
			
			$this->document->setTitle($this->language->get('heading_title'));
			
			$data['breadcrumbs'] = array();
			
			$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
			);
			
			$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('information/contact')
			);
			
			$data['heading_title'] = $this->language->get('heading_title');
			
			$data['text_message'] = $this->language->get('text_success');
			
			$data['button_continue'] = $this->language->get('button_continue');
			
			$data['continue'] = $this->url->link('common/home');
			
			$data = $this->load->controller('component/common', $data); 

			
			$data['pixel_tracking'] = "
			<script>
			fbq('track', 'Contact');
			</script>
			";
			
			$this->response->setOutput($this->load->view('common/success', $data));
		}
	}
