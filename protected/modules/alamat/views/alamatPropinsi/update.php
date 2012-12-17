<?php
$this->breadcrumbs=array(
	'Alamat Propinsis'=>array('index'),
	$model->alamat_propinsi_id=>array('view','id'=>$model->alamat_propinsi_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List AlamatPropinsi','url'=>array('index')),
	array('label'=>'Create AlamatPropinsi','url'=>array('create')),
	array('label'=>'View AlamatPropinsi','url'=>array('view','id'=>$model->alamat_propinsi_id)),
	array('label'=>'Manage AlamatPropinsi','url'=>array('admin')),
);
?>

<h1>Update AlamatPropinsi <?php echo $model->alamat_propinsi_id; ?></h1>

<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>