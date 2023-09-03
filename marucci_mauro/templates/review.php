<?php

use ManagerResource\ManagerResource;
use ManagerDataBaseResource\ManagerResourceDataBase;

ManagerResource::newPendingDependency('./static/css/review.css');
?>
<section class="section">
    <?php
    function AddNewCategoryScore($category, $score)
    {
        $tmphtml = "<div class='category-score'>$category</div>";
        for ($i = 1; $i <= $score; $i++) {
            $tmphtml .= "<img class='img-start' src='./resources/img/star_score.png' />";
        }
        return $tmphtml . "\n";
    }

    $ManagerDataBase = new ManagerResourceDataBase;
    $review = $ManagerDataBase->getTable('review');


    while ($row = mysqli_fetch_assoc($review)) {
        $category = AddNewCategoryScore("Productos", $row["product_score"]);
        $category .= AddNewCategoryScore("Atencion", $row["attention_score"]);
        $category .= AddNewCategoryScore("Limpieza", $row["cleanliness_score"]);
        $category .= AddNewCategoryScore("Demora", $row["time_score"]);

        echo <<<REVIEW
         <article class="new-article-review">
         <div class='container-left-review'>
            $category
         </div>
         <div class="container-right-review">
            <h1 class="comment_tittle">{$row["name"]} nos visito el {$row["date_visit"]} y dice :</h1>
            <p>" {$row["comment"]} "</p>
         </div>
         </article>
REVIEW;
    }
    $ManagerDataBase->CloseConnection();
    ?>
</section>