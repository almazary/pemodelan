<?php
$this->breadcrumbs=array(
	'Anggota Statuses'=>array('index'),
	$model->anggota_status_id=>array('view','id'=>$model->anggota_status_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List AnggotaStatus','url'=>array('index')),
	array('label'=>'Create AnggotaStatus','url'=>array('create')),
	array('label'=>'View AnggotaStatus','url'=>array('view','id'=>$model->anggota_status_id)),
	array('label'=>'Manage AnggotaStatus','url'=>array('admin')),
);
?>

<h1>Update AnggotaStatus <?php echo $model->anggota_status_id; ?></h1>

<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>