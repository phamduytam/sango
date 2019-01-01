<?php

class ThuonghieuController extends Controller
{
	public function actionIndex()
	{
		$model = new ThuonghieuAR();
		$word = request()->getQuery('word', '');
		if($word) $model->word = $word;
		$content = $model->searchListCategory();
		$this->render('index', compact('content', 'word'));
	}

	public function actionAdd()
	{
		$model = new ThuonghieuAR();
		if (app()->request->getPost('ThuonghieuAR'))
		{
			// POSTデータの取得
			$data = request()->getPost('ThuonghieuAR');
			$model->attributes = $data;
			$model->alias = convert($data['name']);
			$model->created = date('Y-m-d H:i:s', time());

			if($model->validate())
			{
				if($model->save()){
					user()->setFlash('messages', 'Add successful!!');
				}
			}
		}
		$this->render('add', compact('model'));
	}

	public function actionEdit($id)
	{
		$category = new ThuonghieuAR();
		$model = $category->findByPk($id);
		if(!$model)
			return ;
		if (app()->request->getPost('ThuonghieuAR'))
		{
			$data = request()->getPost('ThuonghieuAR');
			$model->attributes = $data;
			$model->alias = convert($data['name']);
			$model->created = date('Y-m-d H:i:s', time());
			if($model->validate())
			{
				if($model->save())
					user()->setFlash('messages', 'Edit successful!!');
			}
		}
		$this->render('edit', compact('model'));
	}
	public function actionDelete($id)
	{
		$model = ThuonghieuAR::model()->findByPk($id);
		if($model->delete())
			return true;
	}
}