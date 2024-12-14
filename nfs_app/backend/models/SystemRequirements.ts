import { Sequelize, DataTypes, Model } from 'sequelize';
import GamePart from './GamePart';

const sequelize = new Sequelize('need_for_speed', 'postgres', '0008', {
  host: 'localhost',
  dialect: 'postgres',
});

class SystemRequirements extends Model {
  public game_id!: number;
  public min_os!: string;
  public min_processor!: string;
  public min_ram!: string;
  public min_gpu!: string;
  public min_directx!: string;
  public min_disk_space!: string;
  public rec_os!: string;
  public rec_processor!: string;
  public rec_ram!: string;
  public rec_gpu!: string;
  public rec_directx!: string;
  public rec_disk_space!: string;
}

SystemRequirements.init({
  game_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    references: {
      model: GamePart,
      key: 'id'
    }
  },
  min_os: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  min_processor: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  min_ram: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  min_gpu: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  min_directx: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  min_disk_space: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  rec_os: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  rec_processor: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  rec_ram: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  rec_gpu: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  rec_directx: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  rec_disk_space: {
    type: DataTypes.STRING,
    allowNull: false,
  },
}, {
  sequelize,
  modelName: 'SystemRequirements',
  tableName: 'system_requirements',
  timestamps: false,
});

SystemRequirements.belongsTo(GamePart, { foreignKey: 'game_id' });
GamePart.hasOne(SystemRequirements, { foreignKey: 'game_id' });

export default SystemRequirements;
