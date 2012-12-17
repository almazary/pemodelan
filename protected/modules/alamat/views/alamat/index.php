<?php
$this->breadcrumbs=array(
	'Alamats',
);

$this->menu=array(
	array('label'=>'Create Alamat','url'=>array('create')),
	array('label'=>'Manage Alamat','url'=>array('admin')),
);
?>

<h1>Alamats</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
