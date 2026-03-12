import type { Request, Response } from "express";
import { Op } from "sequelize";
import Workdays from "./workdays.model.ts";

// Get Workdays
export const getWorkdays = async (req: Request, res: Response) => {
  const { id, week } = req.query;

  const workdays = await Workdays.findAll({
    where: {
      ...(id && { userId: { [Op.eq]: id } }),
      ...(week && {
        week: { [Op.eq]: new Date(week as string) },
      }),
    },
  });

  res.status(200).json({ workdays });
};

// Create Workday
export const createWorkdays = async (req: Request, res: Response) => {};

// Edit Workday
export const editWorkdays = async (req: Request, res: Response) => {
  const { id, userId, week, start, finish } = req.body;

  await Workdays.update(
    {
      start: start,
      finish: finish,
    },
    {
      where: {
        id: id,
        userId: userId,
        week: week,
      },
    },
  );

  res.status(200).json({});
};

// Delete Workday
export const deleteWorkdays = async (req: Request, res: Response) => {};
