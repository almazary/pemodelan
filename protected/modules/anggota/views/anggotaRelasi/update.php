<?php
$this->breadcrumbs=array(
	'Anggota Relasis'=>array('index'),
	$model->anggota_relasi_id=>array('view','id'=>$model->anggota_relasi_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List AnggotaRelasi','url'=>array('index')),
	array('label'=>'Create AnggotaRelasi','url'=>array('create')),
	array('label'=>'View AnggotaRelasi','url'=>array('view','id'=>$model->anggota_relasi_id)),
	array('label'=>'Manage AnggotaRelasi','url'=>array('admin')),
);
?>

<h1>Update AnggotaRelasi <?php echo $model->anggota_relasi_id; ?></h1>

<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>