<?php
class ProductController extends Controller
{
	public function actionIndex()
	{
		$this->pageTitle = 'Sản phẩm';
		$this->breadcrumb = array(
			'Sản phẩm' => ''
			);
		$word = request()->getQuery('word', '');
		$cat_id = request()->getQuery('cat_id', '');
		$product = new ProductAR("searchListProduct");
		if($word) $product->word = $word;
		if($cat_id) $product->cat_id = $cat_id;
		// danh muc 1
		$model_cate = new Category1AR();
		$category = $model_cate->getSub1();
		$content = $product->searchListProduct();
		$this->render('index', compact('content', 'word', 'category', 'cat_id'));
	}

	public function actionAdd()
	{
		$this->pageTitle = 'Sản phẩm';
		$this->breadcrumb = array(
			'Sản phẩm'	=> app()->baseUrl.'/product',
			'Add'		=> ''
			);

		$model = new ProductAR();
		if (app()->request->getPost('ProductAR'))
		{
			// POSTデータの取得
			$data = request()->getPost('ProductAR');
			$model->attributes = $data;
			if(isset($_POST['tagList']))
				$model->tag_id = implode(',', $_POST['tagList']);
			// var_dump(CUploadedFile::getInstancesByName('image'));die();
			$model->alias = convert($data['name']);
			$model->created = date('Y-m-d H:i:s', time());

			if($model->validate())
			{
				$imageUploadFile = CUploadedFile::getInstancesByName('image');
				// if($imageUploadFile !== null){ // only do if file is really uploaded
				// 	$imageFileName = time().$imageUploadFile->name;
				// 	$model->image = $imageFileName;
				// }

				if($imageUploadFile !== null) // validate to save file
				{
					$imgNameList = [];
					foreach($imageUploadFile as $img) {
						$imageFileName = time().$img->name;
						array_push($imgNameList, $imageFileName);
						$pathImage = dirname(dirname(app()->basePath)) . app()->params['imagePath'].$imageFileName;
						$pathThumbImage = dirname(dirname(app()->basePath)) . app()->params['imagePath'].'thumbs/'.$imageFileName;

						$img->saveAs($pathImage);
						// resize
						$this->resizeImage($pathImage);
						$this->createThumbs($pathImage, $pathThumbImage);
					}
					$model->image = json_encode($imgNameList);
				}

				if($model->save()) {
					$this->redirect(url('/product/add'));
					user()->setFlash('messages', 'Add successful!!');
				}

			}
		}

		// danh muc 1
		$model_cate = new Category1AR();
		$category = $model_cate->getSub1();

		// danh muc 2
		$category1 = $model_cate->getSub2();

		// thuong hieu
		$model_thuonghieu = new ThuonghieuAR();
		$thuonghieu = $model_thuonghieu->findAllListCategory();

		// tag list
		$model_tag = new TagAR();
		$tags = $model_tag->findAllListTag();

		$this->render('add', compact('model', 'thuonghieu', 'category', 'category1', 'tags'));
	}

	public function actionEdit($id)
	{
		$this->pageTitle = 'Sản phẩm';
		$this->breadcrumb = array(
			'Sản phẩm'	=> app()->baseUrl.'/product',
			'Edit'		=> ''
			);
		$product = new ProductAR();
		$model = $product->findByPk($id);
		if(!$model)
			return ;
		$model_tag = new TagAR();
		$tags = $model_tag->findAllListTag();

		$tags_checked = explode(',', $model->tag_id);

		if (app()->request->getPost('ProductAR'))
		{
			$data = request()->getPost('ProductAR');
			$model->attributes = $data;
			$model->alias = convert($data['name']);
			if(isset($_POST['tagList']))
				$model->tag_id = implode(',', $_POST['tagList']);
			else
				$model->tag_id = '';
			$model->created = date('Y-m-d H:i:s', time());
			$imageUploadFile = CUploadedFile::getInstancesByName('image');
			if($imageUploadFile == null){
				$model->image = $_POST['hd_img'];
			}
			if($model->validate())
			{
				if($imageUploadFile !== null) // validate to save file
				{
					$image_old = $model->image;
					$imgNameList = [];
					foreach($imageUploadFile as $img) {
						$imageFileName = time().$img->name;
						array_push($imgNameList, $imageFileName);
						$pathImage = dirname(dirname(app()->basePath)) . app()->params['imagePath'].$imageFileName;
						$pathThumbImage = dirname(dirname(app()->basePath)) . app()->params['imagePath'].'thumbs/'.$imageFileName;
						$ret = $img->saveAs($pathImage);
						//resize
						$this->resizeImage($pathImage);
						$this->createThumbs($pathImage, $pathThumbImage);
					}
					if (count($imgNameList) > 0) {
						$model->image = json_encode($imgNameList);
						if($ret) {
							$images = json_decode($image_old);
							foreach($images as $img) {
								deleteImage(dirname(dirname(app()->basePath)) . app()->params['imagePath'], $img);
							}
						}
					}
				}

				if($model->save())
				{
					user()->setFlash('messages', 'Edit successful!!');
					$this->redirect(url('/product/edit/'.$id));
				}
			}
		}

		// danh muc 1
		$model_cate = new Category1AR();
		$category = $model_cate->getSub1();

		// danh muc 2
		$category1 = $model_cate->getSub2();

		// thuong hieu
		$model_thuonghieu = new ThuonghieuAR();
		$thuonghieu = $model_thuonghieu->findAllListCategory();

		$this->render('edit', compact('model', 'thuonghieu', 'category', 'category1', 'tags', 'tags_checked'));
	}
	public function actionDelete($id)
	{
		$model = ProductAR::model()->findByPk($id);
		if($model->delete())
			deleteImage(dirname(dirname(app()->basePath)) . app()->params['imagePath'], $model->image);
	}

	private function resizeImage($pathImage){
		if(is_file($pathImage)){
			$w = 480; $h = 480;
			// *** 1) Initialise / load image
			$resizeObj = new resize($pathImage);

			// *** 2) Resize image (options: exact, portrait, landscape, auto, crop)
			$resizeObj -> resizeImage($w, $h, 'auto');

			// *** 3) Save image
			$resizeObj -> saveImage($pathImage, 100);
		}
	}

	private function createThumb($pathImage) {
		// if(is_file($pathImage)){
			echo "createThumb";
			$w = 160; $h = 160;
			// *** 1) Initialise / load image
			$resizeObj = new resize($pathImage);

			// *** 2) Resize image (options: exact, portrait, landscape, auto, crop)
			$resizeObj -> resizeImage($w, $h, 'auto');

			// *** 3) Save image
			$resizeObj -> saveImage($pathImage, 100);
		// }
	}

	private function createThumbs($pathImage, $thumbPath){
		// *** 1) Initialise / load image
		$resizeObj = new Resize($pathImage);

		// *** 2) Resize image (options: exact, portrait, landscape, auto, crop)
		$resizeObj -> resizeImage(160, 160, 'auto');

		// *** 3) Save image
		$resizeObj -> saveImage($thumbPath, 100);
	}
}