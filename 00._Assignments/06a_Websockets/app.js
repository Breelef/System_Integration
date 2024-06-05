import { WebSocketServer, WebSocket } from 'ws';

const PORT = process.env.PORT || 8080;
const server = new WebSocketServer({ port: PORT });

server.on("connection", (ws) => {
    console.log("New connection:", server.clients.size);

    ws.on("message", (message) => {
        console.log(`Message received from client: ${message}`);
        server.clients.forEach((client) => {
            if (client.readyState === WebSocket.OPEN) {
                client.send(message);
            }
        });
    });

    ws.on("close", () => {
        console.log("Client disconnected:", server.clients.size);
    });
});

console.log(`WebSocket server is running on ws://localhost:${PORT}`);
