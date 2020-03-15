<?php
    $db = mysqli_connect('51.178.41.120:5000','woody_admin','admin','woodytoys_db')
    or die('Error connecting to MySQL server.');
?>

<html>

<head>
</head>

<body>
    <h1>Bienvenu sur l'ERP (intranet)</h1>
 
    <?php
        $query = "SELECT * FROM toys";
        mysqli_query($db, $query) or die('Error querying database.');
        $result = mysqli_query($db, $query);

        while ($row = mysqli_fetch_array($result)) {
            echo $row['id_toys'] . ': ' . $row['toyName'] . ' ' . $row['toyPrice'] . ' <br />';
        }
    ?>

</body>

</html>