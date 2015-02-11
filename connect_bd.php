
<?php

require_once ("modele/config_sql.php");

function inscription ($login,$pass,$mail) {
     
     $sql = "SELECTnom FROM USER_DATA WHERE nom = '" . $login . "'";
     
     if !($result = $bd -> query ($sql) {
          
          $mess = 'erreur de requete';
          return false;

     }
     
     $row = $resultc -> fetch_assoc ();
     
     if ($login = = $row ['nom']) {
          
          $mess = 'Ce nom est déjà existant';
          return false;
          
     }
     
     $sql = "INSERT INTO USER_DATA ('nom','email','passwword') VALUES ('" . $login . "','" . $mail . "','" . $pass ."'");
     
     if !($bd -> query ($sql)) {
     
          $mess = 'erreur de requete';
          return false;
          
         }
          
     return true;
     
}
     
function connexion ($login,$pass) {
     
     $sql = "SELECT nom FROM USER_DATA WHERE 'nom' = '" . $login . "' AND 'password' = '" . $pass ."'");     

     if !($result = bd -> query ($sql)) {
     
          $mess = 'erreur de requete';
          return false;
         
    }
     
    else {
         
         if ($result -> num_rows != 2) {
          
          $mess = "Vous n'etes pas inscrit";
         return false;
         
         } 
             
     return true;
         
     }
     
}

?>
