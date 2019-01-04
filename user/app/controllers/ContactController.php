<?php
class ContactController extends Controller
{
	public function actionIndex()
	{
		$this->breadcrumbs = array(
			'Liên hệ' => ''
			);
		$model = new ContactAR();
		if(request()->getPost('ContactAR')){
			$model->attributes = request()->getPost('ContactAR');
			$model->created = date('Y-m-d H:i:s', time());
			$model->status = 1;
			$model->subject = 'KHÁCH HÀNG LIÊN HỆ';
			if($model->validate()){
				if($model->save())
				{
					// send mail
					try {
						$content = '';
						$mail = Yii::createComponent('application.components.phpmailer.JPhpMailer');
						$mail->IsSMTP();
						$mail->Host = 'smtp.googlemail.com';
						$mail->Port = '465';
						$mail->SMTPSecure = "ssl";
						$mail->SMTPAuth = true;
						$mail->SMTPKeepAlive = true;
						$mail->Mailer = "smtp";
						$mail->CharSet = 'utf-8';
						$mail->SMTPDebug  = 0;
						$mail->Username = 'mailcenter.mocstyle.vn@gmail.com';
						$mail->Password = '';
						$mail->SetFrom($model->email, $model->name);
						$content .= '<p>Họ tên: ' . $model->name . ' </p>';
						$content .= '<p>Email: '. $model->email .'</p>';
						$content .= '<p>Điện thoại: '. $model->phone.'</p>';
						$content .= '<p>Nội dung: <br></p>';
						$content .= nl2br($model->content);

						$mail->Subject = '[SEND MAIL FROM WEBSITE] ' . $model->subject;
						$mail->AltBody = '';
						$mail->MsgHTML($content);
						$mail->AddAddress('mocstyle.vn@gmail.com', 'MocStyle');
						// $mail->AddAddress('tuan.pham@dimac-law.com', 'Pham Quoc Tuan');
						// $mail->addCC('duong.tran@dimac-law.com', 'Duong Tran');
						$mail->Send();

					} catch (phpmailerException $e) {
						echo $e->errorMessage(); //Pretty error messages from PHPMailer
						// die;
					} catch (Exception $e) {
						echo $e->getMessage(); //Boring error messages from anything else!
						// die;
					}

					user()->setFlash('messages', 'Send successful!!');
				}
			}
		}
		$tmp_model = new StaticAR();
		$contact = $tmp_model->findByPk(1);

		$diachi = $tmp_model->findByPk(5);

		$dienthoai = $tmp_model->findByPk(6);

		$email = $tmp_model->findByPk(7);

		$this->pageTitle = 'Liên hệ với chúng tôi';
		$this->layout = 'standard';
		$this->render('index', compact('model', 'contact', 'diachi', 'dienthoai', 'email'));
	}

	public function actionView($id)
	{
		$model = ContactAR::model()->findByPk($id);
		if($model)
		{
			$model->status = 0;
			$model->save($model->status);

		}
		$this->render('view', compact('model'));
	}

	public function actionDelete($id)
	{
		$model = ContactAR::model()->findByPk($id);
		if($model->delete())
			return true;
	}

	public function actionBaogia() {
		$request = request();

		$email = $request->getPost('email', '');
		$name = $request->getPost('name', '');
		$address = $request->getPost('address', '');
		$phone = $request->getPost('phone', '');
		$id = $request->getPost('id', '');
		$alias = $request->getPost('alias', '');
		$namePro = $request->getPost('namePro', '');
		echo $email;
		echo $name;
		echo $address;
		echo $phone;
		echo $id;
		echo $alias;
		echo $namePro;
		return;
		$subject = 'TƯ VẤN - BÁO GIÁ SÀN GỖ';
		try {
			$content = '';
			$mail = Yii::createComponent('application.components.phpmailer.JPhpMailer');
			$mail->IsSMTP();
			$mail->Host = 'smtp.googlemail.com';
			$mail->Port = '465';
			$mail->SMTPSecure = "ssl";
			$mail->SMTPAuth = true;
			$mail->SMTPKeepAlive = true;
			$mail->Mailer = "smtp";
			$mail->CharSet = 'utf-8';
			$mail->SMTPDebug  = 0;
			$mail->Username = 'mailcenter.mocstyle.vn@gmail.com';
			$mail->Password = '';
			$mail->SetFrom($email, $name);
			$content .= '<p>Họ tên: ' . $name . ' </p>';
			$content .= '<p>Email: '. $email .'</p>';
			$content .= '<p>Điện thoại: '. $phone.'</p>';
			$content .= '<p>Địa chỉ: '. $address.' <br></p>';
			$content .= nl2br($content);

			$mail->Subject = '[SEND MAIL FROM WEBSITE] ' . $subject;
			$mail->AltBody = '';
			$mail->MsgHTML($content);
			$mail->AddAddress('mocstyle.vn@gmail.com', 'MocStyle');
			// $mail->AddAddress('tuan.pham@dimac-law.com', 'Pham Quoc Tuan');
			// $mail->addCC('duong.tran@dimac-law.com', 'Duong Tran');
			$mail->Send();

		} catch (phpmailerException $e) {
			echo $e->errorMessage(); //Pretty error messages from PHPMailer
			// die;
		} catch (Exception $e) {
			echo $e->getMessage(); //Boring error messages from anything else!
			// die;
		}
	}
}