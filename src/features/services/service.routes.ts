import { Router } from "express";
import { createService, deleteService, getService, updateService } from "./service.controller.ts";

const serviceRoutes = Router();

serviceRoutes.get("/", getService);

serviceRoutes.put("/:id", updateService);

serviceRoutes.post("/", createService);

serviceRoutes.delete("/:id", deleteService);

export default serviceRoutes;
