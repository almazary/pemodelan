<?php
$this->breadcrumbs=array(
	'Anggotas'=>array('index'),
	$model->anggota_id=>array('view','id'=>$model->anggota_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Anggota','url'=>array('index')),
	array('label'=>'Create Anggota','url'=>array('create')),
	array('label'=>'View Anggota','url'=>array('view','id'=>$model->anggota_id)),
	array('label'=>'Manage Anggota','url'=>array('admin')),
);
?>

<h1>Update Anggota <?php echo $model->anggota_id; ?></h1>

<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>