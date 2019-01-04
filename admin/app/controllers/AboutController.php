<?php

class AboutController extends Controller
{
	public function actionIndex()
	{
		$this->pageTitle = 'Về công ty';
		$this->breadcrumb = array(
			'Tại sao nên chọn Đẳng cấp Mộc' => ''
			);
        $about = new AboutAR();
        $model = $about->findByPk(1);
        if(!$model)
			return ;
		if (app()->request->getPost('AboutAR'))
		{
			$data = request()->getPost('AboutAR');
			$model->attributes = $data;
			if($model->validate())
			{
				if($model->save())
					user()->setFlash('messages', 'Edit successful!!');
			}
		}
		$this->render('index', compact('model'));
	}
}