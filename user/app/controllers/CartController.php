<?php
class CartController extends Controller
{
	public function actionIndex()
	{
		$this->layout = 'main';
		$this->breadcrumbs = array(
			'Giỏ hàng' => ''
			);
		$this->pageTitle = 'Giỏ hàng';
		$title = $this->pageTitle;
		$this->render('index', compact('content', 'title'));
	}

	public function actionCheckout() {
		$this->layout = 'standard';
		$this->breadcrumbs = array(
			'Giỏ hàng' => ''
			);
		$this->pageTitle = 'Giỏ hàng';
		$title = $this->pageTitle;
		$this->render('checkout', compact('content', 'title'));
	}
}