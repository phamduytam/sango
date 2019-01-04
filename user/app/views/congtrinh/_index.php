<article class="article-item article_grid_item col-lg-6 col-md-6 col-sm-6 col-xs-12">
	<div class="article-image">
		<a href="<?php echo url('/cong-trinh/chi-tiet/' . $data->id . '/' . $data->alias.'.html')?>">
			<img class="img-responsive" src="<?php echo app()->baseUrl?>/uploads/<?php echo $data->image?>" alt="<?php echo $data->name?>">
		</a>
	</div>
	<h3 class="article-title"><a href="<?php echo url('/cong-trinh/chi-tiet/' . $data->id . '/' . $data->alias.'.html')?>"><?php echo $data->name?></a></h3>
	<p class="article-info"><span><i class="fa fa-clock-o"></i> <?php echo $data->created?></span></p>
	<p class="article-summary"><?php echo $data->description ?></p>
	<a class="article-readmore" href="<?php echo url('/cong-trinh/chi-tiet/' . $data->id . '/' . $data->alias.'.html')?>">Đọc thêm</a>
</article>