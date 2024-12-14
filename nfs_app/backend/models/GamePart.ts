// backend/models/GamePart.ts
import { Sequelize, DataTypes, Model } from 'sequelize';
import Car from './Car';

const sequelize = new Sequelize('need_for_speed', 'postgres', '0008', {
  host: 'localhost',
  dialect: 'postgres',
});

class GamePart extends Model {
  public id!: number;
  public game_name!: string;
  public studio!: string;
  public release_year!: number;
  public platforms!: string;
}

GamePart.init({
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  game_name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  studio: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  release_year: {
    type: DataTypes.INTEGER,
    allowNull: false,
    validate: {
      min: 1994,
    },
  },
  platforms: {
    type: DataTypes.STRING,
    allowNull: false,
  },
}, {
  sequelize,
  modelName: 'GamePart',
  tableName: 'general_information',
  timestamps: false,
});

export default GamePart;
