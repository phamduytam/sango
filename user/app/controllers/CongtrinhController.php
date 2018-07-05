<?php
class CongtrinhController extends Controller
{
	public function init()
	{
		$this->layout = 'standard';	
	}

	public function actionIndex()
	{
		$model = new CongTrinhAR();
		$model->status = 1;
		$content = $model->searchList(3);
		$this->breadcrumbs = array(
			'Công Trình' => ''
			);
		$this->pageTitle = 'Công Trình';
		$this->render('index', compact('content'));
	}

	public function actionDetail($id, $alias)
	{
		$model = new CongTrinhAR();
		$congtrinh = $model->findByPk($id);
		if(!$congtrinh)
			throw new CHttpException(404,'The specified post cannot be found.');

		$model->id = $id;
		$ortherList = $model->getListOrther(10);
		$this->breadcrumbs = array(
			'Công Trình' => url('cong-trinh.html'),
			$congtrinh->name => ''
			);
		$this->pageTitle = $congtrinh->name;
		$this->render('detail', compact('congtrinh', 'ortherList'));
	}
}