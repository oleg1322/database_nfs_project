import express from 'express';
import { getAllSoundtracks, getSoundtracksByGamePartId } from '../controllers/soundtrackController';

const router = express.Router();

router.get('/', getAllSoundtracks);
router.get('/game-part', getSoundtracksByGamePartId);

export default router;
