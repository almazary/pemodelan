<?php
$this->breadcrumbs=array(
	'Perusahaan Statuses'=>array('index'),
	$model->perusahaan_status_id=>array('view','id'=>$model->perusahaan_status_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List PerusahaanStatus','url'=>array('index')),
	array('label'=>'Create PerusahaanStatus','url'=>array('create')),
	array('label'=>'View PerusahaanStatus','url'=>array('view','id'=>$model->perusahaan_status_id)),
	array('label'=>'Manage PerusahaanStatus','url'=>array('admin')),
);
?>

<h1>Update PerusahaanStatus <?php echo $model->perusahaan_status_id; ?></h1>

<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>