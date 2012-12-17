<!DOCTYPE html>
<!-- saved from url=(0054)http://wbpreview.com/previews/WB0F35928/index.html#red -->
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><?php echo CHtml::encode($this->pageTitle); ?></title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/css/fullcalendar.css">
<link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/css/unicorn.main.css">
<link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/css/unicorn.red.css" class="skin-color">
</head>
<body>
<div id="header">
  <h1><a href="http://wbpreview.com/previews/WB0F35928/dashboard.html">Unicorn Admin</a></h1>
</div>
<div id="search">
  <input type="text" placeholder="Search here...">
  <button type="submit" class="tip-right" data-original-title="Search"><i class="icon-search icon-white"></i></button>
</div>
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav btn-group" style="width: auto; margin: 0px;">
    <li class="btn btn-inverse"><a title="" href="http://wbpreview.com/previews/WB0F35928/index.html#"><i class="icon icon-user"></i> <span class="text">Profile</span></a></li>
    <li class="btn btn-inverse dropdown" id="menu-messages"><a href="http://wbpreview.com/previews/WB0F35928/index.html#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="http://wbpreview.com/previews/WB0F35928/index.html#">new message</a></li>
        <li><a class="sInbox" title="" href="http://wbpreview.com/previews/WB0F35928/index.html#">inbox</a></li>
        <li><a class="sOutbox" title="" href="http://wbpreview.com/previews/WB0F35928/index.html#">outbox</a></li>
        <li><a class="sTrash" title="" href="http://wbpreview.com/previews/WB0F35928/index.html#">trash</a></li>
      </ul>
    </li>
    <li class="btn btn-inverse"><a title="" href="<?php echo Yii::app()->createUrl('/rights'); ?>"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
    <li class="btn btn-inverse"><a title="" href="http://wbpreview.com/previews/WB0F35928/login.html"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
  </ul>
</div>
    
<div id="sidebar">   
  
  <?php
    $this->widget('zii.widgets.CMenu',array(
      'activeCssClass'=>'active',
      'activateParents'=>true,
      'encodeLabel'=>false,
      'items'=>array(
        array(
          'label'=>"<i class='icon-home'></i> Home",
          'url'=>array('/'),
        ),
        array(
          'label'=>"<i class='icon icon-th-list'></i> Form elements",
          'url'=>array('/'),          
          'itemOptions'=>array('class'=>'submenu'),
          'items'=>array(
            array('label'=>'Common elements', 'url'=>array('/')),
            array('label'=>'Validation', 'url'=>array('/')),
            array('label'=>'Wizard', 'url'=>array('/')),
          ),
        ),
        array(
          'label'=>"<i class='icon-user'></i> Anggota",
          'url'=>array('/anggota/anggota'),
          'itemOptions'=>array('class'=>'submenu'),
          'items'=>array(
            array('label'=>'Anggota', 'url'=>array('/anggota/anggota')),
            array('label'=>'Alamat Anggota', 'url'=>array('/alamat/alamat')),
            array('label'=>'Validation', 'url'=>array('/')),
            array('label'=>'Wizard', 'url'=>array('/')),
          ),
        ),
        array(
            'label'=>'Login', 
            'url'=>array('/site/login'), 
            
        ),
        array(
            'label'=>'Logout ('.Yii::app()->user->name.')', 
            'url'=>array('/site/logout'), 
            
        )
      ),
    )); ?>
</div>

<div id="content">
    <div id="content-header">
            <h1>Dashboard</h1>
            <div class="btn-group" style="width: auto;">
                    <a class="btn btn-large tip-bottom" data-original-title="Manage Files"><i class="icon-file"></i></a>
                    <a class="btn btn-large tip-bottom" data-original-title="Manage Users"><i class="icon-user"></i></a>
                    <a class="btn btn-large tip-bottom" data-original-title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
                    <a class="btn btn-large tip-bottom" data-original-title="Manage Orders"><i class="icon-shopping-cart"></i></a>
            </div>
    </div>
    
        <?php if(isset($this->breadcrumbs)):?>
		<?php $this->widget('bootstrap.widgets.TbBreadcrumbs', array(
                    'links'=> $this->breadcrumbs,
                )); ?><!-- breadcrumbs -->
	<?php endif?>       
    
    <div class="container-fluid">            
	<?php 
//        $this->widget('bootstrap.widgets.TbBox', array(
//            'title' => 'Basic Box',
//            'headerIcon' => 'icon-home',
//            'content' => $content, // $this->renderPartial('_view')
//        ));
        echo $content; 
        ?>
        
        <div class="row-fluid">
                <div id="footer" class="span12">
                         <?php echo date('Y'); ?> Seniman Digital | <?php echo Yii::powered(); ?>
                </div>
        </div>
    </div>
</div>
<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/excanvas.min.js"></script>
<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.ui.custom.js"></script>
<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.flot.min.js"></script>
<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.flot.resize.min.js"></script>
<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.peity.min.js"></script>
<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/fullcalendar.min.js"></script>
<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/unicorn.js"></script>
<?php /*
<script src="<?php echo Yii::app()->request->baseUrl; ?>/js/unicorn.dashboard.js"></script>
 * 
 */
?>
</body>
</html>