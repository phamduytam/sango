<div class="col-lg-4 col-md-4 col-sm-6 col-xs-6">
	<div class="product-item">
		<div class="product-item-thumbnail">
			<div class="product-item-background">
				<div class="product-item-button">
					<a class="product-item-add" href="javascript:void(0)" onclick="Bizweb.addItem(2185016, 1, cartItem)">
						<i class="fa fa-shopping-cart "></i>
					</a>
				<a href="<?php app()->baseUrl;?>/chi-tiet/<?php echo $data->id?>/<?php echo $data->alias?>.html" title="<?php echo $data->name?>">					
						<i class="fa fa-search"></i>
				</a>
				</div>
			</div>
			<img class="img-responsive" src="<?php echo app()->baseUrl; ?>/uploads/<?php echo $data->image?>" alt="<?php echo $data->name?>" style="padding-top: 5px;">
		</div>
		<h3 class="product-item-name">
			<a href="<?php app()->baseUrl;?>/chi-tiet/<?php echo $data->id?>/<?php echo $data->alias?>.html" title="<?php echo $data->name?>">
				<?php echo $data->name?>
			</a>
		</h3>
		<p class="product-item-price"><?php echo $data->price?></p>
		<!-- <p class="product-item-price-sale">259.000₫</p> -->
	</div>
</div>