<?php
$this->breadcrumbs=array(
	'Alamat Propinsis'=>array('index'),
	$model->alamat_propinsi_id,
);

$this->menu=array(
	array('label'=>'List AlamatPropinsi','url'=>array('index')),
	array('label'=>'Create AlamatPropinsi','url'=>array('create')),
	array('label'=>'Update AlamatPropinsi','url'=>array('update','id'=>$model->alamat_propinsi_id)),
	array('label'=>'Delete AlamatPropinsi','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->alamat_propinsi_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage AlamatPropinsi','url'=>array('admin')),
);
?>

<h1>View AlamatPropinsi #<?php echo $model->alamat_propinsi_id; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'alamat_propinsi_id',
		'alamat_propinsi_kode',
		'alamat_propinsi_nama',
		'alamat_propinsi_status',
		'alamat_negara_id',
	),
)); ?>
