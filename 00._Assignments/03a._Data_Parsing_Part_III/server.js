const express = require('express');
const filereader = require('../01._Miscellaneous/01._Home_Assignments/filereader.js');
const app = express();


app.get('/getXML', (req, res) => {
    const xmldata = filereader.ReadFromXML();
    res.send(xmldata);
});

app.get('/getYAML', (req, res) => {
    const yamldata = filereader.ReadFromYaml();
    res.send(yamldata);
});

app.get('/getJSON', (req, res) => {
    const jsondata = filereader.ReadFromJSON();
    res.send(jsondata);
});

app.get('/getTXT', (req, res) => {
    const txtdata = filereader.ReadFromTXT();
    res.send(txtdata);
});

app.get('/getCSV', (req, res) => {
    filereader.ReadFromCSV(csvData => {
        res.send(csvData);
    });
});

const PORT = process.env.PORT || 8080;
app.listen(PORT, (error) => {
    if(error){
        console.error(error);
    }
    console.log("Server is running on: ", PORT);
});