<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'anggota-relasi-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="help-block">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<?php echo $form->textFieldRow($model,'anggota_relasi_tanggal_terima',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_relasi_tanggal_minta',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_relasi_tipe',array('class'=>'span5','maxlength'=>25)); ?>

	<?php echo $form->textFieldRow($model,'anggota_relasi_dengan_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_id',array('class'=>'span5')); ?>

	<div class="form-actions">
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType'=>'submit',
			'type'=>'primary',
			'label'=>$model->isNewRecord ? 'Create' : 'Save',
		)); ?>
	</div>

<?php $this->endWidget(); ?>
