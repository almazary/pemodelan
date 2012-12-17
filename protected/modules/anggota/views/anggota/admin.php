<?php
$this->breadcrumbs=array(
	'Anggotas'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Anggota','url'=>array('index')),
	array('label'=>'Create Anggota','url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('anggota-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Anggotas</h1>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button btn')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('bootstrap.widgets.TbGridView',array(
	'id'=>'anggota-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'anggota_id',
		'anggota_pengarah_id',
		'anggota_presenter_id',
		'anggota_alias',
		'anggota_username',
		'anggota_password',
		/*
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
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
