<?php
class ControllerModuleFeTlb extends Controller {
	public function index() {
			$this->language->load('module/fe_tlb');
			
                        
			$data['style'] = $this->config->get('fe_tlb_style');
			$data['status'] = $this->config->get('fe_tlb_status');
			$data['links'] = $this->config->get('fe_tlb_clink');
			$data['fun_msg'] = $this->config->get('fe_tlb_fun');
			$data['mobile'] = $this->config->get('fe_tlb_mobile');
			if(isset($this->request->get['product_id'])) $data['prod_id'] = $this->request->get['product_id'];
			if (isset ($this->request->get['path'])) {
			    $path = $this->request->get['path'];
			    $cats = explode('_', $path);
			    $data['cat_id'] = $cats[count($cats) - 1];
			}
			if(isset($this->request->get['information_id'])) $data['info_id'] = $this->request->get['information_id'];



			$data['url'] = '/admin/index.php?route=';
			$data['token'] = 'Empty'; if(!empty($this->session->data['token'])) $data['token'] = $this->session->data['token'];
			$data['is_product_page'] = 0;
			$data['is_cat_page'] = 0;
			$data['is_info_page'] = 0;
			if (isset($this->request->get['route']) && ($this->request->get['route'] == 'product/product')) $data['is_product_page'] = 1;
			if (isset($this->request->get['route']) && ($this->request->get['route'] == 'product/category')) $data['is_cat_page'] = 1;
			if (isset($this->request->get['route']) && ($this->request->get['route'] == 'information/information')) $data['is_info_page'] = 1;
                        $data['edit'] = $this->language->get('text_edit');
                        $data['logout'] = $this->language->get('text_logout');
                        $data['having_fun'] = $this->language->get('text_fun');
                        $data['enjoy'] = $this->language->get('text_enjoy');
                        $data['edit_settings'] = $this->language->get('edit_settings');
                        $data['love_oc'] = $this->language->get('love_oc');
                        $data['hello_admin'] = $this->language->get('hello_admin');
                        $data['dashboard'] = $this->language->get('text_dashboard');
                        $data['category'] = array(
                         	'text' => $this->language->get('text_category'),
                         	'value' => 'category'                      
                        );
                        $data['information'] = array(
                        	'text' => $this->language->get('text_information'),
                         	'value' => 'information'                      
                        );
                        $data['currency'] = array(
                         	'text' => $this->language->get('text_currency'),
                         	'value' => 'currency'                      
                        );
                        $data['customer'] = array(
                         	'text' => $this->language->get('text_customer'),
                         	'value' => 'customer'                      
                        );
                        $data['extension'] = array(
                         	'text' => $this->language->get('text_module'),
                         	'value' => 'module'                      
                        );
                        $data['product'] = array(
                         	'text' => $this->language->get('text_product'),
                         	'value' => 'product'                      
                        );
                        $data['language'] = array(
                         	'text' => $this->language->get('text_language'),
                         	'value' => 'language'                      
                        );
                        $data['order'] = array(
                         	'text' => $this->language->get('text_report_sale_order'),
                         	'value' => 'order'                      
                        );
                        $data['setting'] = array(
                         	'text' => $this->language->get('text_setting'),
                         	'value' => 'setting'                      
                        );                            
			$this->user = new Cart\User($this->registry);
			$data['admin_logged'] = $this->user->isLogged();
						
			return $this->load->view('module/fe_tlb', $data);

		}
}