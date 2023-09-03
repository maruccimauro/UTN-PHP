<?php

use ManagerResource\ManagerResource;
use ManagerDataBaseResource\ManagerResourceDataBase;

ManagerResource::newPendingDependency('./static/css/productos.css');

?>


<section class="section">
    <h1>¡Este es el menu que vas a poder encontrar y disfrutar en nuestro local!</h1>
</section>



<section class="section">
    <article class="new-article-product">
        <h2 class="menu-tittle">>Menu :</h2>
        <?php
        $ManagerDataBase = new ManagerResourceDataBase;
        $produtos = $ManagerDataBase->getTable('productos');
        while ($row = mysqli_fetch_assoc($produtos)) {
            print <<<PRODUCTOS
        <div class="product">
            <div class="price">{$row["price"]}</div>
            <div class="product-detail">
                <h1 class="product-name">{$row["name"]}</h1>
                <p>{$row['description']}</p>
            </div>
        </div>
PRODUCTOS;
        }
        ?>

    </article>
</section>