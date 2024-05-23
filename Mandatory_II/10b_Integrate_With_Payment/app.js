import dotenv from 'dotenv'
import express from 'express'
import Stripe from "stripe";

dotenv.config();
const stripe = new Stripe(process.env.STRIPE_SECRET_KEY)
const app = express();
app.use(express.static("public"));
app.use(express.json());

app.post('/create-payment-intent', async(req, res) => {
    const { amount } = req.body;
    console.log(`Attempting to create a payment intent for amount: $${amount / 100}`);
    try {
        const paymentIntent = await stripe.paymentIntents.create({
            amount: amount,
            currency: 'usd',
        });
        console.log(`Payment Intent created with ID: ${paymentIntent.id}`);

        res.send({
            clientSecret: paymentIntent.client_secret,
        })

    }catch (error){
        console.error(`Error creating payment intent: ${error.message}`);
        res.status(400).send({ error: error.message });
    }
})

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});