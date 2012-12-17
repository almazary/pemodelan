<?php
$this->breadcrumbs=array(
	'Anggota Relasis'=>array('index'),
	$model->anggota_relasi_id,
);

$this->menu=array(
	array('label'=>'List AnggotaRelasi','url'=>array('index')),
	array('label'=>'Create AnggotaRelasi','url'=>array('create')),
	array('label'=>'Update AnggotaRelasi','url'=>array('update','id'=>$model->anggota_relasi_id)),
	array('label'=>'Delete AnggotaRelasi','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->anggota_relasi_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage AnggotaRelasi','url'=>array('admin')),
);
?>

<h1>View AnggotaRelasi #<?php echo $model->anggota_relasi_id; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'anggota_relasi_id',
		'anggota_relasi_tanggal_terima',
		'anggota_relasi_tanggal_minta',
		'anggota_relasi_tipe',
		'anggota_relasi_dengan_id',
		'anggota_id',
	),
)); ?>
