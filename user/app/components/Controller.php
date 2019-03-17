<?php
/**
 * Controller is the customized base controller class.
 * All controller classes for this application should extend from this base class.
 */
class Controller extends CController
{
	/**
	 * @var string the default layout for the controller view. Defaults to '//layouts/column1',
	 * meaning using a single column layout. See 'protected/views/layouts/column1.php'.
	 */
	public $layout='//layouts/main';
	/**
	 * @var array context menu items. This property will be assigned to {@link CMenu::items}.
	 */
	public $menu=array();
	/**
	 * @var array the breadcrumbs of the current page. The value of this property will
	 * be assigned to {@link CBreadcrumbs::links}. Please refer to {@link CBreadcrumbs::links}
	 * for more details on how to specify this property.
	 */
	public $breadcrumbs=array();

	public $public_controllers = array('login');

	public $sslAction = array();



	public $description = '';
	public $keyword = '';
	public $fbImage = '';


	public function init()
	{

	}

	protected function beforeAction($action)
	{
		if(Yii::app()->errorHandler->error['code'] == 404)
			$this->redirect("http://".$_SERVER['SERVER_NAME']);
		if(defined('USE_SSL') && USE_SSL === true && !isSSL() ){
			if(in_array($this->action->id , $this->sslAction)){
				$next = sslUrl("{$this->id}/{$this->action->id}" , $_GET);
				$this->redirect($next);
			}
		}

		return true;
	}

	protected function error($Cmessage = 'System Error' , $code = 500){
		return $this->render('//site/error' , compact('Cmessage' , 'code'));
	}

	public function getLogo()
	{
		$model = new AdvertiseAR();
		$model->cat_id = 1;
		$model->status = 1;
		$logo = $model->getLogo();
		if($logo)
			return $logo;
		return false;
	}

	public function getBanner() {
		$model = new AdvertiseAR('getBanner');
		$model->status = 1;
		$model->cat_id = 2;
		$advertise = $model->getBanner();
		return $advertise;
	}

	public function getBannerByCatId($cat_id, $num = '') {
		$model = new AdvertiseAR('getBanner');
		$model->status = 1;
		$model->cat_id = $cat_id;
		if ($num != '')
			$advertise = $model->getSlide();
		else
			$advertise = $model->getBanner();
		return $advertise;
	}

	public function getSlide() {
		$model = new AdvertiseAR('getBanner');
		$model->status = 1;
		$model->cat_id = 2;
		$advertise = $model->getSlide();
		return $advertise;
	}

	// public function getThuonghieu() {
	// 	$model = new AdvertiseAR();
	// 	$model->status = 1;
	// 	$model->cat_id = 7;
	// 	$advertise = $model->getSlide();
	// 	return $advertise;
	// }

	public function getDescription()
	{
		if(strlen($this->description))
			return strip_tags($this->description);
		else{
			$model = StaticAR::model()->findByPk(2);
			$title = $this->id == 'site'? 'Sàn gỗ Đẳng Cấp Mộc' : $this->pageTitle;
			$description = $title.". ". $model->content;
			return html_entity_decode(strip_tags($description), ENT_QUOTES, 'UTF-8');
		}
	}

	public function getKeyWord()
	{

		if(strlen($this->keyword))
			return strip_tags($this->keyword);
		else{
			$keyword = StaticAR::model()->findByPk(3);
			return html_entity_decode(strip_tags($keyword->content), ENT_QUOTES, 'UTF-8');
		}
	}

	public function getTuvan()
	{

		$tuvan = StaticAR::model()->findByPk(17);
		if ($tuvan)
			return html_entity_decode(($tuvan->content), ENT_QUOTES, 'UTF-8');

		return false;
	}

	public function getHotline()
	{

		$tuvan = StaticAR::model()->findByPk(18);
		if ($tuvan)
			return html_entity_decode(strip_tags($tuvan->content), ENT_QUOTES, 'UTF-8');

		return false;
	}

	public function getTitle()
	{
		$title = 'Sàn gỗ Đẳng Cấp Mộc';
		if($this->id == 'site')
			return 'Sàn gỗ Đẳng Cấp Mộc';
		if(strlen($this->pageTitle) && $this->id != 'site')
			return $this->pageTitle . ' - ' . $title;
		else{
			return $title;
		}
	}

	public function getImage()
	{

		if(strlen($this->fbImage))
			return 'http://banghepallet.vn/uploads/'.$this->fbImage;
		else{
			return 'http://banghepallet.vn/img/ban-ghe-pallet.jpg';
		}
	}

	public function getCategory() {
		$model = new Category1AR();
		$model->parent_id = 0;
		$category = $model->getCategory();
		return $category;
	}

	public function getCategory1($parent_id) {
		$model = new Category1AR();
		$model->parent_id = $parent_id;
		$category = $model->getCategory();
		if($category)
			return $category;
		return false;
	}

	/**
	 * Bai viet SEO
	 */
	public function getTintuc() {
		$model = new StaticAR();
		$tintuc = $model->getList();
		if($tintuc)
			return $tintuc;
		return false;
	}

	public function getKhachhang() {
		$model = new KhachHangAR();
		$khachhang = $model->getList(5);
		if($khachhang)
			return $khachhang;
		return false;
	}

	public function getContact() {
		$model = new StaticAR();

		$address = $model->findByPk(5);

		$phone = $model->findByPk(6);

		$mobile = $model->findByPk(26);

		$email = $model->findByPk(7);

		if ($address && $phone && $email)
			return array(
				'address' => html_entity_decode(strip_tags($address->content), ENT_QUOTES, 'UTF-8'),
				'phone' => html_entity_decode(strip_tags($phone->content), ENT_QUOTES, 'UTF-8'),
				'mobile' => html_entity_decode(strip_tags($mobile->content), ENT_QUOTES, 'UTF-8'),
				'email' => html_entity_decode(strip_tags($email->content), ENT_QUOTES, 'UTF-8')
				);
		return false;
	}

	public function getSocial() {
		$model = new StaticAR();
		$google = $model->findByPk(8);

		$facebook = $model->findByPk(9);

		$youtube = $model->findByPk(10);

		if ($google && $facebook && $youtube)
			return array(
				'google' => html_entity_decode(strip_tags($google->content), ENT_QUOTES, 'UTF-8'),
				'facebook' => html_entity_decode(strip_tags($facebook->content), ENT_QUOTES, 'UTF-8'),
				'youtube' => html_entity_decode(strip_tags($youtube->content), ENT_QUOTES, 'UTF-8')
				);
		return false;

	}

	public function getProduct() {
		$model = new ProductAR();
		$product = $model->getList(10);
		if($product)
			return $product;
		return false;
	}

	public function getMenu() {
		$html = '';
		$model = new Menu2AR();
		$menu = $model->findAllList();
		if(count($menu) == 0)
			return $html;
		//$menu1 = getACol($menu, 'menu1');
		//$html.= '<li><a href="#">'.$menu1['name'].'</a>';
		//$html.= '<ul id="menu-custom">';
		foreach ($menu as $v){
			$html.= '<li><a href="'.$v['link'].'">'.$v['name'].'</a></li>';
		}
		//$html.= '</ul>';
		//$html.= '</li>';
		return $html;
	}

	public function getTag()
	{
		// tag detail right
		$model_tag = new TagAR();
		$model_tag->selected = true;
		$tag_right = $model_tag->findAllListTag();
		return $tag_right;
	}

	public function getStaticList($limit = '', $offset = '')
	{
		// tag detail right
		$model = new StaticAR();
		$model->selected = true;
		$model->status = true;
		$static = $model->getList($limit, $offset);
		return $static;
	}

	public function getProductByCatId($cat_id, $limit = 6) {
		$model = new ProductAR();
		$model->cat_id = $cat_id;
		$product = $model->getList($limit);
		if($product)
			return $product;
		return false;
	}

	public function getCongTrinhByCatId($cat_id, $limit = 6) {
		$model = new CongTrinhAR();
		$model->cat_id = $cat_id;
		$congtrinh = $model->getList($limit);
		if($congtrinh)
			return $congtrinh;
		return false;
	}

	public function getProductByCatIdLast($cat_id) {
		$model = new ProductAR();
		$model->cat_id = $cat_id;
		$product = $model->getList(4, 6);
		if($product)
			return $product;
		return false;
	}

	public function getBanchayList($limit = 12) {
		//product index new
		$model = new ProductAR();
		// banchay
		$product = $model->getBanchayList($limit);

		if($product)
			return $product;
		return false;
	}

	public function getImageSP($imgStr) {
		$images = json_decode($imgStr);
		if (count($images) > 0)
			return $images[0];
		return '';
	}

	public function cutString($str, $length = 63) {
		if (strlen($str) > $length)
			return substr($str, 0, $length) . '...';

		return $str;
	}

	public function getThuonghieu() {
		$model = new ThuonghieuAR();
		$thuonghieu = $model->findAllListCategory();
		return $thuonghieu;
	}

	public function isMobile() {
		$useragent=$_SERVER['HTTP_USER_AGENT'];

											if(preg_match('/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i',$useragent)||preg_match('/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i',substr($useragent,0,4)))
			return true;
		return false;
	}
}