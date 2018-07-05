<?php

class SiteController extends Controller
{


	/**
	 * index
	 */
	public function actionIndex()
	{
		//get image slider
		$model = new AdvertiseAR('getBanner');
		$model->status = 1;
		$model->cat_id = 2;
		$advertise = $model->getBanner();

		//product index new
		$model = new ProductAR();
		$new = $model->getNewList(4);

		// banchay
		$banchay = $model->getBanchayList(8);

		// noibat
		$noibat = $model->getNoibatList(4);

		// colection
		
		$model = new Category1AR();
		$model->hot = true;
		$category = $model->getCategory(2);

		//title

		$tmp_model = new StaticAR();
		$title = $tmp_model->findByPk(6);

		$model = new TintucAR();
		$model->noibat = true;
		$tintuc = $model->getList(5);

		$this->layout = 'main';

		$this->render('index', compact('advertise', 'new', 'banchay', 'noibat', 'category', 'title', 'tintuc'));
	}

	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);

			//favicon.icoへのリクエストはログに記録しない
			if(Yii::app()->request->getPathInfo() === 'favicon.ico')
			{
				Yii::app()->log->setRoutes(array(array(),));
			}
		}
	}

}