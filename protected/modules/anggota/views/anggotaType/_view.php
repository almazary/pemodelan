<?php
/* @var $this AnggotaTypeController */
/* @var $data AnggotaType */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('anggota_type_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->anggota_type_id), array('view', 'id'=>$data->anggota_type_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('anggota_type_nama')); ?>:</b>
	<?php echo CHtml::encode($data->anggota_type_nama); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('anggota_type_status')); ?>:</b>
	<?php echo CHtml::encode($data->anggota_type_status); ?>
	<br />


</div>