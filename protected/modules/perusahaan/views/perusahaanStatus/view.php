<?php
$this->breadcrumbs=array(
	'Perusahaan Statuses'=>array('index'),
	$model->perusahaan_status_id,
);

$this->menu=array(
	array('label'=>'List PerusahaanStatus','url'=>array('index')),
	array('label'=>'Create PerusahaanStatus','url'=>array('create')),
	array('label'=>'Update PerusahaanStatus','url'=>array('update','id'=>$model->perusahaan_status_id)),
	array('label'=>'Delete PerusahaanStatus','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->perusahaan_status_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage PerusahaanStatus','url'=>array('admin')),
);
?>

<h1>View PerusahaanStatus #<?php echo $model->perusahaan_status_id; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'perusahaan_status_id',
		'perusahaan_status_nama',
	),
)); ?>
