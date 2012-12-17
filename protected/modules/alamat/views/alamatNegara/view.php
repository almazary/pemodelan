<?php
$this->breadcrumbs=array(
	'Alamat Negaras'=>array('index'),
	$model->alamat_negara_id,
);

$this->menu=array(
	array('label'=>'List AlamatNegara','url'=>array('index')),
	array('label'=>'Create AlamatNegara','url'=>array('create')),
	array('label'=>'Update AlamatNegara','url'=>array('update','id'=>$model->alamat_negara_id)),
	array('label'=>'Delete AlamatNegara','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->alamat_negara_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage AlamatNegara','url'=>array('admin')),
);
?>

<h1>View AlamatNegara #<?php echo $model->alamat_negara_id; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'alamat_negara_id',
		'alamat_negara_nama',
		'alamat_negara_iso_code_2',
		'alamat_negara_iso_code_3',
		'alamat_negara_status',
	),
)); ?>
