<?php
$this->breadcrumbs=array(
	'Alamat Negaras'=>array('index'),
	$model->alamat_negara_id=>array('view','id'=>$model->alamat_negara_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List AlamatNegara','url'=>array('index')),
	array('label'=>'Create AlamatNegara','url'=>array('create')),
	array('label'=>'View AlamatNegara','url'=>array('view','id'=>$model->alamat_negara_id)),
	array('label'=>'Manage AlamatNegara','url'=>array('admin')),
);
?>

<h1>Update AlamatNegara <?php echo $model->alamat_negara_id; ?></h1>

<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>