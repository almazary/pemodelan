<?php
/* @var $this AnggotaTypeController */
/* @var $model AnggotaType */

$this->breadcrumbs=array(
	'Anggota Types'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List AnggotaType', 'url'=>array('index')),
	array('label'=>'Manage AnggotaType', 'url'=>array('admin')),
);
?>

<h1>Create AnggotaType</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>