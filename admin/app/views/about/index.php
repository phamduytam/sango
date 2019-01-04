
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
		'action'=>sslUrl('about'),
		'id' => 'add-form',
		'htmlOptions'=>array('enctype' => 'multipart/form-data')
	));
?>

<div class="form-group">
	<?php echo $form->labelEx($model,'title'); ?>
	<?php echo $form->textField($model,'title', array('class' => 'form-control')); ?>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'description'); ?>
	<?php echo $form->textArea($model,'description', array('class' => 'form-control')); ?>
	<script>
	editor = CKEDITOR.replace( 'AboutAR_description', {
		toolbar: [
			{ name: 'basicstyles', items: [ 'Bold', 'Italic' ] }
		]
	});
	</script>
</div>

<div class="form-group">
	<?php echo $form->labelEx($model,'nhanvien'); ?>
	<?php echo $form->textArea($model,'nhanvien', array('class' => 'form-control')); ?>
	<script>
	editor = CKEDITOR.replace( 'AboutAR_nhanvien', {
		toolbar: [
			{ name: 'basicstyles', items: [ 'Bold', 'Italic' ] }
		]
	});
	</script>
</div>
<div class="form-group">
	<?php echo $form->labelEx($model,'uytin'); ?>
	<?php echo $form->textArea($model,'uytin', array('class' => 'form-control')); ?>
	<script>
	editor = CKEDITOR.replace( 'AboutAR_uytin', {
		toolbar: [
			{ name: 'basicstyles', items: [ 'Bold', 'Italic' ] }
		]
	});
	</script>
</div>
<div class="form-group">
	<?php echo $form->labelEx($model,'kinhnghiem'); ?>
	<?php echo $form->textArea($model,'kinhnghiem', array('class' => 'form-control')); ?>
	<script>
	editor = CKEDITOR.replace( 'AboutAR_kinhnghiem', {
		toolbar: [
			{ name: 'basicstyles', items: [ 'Bold', 'Italic' ] }
		]
	});
	</script>
</div>
<div class="form-group">
	<?php echo $form->labelEx($model,'chatluong'); ?>
	<?php echo $form->textArea($model,'chatluong', array('class' => 'form-control')); ?>
	<script>
	editor = CKEDITOR.replace( 'AboutAR_chatluong', {
		toolbar: [
			{ name: 'basicstyles', items: [ 'Bold', 'Italic' ] }
		]
	});
	</script>
</div>
<div class="form-group">
	<?php echo $form->labelEx($model,'muctieu'); ?>
	<?php echo $form->textArea($model,'muctieu', array('class' => 'form-control')); ?>
	<script>
	editor = CKEDITOR.replace( 'AboutAR_muctieu', {
		toolbar: [
			{ name: 'basicstyles', items: [ 'Bold', 'Italic' ] }
		]
	});
	</script>
</div>
<div class="form-group">
	<?php echo $form->labelEx($model,'giaca'); ?>
	<?php echo $form->textArea($model,'giaca', array('class' => 'form-control')); ?>
	<script>
	editor = CKEDITOR.replace( 'AboutAR_giaca', {
		toolbar: [
			{ name: 'basicstyles', items: [ 'Bold', 'Italic' ] }
		]
	});
	</script>
</div>
<div class="form-group">
	<?php echo $form->labelEx($model,'tantam'); ?>
	<?php echo $form->textArea($model,'tantam', array('class' => 'form-control')); ?>
	<script>
	editor = CKEDITOR.replace( 'AboutAR_tantam', {
		toolbar: [
			{ name: 'basicstyles', items: [ 'Bold', 'Italic' ] }
		]
	});
	</script>
</div>
<div class="form-group">
	<?php echo $form->labelEx($model,'quytrinh'); ?>
	<?php echo $form->textArea($model,'quytrinh', array('class' => 'form-control')); ?>
	<script>
	editor = CKEDITOR.replace( 'AboutAR_quytrinh', {
		toolbar: [
			{ name: 'basicstyles', items: [ 'Bold', 'Italic' ] }
		]
	});
	</script>
</div>
<div class="form-group">
	<?php echo $form->labelEx($model,'hotro'); ?>
	<?php echo $form->textArea($model,'hotro', array('class' => 'form-control')); ?>
	<script>
	editor = CKEDITOR.replace( 'AboutAR_hotro', {
		toolbar: [
			{ name: 'basicstyles', items: [ 'Bold', 'Italic' ] }
		]
	});
	</script>
</div>
<div class="form-group">
	<?php echo $form->labelEx($model,'camket'); ?>
	<?php echo $form->textArea($model,'camket', array('class' => 'form-control')); ?>
	<script>
	editor = CKEDITOR.replace( 'AboutAR_camket', {
		toolbar: [
			{ name: 'basicstyles', items: [ 'Bold', 'Italic' ] }
		]
	});
	</script>
</div>

<button type="submit" class="btn btn-default">Save</button>
<button type="reset" class="btn btn-default">Cancel</button>

<?php
	$this->endWidget();
?>

</div>
</div>

