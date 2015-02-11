<?php
$create = new Personnages($db);

if (isset($_SESSION['perso']))
{
$perso = $_SESSION['perso'];
}
if (isset($_POST['creer']) && isset($_POST['nom']))
{
switch ($_POST['type'])
{
case 'z_b' :
$perso = new basique(['nom' => $_POST['nom']]);
break;
case 'z_ao' :
$perso = new armure_os(['nom' => $_POST['nom']]);
break;

case 'z_c' :
$perso = new cracheur(['nom' => $_POST['nom']]);
break;
case 'z_m' :
$perso = new mastodonte(['nom' => $_POST['nom']]);
break;

default :
$message = 'Le type du personnage est invalide.';
break;
}

if (isset($perso)) // Si le type du personnage est valide, on a créé un personnage.
{
if (!$perso->nomValide())
{
$message = 'Le nom choisi est invalide.';
unset($perso);
}
elseif ($create->exists($perso->nom()))
{
$message = 'Le nom du personnage est déjà pris.';
unset($perso);
}
else
{
$create->add($perso);
}
}
}
elseif (isset($_POST['utiliser']) && isset($_POST['nom'])) // Si on a voulu utiliser un personnage.
{
if ($create->exists($_POST['nom'])) // Si celui-ci existe.
{
$perso = $create->get($_POST['nom']);
}
else
{
$message = 'Ce personnage n\'existe pas !'; // S'il n'existe pas, on affichera ce message.
}
}
?>
