<?php

namespace SectionBuilderTrait;

trait SectionBuilderTrait
{
    public static function SectionBuilder($file, $fnMethod)
    {
        [$initialComment, $finalComment] =  self::CommentBuilder(pathinfo($file, PATHINFO_FILENAME));
        print $initialComment;
        file_exists($file)
            ? $fnMethod($file)
            : print("El archivo $file no existe.");
        print $finalComment;
    }
    public static function CommentBuilder($tag)
    {
        $decoracion = str_repeat("-", 70);
        return [
            "\n<!-- \n    | $decoracion | \n                $tag [INICIO] \n    | $decoracion |\n-->\n",    "\n<!-- \n    | $decoracion | \n                $tag [FIN] \n    | $decoracion |\n-->\n"
        ];
    }
}
