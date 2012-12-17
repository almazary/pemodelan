<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'alamat-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="help-block">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<?php echo $form->textFieldRow($model,'alamat_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'alamat_perusahaan',array('class'=>'span5','maxlength'=>128)); ?>

	<?php echo $form->textFieldRow($model,'alamat_nama',array('class'=>'span5','maxlength'=>32)); ?>

	<?php echo $form->textFieldRow($model,'alamat_satu',array('class'=>'span5','maxlength'=>1024)); ?>

	<?php echo $form->textFieldRow($model,'alamat_dua',array('class'=>'span5','maxlength'=>1024)); ?>

        <?php echo $form->dropDownListRow($model, 'alamat_kodepos_id',
        CHtml::listData(AlamatKodepos::model()->findAll(), 'alamat_kodepos_id','alamat_kodepos_kode'),array('style'=>'width:auto;')); ?>

        <?php echo $form->dropDownListRow($model, 'alamat_propinsi_id',
        CHtml::listData(AlamatPropinsi::model()->findAll(), 'alamat_propinsi_id','alamat_propinsi_nama'),array('style'=>'width:auto;')); ?>

	<?php echo $form->dropDownListRow($model, 'alamat_negara_id',
        CHtml::listData(AlamatNegara::model()->findAll(), 'alamat_negara_id','alamat_negara_nama'),array('style'=>'width:auto;')); ?>

	
        <?php echo $form->dropDownListRow($model, 'alamat_kota_id',
        CHtml::listData(AlamatKota::model()->findAll(), 'alamat_kota_id','alamat_kota_nama'),array('style'=>'width:auto;')); ?>

	<div class="form-actions">
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType'=>'submit',
			'type'=>'primary',
			'label'=>$model->isNewRecord ? 'Create' : 'Save',
		)); ?>
	</div>

<?php $this->endWidget(); ?>
