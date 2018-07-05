<div class="row category-grid">
	<?php if ($content->totalItemCount > 0):?>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 collection_container grid_item collection_gird_item_number">
		<?php
			$listView = $this->widget('zii.widgets.CListView', array(
				'dataProvider'=>$content,
				'summaryText'=>'',
				'itemView'=>'_index',
				'template'=>"{items}",
			));
		?>

	</div>

	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<nav class="pull-right">
				<?php
					$pagerCssClass	=	'';
					$pager			=	array(
												'class'=>'TbPager',
												'prevPageLabel'=>'«',
												'maxButtonCount'=>5,
												'nextPageLabel'=>'»',
												'htmlOptions' => array('class' => 'pagination'),
												'header' => false,
											);
					$listView->pagerCssClass = $pagerCssClass;
					$listView->pager = $pager;
					$listView->renderPager();
				?>
			</nav>
		</div>
	</div>
	<?php else:?>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 collection_container">
		Không có sản phẩm nào
	</div>
	<?php endif;?>
</div>