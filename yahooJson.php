<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

header('Content-Type: application/json;charset=UTF-8');

$params = array(
    'appid' => 'dj0zaiZpPVJHdlpLQzJsY05BYyZzPWNvbnN1bWVyc2VjcmV0Jng9NDc-',
    'query' => $_REQUEST['keywd'],
    'results' => 20
);
$url = 'http://chiebukuro.yahooapis.jp/Chiebukuro/V1/questionSearch?'.http_build_query($params);
$doc = simplexml_load_string(file_get_contents($url));
print(json_encode($doc));