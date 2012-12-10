<?php
/* @var $this ProyekController */
/* @var $model Proyek */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'proyek-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'proyek_alias'); ?>
		<?php echo $form->textField($model,'proyek_alias',array('size'=>32,'maxlength'=>32)); ?>
		<?php echo $form->error($model,'proyek_alias'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'proyek_judul'); ?>
		<?php echo $form->textField($model,'proyek_judul',array('size'=>32,'maxlength'=>32)); ?>
		<?php echo $form->error($model,'proyek_judul'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'proyek_deskripsi'); ?>
		<?php echo $form->textField($model,'proyek_deskripsi',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'proyek_deskripsi'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'proyek_abstrak'); ?>
		<?php echo $form->textField($model,'proyek_abstrak',array('size'=>60,'maxlength'=>2000)); ?>
		<?php echo $form->error($model,'proyek_abstrak'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'proyek_tanggal'); ?>
		<?php echo $form->textField($model,'proyek_tanggal'); ?>
		<?php echo $form->error($model,'proyek_tanggal'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'proyek_tanggal_mulai'); ?>
		<?php echo $form->textField($model,'proyek_tanggal_mulai'); ?>
		<?php echo $form->error($model,'proyek_tanggal_mulai'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'proyek_tanggal_target'); ?>
		<?php echo $form->textField($model,'proyek_tanggal_target'); ?>
		<?php echo $form->error($model,'proyek_tanggal_target'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'proyek_tanggal_selesai'); ?>
		<?php echo $form->textField($model,'proyek_tanggal_selesai'); ?>
		<?php echo $form->error($model,'proyek_tanggal_selesai'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'proyek_type_id'); ?>
		<?php echo $form->textField($model,'proyek_type_id'); ?>
		<?php echo $form->error($model,'proyek_type_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'proyek_status_id'); ?>
		<?php echo $form->textField($model,'proyek_status_id'); ?>
		<?php echo $form->error($model,'proyek_status_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'anggota_id'); ?>
		<?php echo $form->textField($model,'anggota_id'); ?>
		<?php echo $form->error($model,'anggota_id'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->