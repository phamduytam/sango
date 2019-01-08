<?php
$this->keyword = $product->name .', '. convertKeyword($product->name);
$this->description = $product->description;
?>
<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 product-image">
				<div class="elevate-image">
					<img id="zoom" class="img-responsive" src="<?php echo app()->baseUrl; ?>/uploads/<?php echo $this->getImageSP($product->image);?>" data-zoom="<?php echo app()->baseUrl; ?>/uploads/<?php echo $this->getImageSP($product->image);?>"
						alt="<?php echo $product->name ?>">

				</div>
				<div id="gallery_01">
					<div id="owl-product">
						<?php
							$images = json_decode($product->image);
							$i = 0;
							foreach($images as $img):
						?>
						<div class="item <?php echo $i == 0 ? 'active' : '' ?>">
							<a href="javascript:void(0)" data-zoom-image="<?php echo app()->baseUrl; ?>/uploads/<?php echo $img?>" data-image="<?php echo app()->baseUrl; ?>/uploads/thumbs/<?php echo $img?>">
								<img class="zoom1" src="<?php echo app()->baseUrl; ?>/uploads/thumbs/<?php echo $img?>" alt="<?php echo $product->name ?>">
							</a>
						</div>
						<?php $i++;?>
						<?php endforeach;?>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 details-pro">
				<h1 itemprop="name" class="product-name">
					<?php echo $product->name ?>
				</h1>
				<div class="price-box">
					<?php
						if ($product->khuyenmai > 0):
					?>
					<!-- Giá gốc -->
					<span class="old-price">
						Giá:
						<del class="price product-price-old sale" itemprop="priceSpecification"><?php echo number_format($product->price) ?><?php echo Commons::DON_GIA;?></del>
					</span><br>
					<?php endif;?>
					<span class="special-price">
						<?php echo $product->khuyenmai > 0 ? 'Giá khuyến mãi: ' : 'Giá: ';?>
						<span class="price product-price" itemprop="price">
							<?php echo $product->khuyenmai > 0 ? number_format($product->khuyenmai) : number_format($product->price) ?><?php echo Commons::DON_GIA;?>
						</span>
					</span>
					
					<!-- Giá Khuyến mại -->

				</div>
				<?php if ($product->masp): ?>
					<div>Mã sản phẩm: <?php echo $product->masp; ?></div>
				<?php endif; ?>
				<?php if ($product->color): ?>
					<div>Màu: <?php echo $product->color; ?></div>
				<?php endif; ?>
				<?php if ($product->quycach): ?>
					<div>Quy cách: <?php echo $product->quycach; ?></div>
				<?php endif; ?>
				<?php if ($product->chongtray): ?>
					<div>Chống trầy: <?php echo $product->chongtray; ?></div>
				<?php endif; ?>
				<?php if ($product->xuatxu): ?>
					<div>Xuất xứ: <?php echo $product->xuatxu; ?></div>
				<?php endif; ?>
				<?php if ($product->baohanh): ?>
					<div>Bảo hành: <?php echo $product->baohanh; ?></div>
				<?php endif; ?>
				<?php if ($product->tinhtrang): ?>
					<div>Tình trạng: <span class="product-price"><?php echo $product->tinhtrang; ?></span></div>
				<?php endif; ?>
				<?php if ($product->ungdung): ?>
					<div>Ứng dụng: <?php echo $product->ungdung; ?></div>
				<?php endif; ?>
				<div class="product-description">
					<?php echo $product->description ?>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 product-tab">
		<!-- Nav tabs -->
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active">
				<a href="#product-tab1" aria-controls="product-tab1" role="tab" data-toggle="tab">Thông tin <br class="enter"> sản phẩm</a>
			</li>
			<li role="presentation">
				<a href="#product-tab2" aria-controls="product-tab2" role="tab" data-toggle="tab">Chế độ <br class="enter"> bảo hành</a>
			</li>
			<li role="presentation">
				<a href="#product-tab3" aria-controls="product-tab3" role="tab" data-toggle="tab">Công trình <br class="enter"> đã thi công</a>
			</li>
		</ul>
		<!-- Tab panes -->
		<div class="tab-content">
			<div role="tabpanel" class="tab-pane active" id="product-tab1">
				<?php echo $product->content; ?>
			</div>
			<div role="tabpanel" class="tab-pane" id="product-tab2">
				<?php if ($baohanh) {
					echo $baohanh->content;
				} 
				?>
			</div>
			<div role="tabpanel" class="tab-pane" id="product-tab3">
				<div class="row">
				<?php
					foreach ($congtrinh as $v1):
				?>
					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<div class="product-item">
							<div class="product-item-thumbnail">
								<a href="<?php echo url('cong-trinh/chi-tiet/' . $v1->id . '/' . $v1->alias)?>">
									<img class="img-responsive" src="<?php echo app()->baseUrl?>/uploads/<?php echo $v1->image?>" alt="<?php echo $v1->name?>">
								</a>
							</div>
							<h3 class="product-item-name">
								<a href="<?php echo url('cong-trinh/chi-tiet/' . $v1->id . '/' . $v1->alias)?>">
									<?php echo $this->cutString($v1->name)?>
								</a>
							</h3>
						</div>
					</div>
				<?php endforeach; ?>
				</div>
			</div>
		</div>
	</div>
	<?php if ($lienquan):?>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<div class="heading">
			<h2>Sản phẩm liên quan</h2>
			<div class="heading-button">
				<span class="button-prev" onclick="$('.owl-related').data('owlCarousel').prev();">
					<i class="fa fa-angle-left"></i>
				</span>
				<span class="button-next" onclick="$('.owl-related').data('owlCarousel').next();">
					<i class="fa fa-angle-right"></i>
				</span>
			</div>
		</div>
		<div class="owl-related">
			<div class="item">
				<div class="row">
					<?php $i = 0;?>
					<?php foreach ($lienquan as $value):?>
					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 newTpl">
						<div class="product-item">
							<div class="product-item-thumbnail">
								<a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>"><img class="img-responsive" src="<?php echo app()->baseUrl?>/uploads/<?php echo $this->getImageSP($value->image);?>" alt="<?php echo $value->name?>">
								</a>
							</div>
							<h3 class="product-item-name">
								<a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>">
									<?php echo $value->name?>
								</a>
							</h3>
							<div class="price-box">
								<?php
									if ($value->khuyenmai > 0):
								?>
								<!-- Giá Khuyến mại -->
								<span class="special-price">
									<span class="price product-price" itemprop="price">
										<?php echo $value->khuyenmai > 0 ? number_format($value->khuyenmai) : number_format($value->price) ?>
									</span>
									<meta itemprop="priceCurrency" content="VND">
								</span>
								<!-- Giá gốc -->
								<span class="old-price a_right f_right pr10">
									<del class="price product-price-old sale" itemprop="priceSpecification"><?php echo number_format($value->price) ?></del>
									<meta itemprop="priceCurrency" content="VND">
								</span>
								<?php endif;?>
							</div>
							<?php if ($value->quycach): ?>
								<div>Quy cách: <?php echo $value->quycach; ?></div>
							<?php endif; ?>
							<?php if ($value->color): ?>
								<div>Màu: <?php echo $value->color; ?></div>
							<?php endif; ?>
							<?php if ($value->ungdung): ?>
								<div>Ứng dụng: <?php echo $value->ungdung; ?></div>
							<?php endif; ?>
						</div>
					</div>
					<?php
						if ($i == 6) {
							echo '</div></div><div class="item"><div class="row">';
						}
						$i++;
					?>
					<?php endforeach;?>
				</div>
			</div>

		</div>
	</div>
	<?php endif; ?>
</div>