<?php
$this->breadcrumbs=array(
	'Alamat Kotas'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List AlamatKota','url'=>array('index')),
	array('label'=>'Manage AlamatKota','url'=>array('admin')),
);
?>

<h1>Create AlamatKota</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>