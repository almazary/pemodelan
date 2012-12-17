<?php
$this->breadcrumbs=array(
	'Anggotas',
);

$this->menu=array(
	array('label'=>'Create Anggota','url'=>array('create')),
	array('label'=>'Manage Anggota','url'=>array('admin')),
);
?>

<h1>Anggotas</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>

