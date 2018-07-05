<!--<section class="main-contact">
	<div class="container">
		<div class="title-page-contact">
			<h1>Thông tin liên hệ</h1>
			<p>CÔNG TY TRÁCH NHIỆM HỮU HẠN ĐỨC TÂM</p>
		</div>
		<div class="content-page-contact">
			<ul>
				<li><i class="fa fa-map-marker" aria-hidden="true"></i><span>Địa chỉ: <?php echo html_entity_decode(strip_tags($diachi->content), ENT_QUOTES, 'UTF-8')?></span></li>
				<li><i class="fa fa-phone" aria-hidden="true"></i><span>Điện thoại: <?php echo html_entity_decode(strip_tags($dienthoai->content), ENT_QUOTES, 'UTF-8')?></span></li>
				<li><i class="fa fa-envelope" aria-hidden="true"></i><span>Email: <a href="mailto:<?php echo html_entity_decode(strip_tags($email->content), ENT_QUOTES, 'UTF-8')?>" style="color:#dc3333;"><?php echo html_entity_decode(strip_tags($email->content), ENT_QUOTES, 'UTF-8')?></a></span></li>
				<li><i class="fa fa-home" aria-hidden="true"></i><span>Website: maylocnuocsach.vn</span></li>
			</ul>
		</div>
		
		<div class="title-page-contact">
			<h1>Chỉ đường</h1>
		</div>
		<div class="box-maps">
			<div class="iFrameMap">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.6010480223504!2d106.7344042139013!3d10.841811860950184!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317527c55faf16bd%3A0xc4396ff6de0ecf49!2zNTkgxJDGsOG7nW5nIDM4LCBIaeG7h3AgQsOsbmggQ2jDoW5oLCBUaOG7pyDEkOG7qWMsIEjhu5MgQ2jDrSBNaW5oLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1494054477439" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
		</div>
		
	</div>
</section>-->
<section class="contact">
	<div class="">
		<div class="row">
			<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 form-style">
			<?php
					$form = $this->beginWidget('TbActiveForm', array(
						'action'=>sslUrl('contact'),
						'id' => 'form',
						'htmlOptions'=>array('enctype' => 'multipart/form-data')
					));
				?>
					<?php
						if (user()->hasFlash('messages'))
						{
							$messages = user()->getFlash('messages');
							echo '<div id="formstatus"><div class="alert alert-success"><i class="fa fa-check-circle-o"></i>	'. hsp($messages). '</div></div>';
						}
					?>
					<input name="FormType" type="hidden" value="contact">
					<input name="utf8" type="hidden" value="true">
					<label>Họ và tên:
						<span>*</span>
					</label>
					<?php echo $form->textField($model,'name', array('placeholder' => '', 'class' => 'form-text')); ?>
					<?php echo $form->error($model,'name'); ?>
					<!-- <input type="text" value="" name="contact[Name]" class="form-text"> -->
					<label>Email:
						<span>*</span>
					</label>
					<?php echo $form->textField($model,'email', array('placeholder' => '', 'class' => 'form-text')); ?>
					<?php echo $form->error($model,'email'); ?>
					<!-- <input type="text" value="" class="form-text" name="contact[email]"> -->
					<label>Số điện thoại:
						<span>*</span>
					</label>
					<?php echo $form->textField($model,'phone', array('placeholder' => '', 'class' => 'form-text')); ?>
					<?php echo $form->error($model,'phone'); ?>
					<label>Nội dung:
						<span>*</span>
					</label>
					<?php echo $form->textArea($model,'content', array('placeholder' => '', 'class' => 'form-textarea', 'rows' => 10)); ?>
					<?php echo $form->error($model,'content'); ?>
					<!-- <textarea name="contact[Body]" class="form-textarea" rows="10"></textarea> -->
					<button type="submit" class="form-button">Gửi liên hệ</button>
				<?php
					$this->endWidget();
				?>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 footer-about form-style">
				<?php $logo = $this->getLogo()?>
				<?php
                            if ($logo)
                                $img = 'uploads/' . $logo->image;
                            else
                                $img = 'assets/logo.png';
						?>
					<img src="<?php echo app()->baseUrl;?>/<?php echo $img?>" alt="Mộc Style">
					<?php $contact = $this->getContact(); ?>
					<ul>

						<li>
							<i class="fa fa-map-marker"></i>
							<p><?php echo $contact['address']?></p>
						</li>


						<li>
							<i class="fa fa-phone"></i>
							<p><?php echo $contact['mobile']?></p>
						</li>


						<li>
							<i class="fa fa-fax"></i>
							<p><?php echo $contact['phone']?></p>
						</li>


						<li>
							<i class="fa fa-envelope"></i>
							<a href="mailto:<?php echo $contact['email']?>">
								<?php echo $contact['email']?>
							</a>
						</li>

					</ul>
			</div>
		</div>
		<section style="margin-top: 10px;">
				<div class="box-maps">
					<div class="google-map">
						<div id="contact_map" class="map" style="position: relative; overflow: hidden;">
								<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.110810676276!2d106.63616531418275!3d10.80282436166133!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529507b59a94f%3A0xad096fcd84244b84!2zMzgzIEPhu5luZyBIw7JhLCBwaMaw4budbmcgMTMsIFTDom4gQsOsbmgsIEjhu5MgQ2jDrSBNaW5oLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1524305096064" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
						</div>
					</div>
				</div>
			</section>
	</div>
</section>