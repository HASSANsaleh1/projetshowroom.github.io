<!DOCTYPE html>
<html lang="en">

<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="wpseudoth=device-wpseudoth, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>inscription</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
  <body>  
    <FORM Method="GET" Action="admin_accueil.php"> 
                <?php
          $mysqli = new mysqli('localhost','zhassansa','c296kqnv','zfl2-zhassansa');
          if ($mysqli->connect_errno) {
              // Affichage d'un message d'erreur
              echo "Error: Problème de connexion à la BDD \n";
              echo "Errno: " . $mysqli->connect_errno . "\n";
              echo "Error: " . $mysqli->connect_error . "\n";
              // Arrêt du chargement de la page
              exit();
          }
          // Instructions PHP à ajouter pour l'encodage utf8 du jeu de caractères
          if (!$mysqli->set_charset("utf8")) {
              printf("Pb de chargement du jeu de car. utf8 : %s\n", $mysqli->error);
              exit();
          }
          echo ("Connexion BDD réussie !");
          if (!$mysqli->set_charset("utf8")) {
              printf("Pb de chargement du jeu de car. utf8 : %s\n", $mysqli->error);
              exit();
          }
              session_start();
           if (($_POST["pseudo"]) && ($_POST["mdp"])){
            $pseudo = htmlspecialchars($_POST['pseudo']);
            $mdp = htmlspecialchars($_POST['mdp']);
              
         
          $requete="SELECT  usr_pseudo,usr_Mdp,prof_status,prof_validity FROM T_useraccount_usr 
                        JOIN T_userprofile_prof USING (usr_pseudo)
                          WHERE usr_pseudo='" . $pseudo . "' AND usr_Mdp=MD5('" . $mdp . "') AND prof_validity='A';";
                echo ($requete) ;
                $resultat=$mysqli->query($requete);
                      if ($resultat==false) {
               // La requête a echoué
               echo "Error: Problème d'execution de la requete \n";
               exit();
               }
      else {
        
                
            if($resultat->num_rows == 1) {
                  //Mise à jour des données de la session
                  $_SESSION['login']=$pseudo;

                  $ligne=$resultat->fetch_assoc();

                   $_SESSION['statut']= $ligne["pfl_status"];
                   
              
                   header("Location:admin_accueil.php");
                  }
              else{
                   // aucune ligne retournée
                   // => le compte n'existe pas ou n'est pas valide
                  echo "pseudo/mot de passe incorrect(s) ou profil inconnu !";
                  echo "<br /><a href=\"./session.php\">Cliquez ici pour réafficher le formulaire</a>";
                  }


              //Fermeture de la communication avec la base MariaDB
              $mysqli->close();
              }
         
             }
        ?>
         </FORM>
   </body>
</html>