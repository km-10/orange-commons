<?php
declare(strict_types=1);
require_once(dirname(__DIR__) . "/../config/config.php");
?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ORANGE COMMONS</title>
    <link rel="icon" href="../assets/images/web_icon_big.png">
    <link rel="stylesheet" href="../assets/css/style.css" type="text/css">
    <script src="https://unpkg.com/ionicons/dist/ionicons.js"></script>
</head>

<body>
    <!-- ヘッダーの読み込み -->
    <?php require_once(TEMPLATE_PATH . "/header.php")?>

    <!-- メニュー表示 -->
    <?php require_once(TEMPLATE_PATH . "/menu.php")?> 

</body>

</html>
