<?php
class CongtrinhController extends Controller
{
	public function actionIndex()
	{
		$this->pageTitle = 'Công Trình';
		$this->breadcrumb = array(
			'Công Trình' => ''
			);
		
		$word = request()->getQuery('word', '');
		$cat_id = request()->getQuery('cat_id', '');
		$congtrinh = new CongTrinhAR("searchList");
		if($word) $congtrinh->word = $word;
		if($cat_id) $congtrinh->cat_id = $cat_id;
		// danh muc 1
		$model_cate = new Category1AR();
		$category = $model_cate->getSub1();
		$content = $congtrinh->searchList();
		$this->render('index', compact('content', 'word', 'category', 'cat_id'));
	}

	public function actionAdd()
	{
		$this->pageTitle = 'Công Trình';
		$this->breadcrumb = array(
			'Công Trình' => app()->baseUrl.'/congtrinh',
			'Add'		=> ''	
			);

		$model = new CongTrinhAR();
		if (app()->request->getPost('CongTrinhAR'))
		{
			// POSTデータの取得
			$data = request()->getPost('CongTrinhAR');
			$model->attributes = $data;
			$model->alias = convert($data['name']);
			$model->created = date('Y-m-d H:i:s', time());

			if($model->validate())
			{
				$imageUploadFile = CUploadedFile::getInstance($model, 'image');
				if($imageUploadFile !== null){ // only do if file is really uploaded
					$imageFileName = time().$imageUploadFile->name;
					$model->image = $imageFileName;
				}
				if($model->save()){
					if($imageUploadFile !== null) // validate to save file
					{
						$pathImage = dirname(dirname(app()->basePath)) . app()->params['imagePath'].$imageFileName;
						// $pathThumbImage = dirname(dirname(app()->basePath)) . app()->params['imagePath'].'thumbs/'.$imageFileName;
						$imageUploadFile->saveAs($pathImage);
						// resize
						$this->resizeImage($pathImage);
						// $this->createThumbs($pathImage, $pathThumbImage);
					}
					user()->setFlash('messages', 'Add successful!!');
				}

			}
		}

		// danh muc 1
		$model_cate = new Category1AR();
		$category = $model_cate->getSub1();

		$this->render('add', compact('model', 'category'));
	}

	public function actionEdit($id)
	{
		$this->pageTitle = 'Công Trình';
		$this->breadcrumb = array(
			'Công Trình' => app()->baseUrl.'/congtrinh',
			'Edit'		=> ''	
			);

		$congtrinh = new CongTrinhAR();
		$model = $congtrinh->findByPk($id);
		if(!$model)
			return ;
		if (app()->request->getPost('CongTrinhAR'))
		{
			$data = request()->getPost('CongTrinhAR');
			$model->attributes = $data;
			$model->alias = convert($data['name']);
			$model->created = date('Y-m-d H:i:s', time());
			$imageUploadFile = CUploadedFile::getInstance($model, 'image');
			if($imageUploadFile == null){
				$model->image = $_POST['hd_img'];
			}
			if($model->validate())
			{
				if($imageUploadFile !== null) // validate to save file
				{
					$image_old = $model->image;
					$imageFileName = time().$imageUploadFile->name;
					$model->image = $imageFileName;
					$pathImage = dirname(dirname(app()->basePath)) . app()->params['imagePath'].$imageFileName;
					// $pathThumbImage = dirname(dirname(app()->basePath)) . app()->params['imagePath'].'thumbs/'.$imageFileName;
					$ret = $imageUploadFile->saveAs($pathImage);
					//resize
					$this->resizeImage($pathImage);
					// $this->createThumbs($pathImage, $pathThumbImage);
					if($ret)
						deleteImage(dirname(dirname(app()->basePath)) . app()->params['imagePath'], $image_old);
				}

				if($model->save())
					user()->setFlash('messages', 'Edit successful!!');
			}
		}

		// danh muc 1
		$model_cate = new Category1AR();
		$category = $model_cate->getSub1();

		$this->render('edit', compact('model', 'category'));
	}
	public function actionDelete($id)
	{
		$model = CongTrinhAR::model()->findByPk($id);
		if($model->delete())
			deleteImage(dirname(dirname(app()->basePath)) . app()->params['imagePath'], $model->image);
	}

	private function resizeImage($pathImage){
		if(is_file($pathImage)){
			$w = 850; $h = 500;
			// *** 1) Initialise / load image
			$resizeObj = new resize($pathImage);

			// *** 2) Resize image (options: exact, portrait, landscape, auto, crop)
			$resizeObj -> resizeImage($w, $h, 'exact');

			// *** 3) Save image
			$resizeObj -> saveImage($pathImage, 100);
		}
	}
}