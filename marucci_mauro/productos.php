<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php include_once('./componentes/ManagerResource.php');

    use ManagerResource\ManagerResource;
    ?>
    <?php ManagerResource::instantDependency("./componentes/ManagerResourceDataBase.php", fn ($f) => require_once($f)); ?>
    <?php ManagerResource::instantDependency("./templates/global_css.php", fn ($f) => require_once($f)); ?>
    <title>CAFE ITALIANO</title>
</head>

<body>
    <?php ManagerResource::instantDependency('./static/js/script.js'); ?>
    <?php ManagerResource::instantDependency("./templates/header.php", fn ($f) => require_once($f)); ?>
    <main>
        <?php ManagerResource::instantDependency("./templates/productos.php", fn ($f) => include($f)); ?>
        <?php ManagerResource::instantDependency("./templates/main_footer.php", fn ($f) => include($f)); ?>
    </main>
    <?php ManagerResource::instantDependency("./templates/footer.php", fn ($f) => require_once($f)); ?>
    <?php ManagerResource::integratePendingDependencies(); ?>
</body>

</html>