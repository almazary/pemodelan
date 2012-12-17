<?php
$this->breadcrumbs=array(
	'Alamat Negaras'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List AlamatNegara','url'=>array('index')),
	array('label'=>'Manage AlamatNegara','url'=>array('admin')),
);
?>

<h1>Create AlamatNegara</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>