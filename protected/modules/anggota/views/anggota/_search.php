<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<?php echo $form->textFieldRow($model,'anggota_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_pengarah_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_presenter_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_alias',array('class'=>'span5','maxlength'=>255)); ?>

	<?php echo $form->textFieldRow($model,'anggota_username',array('class'=>'span5','maxlength'=>255)); ?>

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

	<?php echo $form->textFieldRow($model,'anggota_type_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_level_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_status_id',array('class'=>'span5')); ?>

	<div class="form-actions">
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType' => 'submit',
			'type'=>'primary',
			'label'=>'Search',
		)); ?>
	</div>

<?php $this->endWidget(); ?>
