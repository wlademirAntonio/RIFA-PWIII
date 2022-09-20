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

while (TRUE) {

    if (count($numeros) != 0) {
        
        $v1[] = $numeros[count($numeros) - 1];
        unset($numeros[count($numeros) - 1]);

    }
    if (count($numeros) != 0) {

        $v2[] = $numeros[count($numeros) - 1];
        unset($numeros[count($numeros) - 1]);

    }
    if (count($numeros) != 0) {

        $v3[] = $numeros[count($numeros) - 1];
        unset($numeros[count($numeros) - 1]);

    }
    if (count($numeros) == 0) {

        break;

    }

}

foreach ($v1 as $v) {

    echo $v . ' ';

}

echo '<br><br>';

foreach ($v2 as $v) {

    echo $v . ' ';

}

echo '<br><br>';

foreach ($v3 as $v) {

    echo $v . ' ';

}
