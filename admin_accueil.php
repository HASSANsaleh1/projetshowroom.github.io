<?php 
/* Vérification ci-dessous à faire sur toutes les pages dont l'accès est autorisé à un utilisateur connecté. */
 session_start(); 
 if(!isset($_SESSION['login'])){

 header("Location:session.php"); 
 exit(); 
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>Inscription</title>
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

    <header>
        <!-- header inner -->
        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2 col logo_section">
                        <div class="full">
                            <div class="center-desk">
                                <div class="logo">
                                    <a href="index.html"><img src="images/logo.jpg" alt="logo" /></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-8 col-md-10 col-sm-10">
                        <div class="menu-area">
                            <div class="limit-box">
                                <nav class="main-menu">
                                    <ul class="menu-area-main">
                                        
                                       <ul class="menu-area-main">
                                        <li > <a href="index.php">Home</a> </li>
                                        <li> <a href="profil.php">profil</a> </li>
                                        <li> <a href="session.php">Login</a> </li>
                                        <li> <a href="contact.html">Contact</a> </li>
                                        <li class="active"> <a href="inscription.php">register</a> </li>
                                    </ul>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2">
                        <form class="search">
                            <input class="form-control" type="text" placeholder="Search">
                            <button><img src="images/search_icon.png"></button>
                        </form>
                    </div>
                </div>
            </div>
     <div id="screenshot" class="Lastestnews">
     	<h1>ESPACE ADMINISTRATION</h1>
        <div class="container">
 
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
        
          if (!$mysqli->set_charset("utf8")) {
              printf("Pb de chargement du jeu de car. utf8 : %s\n", $mysqli->error);
              exit();
          }
              /* Code PHP permettant de souhaiter la bienvenue à l’utilisateur connecté et
d’afficher le détail de son profil. */
          
              
         if (isset($_SESSION['login']))
        { 
            $pseudo = $_SESSION['login'];
             $requete="SELECT prof_nom,prof_prenom,prof_mail,prof_validity,prof_status From T_userprofile_prof where usr_pseudo= '" . $pseudo. "' ;";
            /*echo($requete);*/
             $resultat=$mysqli->query($requete);

             $personne=$resultat->fetch_assoc();

                echo ("<h3>Bienvennue ");
                echo ($personne['prof_prenom']);
                echo ("</h3>");
                echo "<br />";
           

            echo "<table border='1px'>";
            if($resultat->num_rows == 1) { 
                echo "<tr>";
                echo "<td>";
                echo "prof_nom";
                echo "</td>";
                echo "<td>";
                echo "prenom";
                echo "</td>";
                echo "<td>";
                echo "mail";
                echo "</td>";
                echo "<td>";
                echo "validité";
                echo "</td>";
                echo "<td>";
                echo "statut";
                echo "</td>";
                echo "</tr>"; 
                echo "<tr>";
                echo "<td>";
                echo ($personne['prof_nom']);
                echo "</td>";
                echo "<td>";
                echo ($personne['prof_prenom']);
                echo "</td>";
                echo "<td>";
                echo ($personne['prof_mail']);
                echo "</td>";
                echo "<td>";
                echo ($personne['prof_validity']);
                echo "</td>";
                echo "<td>";   
                echo ($personne['prof_status']);
                echo "</td>";
                echo "</tr>";    
            } 
            echo "</table>";
        }else{

            echo " vous avez comis une erreur";
        }
       

             
                
    

        ?>  

            <div class="row">
                <div class="col-md-12">
                    <div class="titlepage">
                       <ul class="breadcrumb">
                
                </li>
            </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                    <div class="news-box">
                       
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">

                    <div class="news-box">
                     
 
                    </div>
                </div>
               
            </div>
        </div>
         </div>

    </div>
    <!-- Javascript files-->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script src="js/plugin.js"></script>
    <!-- sidebar -->
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
    <script>
        $(document).ready(function() {
            $(".fancybox").fancybox({
                openEffect: "none",
                closeEffect: "none"
            });

            $(".zoom").hover(function() {

                $(this).addClass('transition');
            }, function() {

                $(this).removeClass('transition');
            });
        });
    </script>
</body>  