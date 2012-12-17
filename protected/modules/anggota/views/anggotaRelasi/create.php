<?php
$this->breadcrumbs=array(
	'Anggota Relasis'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List AnggotaRelasi','url'=>array('index')),
	array('label'=>'Manage AnggotaRelasi','url'=>array('admin')),
);
?>

<h1>Create AnggotaRelasi</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>