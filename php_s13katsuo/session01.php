<?php

session_start();

$_SESSION['name'] = 'tagawa';
$_SESSION['age'] = 41;

$sid = session_id();
echo $sid;
