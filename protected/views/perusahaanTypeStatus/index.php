<?php
$this->breadcrumbs=array(
	'Perusahaan Type Statuses',
);

$this->menu=array(
	array('label'=>'Create PerusahaanTypeStatus','url'=>array('create')),
	array('label'=>'Manage PerusahaanTypeStatus','url'=>array('admin')),
);
?>

<h1>Perusahaan Type Statuses</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
