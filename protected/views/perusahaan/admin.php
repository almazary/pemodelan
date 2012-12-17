<?php
$this->breadcrumbs=array(
	'Perusahaans'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Perusahaan','url'=>array('index')),
	array('label'=>'Create Perusahaan','url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('perusahaan-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Perusahaans</h1>

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
	'id'=>'perusahaan-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'perusahaan_id',
		'perusahaan_alias',
		'perusahaan_nama',
		'perusahaan_deskripsi',
		'perusahaan_icon',
		'perusahaan_logo',
		/*
		'perusahaan_visi',
		'perusahaan_misi',
		'perusahaan_sejarah',
		'perusahaan_strategi',
		'perusahaan_tanggal',
		'perusahaan_tanggal_berdiri',
		'anggota_id',
		'alamat_kota_id',
		'alamat_propinsi_id',
		'perusahaan_status_id',
		'perusahaan_type_id',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
