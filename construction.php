<?php
//CREATION DE BATIMENT
require('connect.php');
$sql = "SELECT
            ressources.id,
            ressources.user_id,
            ressources.r_meat,
            ressources.z_basique,
            ressources.r_humain,
            ressources.b_labo,
            ressources.b_abattoire,
            ressources.c_action,
            ressources.c_date_year,
            ressources.c_date_day,
            ressources.c_date_hour,
            ressources.c_date_min,
            ressources.c_date_sec,
            userdata.user_id,
            userdata.nom
        FROM
            ressources
        JOIN
            userdata
        ON
            ressources.user_id = userdata.user_id
        WHERE
            userdata.user_id= '".$_GET['id']."'
            ";
if(!($result = $db-> query($sql))){
    die('erreur SQL');
}
$row = $result-> fetch_assoc( );
//if ($row['c_action']>0){}
if ($row['b_labo']<1){
    if($row['z_basique']>=10){
        $date_year=date("Y");
        $date_day = date("z");
        $date_hours=date("H");
        $date_min=date("i");
        $date_sec=date("s");
        echo 1;
        $sql="
            UPDATE
		        ressources
            SET
			    c_date_year='".date("Y")."',
			    c_date_day='".date("z")."',
			    c_date_hour='".date("H")."',
			    c_date_min='".date("i")."',
			    c_date_sec='".date("s")."'
			WHERE
			    user_id=1
        ";
    }
}
if ($date_year>=date("Y")){
    if ($date_day>=date("z")){
        if ($date_hours>=date("H")){
            if ($date_min>=date("i")){
                if ($date_sec>=date("s")+30){

                }
            }
        }
    }
}
