import type { Request, Response } from "express";
import User from "./user.model.ts";
import { Op } from "sequelize";

export const getUsers = async (req: Request, res: Response) => {
  const { id, employees } = req.query;

  const users = await User.findAll({
    where: {
      ...(id && { id: { [Op.eq]: id } }),
      ...(employees && { permission: { [Op.gte]: employees } }),
    },
  });

  res.status(200).json({ users });
};

export const createUser = async (req: Request, res: Response) => {
  res.status(200).json({ message: "Create user" });
};

export const editUser = async (req: Request, res: Response) => {
  res.status(200).json({ message: "Edit user" });
};

export const deleteUser = async (req: Request, res: Response) => {
  res.status(200).json({ message: "Delete user" });
};
