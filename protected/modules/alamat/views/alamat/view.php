<?php
$this->breadcrumbs=array(
	'Alamats'=>array('index'),
	$model->alamat_id,
);

$this->menu=array(
	array('label'=>'List Alamat','url'=>array('index')),
	array('label'=>'Create Alamat','url'=>array('create')),
	array('label'=>'Update Alamat','url'=>array('update','id'=>$model->alamat_id)),
	array('label'=>'Delete Alamat','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->alamat_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Alamat','url'=>array('admin')),
);
?>

<h1>View Alamat #<?php echo $model->alamat_id; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'alamat_id',
		'alamat_perusahaan',
		'alamat_nama',
		'alamat_satu',
		'alamat_dua',
		'alamat_kodepos_id',
		'alamat_propinsi_id',
		'alamat_negara_id',
		'alamat_kota_id',
	),
)); ?>
