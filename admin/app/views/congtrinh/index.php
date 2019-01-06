
<div class="table-responsive">
<div>
	<div class="col-lg-9">
		<form method="get" id="form" action="<?php echo app()->baseUrl?>/congtrinh">
			<div class="input-group" style="width: 100%">
				<div class="row">
					<div class="col-lg-6">
						<select class="form-control cat_id" name="cat_id">
							<option value="">Danh mục</option>
							<?php foreach ($category as $v): ?>
								<option value="<?php echo $v->id ?>" <?php echo $v->id == $cat_id ? "selected" : "" ?>><?php echo $v->name?></option>
							<?php endforeach;?>
						</select>
					</div>
					<div class="col-lg-6">
						<input type="text" name="word" class="form-control" value="<?php echo $word;?>">
						<span class="input-group-btn" style="display: block">
							<input class="btn btn-default" value="Search" type="submit">
						</span>
					</div>
				</div>

			</div><!-- /input-group -->
		</form>
	</div><!-- /.col-lg-6 -->
	<div class="col-lg-3 pull-right">
		<p class="text-right">
			<a href="<?php echo url('congtrinh/add')?>"><button class="btn btn-primary" type="button">Add</button></a>
		</p>
	</div><!-- /input-group -->
</div><!-- /.col-lg-6 -->
</div>

<div class="message"></div>
<table class="table table-bordered table-hover table-striped tablesorter">
	<thead>
		<tr>
			<th>Id <i class="fa fa-sort"></i></th>
			<th style="width: 30%">Tiêu đề <i class="fa fa-sort"></i></th>
			<th>Danh mục<i class="fa fa-sort"></i></th>
			<th>Thứ tự <i class="fa fa-sort"></i></th>
			<th>Trạng thái <i class="fa fa-sort"></i></th>
			<th>Ngày tạo <i class="fa fa-sort"></i></th>
			<th>Tuỳ chỉnh </th>
		</tr>
	</thead>
	<tbody>
		<?php
			$listView = $this->widget('zii.widgets.CListView', array(
				'dataProvider'=>$content,
				'summaryText'=>'',
				'itemView'=>'_index',
				'template'=>"{items}",
			));
		?>
	</tbody>
</table>
</div>
<?php
$pagerCssClass	=	'bs-example';
$pager			=	array(
							'class'=>'TbPager',
							'prevPageLabel'=>'Prev',
							'maxButtonCount'=>5,
							'nextPageLabel'=>'Next',
							'htmlOptions' => array('class' => 'pagination'),
							'header' => false
						);
$listView->pagerCssClass = $pagerCssClass;
$listView->pager = $pager;
$listView->renderPager();
?>
<script type="text/javascript">
	$(document).ready(function(){
		var url = "<?php echo app()->baseUrl?>";
		$('.bt_del').click(function(){
			id = $(this).attr('id');
			var r = confirm("Bạn thực sự muốn xoá");
			if(r == true)
			{
				$.ajax({
					'url': url + "/congtrinh/delete/" + id,
					success:function(msg){
						location.reload();
					}
					});
			}
		});

	});
</script>