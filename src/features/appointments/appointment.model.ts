import { DataTypes } from "sequelize";
import sequelize from "../../utils/orm.ts";

const Appointment = sequelize.define("appointments", {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  userId: {
    type: DataTypes.TEXT,
    allowNull: true,
    defaultValue: null,
  },
  name: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  email: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  phone: {
    type: DataTypes.TEXT,
    allowNull: true,
  },
  services: {
    type: DataTypes.JSON,
    allowNull: false,
  },
  barberId: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  barber: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  date: {
    type: DataTypes.DATEONLY,
    allowNull: false,
  },
  time: {
    type: DataTypes.TIME,
    allowNull: false,
  },
  contact: {
    type: DataTypes.BOOLEAN,
    allowNull: true,
  },
  completed: {
    type: DataTypes.BOOLEAN,
    allowNull: false,
    defaultValue: false,
  },
  completedAt: {
    type: DataTypes.DATE,
    allowNull: true,
    defaultValue: null,
  },
});

export default Appointment;
