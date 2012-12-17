<?php
$this->breadcrumbs=array(
	'Alamat Propinsis',
);

$this->menu=array(
	array('label'=>'Create AlamatPropinsi','url'=>array('create')),
	array('label'=>'Manage AlamatPropinsi','url'=>array('admin')),
);
?>

<h1>Alamat Propinsis</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
