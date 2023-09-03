<?php

namespace ManagerResource;

include_once('SectionBuilderTrait.php');
include_once('StandarFileMsgAndEnumTrait.php');

use SectionBuilderTrait;
use StandarFileMsgAndEnumTrait;

class ManagerResource
{
    use SectionBuilderTrait\SectionBuilderTrait;
    use StandarFileMsgAndEnumTrait\StandarFileMsgAndEnumTrait;

    private static $archivo = array();

    public static function newPendingDependency($archivo)
    {
        self::$archivo[] = $archivo;
    }

    public static function instantDependency($file, $fnMethod = null)
    {
        self::DependencyFilterAccion($file, $fnMethod);
    }

    public static function DependencyFilterAccion($file, $fnMethod)
    {
        switch (pathinfo(basename($file), PATHINFO_EXTENSION)) {
            case self::enumCss();
                self::addLinkDependency($file);
                break;
            case self::enumJavascript();
                self::addScriptDependency($file);
                break;
            default:
                self::addSectionDependency($file, $fnMethod);
        }
    }

    public static function addLinkDependency($file)
    {
        print strtr(self::CssStandarMsg()[0], [self::CssStandarMsg()[1] => $file]) . "\n";
    }

    public static function addScriptDependency($file)
    {
        print strtr(self::JavascriptStandarMsg()[0], [self::JavascriptStandarMsg()[1] => $file]) . "\n";
    }

    public static function addSectionDependency($file, $fnMethod)
    {
        self::SectionBuilder($file, $fnMethod);
    }

    public static function integratePendingDependencies()
    {
        [$initialComment, $finalComment] = self::CommentBuilder('ManagerResource::integratePendingDependencies');
        print $initialComment;
        foreach (self::$archivo as $archivo) {
            self::instantDependency($archivo, null);
        }
        print $finalComment;
    }
}
