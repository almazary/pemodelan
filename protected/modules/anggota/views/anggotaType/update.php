<?php
/* @var $this AnggotaTypeController */
/* @var $model AnggotaType */

$this->breadcrumbs=array(
	'Anggota Types'=>array('index'),
	$model->anggota_type_id=>array('view','id'=>$model->anggota_type_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List AnggotaType', 'url'=>array('index')),
	array('label'=>'Create AnggotaType', 'url'=>array('create')),
	array('label'=>'View AnggotaType', 'url'=>array('view', 'id'=>$model->anggota_type_id)),
	array('label'=>'Manage AnggotaType', 'url'=>array('admin')),
);
?>

<h1>Update AnggotaType <?php echo $model->anggota_type_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>