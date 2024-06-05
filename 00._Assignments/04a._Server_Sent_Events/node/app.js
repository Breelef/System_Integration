import express from "express";

const app = express();

app.use(express.static('public'));

app.get('/join', (req, res) => {
    const queueId = Date.now();
    const initialPosition = Math.floor(Math.random() * 100) + 1;
    res.json({queueId, initialPosition});
});

app.get('/queue', (req, res) => {
    const initialPosition = parseInt(req.query.initialPosition, 10);
    res.writeHead(200, {
        "Content-Type": "text/event-stream",
        "Cache-Control": "no-cache",
        "Connection": "keep-alive"
    });
    let position = initialPosition;

    const sendQueueUpdate = () => {
        if (position > 0) {
            res.write(`data: ${JSON.stringify({ position })}\n\n`);
            position--;
        } else {
            res.write(`data: ${JSON.stringify({ message: "You're next!" })}\n\n`);
            clearInterval(interval);
            res.end();
        }
    };
    const interval = setInterval(sendQueueUpdate, Math.floor(Math.random() * 5000) + 1000);
    req.on('close', () => {
    clearInterval(interval);
  });
});






const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {console.log("Server running on: ", PORT)});