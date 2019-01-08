<?php $this->beginContent('/layouts/main'); ?>
<section class="bread-crumb">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

				<ul class="breadcrumb">
					<li class="home">
						<a itemprop="url" href="<?php echo app()->baseUrl;?>/">
							<span itemprop="title">Trang chủ</span>
						</a>
					</li>
					<?php
						if($this->breadcrumbs)
						{
							foreach ($this->breadcrumbs as $key => $value)
							{
								if($key != '')
								{
					?>
						<li>
							<?php echo $value ? '<a href="'.$value.'">'.$key.'</a>' : $key?>
						</li>
						<?php   
								}         
							}
						}
					?>
				</ul>
			</div>
		</div>
	</div>
</section>
<section class="category">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<nav class="nav-category">
					<h2 id="click_show_cate">Danh mục sản phẩm</h2>
					<ul id="show_cate">
						<?php
							$category = $this->getCategory();
							if($category):
								?>
							<?php
							foreach ($category as $v):
						?>
						<li>
						<a href="<?php echo app()->baseUrl;?>/san-pham/<?php echo $v->alias?>.html" title="<?php echo $v->name?>">
								<img src="<?php echo app()->baseUrl;?>/assets/images/icon.png" alt="<?php echo $v->name?>">
								<img src="<?php echo app()->baseUrl;?>/assets/images/icon_hover.png" alt="<?php echo $v->name?>"><?php echo $v->name?></a>
							<ul>
								<?php
									$category1 = $this->getCategory1($v->id);
									if($category1):
										?>
									<?php
									foreach ($category1 as $v1):
								?>
								<li>
									<a href="<?php echo app()->baseUrl;?>/san-pham/<?php echo $v1->alias?>.html" title="<?php echo $v1->name?>">
										<img src="<?php echo app()->baseUrl;?>/assets/images/icon1.png" alt="<?php echo $v1->name?>">
										<img src="<?php echo app()->baseUrl;?>/assets/images/icon1_hover.png" alt="<?php echo $v1->name?>"><?php echo $v1->name?></a>		
									</a>
								</li>
								<?php endforeach; ?>
								<?php endif; ?>
							</ul>	
							
						</li>
						<?php endforeach;?>
						<?php endif;?>
					</ul>
				</nav>

				<?php $banchay = $this->getBanchayList(5); ?>
				<?php if ($banchay):?>
				<div class="banchay">
					<h2>SẢN PHẨM BÁN CHẠY</h2>
					
					<div class="_box">
						<?php foreach ($banchay as $value):?>
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
							</div>
						<?php endforeach;?>
					</div>
				</div>
				<?php endif; ?>
				<?php
                    $banner3 = $this->getBannerByCatId(8, 'all');
					if ($banner3):
						foreach($banner3 as $v):
                ?>
					<p class="adv"><a target="_blank" href="<?php echo $v->url != '' ? $v->url : 'javascript:void(0)';?>"><img class="img-responsive" src="<?php echo app()->baseUrl;?>/uploads/<?php echo $v->image?>" alt="<?php echo $v->name?>"></a></p>
					<?php endforeach;?>
				<?php endif; ?>
			</div>
			<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
				<div class="heading">
					<h1><?php echo $this->pageTitle;?></h1>
				</div>
				<?php echo $content; ?>
			</div>
		</div>
	</div>
</section>
<?php $this->endContent(); ?>