<?php 
    try{
        $db = new mysqli( 'localhost' , 'root' , '' , 'GAME' );
    }catch (mysqli_sql_exception $e){
        die('probleme de connection');
	}
