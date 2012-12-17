<?php
$this->breadcrumbs=array(
	'Perusahaans'=>array('index'),
	$model->perusahaan_id=>array('view','id'=>$model->perusahaan_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Perusahaan','url'=>array('index')),
	array('label'=>'Create Perusahaan','url'=>array('create')),
	array('label'=>'View Perusahaan','url'=>array('view','id'=>$model->perusahaan_id)),
	array('label'=>'Manage Perusahaan','url'=>array('admin')),
);
?>

<h1>Update Perusahaan <?php echo $model->perusahaan_id; ?></h1>

<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>