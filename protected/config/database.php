<?php
/* Silakan konfigurasi koneksi database
 * 'connectionString' => 'mysql:host=localhost;dbname=nama database'
 * 'username' => 'nama pengguna di database',
 * 'password' => 'kata sandi database',
 */
return array(	    
        //'pdoClass' => 'NestedPDO',
            'class'=>'CDbConnection',
            'connectionString' => 'mysql:host=localhost;dbname=senimandigital_comot',
	    'emulatePrepare' => true,
	    'username' => 'root',
	    'password' => '',
	    'charset' => 'utf8',
	    );
?> 
