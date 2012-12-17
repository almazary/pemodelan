<?php
$this->breadcrumbs=array(
	'Alamat Negaras'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List AlamatNegara','url'=>array('index')),
	array('label'=>'Create AlamatNegara','url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('alamat-negara-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Alamat Negaras</h1>

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
	'id'=>'alamat-negara-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'alamat_negara_id',
		'alamat_negara_nama',
		'alamat_negara_iso_code_2',
		'alamat_negara_iso_code_3',
		'alamat_negara_status',
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
