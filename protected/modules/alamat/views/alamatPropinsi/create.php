<?php
$this->breadcrumbs=array(
	'Alamat Propinsis'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List AlamatPropinsi','url'=>array('index')),
	array('label'=>'Manage AlamatPropinsi','url'=>array('admin')),
);
?>

<h1>Create AlamatPropinsi</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>