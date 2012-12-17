<?php
/* @var $this AnggotaLevelController */
/* @var $model AnggotaLevel */

$this->breadcrumbs=array(
	'Anggota Levels'=>array('index'),
	$model->anggota_level_id=>array('view','id'=>$model->anggota_level_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List AnggotaLevel', 'url'=>array('index')),
	array('label'=>'Create AnggotaLevel', 'url'=>array('create')),
	array('label'=>'View AnggotaLevel', 'url'=>array('view', 'id'=>$model->anggota_level_id)),
	array('label'=>'Manage AnggotaLevel', 'url'=>array('admin')),
);
?>

<h1>Update AnggotaLevel <?php echo $model->anggota_level_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>