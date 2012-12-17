<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');

// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'Seniman Digital',

	// preloading 'log','bootstrap' component - YiiBooster
	'preload'=>array('log','bootstrap'),        

	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.components.*',
		'application.modules.rights.*',
		'application.modules.rights.components.*',	
                'application.modules.anggota.models.Anggota'
	),

	'modules'=>array(
		// uncomment the following to enable the Gii tool
		'rights'=>array(
			'superuserName' => 'admin',
			'authenticatedName' => 'Authenticated',
                        'userIdColumn'=>'anggota_id',
                        'userNameColumn'=>'anggota_username',
                        'enableBizRule'=>true,
                        'enableBizRuleData'=>false,
                        'displayDescription'=>true,
                        'flashSuccessKey'=>'RightsSuccess',
                        'flashErrorKey'=>'RightsError',
                        'baseUrl'=>'/rights',
                        'layout'=>'rights.views.layouts.main',
                        'appLayout'=>'application.views.layouts.main',
                        'cssFile'=>'rights.css',
                        'debug'=>false,
                        'userClass'=>'Anggota',
                    //'install'=>true
		),
		
		
		'gii'=>array(
			'class'=>'system.gii.GiiModule',
			'password'=>'fafifu',
                        // template generator menggunakan YiiBooster
                        'generatorPaths' => array(
                            'bootstrap.gii'
                         ),
			// If removed, Gii defaults to localhost only. Edit carefully to taste.
			'ipFilters'=>array('127.0.0.1','::1'),
		),
                'bpm',
                'flowchart',
                'erd',
                'proyek',
		'anggota',
		'alamat',
                'perusahaan',
		
	),

	// application components
	'components'=>array(
		'user'=>array(
			// enable cookie-based authentication
			'allowAutoLogin'=>true,
                        'class'=>'RWebUser',
		),
		// uncomment the following to enable URLs in path-format
                'authManager'=>array(
                    'class'=>'RDbAuthManager',
                    'connectionID'=>'db',
                    'itemTable'=>'AuthItem',
                    'itemChildTable'=>'AuthItemChild',
                    'assignmentTable'=>'AuthAssignment',
                    'rightsTable'=>'Rights',
                    
                ),
            
		'urlManager'=>array(
			'urlFormat'=>'path',
			'rules'=>array(
				'<controller:\w+>/<id:\d+>'=>'<controller>/view',
				'<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
				'<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
			),
		),
                // Mendaftarkan bootstrap sebagai komponen aplikasi - YiiBooster
		'bootstrap' => array(
                    'class' => 'ext.bootstrap.components.Bootstrap',
                    'responsiveCss' => true,
                ),
                /*
		'db'=>array(
			'connectionString' => 'sqlite:'.dirname(__FILE__).'/../data/testdrive.db',
		),
                 * */
            
                 
		// uncomment the following to use a database
		
		'db' => require(dirname(__FILE__) . '/database.php'),

		
		'errorHandler'=>array(
			// use 'site/error' action to display errors
			'errorAction'=>'site/error',
		),
		'log'=>array(
			'class'=>'CLogRouter',
			'routes'=>array(
				array(
					'class'=>'CFileLogRoute',
					'levels'=>'error, warning',
				),
				// uncomment the following to show log messages on web pages
				/*
				array(
					'class'=>'CWebLogRoute',
				),
				*/
			),
		),
	),

	// application-level parameters that can be accessed
	// using Yii::app()->params['paramName']
	'params'=>array(
		// this is used in contact page
		'adminEmail'=>'webmaster@example.com',
	),
);