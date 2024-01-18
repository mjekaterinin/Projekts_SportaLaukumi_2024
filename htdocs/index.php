<!doctype html>
<html>
<head>
    <title>Rīgas Sporta Laukumi <?php echo $_GET['a'] ?></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/img_style.css">
    <link rel="stylesheet" type="text/css" href="css/table_align.css">
    <link rel="stylesheet" type="text/css" href="css/website_header.css">
    <meta name="description" content="Our first page">
    <meta name="keywords" content="html tutorial template">
    <link rel="stylesheet" href="css/search-design.css">
</head>
<body>
    <div class="header">
        <h1>
            <?php
            $needle = isset($_GET['needle']) ? $_GET['needle'] : '';
            echo $needle;
            ?>
        </h1>
    </div>



        <table>
            <tr>
                <td class="image-container">
                    <a href="kreisaiskrasts.php?id=1">
                        <img src="img/pardaugava.png" alt="Image 2" width="700" height="550">
                    </a>
                </td>
                <td class="image-container">
                    <a href="kreisaiskrasts.php?id=2">
                        <img src="img/kreisaiskrasts.png" alt="Image 1" width="700" height="550">
                    </a>
                </td>
            </tr>
        </table>
    </div>
    <div class="container">
        <form action="search_results.php" method="get">
            <label for="needle">Meklētājs</label>
            <input type="text" id="needle" name="needle">
            <button type="submit">Meklēt</button>
        </form>
</body>
</html>
