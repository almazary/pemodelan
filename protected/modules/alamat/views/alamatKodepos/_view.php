<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_kodepos_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->alamat_kodepos_id),array('view','id'=>$data->alamat_kodepos_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_kodepos_kode')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_kodepos_kode); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('alamat_kodepos_status')); ?>:</b>
	<?php echo CHtml::encode($data->alamat_kodepos_status); ?>
	<br />


</div>