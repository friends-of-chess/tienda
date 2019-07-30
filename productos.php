<?php

$productos = [
    ["nombre" => "cerveza", "precio" => 4],
    ["nombre" => "bocadillo", "precio" => 6],
    ["nombre" => "refresco", "precio" => 2],
];

header("Content-type: application/json");
echo json_encode($productos);
