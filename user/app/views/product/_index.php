<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6 newTpl">
	<div class="product-item left">
		<div class="product-item-thumbnail">
			<!-- <div class="product-item-background">
				<div class="product-item-button">
					<a class="product-item-add" href="javascript:void(0)" onclick="Bizweb.addItem(2185016, 1, cartItem)">
						<i class="fa fa-shopping-cart "></i>
					</a>
				<a href="<?php app()->baseUrl;?>/chi-tiet/<?php echo $data->id?>/<?php echo $data->alias?>.html" title="<?php echo $data->name?>">
						<i class="fa fa-search"></i>
				</a>
				</div>
			</div> -->
			<a href="<?php app()->baseUrl;?>/chi-tiet/<?php echo $data->id?>/<?php echo $data->alias?>.html" title="<?php echo $data->name?>"><img class="img-responsive" src="<?php echo app()->baseUrl; ?>/uploads/<?php echo $this->getImageSP($data->image);?>" alt="<?php echo $data->name?>" style="padding-top: 5px;"></a>
		</div>
		<h3 class="product-item-name">
			<a href="<?php app()->baseUrl;?>/chi-tiet/<?php echo $data->id?>/<?php echo $data->alias?>.html" title="<?php echo $data->name?>">
				<?php echo $data->name?>
			</a>
		</h3>
		<?php if($data->price > 0) :?>
		<div class="price-box">
			<?php
				if ($data->khuyenmai > 0):
			?>
			<!-- Giá Khuyến mại -->
			<span class="special-price">
				<span class="price product-price" itemprop="price">
					<?php echo $data->khuyenmai > 0 ? number_format($data->khuyenmai) : number_format($data->price) ?>
				</span>
				<meta itemprop="priceCurrency" content="VND">
			</span>
			<!-- Giá gốc -->
			<span class="old-price a_right f_right pr10">
				<del class="price product-price-old sale" itemprop="priceSpecification"><?php echo number_format($data->price) ?></del>
				<meta itemprop="priceCurrency" content="VND">
			</span>
			<?php endif;?>
		</div>
		<?php endif; ?>
		<?php if ($data->quycach): ?>
			<div>Quy cách: <?php echo $data->quycach; ?></div>
		<?php endif; ?>
		<?php if ($data->color): ?>
			<div>Màu: <?php echo $data->color; ?></div>
		<?php endif; ?>
		<?php if ($data->ungdung): ?>
			<div>Ứng dụng: <?php echo $data->ungdung; ?></div>
		<?php endif; ?>
		<!-- <p class="product-item-price-sale">259.000₫</p> -->
	</div>
</div>