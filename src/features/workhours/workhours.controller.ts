import type { Request, Response } from "express";
import Workhours from "./workhours.model.ts";
import { Op } from "sequelize";

const weekDays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];

// Get Workhours
export const getWorkhours = async (req: Request, res: Response) => {
  const { id, week } = req.query;

  let worked = 0;
  let workdays = [];

  workdays = await Workhours.findAll({
    where: {
      ...(id && { userId: { [Op.eq]: id } }),
      ...(week && { week: { [Op.eq]: new Date(week as string) } }),
    },
  });

  if (id && week && workdays.length == 0) {
    for (const day of weekDays) {
      await Workhours.create({
        userId: id,
        week: new Date(week as string),
        day: day,
        start: weekDays.indexOf(day) < 5 ? "08:00" : "00:00",
        finish: weekDays.indexOf(day) < 5 ? "16:00" : "00:00",
        duration: weekDays.indexOf(day) < 5 ? "08:00" : "00:00",
      });
    }
  }

  if (week) {
    const startDate = new Date(week as string);
    let endDate = new Date(week as string);

    startDate.setDate(1);
    endDate.setDate(32);

    endDate = endDate > new Date() ? new Date() : endDate;

    const workedDays = await Workhours.findAll({
      where: {
        ...(id && { userId: { [Op.eq]: id } }),
        ...(week && { week: { [Op.between]: [startDate, endDate] } }),
      },
    });

    for (const day of workedDays) {
      const start = new Date(`1970-01-01T${day.dataValues.start}Z`);
      const finish = new Date(`1970-01-01T${day.dataValues.finish}Z`);
      const duration = (finish.getTime() - start.getTime()) / 60000;
      worked += duration;
    }
  }

  workdays = await Workhours.findAll({
    where: {
      ...(id && { userId: { [Op.eq]: id } }),
      ...(week && { week: { [Op.eq]: new Date(week as string) } }),
    },
  });

  res.status(200).json({ workdays, worked });
};

export const createWorkhours = async (req: Request, res: Response) => {
  res.status(200).json({ message: "Create workhours" });
};

// Edit Workhours
export const editWorkhours = async (req: Request, res: Response) => {
  const { params } = req.body;
  const { id, userId, week, start, finish } = params;

  const duration = (new Date(`1970-01-01T${finish}Z`).getTime() - new Date(`1970-01-01T${start}Z`).getTime()) / 60000;
  let worked = 0;

  await Workhours.update(
    {
      start,
      finish,
      duration: `${Math.floor(duration / 60)
        .toString()
        .padStart(2, "0")}:${(duration % 60).toString().padStart(2, "0")}`,
    },
    { where: { id } },
  );

  if (week) {
    const startDate = new Date(week as string);
    let endDate = new Date(week as string);

    startDate.setDate(1);
    endDate.setDate(32);

    endDate = endDate > new Date() ? new Date() : endDate;

    const workedDays = await Workhours.findAll({
      where: {
        ...(id && { userId: { [Op.eq]: userId } }),
        ...(week && { week: { [Op.between]: [startDate, endDate] } }),
      },
    });

    for (const day of workedDays) {
      const start = new Date(`1970-01-01T${day.dataValues.start}Z`);
      const finish = new Date(`1970-01-01T${day.dataValues.finish}Z`);
      const duration = (finish.getTime() - start.getTime()) / 60000;
      worked += duration;
    }
  }

  res.status(200).json({ worked });
};

export const deleteWorkhours = async (req: Request, res: Response) => {
  res.status(200).json({ message: "Delete workhours" });
};
