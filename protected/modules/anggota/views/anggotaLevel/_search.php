<?php
/* @var $this AnggotaLevelController */
/* @var $model AnggotaLevel */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'anggota_level_id'); ?>
		<?php echo $form->textField($model,'anggota_level_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'anggota_level_alias'); ?>
		<?php echo $form->textField($model,'anggota_level_alias',array('size'=>15,'maxlength'=>15)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'anggota_level_nama'); ?>
		<?php echo $form->textField($model,'anggota_level_nama',array('size'=>25,'maxlength'=>25)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->