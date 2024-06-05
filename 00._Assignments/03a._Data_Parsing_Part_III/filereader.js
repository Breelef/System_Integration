import fs from 'fs';
import yaml from 'js-yaml';
import { XMLParser } from 'fast-xml-parser';
import { parse } from 'csv-parse/sync';

const path = "01._Files/";

export function ReadFromXML() {
    const xmlFile = fs.readFileSync(path + 'me.xml', 'utf8');
    const parser = new XMLParser();
    const json = parser.parse(xmlFile, { ignoreAttributes: false, attributeNamePreFix : ""});
    return JSON.stringify(json);
}


export function ReadFromYaml()
{
    const data = fs.readFileSync(path + 'me.yaml', 'utf8');
    const result = yaml.load(data);
    return JSON.stringify(result);
}

export function ReadFromJSON()
{
    const data = fs.readFileSync(path + 'me.json', 'utf-8');
    const parse = JSON.parse(data);
    return JSON.stringify(parse);
}

export function ReadFromTXT() {
    const readData = fs.readFileSync(path + "me.txt", 'utf-8');
    const lines = readData.split('\n');
    const data = {};
    lines.forEach(line => {
        const [key, value] = line.split(' ');
        if (key && value) {
            data[key.trim()] = value.trim();
        }
    });
    return JSON.stringify(data);
}

export function ReadFromCSV() {
    const csvData = fs.readFileSync(path + 'me.csv', 'utf-8');
    const records = parse(csvData, {
        columns: true,
        skip_empty_lines: true
    });
    return JSON.stringify(records);
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

//print();


