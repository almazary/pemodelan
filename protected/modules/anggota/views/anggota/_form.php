<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'anggota-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="help-block">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<?php echo $form->textFieldRow($model,'anggota_pengarah_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_presenter_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_alias',array('class'=>'span5','maxlength'=>255)); ?>

	<?php echo $form->textFieldRow($model,'anggota_username',array('class'=>'span5','maxlength'=>255)); ?>

	<?php echo $form->textFieldRow($model,'anggota_password',array('class'=>'span5','maxlength'=>255)); ?>

	<?php echo $form->textFieldRow($model,'anggota_email',array('class'=>'span5','maxlength'=>255)); ?>

	<?php echo $form->textFieldRow($model,'anggota_handphone',array('class'=>'span5','maxlength'=>255)); ?>

	<?php echo $form->textFieldRow($model,'anggota_tanggal_aktif',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_tanggal_login',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_tanggal_daftar',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_callname',array('class'=>'span5','maxlength'=>255)); ?>

	<?php echo $form->textFieldRow($model,'anggota_realname',array('class'=>'span5','maxlength'=>255)); ?>

	<?php echo $form->textFieldRow($model,'anggota_tanggal_lahir',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_kelamin',array('class'=>'span5','maxlength'=>6)); ?>

	<?php echo $form->textFieldRow($model,'anggota_poin',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_saldo',array('class'=>'span5')); ?>

        <?php echo $form->dropDownListRow($model, 'anggota_type_id',
        CHtml::listData(AnggotaType::model()->findAll(), 'anggota_type_id','anggota_type_nama'),array('style'=>'width:auto;')); ?>
        
        <?php echo $form->dropDownListRow($model, 'anggota_level_id',
        CHtml::listData(AnggotaLevel::model()->findAll(), 'anggota_level_id','anggota_level_nama'),array('style'=>'width:auto;')); ?>

        <?php echo $form->dropDownListRow($model, 'anggota_status_id',
        CHtml::listData(AnggotaStatus::model()->findAll(), 'anggota_status_id','anggota_status_judul'),array('style'=>'width:auto;')); ?>

	<div class="form-actions">
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType'=>'submit',
			'type'=>'primary',
			'label'=>$model->isNewRecord ? 'Create' : 'Save',
		)); ?>
	</div>

<?php $this->endWidget(); ?>
