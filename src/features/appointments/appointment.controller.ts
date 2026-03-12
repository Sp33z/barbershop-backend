import type { Request, Response } from "express";
import Appointment from "./appointment.model.ts";
import { Op } from "sequelize";

export const getAppointments = async (req: Request, res: Response) => {
  const { id, date } = req.query;

  const appointments = await Appointment.findAll({
    where: {
      ...(id && { barberId: { [Op.eq]: id } }),
      ...(date && { date: { [Op.eq]: date } }),
    },
  });

  res.status(200).json({ message: "Get appointments", appointments });
};

export const createAppointments = async (req: Request, res: Response) => {
  const { name, email, phone, services, barber, date, time, contact } = req.body;

  await Appointment.create({
    name: name,
    email: email,
    phone: phone,
    services: services,
    barberId: barber.id,
    barber: barber.name,
    date: date,
    time: time,
    contact: contact,
    completed: 0,
    completedAt: null,
  });

  res.status(200).json({ message: "Create appointments" });
};

export const editAppointments = async (req: Request, res: Response) => {
  res.status(200).json({ message: "Edit appointments" });
};

export const deleteAppointments = async (req: Request, res: Response) => {
  res.status(200).json({ message: "Delete appointments" });
};
