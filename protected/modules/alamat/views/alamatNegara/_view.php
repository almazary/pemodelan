<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_negara_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->alamat_negara_id),array('view','id'=>$data->alamat_negara_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_negara_nama')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_negara_nama); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_negara_iso_code_2')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_negara_iso_code_2); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_negara_iso_code_3')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_negara_iso_code_3); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_negara_status')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_negara_status); ?>
	<br />


</div>