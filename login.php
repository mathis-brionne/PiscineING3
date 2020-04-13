<?php
//identifier la base de données
$database = "projeting3";

//connexion à la base de données
//Rappel : Le serveur est localhost | login : root | mdp : rien
$db_handle = mysqli_connect('localhost','root','');
$db_found = mysqli_select_db($db_handle,$database);

$login = isset($_POST["login"]) ? $_POST["login"] : "";
$mdp = isset($_POST["pass"]) ? $_POST["pass"] : "";
$mdhash = md5($mdp);

$login_status = 0;

//Si la BDD existe, faire le traitement
if($db_found) {
    $sql = "SELECT *  FROM membre WHERE Pseudo LIKE '%$login%'
    AND Mot_Passe LIKE '%$mdhash'";

    $result = mysqli_query($db_handle, $sql);

    if(mysqli_num_rows($result) == 0){
        $sql = "SELECT *  FROM membre WHERE Adresse_email LIKE '%$login%'
        AND Mot_Passe LIKE '%$mdhash'";
        $result = mysqli_query($db_handle, $sql);
        if(mysqli_num_rows($result) == 0){
            echo "Erreur : Login incorrect";
        }
        else {
            $login_status = 1;
        }
    }
    else {
        $login_status = 1;
    }
}

else {
    echo "Impossible de se connecter à la BDD";
}
//fermer connexion
mysqli_close($db_handle);
?>
