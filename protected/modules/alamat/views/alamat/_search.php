<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<?php echo $form->textFieldRow($model,'alamat_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'alamat_perusahaan',array('class'=>'span5','maxlength'=>128)); ?>

	<?php echo $form->textFieldRow($model,'alamat_nama',array('class'=>'span5','maxlength'=>32)); ?>

	<?php echo $form->textFieldRow($model,'alamat_satu',array('class'=>'span5','maxlength'=>1024)); ?>

	<?php echo $form->textFieldRow($model,'alamat_dua',array('class'=>'span5','maxlength'=>1024)); ?>

	<?php echo $form->textFieldRow($model,'alamat_kodepos_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'alamat_propinsi_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'alamat_negara_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'alamat_kota_id',array('class'=>'span5')); ?>

	<div class="form-actions">
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType' => 'submit',
			'type'=>'primary',
			'label'=>'Search',
		)); ?>
	</div>

<?php $this->endWidget(); ?>
