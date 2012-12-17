<?php
$this->breadcrumbs=array(
	'Perusahaan Type Statuses'=>array('index'),
	$model->perusahaan_type_status_id,
);

$this->menu=array(
	array('label'=>'List PerusahaanTypeStatus','url'=>array('index')),
	array('label'=>'Create PerusahaanTypeStatus','url'=>array('create')),
	array('label'=>'Update PerusahaanTypeStatus','url'=>array('update','id'=>$model->perusahaan_type_status_id)),
	array('label'=>'Delete PerusahaanTypeStatus','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->perusahaan_type_status_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage PerusahaanTypeStatus','url'=>array('admin')),
);
?>

<h1>View PerusahaanTypeStatus #<?php echo $model->perusahaan_type_status_id; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'perusahaan_type_status_id',
		'perusahaan_type_status_nama',
	),
)); ?>
