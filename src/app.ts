import express from "express";
import cors from "cors";
import { toNodeHandler } from "better-auth/node";
import auth from "./utils/auth.ts";
import userRoutes from "./features/user/user.routes.ts";
import serviceRoutes from "./features/services/service.routes.ts";
import appointmentRoutes from "./features/appointments/appointment.routes.ts";
import workhoursRouter from "./features/workhours/workhours.routes.ts";

const app = express();

app.all("/api/auth/*splat", toNodeHandler(auth));

app.use(express.json());
app.use(
  cors({
    origin: "http://localhost:3001",
    methods: ["GET", "POST", "PUT", "DELETE"],
  }),
);

app.use("/api/user", userRoutes);
app.use("/api/services", serviceRoutes);
app.use("/api/appointments", appointmentRoutes);
app.use("/api/workhours", workhoursRouter);

export default app;
