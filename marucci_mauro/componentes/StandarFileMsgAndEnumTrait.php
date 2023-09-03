<?php

namespace StandarFileMsgAndEnumTrait;

trait StandarFileMsgAndEnumTrait
{
    public static function enumCss()
    {
        return "css";
    }
    public static function CssStandarMsg()
    {
        return ["<link rel='stylesheet' href='%%file%%'>", "%%file%%"];
    }
    public static function enumJavascript()
    {
        return "js";
    }
    public static function JavascriptStandarMsg()
    {
        return ["<script src='%%file%%'></script>", "%%file%%"];
    }
    public static function enumPhp()
    {
        return "php";
    }
    public static function enumhtml()
    {
        return "html";
    }
    public static function enumOther()
    {
        return "*";
    }
}
