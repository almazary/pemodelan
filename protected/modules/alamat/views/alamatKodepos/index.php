<?php
$this->breadcrumbs=array(
	'Alamat Kodeposes',
);

$this->menu=array(
	array('label'=>'Create AlamatKodepos','url'=>array('create')),
	array('label'=>'Manage AlamatKodepos','url'=>array('admin')),
);
?>

<h1>Alamat Kodeposes</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
