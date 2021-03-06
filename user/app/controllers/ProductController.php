<?php
class ProductController extends Controller
{
	public function actionIndex()
	{
		$product = new ProductAR("searchListProduct");
		$product->status = 1;
		$content = $product->searchListProduct(15);
		$this->layout = 'standard';
		$this->breadcrumbs = array(
			'Sản phẩm' => ''
			);
		$this->pageTitle = 'Sản phẩm';
		$title = $this->pageTitle;
		$this->render('index', compact('content', 'title'));
	}

	public function actionDetail($id, $alias)
	{
		$this->layout = 'standard';
		$model = new ProductAR();
		$product = $model->findByPk($id);
		if(!$product)
			throw new CHttpException(404,'The specified post cannot be found.');

		// san pham lien quan
		$model->id = $id;
		$model->cat_id = $product->cat_id;
		$lienquan = $model->getListOrther(8);

		$this->breadcrumbs = array(
			'Sản phẩm' => url('san-pham.html'),
			$product->name => ''
			);
		$this->pageTitle = $product->name;
		$this->description = $product->description;
		$this->fbImage = $product->image;

		// tag detail bottom
		$model_tag = new TagAR();
		if($product->tag_id != "")
			$model_tag->tagList = $product->tag_id;
		else
			$model_tag->tagList = "all";
		$tag_pro = $model_tag->findAllListTag();

		$static = new StaticAR();
		$baohanh = $static->findByPk(23);

		$congtrinh = $this->getCongTrinhByCatId($product->cat_id, 6);

		$this->render('detail', compact('product', 'lienquan', 'tag_pro', 'baohanh', 'congtrinh'));
	}

	public function actionCategory($alias, $alias1 = '') {
		$model = new Category1AR();
		$alias = str_replace('.html', '', $alias);
		$category = $model->findByAttributes(array('alias' => $alias));
		if (!$category) {
			$this->error('<div class="col-md-6">Page not found</div>', '404');
			return ;
		}
		$category1 = '';
		if($alias1) {
			$alias1 = str_replace('.html', '', $alias1);
			$category1 = $model->findByAttributes(array('alias' => $alias1));
			if (!$category1) {
				$this->error('<div class="col-md-6">Page not found</div>', '404');
				return ;
			}
		}
		$product = new ProductAR("searchListProduct");

		$product->status = 1;
		$product->cat_id = $category->id;
		if ($category1) {
			$product->cat1_id = $category1->id;
			$this->pageTitle = $category1->title;
			$this->keyword = $category1->keyword;
			$this->description = $category1->description;
			$title = $category1->name;
		}
		else
		{
			$this->pageTitle = $category->title;
			$this->keyword = $category->keyword;
			$this->description = $category->description;
			$title = $category->name;
		}
		$content = $product->searchListProduct(16);
		$this->layout = 'standard';
		$this->breadcrumbs = array(
			'Sản phẩm' => url('san-pham.html'),
			$category->name => $category1 ? url('san-pham/'.$category->alias.'.html') : '',
			$category1 ? $category1->name : '' => ''
			);

		$this->render('index', compact('content', 'title'));
	}

	public function actionSearch()
	{
		$this->layout = 'standard';
		$keyword = request()->getQuery('keyword', '');
		if($keyword == '')
		{
			$this->error('<div class="col-md-6">Không tìm thấy sản phẩm</div>', '404');
			return ;
		}
		$product = new ProductAR("searchListProduct");

		$product->status = 1;
		$product->word = $keyword;
		$content = $product->searchListProduct(16);
		//$this->layout = 'standard';
		$this->breadcrumbs = array(
			'Sản phẩm' => url('san-pham.html'),
			'Tìm kiếm' => '',
			);
		$this->pageTitle = 'Sản phẩm';
		$title = $this->pageTitle;
		$this->render('index', compact('content', 'title'));
	}

	public function actionAjaxPro() {
		$cat_id = request()->getQuery('cat_id', '');
		$thuonghieu_id = request()->getQuery('thuonghieu_id', '');
		$model = new ProductAR();
		$model->status = 1;
		if (strlen($cat_id) > 0) {
			$model->cat_id = $cat_id;
		}
		if (strlen($thuonghieu_id) > 0) {
			$model->thuonghieu_id = $thuonghieu_id;
		}

		$product = $model->getAll();
		$html = '';
		if($product) {
			$html .= '<option value="">-- Chọn sàn gỗ</option>';
			foreach ($product as $value) {
				$html.= '<option value="'.$value->price.'" data-id="'.$value->id.'" data-alias="'.$value->alias.'" data-name="'.$value->name.'">'.$value->name.'</option>';
			}
		} else {
			$html .= '<option value="">Không có sàn gỗ nào</option>';
		}
		echo $html;
	}

}