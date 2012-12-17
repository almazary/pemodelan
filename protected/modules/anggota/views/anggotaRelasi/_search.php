<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<?php echo $form->textFieldRow($model,'anggota_relasi_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_relasi_tanggal_terima',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_relasi_tanggal_minta',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_relasi_tipe',array('class'=>'span5','maxlength'=>25)); ?>

	<?php echo $form->textFieldRow($model,'anggota_relasi_dengan_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_id',array('class'=>'span5')); ?>

	<div class="form-actions">
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType' => 'submit',
			'type'=>'primary',
			'label'=>'Search',
		)); ?>
	</div>

<?php $this->endWidget(); ?>
