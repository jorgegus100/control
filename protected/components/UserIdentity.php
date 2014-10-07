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
	public $nivel;
	public function authenticate()
	{
		$users=Usuarios::model()->find("LOWER(login)=?", array(strtolower($this->username)));
		if($users===null)
		{
			$this->errorCode=self::ERROR_USERNAME_INVALID;
		}
		elseif(sha1($this->password)!==$users->password)
			$this->errorCode=self::ERROR_PASSWORD_INVALID;
		else
			{
			$this->errorCode=self::ERROR_NONE;
			//$this->nivel=$users->nivel;
			$this->setState('nivel',$users->nivel);
                if($users->nivel==2)
                    {$tutor=Tutor::model()->find("idUsuario=".$users->idUsuario."");
                    $this->setState('idTut',$tutor->idTutor);
                    }
                $this->setState('id',$users->idUsuario);
				$this->setState('isAdmin', ($this->name == 'admin'));
			}
		return !$this->errorCode;
	}
}