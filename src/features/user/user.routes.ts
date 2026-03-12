import { Router } from "express";
import { createUser, deleteUser, editUser, getUsers } from "./user.controller.ts";

const userRoutes = Router();

userRoutes.get("/", getUsers);

userRoutes.post("/", createUser);

userRoutes.put("/", editUser);

userRoutes.delete("/", deleteUser);

export default userRoutes;
