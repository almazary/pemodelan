<?php
$this->breadcrumbs=array(
	'Perusahaan Type Statuses'=>array('index'),
	$model->perusahaan_type_status_id=>array('view','id'=>$model->perusahaan_type_status_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List PerusahaanTypeStatus','url'=>array('index')),
	array('label'=>'Create PerusahaanTypeStatus','url'=>array('create')),
	array('label'=>'View PerusahaanTypeStatus','url'=>array('view','id'=>$model->perusahaan_type_status_id)),
	array('label'=>'Manage PerusahaanTypeStatus','url'=>array('admin')),
);
?>

<h1>Update PerusahaanTypeStatus <?php echo $model->perusahaan_type_status_id; ?></h1>

<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>