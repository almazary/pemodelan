<?php
/* @var $this AnggotaLevelController */
/* @var $model AnggotaLevel */

$this->breadcrumbs=array(
	'Anggota Levels'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List AnggotaLevel', 'url'=>array('index')),
	array('label'=>'Create AnggotaLevel', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('anggota-level-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Anggota Levels</h1>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'anggota-level-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'anggota_level_id',
		'anggota_level_alias',
		'anggota_level_nama',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
