import { Sequelize, DataTypes, Model } from 'sequelize';
import GamePart from './GamePart';

const sequelize = new Sequelize('need_for_speed', 'postgres', '0008', {
  host: 'localhost',
  dialect: 'postgres',
});

class Soundtrack extends Model {
  public game_id!: number;
  public track_name!: string;
  public author!: string;
  public youtube_link!: string;
}

Soundtrack.init({
  game_id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    references: {
      model: GamePart,
      key: 'id'
    }
  },
  track_name: {
    type: DataTypes.STRING,
    primaryKey: true,
    allowNull: false,
  },
  author: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  youtube_link: {
    type: DataTypes.STRING,
    allowNull: false,
  },
}, {
  sequelize,
  modelName: 'Soundtrack',
  tableName: 'soundtracks',
  timestamps: false,
});

Soundtrack.belongsTo(GamePart, { foreignKey: 'game_id' });
GamePart.hasMany(Soundtrack, { foreignKey: 'game_id' });

export default Soundtrack;
