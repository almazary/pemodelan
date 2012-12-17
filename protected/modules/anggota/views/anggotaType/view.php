<?php
/* @var $this AnggotaTypeController */
/* @var $model AnggotaType */

$this->breadcrumbs=array(
	'Anggota Types'=>array('index'),
	$model->anggota_type_id,
);

$this->menu=array(
	array('label'=>'List AnggotaType', 'url'=>array('index')),
	array('label'=>'Create AnggotaType', 'url'=>array('create')),
	array('label'=>'Update AnggotaType', 'url'=>array('update', 'id'=>$model->anggota_type_id)),
	array('label'=>'Delete AnggotaType', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->anggota_type_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage AnggotaType', 'url'=>array('admin')),
);
?>

<h1>View AnggotaType #<?php echo $model->anggota_type_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'anggota_type_id',
		'anggota_type_nama',
		'anggota_type_status',
	),
)); ?>
