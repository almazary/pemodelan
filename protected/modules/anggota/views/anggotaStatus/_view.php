<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('anggota_status_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->anggota_status_id),array('view','id'=>$data->anggota_status_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('anggota_status_judul')); ?>:</b>
	<?php echo CHtml::encode($data->anggota_status_judul); ?>
	<br />


</div>