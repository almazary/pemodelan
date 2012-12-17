<?php
$this->breadcrumbs=array(
	'Alamat Kotas',
);

$this->menu=array(
	array('label'=>'Create AlamatKota','url'=>array('create')),
	array('label'=>'Manage AlamatKota','url'=>array('admin')),
);
?>

<h1>Alamat Kotas</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
