import { Request, Response } from 'express';
import Soundtrack from '../models/Soundtrack';
import GamePart from '../models/GamePart';

export const getAllSoundtracks = async (req: Request, res: Response) => {
  try {
    const soundtracks = await Soundtrack.findAll();
    res.json(soundtracks);
  } catch (error) {
    const err = error as Error;
    res.status(500).json({ error: err.message });
  }
};

export const getSoundtracksByGamePartId = async (req: Request, res: Response) => {
  const { gamePartId } = req.query;
  try {
    const soundtracks = await Soundtrack.findAll({
      where: { game_id: Number(gamePartId) }
    });
    res.json(soundtracks);
  } catch (error) {
    const err = error as Error;
    res.status(500).json({ error: err.message });
  }
};
