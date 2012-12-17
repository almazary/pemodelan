<?php
/* @var $this AnggotaLevelController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Anggota Levels',
);

$this->menu=array(
	array('label'=>'Create AnggotaLevel', 'url'=>array('create')),
	array('label'=>'Manage AnggotaLevel', 'url'=>array('admin')),
);
?>

<h1>Anggota Levels</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
