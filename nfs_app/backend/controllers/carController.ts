// backend/controllers/carController.ts
import { Request, Response } from 'express';
import Car from '../models/Car';
import GamePart from '../models/GamePart';

export const getAllCars = async (req: Request, res: Response) => {
  try {
    const cars = await Car.findAll();
    res.json(cars);
  } catch (error) {
    const err = error as Error;
    res.status(500).json({ error: err.message });
  }
};

export const getCarsByGamePartId = async (req: Request, res: Response) => {
  const { gamePartId } = req.query;
  try {
    const cars = await Car.findAll({
      include: [{
        model: GamePart,
        where: { id: Number(gamePartId) },
        through: { attributes: [] }
      }]
    });
    res.json(cars);
  } catch (error) {
    const err = error as Error;
    res.status(500).json({ error: err.message });
  }
};

export const createCar = async (req: Request, res: Response) => {
  try {
    const car = await Car.create(req.body);
    res.status(201).json(car);
  } catch (error) {
    const err = error as Error;
    res.status(500).json({ error: err.message });
  }
};
