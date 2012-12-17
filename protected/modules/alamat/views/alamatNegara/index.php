<?php
$this->breadcrumbs=array(
	'Alamat Negaras',
);

$this->menu=array(
	array('label'=>'Create AlamatNegara','url'=>array('create')),
	array('label'=>'Manage AlamatNegara','url'=>array('admin')),
);
?>

<h1>Alamat Negaras</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
