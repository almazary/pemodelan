<?php /* @var $this Controller */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content="en" />

	<!-- blueprint CSS framework -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print" />
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection" />
	<![endif]-->

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css" />

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body>
<div id="SDnav">                
		<?php 
                $this->widget('bootstrap.widgets.TbNavbar', array(
                            //'type'=>'inverse', // null or 'inverse'
                            'brand'=> CHtml::encode(Yii::app()->name),
                            'brandUrl'=>'#',
                            'collapse'=>true, // requires bootstrap-responsive.css
                            'items'=>array(
                                    array(
                                            'class' => 'bootstrap.widgets.TbMenu',
                                            'items' => array(
                                                    array('label' => 'Home', 'url' => array('/')),
                                                    array('label'=>'Proyek', 'url'=>array('/proyek')),
                                                    array('label'=>'BPM', 'url'=>array('/bpm'),
                                                        'items'=>array(
                                                                array('label'=>'BPM Editor', 'url'=>array('/bpm/default/bpmEditor')),
                                                            ),
                                                        ),
                                                    array('label'=>'Flowchart', 'url'=>array('/flowchart'),
                                                        'items'=>array(
                                                               array('label'=>'Flowchart Editor', 'url'=>array('/flowchart')),
                                                            ),
                                                        ),    
                                                    array('label'=>'ERD', 'url'=>array('/erd'),
                                                        'items'=>array(
                                                               array('label'=>'ERD Editor', 'url'=>array('/erd')),
                                                            ),
                                                        ),
                                                    array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
                                                    array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
                                            )
                                    ),
                            ),
                    ));
                ?>
	</div><!-- mainmenu -->
        
<div class="container" style="margin-top:38px;"> 
	<?php if(isset($this->breadcrumbs)):?>
		<?php $this->widget('bootstrap.widgets.TbBreadcrumbs', array(
                    'links'=> $this->breadcrumbs,
                )); ?><!-- breadcrumbs -->
	<?php endif?>       
	
                
	<?php 
//        $this->widget('bootstrap.widgets.TbBox', array(
//            'title' => 'Basic Box',
//            'headerIcon' => 'icon-home',
//            'content' => $content, // $this->renderPartial('_view')
//        ));
        echo $content; 
        ?>

</div><!-- page -->

<div class="clear"></div>

<div id="footer">
        <?php echo date('Y'); ?> Seniman Digital<br/>
        <?php echo Yii::powered(); ?>
</div><!-- footer -->

</body>
</html>
