<?php
$this->breadcrumbs=array(
	'Perusahaan Statuses'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List PerusahaanStatus','url'=>array('index')),
	array('label'=>'Manage PerusahaanStatus','url'=>array('admin')),
);
?>

<h1>Create PerusahaanStatus</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>