<?php
/* @var $this AnggotaLevelController */
/* @var $model AnggotaLevel */

$this->breadcrumbs=array(
	'Anggota Levels'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List AnggotaLevel', 'url'=>array('index')),
	array('label'=>'Manage AnggotaLevel', 'url'=>array('admin')),
);
?>

<h1>Create AnggotaLevel</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>