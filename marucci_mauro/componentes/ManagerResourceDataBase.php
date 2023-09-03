<?php

namespace  ManagerDataBaseResource;


include_once('ManagerLogTrait.php');
include_once('basicDataConectionTrait.php');

use basicDataConectionTrait\basicDataConectionTrait as DataConection;
use ManagerLogTrait\ManagerLogTrait;


class ManagerResourceDataBase
{
  use ManagerLogTrait;
  use DataConection;
  private $table;
  public $conn;
  private $database;
  private $query;
  public function __construct()
  {
    $this->conn = mysqli_connect(...self::defaultBasicDataConection());
    $this->database = self::defaultBasicDataConection()[self::$DEFAULT_DATABASE_DATA_INDEX];
    if ($this->conn->connect_error) {
      $this->setNewLog('Error al conectar con la base de datos' . $this->database . ' php dice: ' . $this->conn->connect_error);
      die("Error de conexión: " . $this->conn->connect_error);
    } else {
      $this->setNewLog('Exito al conectar con la base de datos' . $this->database);
    }
  }

  public function InterceptTable($table)
  {
    $this->table = $table;
    $this->prepareQuery("SELECT 1 FROM information_schema.tables WHERE table_schema = '" . $this->database . "' AND table_name = '" . $this->table . "' LIMIT 1");
    $result = $this->conn->query($this->query);
    return $result->num_rows > 0
      ?  [$this->setNewLog('la tabla ' . $this->table . ' existe'), ""]
      :  $this->setNewLog('la tabla ' . $this->table . ' NO existe');
  }

  public function getTable($table)
  {

    if ($this->InterceptTable($table)) {
      $this->prepareQuery("SELECT * FROM " . $table . " ORDER BY create_at DESC");
      return mysqli_query($this->conn, $this->query);
    } else {
      return FALSE;
    }
  }

  public function prepareQuery($query)
  {
    $this->query = $query;
    $this->setNewLog($this->query);
  }
  public function executeQuery($query = null)
  {

    mysqli_query($this->conn, $query ?? $this->query);
  }

  public function CloseConnection()
  {
    mysqli_close($this->conn);
  }
}
