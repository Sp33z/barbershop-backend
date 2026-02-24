import { Router } from "express";
import { me } from "./user.controller.ts";

const userRoutes = Router();

userRoutes.get("/me", me);

export default userRoutes;