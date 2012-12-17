<?php
$this->breadcrumbs=array(
	'Perusahaan Type Statuses'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List PerusahaanTypeStatus','url'=>array('index')),
	array('label'=>'Manage PerusahaanTypeStatus','url'=>array('admin')),
);
?>

<h1>Create PerusahaanTypeStatus</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>