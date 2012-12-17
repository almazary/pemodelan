<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'alamat-kota-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="help-block">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<?php echo $form->textFieldRow($model,'alamat_kota_nama',array('class'=>'span5','maxlength'=>128)); ?>

	<?php echo $form->textFieldRow($model,'alamat_kota_status',array('class'=>'span5')); ?>
	
        <?php echo $form->dropDownListRow($model, 'alamat_propinsi_id',
        CHtml::listData(AlamatPropinsi::model()->findAll(), 'alamat_propinsi_id','alamat_propinsi_nama'),array('class'=>'span5')); ?>

	<div class="form-actions">
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType'=>'submit',
			'type'=>'primary',
			'label'=>$model->isNewRecord ? 'Create' : 'Save',
		)); ?>
	</div>

<?php $this->endWidget(); ?>
