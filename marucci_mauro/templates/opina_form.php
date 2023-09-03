<?php

use ManagerResource\ManagerResource;

ManagerResource::newPendingDependency('./static/css/opina_form.css');
ManagerResource::newPendingDependency('./static/css/efecto_cafe.css');
?>
<section>
    <div class="formulario">
        <hr>
        <h1 class="Efecto_h1">DEJA UNA RESEÑA</h1>
        <h1 class="Efecto_h1">EN CAFE ITALIANO VALORAMOS MUCHO TU OPINION</h1>
        <hr>
        <form action="review.php" method="POST">
            <div class="campo">
                <label for="name">Tu nombre</label>
                <input type="text" id="name" name="name" required placeholder="Ingrese tu nombre">
            </div>
            <div class="campo">
                <label for="datetime">Cual es el dia de la reseña ?</label>
                <input type="date" id="datetime" name="datetime" required>
            </div>
            <div class="campo">
                <label for="comment">Dejanos tu reseña</label>
                <textarea id="comment" name="comment" rows="4" required placeholder="ingresa tu comentario"></textarea>
            </div>
            <hr>
            <div class="campo">
                <img src="./resources/img/valoration_score.png">
            </div>

            <div class="campo">
                <p>¿Que te parecieron nuestros productos? </p>
                <input type="range" id="product_score" name="product_score" min="1" max="5" step="1" value="1">
            </div>
            <div class="campo">
                <p>¿Como fue la atencion recibida? </p>
                <input type="range" id="attention_score" name="attention_score" min="1" max="5" step="1" value="1">
            </div>
            <div class="campo">
                <p>¿Como percibiste la limpieza del local? </p>
                <input type="range" id="cleanliness_score" name="cleanliness_score" min="1" max="5" step="1" value="1">
            </div>
            <div class="campo">
                <p>¿Fuiste atendido/a en un tiempo prudente? </p>
                <input type="range" id="time_score" name="time_score" min="1" max="5" step="1" value="1">
            </div>
            <div class="campo">
                <label for="email">Deja tu email para comunicarnos con vos.</label>
                <input type="email" id="email" name="email" required placeholder="Ingrese tu nombre">
            </div>
            <div class="campo">
                <button type="submit">Enviar</button>
            </div>
            <hr>
        </form>
    </div>
</section>