<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<?php echo $form->textFieldRow($model,'erd_entitas_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'erd_entitas_upline',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'erd_entitas_nama',array('class'=>'span5','maxlength'=>32)); ?>

	<?php echo $form->textFieldRow($model,'erd_entitas_judul',array('class'=>'span5','maxlength'=>100)); ?>

	<?php echo $form->textFieldRow($model,'erd_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'erd_entitas_type_id',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'erd_entitas_status_id',array('class'=>'span5')); ?>

	<div class="form-actions">
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType' => 'submit',
			'type'=>'primary',
			'label'=>'Search',
		)); ?>
	</div>

<?php $this->endWidget(); ?>
