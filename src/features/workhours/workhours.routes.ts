import { Router } from "express";
import { createWorkhours, deleteWorkhours, editWorkhours, getWorkhours } from "./workhours.controller.ts";

const workhoursRouter = Router();

workhoursRouter.get("/", getWorkhours);

workhoursRouter.post("/", createWorkhours);

workhoursRouter.put("/", editWorkhours);

workhoursRouter.delete("/", deleteWorkhours);

export default workhoursRouter;
