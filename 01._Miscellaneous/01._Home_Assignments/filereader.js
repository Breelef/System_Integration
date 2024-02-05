const fs = require("fs");
const yaml = require("js-yaml");
const {XMLParser, XMLBuilder, XMLValidator} = require("fast-xml-parser");

const path = "C:/Users/emil_/System Integration/System_Integration/01._Miscellaneous/01._Home_Assignments/01._Files/";

function ReadFromXML() {
    const xmlFile = fs.readFileSync(path + 'me.xml', 'utf8');
    const parser = new XMLParser();
    const json = parser.parse(xmlFile, { ignoreAttributes: false, attributeNamePreFix : ""});
    const data = JSON.stringify(json);
    return data;
}


function ReadFromYaml()
{
    const data = fs.readFileSync(path + 'me.yaml', 'utf8');
    const result = yaml.load(data);
    const json = JSON.stringify(result);
    return json;
}

function ReadFromJSON()
{
    const data = fs.readFileSync(path + 'me.json', 'utf-8');
    const parse = JSON.parse(data);
    const result = JSON.stringify(parse);
    return result;
}

function ReadFromTXT()
{
    const readData = fs.readFileSync(path + "me.txt");
    return readData;
}

function ReadFromCSV()
{
    const lines = fs.readFileSync(path + 'me.csv', 'utf-8').split('\n');
    return lines[1].split(',');
}


function print(){
    const xmldata = ReadFromXML();
    const TXTdata = ReadFromTXT();
    const JSONdata = ReadFromJSON();
    const YAMLdata = ReadFromYaml();
    const CSVdata = ReadFromCSV();
    console.log("XMLPRINT: " + xmldata);
    console.log("TXTPRINT: " + TXTdata);
    console.log("JSONPRINT: " + JSONdata);
    console.log("YAMLPRINT: " + YAMLdata);
    console.log("CSVPRINT: " + CSVdata);
}

print();

