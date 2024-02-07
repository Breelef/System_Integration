<?php
$path = "C:/Users/emil_/System Integration/System_Integration/01._Miscellaneous/01._Home_Assignments/01._Files/";

function readXML(){
    global $path;
    $xml = simplexml_load_file($path . 'me.xml');
    foreach ($xml->children() as $child) {
        echo $child->getName() . "XML: " . $child . "<br>";
    }
}

function readTXT(){
    global $path;
    $txt = file_get_contents($path . 'me.txt');
    echo $txt;
}

function readJSON(){
    global $path;
    $json = file_get_contents($path . 'me.json');
    $data = json_decode($json);
    echo $data->key;
}

function readYAML(){
    global $path;
    $yaml = yaml_parse_file($path . 'me.yaml');
    print_r($yaml);
}

function readCSV(){
    global $path;
    $file = fopen($path . 'me.csv', 'r');
    while (($line = fgetcsv($file)) !== FALSE) {
        print_r($line);
    }
    fclose($file);
}

readCSV();
readJSON();
readTXT();
readXML();
readYAML();