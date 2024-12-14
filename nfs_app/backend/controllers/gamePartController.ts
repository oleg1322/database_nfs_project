import { Request, Response } from 'express';
import GamePart from '../models/GamePart';

export const getAllGameParts = async (req: Request, res: Response) => {
  try {
    const gameParts = await GamePart.findAll();
    res.json(gameParts);
  } catch (error) {
    const err = error as Error;
    res.status(500).json({ error: err.message });
  }
};
