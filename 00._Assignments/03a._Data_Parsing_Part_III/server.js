import express from "express";
import {ReadFromXML, ReadFromYaml, ReadFromJSON, ReadFromTXT, ReadFromCSV} from './filereader.js';
const app = express();


app.get('/getXML', (req, res) => {
    const xmldata = ReadFromXML();
    res.send(xmldata);
});

app.get('/getYAML', (req, res) => {
    const yamldata = ReadFromYaml();
    res.send(yamldata);
});

app.get('/getJSON', (req, res) => {
    const jsondata = ReadFromJSON();
    res.send(jsondata);
});

app.get('/getTXT', (req, res) => {
    const txtdata = ReadFromTXT();
    res.send(txtdata);
});

app.get('/getCSV', (req, res) => {
    const csvData = ReadFromCSV();
    res.send(csvData);
});

const PORT = process.env.PORT || 8080;
app.listen(PORT, (error) => {
    if(error){
        console.error(error);
    }
    console.log("Server is running on: ", PORT);
});