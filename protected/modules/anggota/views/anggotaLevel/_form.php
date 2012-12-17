<?php
/* @var $this AnggotaLevelController */
/* @var $model AnggotaLevel */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'anggota-level-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'anggota_level_alias'); ?>
		<?php echo $form->textField($model,'anggota_level_alias',array('size'=>15,'maxlength'=>15)); ?>
		<?php echo $form->error($model,'anggota_level_alias'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'anggota_level_nama'); ?>
		<?php echo $form->textField($model,'anggota_level_nama',array('size'=>25,'maxlength'=>25)); ?>
		<?php echo $form->error($model,'anggota_level_nama'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->