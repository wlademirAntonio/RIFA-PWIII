<?php

$v1 = [];
$v2 = [];
$v3 = [];

$min = 1;
$max = 50;

$numeros = [];

for (; $min <= $max; $min++):

    $numeros[] = $min;

endfor;

shuffle($numeros);

while (count($numeros) != 0) {

    $v1[] = max($numeros);
    unset(max($numeros));

}