<?php
$this->breadcrumbs=array(
	'Anggota Statuses'=>array('index'),
	$model->anggota_status_id,
);

$this->menu=array(
	array('label'=>'List AnggotaStatus','url'=>array('index')),
	array('label'=>'Create AnggotaStatus','url'=>array('create')),
	array('label'=>'Update AnggotaStatus','url'=>array('update','id'=>$model->anggota_status_id)),
	array('label'=>'Delete AnggotaStatus','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->anggota_status_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage AnggotaStatus','url'=>array('admin')),
);
?>

<h1>View AnggotaStatus #<?php echo $model->anggota_status_id; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'anggota_status_id',
		'anggota_status_judul',
	),
)); ?>
