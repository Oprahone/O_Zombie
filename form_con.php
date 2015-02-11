<form action="index.php?control=connexion.php&f=inscrire" method="post">
     <label for="login">Entrez votre nom d'utilisateur :</label>
     <input type="text" name="login">
     <label for="pass">Entrez votre mot de passe :</label>
     <input type="password" name="pass">
     
     <?php
          echo ($message);
     ?>

</form>
