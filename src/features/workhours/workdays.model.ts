import { DataTypes } from "sequelize";
import sequelize from "../../utils/orm.ts";

const Workdays = sequelize.define("workdays", {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  userId: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  week: {
    type: DataTypes.DATEONLY,
    allowNull: false,
  },
  day: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  start: {
    type: DataTypes.TIME,
    allowNull: false,
  },
  finish: {
    type: DataTypes.TIME,
    allowNull: false,
  },
  duration: {
    type: DataTypes.TIME,
    allowNull: false,
  },
});

export default Workdays;
