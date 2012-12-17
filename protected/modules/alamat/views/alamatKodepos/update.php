<?php
$this->breadcrumbs=array(
	'Alamat Kodeposes'=>array('index'),
	$model->alamat_kodepos_id=>array('view','id'=>$model->alamat_kodepos_id),
	'Update',
);

$this->menu=array(
	array('label'=>'List AlamatKodepos','url'=>array('index')),
	array('label'=>'Create AlamatKodepos','url'=>array('create')),
	array('label'=>'View AlamatKodepos','url'=>array('view','id'=>$model->alamat_kodepos_id)),
	array('label'=>'Manage AlamatKodepos','url'=>array('admin')),
);
?>

<h1>Update AlamatKodepos <?php echo $model->alamat_kodepos_id; ?></h1>

<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>