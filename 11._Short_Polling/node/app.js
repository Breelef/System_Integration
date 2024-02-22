import express, {application} from "express";

const app = express();

app.use(express.static("public"));

const randomNumbers = [1, 5, 8, 32, 53];


app.get("/poll", (req, res) => {
    res.send({data: randomNumbers});
});

app.post("/simulateRandomNumbers", (req, res) => {
    const newNumber = getRandomInt(3, 1001);
    randomNumbers.push(newNumber);
    res.send({data: newNumber});
});

function getRandomInt(min, max){
    return Math.floor(Math.random() * (max - min +1) + min);
}




const PORT = 8080;
app.listen(PORT, () => {
    console.log("Server Running On: ", PORT);
})