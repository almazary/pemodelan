<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->alamat_id),array('view','id'=>$data->alamat_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_perusahaan')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_perusahaan); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_nama')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_nama); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_satu')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_satu); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_dua')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_dua); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_kodepos_id')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_kodepos_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_propinsi_id')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_propinsi_id); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_negara_id')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_negara_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_kota_id')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_kota_id); ?>
	<br />

	*/ ?>

</div>