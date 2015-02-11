<?php
    require('config_sql.php');
    $sql10= "
            SELECT
            r_meat,
            r_os,
            r_bile,
            user_id
            FROM
            ressources
            WHERE
            user_id='".$_GET['id']."'
    ";

if (!($result=$db-> query($sql10))){
    die('erreur SQL');
}
$mow=$result-> fetch_assoc( );
?>