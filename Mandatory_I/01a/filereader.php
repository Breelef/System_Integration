<?php
$path = "C:/Users/Emil/PhpstormProjects/System_Integration/01._Miscellaneous/01._Home_Assignments/01._Files/";

function readXML(){
    global $path;
    echo "XML\n";
    $xml = simplexml_load_file($path . 'me.xml');
    echo $xml->getName() . ":\n";
    foreach ($xml->children() as $child) {
        echo $child->getName() . ": " . $child . "\n";
    }
    echo "\n";
}

function readTXT(){
    global $path;
    echo "TXT\n";
    $txt = file_get_contents($path . 'me.txt');
    echo $txt;
    echo "\n";
}

function readJSON(){
    global $path;
    echo "JSON\n";
    $json = file_get_contents($path . 'me.json', true);
    $data = json_decode($json);

    echo "Navn: " . $data->Navn . "\n";
    echo "Alder: " . $data->Alder . "\n";
    echo "Hobbies: ";
    foreach ($data->Hobbies as $hobby){
        echo $hobby . ", ";
    }
    echo "\n";

}
require 'vendor/autoload.php';
use Symfony\Component\Yaml\Yaml;
function readYAML(){
    global $path;
    echo "YAML\n";
    $yamlContent = file_get_contents($path . 'me.yaml');
    $yamlData = Yaml::parse($yamlContent);
    print_r($yamlData);
    echo "\n";
}

function readCSV(){
    global $path;
    echo "CSV\n";
    $file_path = $path . 'me.csv';

    $file = fopen($file_path, 'r');
    while (($line = fgetcsv($file)) !== FALSE) {
        print_r($line);
    }
    fclose($file);
    echo "\n";
}

readCSV();
readJSON();
readTXT();
readXML();
readYAML();