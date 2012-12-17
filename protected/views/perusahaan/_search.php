<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<?php echo $form->textFieldRow($model,'perusahaan_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'perusahaan_alias',array('class'=>'span5','maxlength'=>25)); ?>

	<?php echo $form->textFieldRow($model,'perusahaan_nama',array('class'=>'span5','maxlength'=>25)); ?>

	<?php echo $form->textFieldRow($model,'perusahaan_deskripsi',array('class'=>'span5','maxlength'=>255)); ?>

	<?php echo $form->textFieldRow($model,'perusahaan_icon',array('class'=>'span5','maxlength'=>25)); ?>

	<?php echo $form->textFieldRow($model,'perusahaan_logo',array('class'=>'span5','maxlength'=>25)); ?>

	<?php echo $form->textFieldRow($model,'perusahaan_visi',array('class'=>'span5','maxlength'=>255)); ?>

	<?php echo $form->textFieldRow($model,'perusahaan_misi',array('class'=>'span5','maxlength'=>255)); ?>

	<?php echo $form->textAreaRow($model,'perusahaan_sejarah',array('rows'=>6, 'cols'=>50, 'class'=>'span8')); ?>

	<?php echo $form->textAreaRow($model,'perusahaan_strategi',array('rows'=>6, 'cols'=>50, 'class'=>'span8')); ?>

	<?php echo $form->textFieldRow($model,'perusahaan_tanggal',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'perusahaan_tanggal_berdiri',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'anggota_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'alamat_kota_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'alamat_propinsi_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'perusahaan_status_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'perusahaan_type_id',array('class'=>'span5')); ?>

	<div class="form-actions">
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType' => 'submit',
			'type'=>'primary',
			'label'=>'Search',
		)); ?>
	</div>

<?php $this->endWidget(); ?>
