<?php

/**
 * UserIdentity represents the data needed to identity a user.
 * It contains the authentication method that checks if the provided
 * data can identity the user.
 */
class UserIdentity extends CUserIdentity
{
	/**
	 * Authenticates a user.
	 * The example implementation makes sure if the username and password
	 * are both 'demo'.
	 * In practical applications, this should be changed to authenticate
	 * against some persistent user identity storage (e.g. database).
	 * @return boolean whether authentication succeeds.
	 */
    
        public $_id;
        
        public function authenticate()
	{
                
		/*$users=array(
			// username => password
			'demo'=>'demo',
			'admin'=>'admin',
		);
                */
                $username = strtolower($this->username);
                $user = Anggota::model()->find('Lower(anggota_username)=?',array($username));
                
                if ($user == NULL){
                    $this->errorCode=self::ERROR_USERNAME_INVALID;
                }
                elseif (!$user->validatePassword($this->password)){
                    $this->errorCode=self::ERROR_PASSWORD_INVALID;
                }
                else{
                    $this->_id = $user->anggota_id;
                    $this->username = $user->anggota_username;
                    $this->errorCode=self::ERROR_NONE;
                }
                /*
		if(!isset($users[$this->username]))
			$this->errorCode=self::ERROR_USERNAME_INVALID;
		else if($users[$this->username]!==$this->password)
			$this->errorCode=self::ERROR_PASSWORD_INVALID;
		else
			$this->errorCode=self::ERROR_NONE;
                */
		return !$this->errorCode;
	}
        
        public function getId() {
            return $this->_id;
        }
}