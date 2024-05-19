import express from "express"

const app = express();
import swaggerJSdoc from "swagger-jsdoc";
const swaggerDefinition = {
  definition: {
    openapi: '3.1.0',
    info: {
      title: 'Users API',
      version: '0.0.1',
    },
  },
};

const swaggerOptions = {
    swaggerDefinition,
    apis: ["./routers/*.js"]
};

import swaggerUi from "swagger-ui-express";
app.use("/docs", swaggerUi.serve, swaggerUi.setup(swaggerJSdoc(swaggerOptions)));

import usersRouter from "./routers/usersRouter.js";

app.use(usersRouter);


app.listen(8080, () => console.log("Server is running: ", 8080));