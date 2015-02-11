<?php
//CREATION DE BATIMENT
require('connect.php');
$sql1 = "SELECT
            ressources.id,
            ressources.user_id,
            ressources.z_basique,
            ressources.r_meat,
            ressources.b_labo,
            userdata.user_id,
            userdata.nom
        FROM
            ressources
        JOIN
            userdata
        ON
            ressources.user_id = userdata.user_id
        JOIN
            data_0
        ON
            ressources.user_id = data_0.user_id
        WHERE
            userdata.user_id= '".$_GET['id']."'
            ";
if(!($result = $db-> query($sql1))){
    die('erreur SQL1');
}
$row = $result-> fetch_assoc( );
echo $row['z_basique'];
$sql2 = "SELECT
            ressources.id,
            ressources.user_id,
            ressources.z_basique,
            ressources.r_meat,
            ressources.b_labo,
            userdata.user_id,
            userdata.nom
        FROM
            ressources
        JOIN
            userdata
        ON
            ressources.user_id = userdata.user_id
        JOIN
            data_0
        ON
            ressources.user_id = data_0.user_id
        WHERE
            userdata.user_id= '".$_GET['id2']."'
            ";
if(!($result = $db-> query($sql2))){
    die('erreur SQL2');
}
$sow = $result-> fetch_assoc( );
$sql3="
        SELECT
            caserne_lvl1_z_b,
            abattoir_lvl1_mdv,
            z_b_lvl1_mdv,
            z_b_lvl1_att,
            z_b_lvl1_def,
            z_b_lvl1_pv
        FROM
          data_0
        ";
if(!($result = $db-> query($sql3))){
    die('erreur SQL3');
}
$tow = $result-> fetch_assoc( );

$armyAhp=($tow['z_b_lvl1_pv']*$row['z_basique']);
//echo $armyAhp;
//echo $tow['z_b_lvl1_pv'];
echo $row['z_basique'];
echo $sow['z_basique'];
$armyAatt=($tow['z_b_lvl1_att']*$row['z_basique']);
$armyAdef=($tow['z_b_lvl1_def']*$row['z_basique']);
$armyBhp=($tow['z_b_lvl1_pv']*$sow['z_basique']);
$armyBatt=($tow['z_b_lvl1_att']*$sow['z_basique']);
$armyBdef=($tow['z_b_lvl1_def']*$sow['z_basique']);
$survA=$armyAhp-($armyAatt-$armyBdef);
//echo $survA;
$survB=$armyBhp-($armyBatt-$armyAdef);
$RarmyA=$survA/$tow['z_b_lvl1_pv'];
$RarmyB=$survB/$tow['z_b_lvl1_pv'];
$sql5= "
        UPDATE
		ressources
		SET
		`z_basique`='".$RarmyA."'
		WHERE
		`id`='".$_GET['id']."'
		";
if(!($result = $db-> query($sql5)));
$sql6= "
        UPDATE
		ressources
		SET
		`z_basique`='".$RarmyB."'
		WHERE
		`id`='".$_GET['id2']."'
		";
if(!($result = $db-> query($sql6)));