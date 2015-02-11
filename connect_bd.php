
<?php

require_once ("modele/config_sql.php");

function inscription ($login,$pass,$mail) {
     
     $sql = "INSERT INTO USER_DATA ('nom','email','passwword') VALUES ('" . $login . "','" . $mail . "','" . $pass ."')";
     
     if (!($bd -> query ($sql))) {
     
          echo ('erreur de requete');
          return false;
          
         }
          
     return true;
     
}
     
function connexion ($login,$pass) {
     
     $sql = "SELECT nom FROM USER_DATA WHERE 'nom' = '" . $login . "' AND 'password' = '" . $pass ."'");     

     if (!($result = $bd -> query ($sql))) {
     
          echo ('erreur de requete');
          return false;
         
    }
     
    else {
         
         if ($result -> num_rows != 2) {
           
         return false;
         
         } 
             
     return true;
         
     }
     
}

?>
