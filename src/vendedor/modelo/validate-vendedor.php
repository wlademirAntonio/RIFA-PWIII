<?php

if (!isset($_SESSION['NOME']) && !isset($_SESSION['TIPO'])) {

    $dados = array(

        'tipo' => 'error',
        'mensagem' => 'Você não está autenticado no sistema'

    );

} else {

    $dados = array(

        'tipo' => 'success',
        'mensagem' => 'Seja bem vindo, ' . $_SESSION['NOME']

    );

}