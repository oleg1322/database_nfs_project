import express from 'express';
import { getAllSystemRequirements, getSystemRequirementsByGamePartId } from '../controllers/systemRequirementsController';

const router = express.Router();

router.get('/', getAllSystemRequirements);
router.get('/game-part', getSystemRequirementsByGamePartId);

export default router;
