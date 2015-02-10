
<?php

$host = 'serveur'; 
$login = 'user'; 
$pass = 'password'; 
$db = 'base'; 

$bd = new mysqli ($host,$login,$pass,$db);

if (mysqli_connect_errno ()) {
     
     die ("erreur de connexion" . $bd -> connect_error);
     
}

?>
