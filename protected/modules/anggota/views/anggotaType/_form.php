<?php
/* @var $this AnggotaTypeController */
/* @var $model AnggotaType */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'anggota-type-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'anggota_type_nama'); ?>
		<?php echo $form->textField($model,'anggota_type_nama',array('size'=>25,'maxlength'=>25)); ?>
		<?php echo $form->error($model,'anggota_type_nama'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'anggota_type_status'); ?>
		<?php echo $form->textField($model,'anggota_type_status'); ?>
		<?php echo $form->error($model,'anggota_type_status'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->