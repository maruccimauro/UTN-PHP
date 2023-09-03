<?php


namespace ManagerLogTrait;

trait ManagerLogTrait
{
  protected $DEFAULT_INDEX_OFFSET_PARENT = 2;
  protected $log = [];

  public function setNewLog($LogDescription, $offSetParent = null)
  {
    $parent = "";
    $backtrace = debug_backtrace();
    $offSetParent = !$offSetParent ? count($backtrace)  : min(count($backtrace), $offSetParent) + 1;
    for ($i = 0; $i < $offSetParent; $i++) {
      $parent = "ƒn[" . (fn () => isset($backtrace[$i]['function']) ? $backtrace[$i]['function'] : "DESCONOCIDO")() . "]::" . $parent;
    }
    $this->log[] = $parent .  "Log dice : " . $LogDescription;
  }
  public function getLog()
  {
    return $this->log;
  }

  public function renderizeLog()
  {
    $content = null;
    foreach ($this->getLog() as $key => $value) {
      $content .= "ID[" . $key . "] == " . $value . "\n";
    }
    echo "<pre>" . (fn ($content) => $content ?? "\n ManagerLog: no registran sucesos.\n")($content) . "</pre>";
  }
}
