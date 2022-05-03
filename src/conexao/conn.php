<?php

$hostname = "sql102.epizy.com";
$database = "epiz_31454080_rifas";
$username = "epiz_31454080";
$password = "b367a3rTdTV";

if($conecta = mysqli_connect($hostname, $username, $password, $database)) {

    echo 'Conectado ao banco de dados '.$database.'.....';

} else {

    echo 'Erro: '.mysqli_connect_error();

}
