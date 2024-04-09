const fs = require("fs");
const yaml = require("js-yaml");
const {XMLParser, XMLBuilder, XMLValidator} = require("fast-xml-parser");
const csv = require('csv-parser');

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

function ReadFromTXT() {
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

function ReadFromCSV(callback) {
    const results = [];
    fs.createReadStream(path + 'me.csv')
        .pipe(csv())
        .on('data', (data) => results.push(data))
        .on('end', () => {
            const jsonData = results.map(row => {
                if (row.hobbies && row.hobbies.includes(',')) {
                    row.hobbies = row.hobbies.split(',').map(hobby => hobby.trim());
                }
                return row;
            });
            callback(jsonData);
        });
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

module.exports = {
    ReadFromXML,
    ReadFromYaml,
    ReadFromJSON,
    ReadFromTXT,
    ReadFromCSV
};

