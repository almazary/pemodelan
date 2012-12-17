<?php
$this->breadcrumbs=array(
	'Alamats'=>array('index'),
	$model->alamat_id=>array('view','id'=>$model->alamat_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Alamat','url'=>array('index')),
	array('label'=>'Create Alamat','url'=>array('create')),
	array('label'=>'View Alamat','url'=>array('view','id'=>$model->alamat_id)),
	array('label'=>'Manage Alamat','url'=>array('admin')),
);
?>

<h1>Update Alamat <?php echo $model->alamat_id; ?></h1>

<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>