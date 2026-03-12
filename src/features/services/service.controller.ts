import { type Request, type Response } from "express";
import Service from "./service.model.ts";

export const getService = async (req: Request, res: Response) => {
  const services = await Service.findAll();

  res.status(200).json({ message: "Service retrieved successfully", services });
};

export const updateService = async (req: Request, res: Response) => {
  const id = req.params.id;
  const { icon, name, description, price } = req.body;

  await Service.update(
    { icon, name, description, price },
    {
      where: {
        id: id,
      },
    },
  );

  res.status(200).json({ message: "Service updated successfully" });
};

export const createService = async (req: Request, res: Response) => {
  const { icon, name, description, price } = req.body;

  await Service.create({
    icon,
    name,
    description,
    price,
  });

  res.status(200).json({ message: "Service created successfully" });
};

export const deleteService = async (req: Request, res: Response) => {
  const id = req.params.id;

  await Service.destroy({
    where: {
      id: id,
    },
  });

  res.status(200).json({ message: "Service deleted successfully" });
};
