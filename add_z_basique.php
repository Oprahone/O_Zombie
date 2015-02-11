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
            userdata.nom,
            data_0.caserne_lvl1_z_b,
            data_0.abattoire_lvl_mdv,
            data_0.z_b_lvl1_mdv,
            data_0.z_b_lvl_att,
            data_0.z_b_lvl_def,
            data_0.z_b_lvl_pv
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
    die('erreur SQL');
}
$row = $result-> fetch_assoc( );
//crea abatoire
//if ($row['c_action']>0){}
if ($row['b_labo']==1){
    if($row['r_meat']>=10){
       $sql2= "
        UPDATE
		ressources
		SET
		`r_meat`='".$row['r_meat']."'-10,
		`z_basique`='".$row['z_basique']."'+1
		WHERE
		`id`='".$_GET['id']."'
		";
    if(!($result = $db-> query($sql2)));
    }
}
require('add_meat.php');
//`id`='".$_POST['id']."'
