<?php
$this->breadcrumbs=array(
	'Anggota Statuses'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List AnggotaStatus','url'=>array('index')),
	array('label'=>'Manage AnggotaStatus','url'=>array('admin')),
);
?>

<h1>Create AnggotaStatus</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>