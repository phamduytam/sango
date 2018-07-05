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
				<nav class="nav-category block">
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