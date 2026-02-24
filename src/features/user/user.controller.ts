import type { Request, Response } from "express";
import User from "./user.model.ts";

export const me = async (req: Request, res: Response) => {
  console.log(req);

  res.status(200).json({ message: "User data retrieved successfully." });
};
