<?php
/* @var $this AnggotaLevelController */
/* @var $data AnggotaLevel */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('anggota_level_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->anggota_level_id), array('view', 'id'=>$data->anggota_level_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('anggota_level_alias')); ?>:</b>
	<?php echo CHtml::encode($data->anggota_level_alias); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('anggota_level_nama')); ?>:</b>
	<?php echo CHtml::encode($data->anggota_level_nama); ?>
	<br />


</div>