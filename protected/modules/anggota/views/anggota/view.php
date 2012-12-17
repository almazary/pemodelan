<?php
$this->breadcrumbs=array(
	'Anggotas'=>array('index'),
	$model->anggota_id,
);

$this->menu=array(
	array('label'=>'List Anggota','url'=>array('index')),
	array('label'=>'Create Anggota','url'=>array('create')),
	array('label'=>'Update Anggota','url'=>array('update','id'=>$model->anggota_id)),
	array('label'=>'Delete Anggota','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->anggota_id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Anggota','url'=>array('admin')),
);
?>

<h1>View Anggota #<?php echo $model->anggota_id; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'anggota_id',
		'anggota_pengarah_id',
		'anggota_presenter_id',
		'anggota_alias',
		'anggota_username',
		'anggota_password',
		'anggota_email',
		'anggota_handphone',
		'anggota_tanggal_aktif',
		'anggota_tanggal_login',
		'anggota_tanggal_daftar',
		'anggota_callname',
		'anggota_realname',
		'anggota_tanggal_lahir',
		'anggota_kelamin',
		'anggota_poin',
		'anggota_saldo',
		'anggota_type_id',
		'anggota_level_id',
		'anggota_status_id',
	),
)); ?>
