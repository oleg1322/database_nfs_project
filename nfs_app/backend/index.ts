// backend/index.ts
import express from 'express';
import bodyParser from 'body-parser';
import cors from 'cors';
import carRoutes from './routes/carRoutes';
import gamePartRoutes from './routes/gamePartRoutes';
import soundtrackRoutes from './routes/soundtrackRoutes';
import systemRequirementsRoutes from './routes/systemRequirementsRoutes';
import { Sequelize } from 'sequelize';

const app = express();
const sequelize = new Sequelize('need_for_speed', 'postgres', '0008', {
  host: 'localhost',
  dialect: 'postgres',
});

app.use(cors());
app.use(bodyParser.json());
app.use('/cars', carRoutes);
app.use('/game-parts', gamePartRoutes);
app.use('/soundtracks', soundtrackRoutes);
app.use('/system-requirements', systemRequirementsRoutes);

sequelize.sync().then(() => {
  app.listen(5000, () => {
    console.log('Server is running on port 5000');
  });
});
