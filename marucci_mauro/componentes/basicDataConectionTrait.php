<?php

namespace basicDataConectionTrait;

trait basicDataConectionTrait
{
  //Respetar el orden [web,local]

  static $SERVER_NAME = ["localhost", "localhost"];
  static $USER_NAME = ["id21026129_administrator", "root"];
  static $PASSWORD = ["Administrator123_", ""];
  static $DATABASE = ["id21026129_utn_modulo_2", "marucci_mauro"];
  static $DEFAULT_DATABASE_DATA_INDEX = 3;
  static public function defaultBasicDataConection(): array
  {
    $entorno = "1";
    $entorno = ($_SERVER['REMOTE_ADDR'] === '127.0.0.1' || $_SERVER['REMOTE_ADDR'] === '::1') ? 1 : 0;
    return [
      self::$SERVER_NAME[$entorno],
      self::$USER_NAME[$entorno],
      self::$PASSWORD[$entorno],
      self::$DATABASE[$entorno]
    ];
  }
}

//administrator_db_maruccimauro
//id21026129_administrator
//id21026129_utn_modulo_2
