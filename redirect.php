<?php
    if(!isset($_SERVER['HTTPS'])){
        header('Location: https://jelle.sdf.org' . $_SERVER['REQUEST_URI']); 
        die;
    }
?>
