import { Request, Response } from 'express';
import SystemRequirements from '../models/SystemRequirements';
import GamePart from '../models/GamePart';

export const getAllSystemRequirements = async (req: Request, res: Response) => {
  try {
    const systemRequirements = await SystemRequirements.findAll();
    res.json(systemRequirements);
  } catch (error) {
    const err = error as Error;
    res.status(500).json({ error: err.message });
  }
};

export const getSystemRequirementsByGamePartId = async (req: Request, res: Response) => {
  const { gamePartId } = req.query;
  try {
    const systemRequirements = await SystemRequirements.findOne({
      where: { game_id: Number(gamePartId) }
    });
    if (systemRequirements) {
      res.json(systemRequirements);
    } else {
      res.status(404).json({ error: 'System requirements not found' });
    }
  } catch (error) {
    const err = error as Error;
    res.status(500).json({ error: err.message });
  }
};
