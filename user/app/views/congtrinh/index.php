
<div class="row">
<?php if ($content->totalItemCount > 0):?>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 blog-posts">
		<?php
			$listView = $this->widget('zii.widgets.CListView', array(
				'dataProvider'=>$content,
				'summaryText'=>'',
				'itemView'=>'_index',
				'template'=>"{items}",
			));
		?>

	</div>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<?php
		$pagerCssClass	=	'pull-right';
		$pager			=	array(
									'class'=>'TbPager',
									'prevPageLabel'=>'<i class="fa fa-angle-left"></i>',
									'maxButtonCount'=>5,
									'nextPageLabel'=>'<i class="fa fa-angle-right"></i>',
									'htmlOptions' => array('class' => 'pagination'),
									'header' => false,
								);
		$listView->pagerCssClass = $pagerCssClass;
		$listView->pager = $pager;
		$listView->renderPager();
		?>

	</div>
<?php else:?>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 collection_container">
		Không có công trình nào
	</div>
<?php endif;?>
</div>
