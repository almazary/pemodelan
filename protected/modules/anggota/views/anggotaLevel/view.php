<?php
/* @var $this AnggotaLevelController */
/* @var $model AnggotaLevel */

$this->breadcrumbs=array(
	'Anggota Levels'=>array('index'),
	$model->anggota_level_id,
);

$this->menu=array(
	array('label'=>'List AnggotaLevel', 'url'=>array('index')),
	array('label'=>'Create AnggotaLevel', 'url'=>array('create')),
	array('label'=>'Update AnggotaLevel', 'url'=>array('update', 'id'=>$model->anggota_level_id)),
	array('label'=>'Delete AnggotaLevel', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->anggota_level_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage AnggotaLevel', 'url'=>array('admin')),
);
?>

<h1>View AnggotaLevel #<?php echo $model->anggota_level_id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'anggota_level_id',
		'anggota_level_alias',
		'anggota_level_nama',
	),
)); ?>
