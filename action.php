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

     if (empty($_POST["pseudo"]) ||  empty($_POST["mail"]) || empty($_POST["nom"]) || empty($_POST["prenom"]) || (strcmp($_POST["motdpass"], $_POST["rmotdpass"]) != 0))
    {
        if(strcmp($_POST["motdpass"], $_POST["rmotdpass"]) != 0)
        {
            echo "Les deux mots de passe sont differents <br />";
        }
            echo "Remplissez le formulaire correctement<br />";
            header("refresh:5;url=inscription.php");
          }   
            else{
                $pseudo = htmlspecialchars($_POST['pseudo']);
                $motdpass = htmlspecialchars($_POST['motdpass']);
                $rmotdpass = htmlspecialchars($_POST['rmotdpass']);
                $nom = htmlspecialchars($_POST['nom']);
                $prenom = htmlspecialchars($_POST['prenom']);
                $mail = htmlspecialchars($_POST['mail']);
                    $sql1 = "INSERT INTO T_useraccount_usr VALUES('" . $pseudo . "','" . md5($motdpass) . "');";
                    $sql2 = "INSERT INTO T_userprofile_prof  (prof_nom,prof_prenom,prof_mail,prof_validity,prof_status,prof_DATE,usr_pseudo)  VALUES('" . $nom . "','" . $prenom . "', '" . $mail . "', 'D', 'R', curdate(), '" . $pseudo . "');";
                    //Exécution de la requête d'ajout d'un compte dans la table des comptes
                    $result3 = $mysqli->query($sql1);
                    $result4 = $mysqli->query($sql2);
                    if ($result3 == false || $result4 == false) //Erreur lors de l’exécution de la requête
                    {
                        // La requête a echoué
                        echo "Error: La requête a échoué \n";
                        echo "Query: " . $sql . "\n";
                        echo "Errno: " . $mysqli->errno . "\n";
                        echo "Error: " . $mysqli->error . "\n";
                        exit;
                    } else //Requête réussie
                    {
                        echo "<br />";
                        echo " Inscription réussie !" . "\n";
                        header("refresh:5;url=inscription.php");
                    }
            }
        

    
    ?>
</div>
</form>

</html>
