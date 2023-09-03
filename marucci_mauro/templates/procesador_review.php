<?php

use ManagerDataBaseResource\ManagerResourceDataBase;


if (
  $_SERVER["REQUEST_METHOD"] == "POST" &&
  isset(
    $_POST["name"],
    $_POST["datetime"],
    $_POST["comment"],
    $_POST["product_score"],
    $_POST["attention_score"],
    $_POST["cleanliness_score"],
    $_POST["time_score"],
    $_POST["email"]
  )
) {

  $name = $_POST["name"];
  $datetime = $_POST["datetime"];
  $comment = $_POST["comment"];
  $product_score = $_POST["product_score"];
  $attention_score = $_POST["attention_score"];
  $cleanliness_score = $_POST["cleanliness_score"];
  $time_score = $_POST["time_score"];
  $email = $_POST["email"];

  if (!empty($email)) {
    mail($email, "Hola $name!", "Somos de Cafe Italiano. Queriamos agradecerte por dejar un reseña en nuestro sitio web. Esperamos verte pronto!!!!");
  }

  $ManagerDataBasePost = new ManagerResourceDataBase;
  $post = $ManagerDataBasePost->getTable('review');

  $ManagerDataBasePost->prepareQuery("INSERT INTO `review` (`name`, `date_visit`, `comment`, `product_score`, `attention_score`, `cleanliness_score`, `time_score`, `email`)
  VALUES ('$name', '$datetime', '$comment', $product_score, $attention_score, $cleanliness_score, $time_score, '$email')");

  $ManagerDataBasePost->executeQuery();

  $ManagerDataBasePost->CloseConnection();
}
