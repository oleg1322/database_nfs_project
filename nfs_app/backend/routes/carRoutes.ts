import express from 'express';
import { getAllCars, createCar, getCarsByGamePartId } from '../controllers/carController';

const router = express.Router();

router.get('/', getAllCars);
router.get('/game-part', getCarsByGamePartId);
router.post('/', createCar);

export default router;
