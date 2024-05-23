import express from 'express'
import pkg from 'express-openid-connect';
const { auth, requiresAuth } = pkg;
import dotenv from 'dotenv'

const app = express();
dotenv.config();

const config = {
    authRequired: false,
    auth0Logout: true,
    secret: process.env.SESSION_SECRET,
    baseURL: 'http://localhost:3000',
    clientID: 'PPaKptHllOdMDfpBoZWRT2umQaXvHMOL',
    issuerBaseURL: 'https://dev-4mtcbseorth3xiai.us.auth0.com'
}

app.use(auth(config));

app.get("/", (req, res) => {
    res.send(req.oidc.isAuthenticated() ? 'Logged in' : 'Logged Out');
});

app.get('/profile', requiresAuth(), (req, res) => {
    console.log(JSON.stringify(req.oidc.user))
  res.send(JSON.stringify(req.oidc.user));
});

const PORT = 3000;
app.listen(PORT, () => {
    console.log("Server running on: ", 3000);
})