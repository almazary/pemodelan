<?php
$this->breadcrumbs=array(
	'Perusahaan Statuses',
);

$this->menu=array(
	array('label'=>'Create PerusahaanStatus','url'=>array('create')),
	array('label'=>'Manage PerusahaanStatus','url'=>array('admin')),
);
?>

<h1>Perusahaan Statuses</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
