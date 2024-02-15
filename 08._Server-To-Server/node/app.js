import express from "express";



const app = express();


app.get('/requestFastAPI', async (req, res) => {
   const response = await fetch('http://127.0.0.1:8000/fastapidata');
   const data = await response.json();
   res.send(data);
});

app.get('/expressData', (req, res) => {
   res.send({message: "isRunning" });
});



const PORT = 8080;
app.listen(PORT, () => {
   console.log("Server running on: ", PORT);
});