<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('perusahaan_status_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->perusahaan_status_id),array('view','id'=>$data->perusahaan_status_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('perusahaan_status_nama')); ?>:</b>
	<?php echo CHtml::encode($data->perusahaan_status_nama); ?>
	<br />


</div>