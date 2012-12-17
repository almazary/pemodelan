<?php /* @var $this Controller */ ?>
<?php $this->beginContent('//layouts/main'); ?>
<div class="row-fluid">
    <div class="span8">
            <div class="widget-box">
                <div class="widget-title"><span class="icon"><i class="icon icon-th-list"></i></span><h5>Recent Posts</h5></div>
		<div class="widget-content padding">
                    <?php echo $content; ?>
                </div>
            </div><!-- content -->
    </div>
    <div class="span4">
            <div class="widget-box">
                <div class="widget-title"><span class="icon"><i class="icon icon-th-list"></i></span><h5>OPERATION </h5></div>
		<div class="widget-content padding">
                
                <?php
                        $this->beginWidget('zii.widgets.CPortlet', array(
                                
                        ));
                        $this->widget('zii.widgets.CMenu', array(
                                'items'=>$this->menu,
                                'htmlOptions'=>array('class'=>'nav nav-pills nav-stacked'),
                        ));
                        $this->endWidget();
                ?>
                </div><!-- sidebar -->
            </div>
        
            <?php
            if (isset($this->menu2)){
            ?>
            <div class="widget-box">
                <div class="widget-title"><span class="icon"><i class="icon icon-th-list"></i></span><h5>OPERATION </h5></div>
		<div class="widget-content padding">
                
                <?php
                        $this->beginWidget('zii.widgets.CPortlet', array(
                                
                        ));
                        $this->widget('zii.widgets.CMenu', array(
                                'items'=>$this->menu2,
                                'htmlOptions'=>array('class'=>'nav nav-pills nav-stacked'),
                        ));
                        $this->endWidget();
                ?>
                </div><!-- sidebar -->
            </div>
            <?php } ?>
    </div>
</div>
<?php $this->endContent(); ?>