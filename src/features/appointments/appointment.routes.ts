import { Router } from "express";
import { createAppointments, deleteAppointments, editAppointments, getAppointments } from "./appointment.controller.ts";

const appointmentRoutes = Router();

appointmentRoutes.get("/", getAppointments);

appointmentRoutes.post("/", createAppointments);

appointmentRoutes.put("/:id", editAppointments);

appointmentRoutes.delete("/:id", deleteAppointments);

export default appointmentRoutes;
