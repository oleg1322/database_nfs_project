import express from 'express';
import { getAllGameParts } from '../controllers/gamePartController';

const router = express.Router();

router.get('/', getAllGameParts);

export default router;
