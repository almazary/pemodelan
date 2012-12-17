<?php
$this->breadcrumbs=array(
	'Anggota Relasis',
);

$this->menu=array(
	array('label'=>'Create AnggotaRelasi','url'=>array('create')),
	array('label'=>'Manage AnggotaRelasi','url'=>array('admin')),
);
?>

<h1>Anggota Relasis</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
