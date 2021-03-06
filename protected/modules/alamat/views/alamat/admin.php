<?php
$this->breadcrumbs=array(
	'Alamats'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Alamat','url'=>array('index')),
	array('label'=>'Create Alamat','url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('alamat-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Alamats</h1>

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
	'id'=>'alamat-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'alamat_id',
		'alamat_perusahaan',
		'alamat_nama',
		'alamat_satu',
		'alamat_dua',
		'alamat_kodepos_id',
		/*
		'alamat_propinsi_id',
		'alamat_negara_id',
		'alamat_kota_id',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
