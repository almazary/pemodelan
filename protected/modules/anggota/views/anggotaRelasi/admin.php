<?php
$this->breadcrumbs=array(
	'Anggota Relasis'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List AnggotaRelasi','url'=>array('index')),
	array('label'=>'Create AnggotaRelasi','url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('anggota-relasi-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Anggota Relasis</h1>

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
	'id'=>'anggota-relasi-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'anggota_relasi_id',
		'anggota_relasi_tanggal_terima',
		'anggota_relasi_tanggal_minta',
		'anggota_relasi_tipe',
		'anggota_relasi_dengan_id',
		'anggota_id',
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
