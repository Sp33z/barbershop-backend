import { Router } from "express";
import {
  createWorkdays,
  deleteWorkdays,
  editWorkdays,
  getWorkdays,
} from "./workdays.controller.ts";

const workdaysRouter = Router();

workdaysRouter.get("/", getWorkdays);

workdaysRouter.post("/", createWorkdays);

workdaysRouter.put("/", editWorkdays);

workdaysRouter.delete("/", deleteWorkdays);

export default workdaysRouter;
