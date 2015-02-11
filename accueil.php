<!DOCTYPE html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="css/index.css">
		<title>Acceuil</title>
	</head>

	<body>
		<header>
			<a href="#"><h1>o'zombie</h1></a>
			<a href="#"><img alt="déconexion" src="img/deco.png"></a>
		</header>

		<div class="container">
			<div class="profil">
				<img src="img/profil.png">
				<div class="profil-content">
					<a href="#"><h3>Name</h3></a>
					<img src="img/placefolder.png">
					<p>Dans l'abbatoir <br>
				    Village Djanbogo</p>
				</div>
			</div>
            <?php
            require('affichage.php')
            ?>

			<section class="interface-jeu">
				<div class="ressources">
					<div class="ressource">
						<img alt="viande" src="img/viande.png">
						<p><?php echo $mow['r_meat']?></p>
					</div>
					<div class="ressource">
						<img alt="os" src="img/os.png">
						<p><?php echo $mow['r_os']?></p>
					</div>
					<div class="ressource">
						<img alt="bile" src="#">
						<p><?php echo $mow['r_bile']?></p>
					</div>
				</div>

				<div class="main">

					<div class="village">
						<img alt="#" src="#">
					</div>

					<div class="infos">
						<div class="info">
							<h3>Bâtiments</h3>
							<ul>
								<li>Crypte de ville</li>
								<li>Abbatoir</li>
								<li>Désosseur</li>
								<li>Caserne</li>
								<li>Usine biliaire</li>
							</ul>
						</div>

						<div class="info">
							<h3>Unités</h3>
							<ul>
								<li>Zombie basique</li>
								<li>Zombie armure d'os</li>
								<li>Zombie explosif</li>
								<li>Zombie cracheur</li>
								<li>zombie mastodonte</li>
							</ul>
						</div>

						<div class="info">
							<h3>Ressources</h3>
							<ul>
								<li>Morceaux de viande</li>
								<li>Os</li>
								<li>Bile</li>
							</ul>
						</div>
					</div>
				</div>
            </section>
		</div>
	</body>
</html>