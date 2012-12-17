<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_propinsi_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->alamat_propinsi_id),array('view','id'=>$data->alamat_propinsi_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_propinsi_kode')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_propinsi_kode); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_propinsi_nama')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_propinsi_nama); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_propinsi_status')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_propinsi_status); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_negara_id')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_negara_id); ?>
	<br />


</div>