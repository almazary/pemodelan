<?php
/* @var $this AnggotaTypeController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Anggota Types',
);

$this->menu=array(
	array('label'=>'Create AnggotaType', 'url'=>array('create')),
	array('label'=>'Manage AnggotaType', 'url'=>array('admin')),
);
?>

<h1>Anggota Types</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
