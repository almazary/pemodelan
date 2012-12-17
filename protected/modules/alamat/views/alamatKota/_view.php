<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_kota_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->alamat_kota_id),array('view','id'=>$data->alamat_kota_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_kota_nama')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_kota_nama); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_kota_status')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_kota_status); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_propinsi_id')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_propinsi_id); ?>
	<br />


</div>