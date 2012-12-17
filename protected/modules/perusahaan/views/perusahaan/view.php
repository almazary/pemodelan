<?php
$this->breadcrumbs=array(
	'Perusahaans'=>array('index'),
	$model->perusahaan_id,
);

$this->menu=array(
	array('label'=>'List Perusahaan','url'=>array('index')),
	array('label'=>'Create Perusahaan','url'=>array('create')),
	array('label'=>'Update Perusahaan','url'=>array('update','id'=>$model->perusahaan_id)),
	array('label'=>'Delete Perusahaan','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->perusahaan_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Perusahaan','url'=>array('admin')),
);
?>

<h1>View Perusahaan #<?php echo $model->perusahaan_id; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'perusahaan_id',
		'perusahaan_alias',
		'perusahaan_nama',
		'perusahaan_deskripsi',
		'perusahaan_icon',
		'perusahaan_logo',
		'perusahaan_visi',
		'perusahaan_misi',
		'perusahaan_sejarah',
		'perusahaan_strategi',
		'perusahaan_tanggal',
		'perusahaan_tanggal_berdiri',
		'anggota_id',
		'alamat_kota_id',
		'alamat_propinsi_id',
		'perusahaan_status_id',
		'perusahaan_type_id',
	),
)); ?>
