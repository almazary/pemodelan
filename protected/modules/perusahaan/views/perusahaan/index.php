<?php
$this->breadcrumbs=array(
	'Perusahaans',
);

$this->menu=array(
	array('label'=>'Create Perusahaan','url'=>array('create')),
	array('label'=>'Manage Perusahaan','url'=>array('admin')),
);
?>

<h1>Perusahaans</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
