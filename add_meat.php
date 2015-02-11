<?php
    $sql10="
        SELECT
        r_meat
        FROM
        ressources
    ";
if(!($result = $db-> query($sql10))){
    die('erreur SQL');
}
$pow = $result-> fetch_assoc( );
    $sql11= "
UPDATE
ressources
SET
`r_meat`='".$pow['r_meat']."'+20
WHERE
    `b_abattoire`=1
";
    if(!($result = $db-> query($sql11)));

