<?php
$this->breadcrumbs=array(
	'Anggota Statuses',
);

$this->menu=array(
	array('label'=>'Create AnggotaStatus','url'=>array('create')),
	array('label'=>'Manage AnggotaStatus','url'=>array('admin')),
);
?>

<h1>Anggota Statuses</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
