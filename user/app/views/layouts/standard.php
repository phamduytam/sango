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
			<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
				<nav class="nav-category block">
					<h2 id="click_show_cate">Danh mục</h2>
					<ul id="show_cate">
					<li >
						<a href="/frontpage"><img src="<?php echo app()->baseUrl;?>/assets/category1.png?1493875157619"  alt="Sản phẩm mới"><img src="assets/category-hover1.png?1493875157619"  alt="Sản phẩm mới"> Sản phẩm mới</a>
						
					</li>
					
					<li >
						<a href="/san-pham-noi-bat"><img src="<?php echo app()->baseUrl;?>/assets/category2.png?1493875157619"  alt="Sản phẩm nổi bật"><img src="assets/category-hover2.png?1493875157619"  alt="Sản phẩm nổi bật"> Sản phẩm nổi bật</a>
						
					</li>
					
					<li >
						<a href="/san-pham-khuyen-mai"><img src="<?php echo app()->baseUrl;?>/assets/category3.png?1493875157619"  alt="Sản phẩm khuyến mãi"><img src="assets/category-hover3.png?1493875157619"  alt="Sản phẩm khuyến mãi"> Sản phẩm khuyến mãi</a>
						
					</li>
						<?php
							$i = 0;
							$category = $this->getCategory();
							if($category):
								?>
							<?php
							foreach ($category as $v):
								$i++;
						?>
						<li>
						<a href="<?php echo app()->baseUrl;?>/san-pham/<?php echo $v->alias?>.html" title="<?php echo $v->name?>">
								<img src="<?php echo app()->baseUrl;?>/assets/category<?php echo $i ?>.png" alt="<?php echo $v->name?>">
								<img src="<?php echo app()->baseUrl;?>/assets/category-hover<?php echo $i ?>.png" alt="<?php echo $v->name?>"><?php echo $v->name?></a>
						</li>
						<?php endforeach;?>
						<?php endif;?>
					</ul>
				</nav>
			</div>
			<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
				<div class="heading">
					<h1><?php echo $this->pageTitle;?></h1>
				</div>
				<?php echo $content; ?>
			</div>
		</div>
	</div>
</section>
<?php $this->endContent(); ?>