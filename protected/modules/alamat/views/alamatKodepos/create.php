<?php
$this->breadcrumbs=array(
	'Alamat Kodeposes'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List AlamatKodepos','url'=>array('index')),
	array('label'=>'Manage AlamatKodepos','url'=>array('admin')),
);
?>

<h1>Create AlamatKodepos</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>