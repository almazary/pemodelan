<?php
$this->breadcrumbs=array(
	'Alamat Kotas'=>array('index'),
	$model->alamat_kota_id,
);

$this->menu=array(
	array('label'=>'List AlamatKota','url'=>array('index')),
	array('label'=>'Create AlamatKota','url'=>array('create')),
	array('label'=>'Update AlamatKota','url'=>array('update','id'=>$model->alamat_kota_id)),
	array('label'=>'Delete AlamatKota','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->alamat_kota_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage AlamatKota','url'=>array('admin')),
);
?>

<h1>View AlamatKota #<?php echo $model->alamat_kota_id; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'alamat_kota_id',
		'alamat_kota_nama',
		'alamat_kota_status',
		'alamat_propinsi_id',
	),
)); ?>
