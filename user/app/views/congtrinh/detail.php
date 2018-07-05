<section class="page-content">
	<div class="">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="article-image" itemprop="image">
					<a href="">

						<img class="img-responsive" src="<?php echo app()->baseUrl?>/uploads/<?php echo $congtrinh->image?>" alt="<?php echo $congtrinh->name ?>">

					</a>
				</div>
				<h1 class="article-title" itemprop="name">
					<a href=""><?php echo $congtrinh->name ?></a>
				</h1>
				<p class="article-info">
					<span>
						<i class="fa fa-clock-o"></i> <?php echo $congtrinh->created ?></span>
				</p>
				<div class="article-content" itemprop="description" style="text-align: justify">
					<?php echo $congtrinh->content?>
				</div>
			</div>

		</div>
		<?php
			if($ortherList):
		?>
		<div class="col-lg-12 col-md-12 hidden-sm-down sidebar-blog hot-blog block">

			<div class="heading">
				<h2>Các công trình khác</h2>
			</div>

			<div class="row">
				<?php
				foreach ($ortherList as $v):
				?>
					<div class="col-lg-6 col-md-6">
						<a href="<?php echo app()->baseUrl;?>/tin-tuc/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html">

							<img src="<?php echo app()->baseUrl;?>/uploads/<?php echo $v->image?>" alt="<?php echo $v->name?>">


						</a>
						<p>
							<span>
								<i>
									<?php echo $v->created?>
								</i>
							</span>
						</p>
						<h3>
							<a href="<?php echo app()->baseUrl;?>/tin-tuc/chi-tiet/<?php echo $v->id?>/<?php echo $v->alias?>.html" title="<?php echo $v->name?>">
								<?php echo $v->name?>
							</a>
						</h3>
					</div>
					<?php endforeach;?>
			</div>

		</div>
		<?php endif;?>
	</div>
</section>