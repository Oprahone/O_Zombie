<?php

require_once ("modele/connect_bd.php");
require_once ("vue/affichage.php");

function inscrire () {
     	
	if (count($_POST)==0 || count($_POST)==1 || count($_POST)==2) {
		
		$_SESSION ['error'] = true;
		aff_acc();
             
     }
     
     else {
	
	    $login = $_POST['login'];
	    $pass = $_POST['pass'];
	    $mail = $_POST['mail'];
	    
	    if (verifAut_format($login,$pass,$mail)) {
	         
	         $_SESSION ['i'] = inscription ($login,$pass,$mail);
	         $_SESSION ['c'] = true;
	         
	    }
	    
     }
     
}

function connexion () {
     
	if (count ($_POST) == 0 || count($_POST)==1) {
		$_SESSION ['error'] = true;
		aff_acc();     
		
	}
	
	else {
	
	    $login = $_POST['login'];
	    $pass = $_POST['pass'];
	    
	    if (verifAut_format($login,$pass) && verif_bd($login,$pass)) {
	         
	         $_SESSION ['c'] = connexion ();
	         
	    }
	    
         else $_SESSION ['error'] = true;
     
     }

}

function verifAut_format($nom,$pass,$mail) {
     
	$mod_nom="`^([[:alnum:]]|[\-]){1,10}$`";
	if (! preg_match($mod_nom, $nom))
				return false;
				
	$mod_pass="`^.{1,15}$`";
	if (! preg_match($mod_pass, $pass))
				return false;
				
	$mod_mail="`^[\w\.]+\@\w\.+(\.\w)$`";
	// [\w\.]+\@\w+(\.\w)
	if (! preg_match($mod_mail, $mail))
				return false;
				
	return true;
	
}
