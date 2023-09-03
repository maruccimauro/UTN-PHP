<?php

use ManagerResource\ManagerResource;
use ManagerDataBaseResource\ManagerResourceDataBase;

ManagerResource::newPendingDependency('./static/css/equipo.css');
?>
<section class="section">
    <?php
    $ManagerDataBase = new ManagerResourceDataBase;
    $employees = $ManagerDataBase->getTable('employees');
    while ($row = mysqli_fetch_assoc($employees)) {
        $handleTime = new DateTime($row['birthday']);
        $edad = $handleTime->diff(new DateTime())->y;
        echo <<<PRESENTACION
        
        <article class="new-article-employee">

            <div class='container-left-employee'>
                <a ="anchor-article" href="./ver_integrante.php?nombre={$row["name"]}&edad={$edad}&posicion={$row["position"]}&id={$row["id"]}">
                    <img class='img-employee' src='./resources/employees_img/{$row["photo"]}' />
                <a/>
                <div class="position-employee">{$row["position"]}</div>
            </div>
                <div class="container-right-employee">
                    <h1 class="employee-tittle">{$row["name"]}</h1>
                    <p><span class="employee-subtittle">Nombre:</span> {$row["name"]} {$row["lastname"]}</p>
                    <p><span class="employee-subtittle">Edad:</span> {$edad} años</p>
                    <p><span class="employee-subtittle">Experiencia:</span> {$row["work_experience"]}</p>
                    <p><span class="employee-subtittle">Hobbies:</span> {$row["hobbies"]} </p>
                </div>
            </div>

        </article>
PRESENTACION;
    }
    ?>
</section>