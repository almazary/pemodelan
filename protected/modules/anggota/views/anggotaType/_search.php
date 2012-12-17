<?php
/* @var $this AnggotaTypeController */
/* @var $model AnggotaType */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'anggota_type_id'); ?>
		<?php echo $form->textField($model,'anggota_type_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'anggota_type_nama'); ?>
		<?php echo $form->textField($model,'anggota_type_nama',array('size'=>25,'maxlength'=>25)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'anggota_type_status'); ?>
		<?php echo $form->textField($model,'anggota_type_status'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->