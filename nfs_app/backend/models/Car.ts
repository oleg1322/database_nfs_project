import { Sequelize, DataTypes, Model } from 'sequelize';
import GamePart from './GamePart';

const sequelize = new Sequelize('need_for_speed', 'postgres', '0008', {
  host: 'localhost',
  dialect: 'postgres',
});

class Car extends Model {
  public id!: number;
  public car_name!: string;
  public car_model!: string;
  public max_speed!: number;
  public acceleration!: number;
  public mass!: number;
  public engine_volume!: number;
  public horsepower!: number;
  public fuel_consumption!: number;
  public country!: string;
  public price!: number;
}

Car.init({
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  car_name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  car_model: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  max_speed: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  acceleration: {
    type: DataTypes.FLOAT,
    allowNull: false,
  },
  mass: {
    type: DataTypes.FLOAT,
    allowNull: false,
  },
  engine_volume: {
    type: DataTypes.FLOAT,
    allowNull: false,
  },
  horsepower: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  fuel_consumption: {
    type: DataTypes.FLOAT,
    allowNull: false,
  },
  country: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  price: {
    type: DataTypes.DECIMAL(10, 2),
    allowNull: false,
  },
}, {
  sequelize,
  modelName: 'Car',
  tableName: 'cars_general_info',
  timestamps: false,
});

Car.belongsToMany(GamePart, { through: 'cars', foreignKey: 'car_id' });
GamePart.belongsToMany(Car, { through: 'cars', foreignKey: 'game_id' });

export default Car;