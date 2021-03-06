<?php
$this->pageTitle = 'Product';
?>
<div class="row">
<div class="col-lg-12">


<?php echo CHtml::errorSummary($model, '<div class="alert alert-dismissable alert-warning"> Loi', '</div>'); ?>
<?php
	if (user()->hasFlash('messages'))
	{
		$messages = user()->getFlash('messages');
		echo '<div class="alert alert-dismissable alert-success">'. hsp($messages). '</div><br>';
	}
	?>
<?php
	$form = $this->beginWidget('TbActiveForm', array(
		'action'=>sslUrl('product/edit/'.$model->id),
		'id' => 'add-form',
		'htmlOptions'=>array('enctype' => 'multipart/form-data')
	));
?>
<div class="form-group">
			<?php echo $form->labelEx($model,'cat_id'); ?>
			<?php echo $form->dropDownList($model,'cat_id',array('0'=>'Danh mục cấp 1') + CHtml::listData($category, 'id', 'name'), array('class' => 'form-control cat_id')); ?>
</div>

<div class="form-group cat1_id">
			<?php echo $form->labelEx($model,'cat1_id'); ?>
			<?php echo $form->dropDownList($model,'cat1_id',array('0'=>'Danh mục cấp 2') + CHtml::listData($category1, 'id', 'name'), array('class' => 'form-control')); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'name'); ?>
	<?php echo $form->textField($model,'name', array('class' => 'form-control')); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'masp'); ?>
	<?php echo $form->textField($model,'masp', array('class' => 'form-control', 'placeholder' => 'Vui lòng nhập mã sản phẩm')); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'price'); ?>
	<?php echo $form->textField($model,'price', array('class' => 'form-control', 'placeholder' => 'Vui lòng nhập giá')); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'baohanh'); ?>
	<?php echo $form->textField($model,'baohanh', array('class' => 'form-control', 'placeholder' => 'Vui lòng nhập bảo hành')); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'color'); ?>
	<?php echo $form->textField($model,'color', array('class' => 'form-control', 'placeholder' => 'Vui lòng nhập ' . mb_strtolower($model->attributeLabels()['color']))); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'quycach'); ?>
	<?php echo $form->textField($model,'quycach', array('class' => 'form-control', 'placeholder' => 'Vui lòng nhập ' . mb_strtolower($model->attributeLabels()['quycach']))); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'chongtray'); ?>
	<?php echo $form->textField($model,'chongtray', array('class' => 'form-control', 'placeholder' => 'Vui lòng nhập ' . mb_strtolower($model->attributeLabels()['chongtray']))); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'xuatxu'); ?>
	<?php echo $form->textField($model,'xuatxu', array('class' => 'form-control', 'placeholder' => 'Vui lòng nhập ' . mb_strtolower($model->attributeLabels()['xuatxu']))); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'thuonghieu_id'); ?>
	<?php echo $form->dropDownList($model,'thuonghieu_id',array('0'=>'Chọn thương hiệu') + CHtml::listData($thuonghieu, 'id', 'name'), array('class' => 'form-control')); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'tinhtrang'); ?>
	<?php echo $form->textField($model,'tinhtrang', array('class' => 'form-control', 'placeholder' => 'Vui lòng nhập ' . mb_strtolower($model->attributeLabels()['tinhtrang']))); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'ungdung'); ?>
	<?php echo $form->textField($model,'ungdung', array('class' => 'form-control', 'placeholder' => 'Vui lòng nhập ' . mb_strtolower($model->attributeLabels()['ungdung']))); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'description'); ?>
	<?php echo $form->textArea($model,'description', array('class' => 'form-control', 'rows' => '5')); ?>
	<script>
	editor = CKEDITOR.replace( 'ProductAR_description', {
		filebrowserBrowseUrl: '/browser/browse.php',
		filebrowserUploadUrl: '/uploader/upload.php',
		filebrowserWindowWidth: '640',
		filebrowserWindowHeight: '480'
	});
	CKFinder.setupCKEditor( editor, '<?php echo app()->baseUrl?>/js/ckfinder/' );
	</script>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'image'); ?>
	<?php
    $this->widget('CMultiFileUpload', array(
        'model'=>$model,
        'name' => 'image',
        'max'=>10,
        'accept' =>'jpg|jpeg|png|gif',
        'duplicate' => 'Duplicate file!',
		'denied' => 'Invalid file type',
		'htmlOptions' => array('multiple' => 'multiple')
    ));
    echo $form->error($model,'image');
	?>
	<?php
		$images = json_decode($model->image);
		foreach($images as $img):
	?>
		<?php echo CHtml::image('/uploads/'.$img, 'image', array('width' => '50px', 'height' => '50px'))?><br>
	<?php endforeach;?>
	<?php echo Chtml::hiddenField('hd_img', $model->image); ?>
</div>

<div class="form-group" style="overflow: hidden">
	<?php echo $form->labelEx($model,'tag'); ?><br>
	<?php if($tags):?>
		<?php foreach ($tags as $value) {
			$checked = in_array($value->id, $tags_checked) ? 'checked="checked"' : '';
			echo '<span class="col-lg-2">
				<input type="checkbox" name="tagList[]" value="'.$value->id.'"'.$checked.'>
				 <label> &nbsp'.$value->name.'</label></span>';
		}
		?>
<?php endif;?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'content'); ?>
	<?php echo $form->textArea($model,'content', array('class' => 'form-control')); ?>
	<script>
	editor = CKEDITOR.replace( 'ProductAR_content', {
		filebrowserBrowseUrl: '/browser/browse.php',
		filebrowserUploadUrl: '/uploader/upload.php',
		filebrowserWindowWidth: '640',
		filebrowserWindowHeight: '480'
	});
	CKFinder.setupCKEditor( editor, '<?php echo app()->baseUrl?>/js/ckfinder/' );
	</script>
</div>

<div class="form-group">
	<?php echo $form->checkBox($model,'status', array('checked' => $model->status)); ?>&nbsp;
	<?php echo $form->labelEx($model,'status'); ?>&nbsp;&nbsp;&nbsp;&nbsp;
	<?php echo $form->checkBox($model,'noibat', array('checked' => $model->noibat)); ?>&nbsp;
	<?php echo $form->labelEx($model,'noibat'); ?>&nbsp;&nbsp;&nbsp;&nbsp;
	<?php echo $form->checkBox($model,'banchay', array('checked' => $model->banchay)); ?>&nbsp;
	<?php echo $form->labelEx($model,'banchay'); ?>&nbsp;&nbsp;&nbsp;&nbsp;
	<?php echo $form->checkBox($model,'hot', array('checked' => $model->hot)); ?>&nbsp;
	<?php echo $form->labelEx($model,'hot'); ?>&nbsp;&nbsp;&nbsp;&nbsp;
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'order'); ?>
	<?php echo $form->textField($model,'order', array('class' => 'form-control')); ?>
</div>

<button type="submit" class="btn btn-default">Save</button>
<button type="reset" class="btn btn-default">Cancel</button>

<?php
	$this->endWidget();
?>

</div>
</div>

<script type="text/javascript">
	$(document).ready(function(){
		var url = "<?php echo app()->baseUrl?>";
		$('.cat_id').change(function(){
			id = $(this).val();
			$.ajax({
				url: url + '/category1/ajaxSub2/' + id,
				success: function(html) {
					$('.cat1_id').html(html);
				}
			});
		});

	});
</script>