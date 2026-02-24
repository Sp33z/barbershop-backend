import express from 'express'
import cors from 'cors';
import { toNodeHandler } from 'better-auth/node';
import auth from './utils/auth.ts';
import userRoutes from './features/user/user.routes.ts';

const app = express();

app.all("/api/auth/*splat", toNodeHandler(auth));

app.use(express.json());
app.use(cors({
    origin: "http://localhost:3001",
    methods: ["GET", "POST", "PUT", "DELETE"],
}))

app.use("/api/user", userRoutes);

export default app;