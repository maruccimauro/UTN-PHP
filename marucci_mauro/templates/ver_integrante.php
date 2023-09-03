<?php

use ManagerResource\ManagerResource;

ManagerResource::newPendingDependency('./static/css/ver_integrante.css');

if (isset($_GET['nombre']) && isset($_GET['edad']) && isset($_GET['posicion'])) {
    $nombre = $_GET['nombre'];
    $edad = $_GET['edad'];
    $posicion = $_GET['posicion'];
    $id = $_GET['id'];
} else {

    header("Location: index.php");
    echo '<script>window.location.href = "index.php";</script>';
    exit();
}


?>

<section class="section">
    <article onclick="{window.history.back()}" class="new-article-ver_integrante">
        <div class='container-left-ver_integrante'>
            <img class='img-ver_integrante' src='./resources/employees_img/employee_<?php echo $id ?>.jpg' />
        </div>
        <div class="container-right-ver_integrante">
            <h1 class="ver_integrante-tittle">[<?php echo $nombre ?>]</h1>
            <p><span class="ver_integrante-subtittle">[Edad de <?php echo $edad ?> años]</span></p>
            <p><span class="ver_integrante-subtittle">[Actualmente es <?php echo $posicion ?> en nuestra sucursal]</span> </p>
            <p><span class="ver_integrante-thanks">Estamos muy contentos de que seas parte de nuestro equipo</p>
        </div>
        </div>

    </article>

</section>