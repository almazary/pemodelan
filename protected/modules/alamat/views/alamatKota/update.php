<?php
$this->breadcrumbs=array(
	'Alamat Kotas'=>array('index'),
	$model->alamat_kota_id=>array('view','id'=>$model->alamat_kota_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List AlamatKota','url'=>array('index')),
	array('label'=>'Create AlamatKota','url'=>array('create')),
	array('label'=>'View AlamatKota','url'=>array('view','id'=>$model->alamat_kota_id)),
	array('label'=>'Manage AlamatKota','url'=>array('admin')),
);
?>

<h1>Update AlamatKota <?php echo $model->alamat_kota_id; ?></h1>

<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>