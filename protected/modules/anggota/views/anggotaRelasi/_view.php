<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('anggota_relasi_id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->anggota_relasi_id),array('view','id'=>$data->anggota_relasi_id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('anggota_relasi_tanggal_terima')); ?>:</b>
	<?php echo CHtml::encode($data->anggota_relasi_tanggal_terima); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('anggota_relasi_tanggal_minta')); ?>:</b>
	<?php echo CHtml::encode($data->anggota_relasi_tanggal_minta); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('anggota_relasi_tipe')); ?>:</b>
	<?php echo CHtml::encode($data->anggota_relasi_tipe); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('anggota_relasi_dengan_id')); ?>:</b>
	<?php echo CHtml::encode($data->anggota_relasi_dengan_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('anggota_id')); ?>:</b>
	<?php echo CHtml::encode($data->anggota_id); ?>
	<br />


</div>