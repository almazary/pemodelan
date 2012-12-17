<?php
$this->breadcrumbs=array(
	'Alamat Kotas'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List AlamatKota','url'=>array('index')),
	array('label'=>'Create AlamatKota','url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('alamat-kota-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Alamat Kotas</h1>

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
	'id'=>'alamat-kota-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'alamat_kota_id',
		'alamat_kota_nama',
		'alamat_kota_status',
		'alamat_propinsi_id',
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
