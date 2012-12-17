<?php
$this->breadcrumbs=array(
	'Alamat Kodeposes'=>array('index'),
	$model->alamat_kodepos_id,
);

$this->menu=array(
	array('label'=>'List AlamatKodepos','url'=>array('index')),
	array('label'=>'Create AlamatKodepos','url'=>array('create')),
	array('label'=>'Update AlamatKodepos','url'=>array('update','id'=>$model->alamat_kodepos_id)),
	array('label'=>'Delete AlamatKodepos','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->alamat_kodepos_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage AlamatKodepos','url'=>array('admin')),
);
?>

<h1>View AlamatKodepos #<?php echo $model->alamat_kodepos_id; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'alamat_kodepos_id',
		'alamat_kodepos_kode',
		'alamat_kodepos_status',
	),
)); ?>
