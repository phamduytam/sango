<?php
$this->keyword = $product->name .', '. convertKeyword($product->name);
$this->description = $product->description;
?>
<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 product-image">
				<div class="elevate-image">
					<img id="zoom" class="img-responsive" src="<?php echo app()->baseUrl; ?>/uploads/<?php echo $product->image?>" data-zoom="<?php echo app()->baseUrl; ?>/uploads/<?php echo $product->image?>"
						alt="<?php echo $product->name ?>">

				</div>
				<div id="gallery_01">
					<div id="owl-product" class="owl-carousel owl-theme" style="opacity: 1; display: block;">
						<div class="owl-wrapper-outer">
							<div class="owl-wrapper" style="width: 380px; left: 0px; display: block; transition: all 1000ms ease; transform: translate3d(0px, 0px, 0px);">
								<div class="owl-item" style="width: 95px;">
									<div class="item">
										<a href="javascript:void(0)" data-zoom-image="<?php echo app()->baseUrl; ?>/uploads/<?php echo $product->image?>" data-image="<?php echo app()->baseUrl; ?>/uploads/<?php echo $product->image?>">
											<img class="zoom1" src="<?php echo app()->baseUrl; ?>/uploads/<?php echo $product->image?>" alt="<?php echo $product->name ?>">
										</a>
									</div>
								</div>
								<div class="owl-item" style="width: 95px;">
									<div class="item">
										<a href="javascript:void(0)" data-zoom-image="" data-image="<?php echo app()->baseUrl; ?>/uploads/<?php echo $product->image?>">
											<img class="zoom1" src="<?php echo app()->baseUrl; ?>/uploads/<?php echo $product->image?>" alt="<?php echo $product->name ?>">
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="owl-controls" style="display: none;">
							<div class="owl-pagination">
								<div class="owl-page">
									<span class=""></span>
								</div>
							</div>
							<div class="owl-buttons">
								<div class="owl-prev">
									<i class="fa fa-angle-left"></i>
								</div>
								<div class="owl-next">
									<i class="fa fa-angle-right "></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 details-pro">
				<h1 itemprop="name" class="product-name">
					<?php echo $product->name ?>
				</h1>
				<div class="price-box" itemscope="" itemtype="http://schema.org/Offer">
					<span class="special-price">
						<span class="price product-price" itemprop="price">
							<?php echo $product->price ?>
						</span>
						<meta itemprop="priceCurrency" content="VND">
					</span>
					<!-- Giá Khuyến mại -->
					<!-- <span class="old-price">
						<del class="price product-price-old sale" itemprop="priceSpecification">259.000₫</del>
						<meta itemprop="priceCurrency" content="VND">
					</span> -->
					<!-- Giá gốc -->
				</div>
				<div class="product-description">
					<?php echo $product->description ?>
				</div>
				<div class="form-product">
					<form id="form-product">
						<div class="product-select-group">
							<div class="product-quantity-group form_button_details">
								<label for="quantity">Số lượng</label>
								<span class="product-quantity-up" onclick="quantityChange('down');">
									<i class="fa fa-minus"></i>
								</span>
								<input type="numbers" name="quantity" class="product-quantity" value="1">
								<span class="product-quantity-down" onclick="quantityChange('up');">
									<i class="fa fa-plus"></i>
								</span>
							</div>
							<div class="selector-wrapper clearfix" style="display: none;">
								<label for="product-select-option-0">Title</label>
								<select class="single-option-selector" data-option="option1" id="product-select-option-0">
									<option value="Default Title">Default Title</option>
								</select>
							</div>
							<select id="product-select" name="variantId" style="display: none;">

								<option lỗi="" liquid:="" unknown="" operator="" roduct="" value="2185016">Default Title - 169.000₫</option>

							</select>
						</div>
						<div>
							<a href="javascript:void(0)" onclick="Bizweb.addItemFromForm('form-product', cartItem);" class="product-item-add2">
								<i class="fa fa-shopping-cart"></i>
								<span class="btn-cart">Cho vào giỏ hàng</span>
							</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 product-tab">
		<!-- Nav tabs -->
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active">
				<a href="#product-tab1" aria-controls="product-tab1" role="tab" data-toggle="tab">Thông tin sản phẩm</a>
			</li>
			<li role="presentation">
				<a href="#product-tab2" aria-controls="product-tab2" role="tab" data-toggle="tab">Đánh giá</a>
			</li>
		</ul>
		<!-- Tab panes -->
		<div class="tab-content">
			<div role="tabpanel" class="tab-pane active" id="product-tab1">
				<?php echo $product->content; ?>
			</div>
			<div role="tabpanel" class="tab-pane" id="product-tab2">
				Chưa có đánh giá nào
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
					<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
						<div class="product-item">
							<div class="product-item-thumbnail">
								<div class="product-item-background">
									<div class="product-item-button">
										<a class="product-item-add" href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>">
											<i class="fa fa-shopping-cart "></i>
										</a>
										<a class="product-item-view" href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>">
											<i class="fa fa-search"></i>
										</a>
									</div>
								</div>
								<img class="img-responsive" src="<?php echo app()->baseUrl?>/uploads/<?php echo $value->image?>" alt="<?php echo $value->name?>">
							</div>
							<h3 class="product-item-name">
								<a href="<?php echo url('/chi-tiet/' . $value->id . '/' . $value->alias)?>">
									<?php echo $value->name?>
								</a>
							</h3>
							<p class="product-item-price">
								<?php echo $value->price ?>></p>
						</div>
					</div>
					<?php
						if ($i == 8) {
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