import { DataTypes } from "sequelize";
import sequelize from "../../utils/orm.ts";

const User = sequelize.define("users", {
  id: {
    type: DataTypes.STRING,
    primaryKey: true,
  },
  name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true,
  },
  emailVerified: {
    type: DataTypes.BOOLEAN,
    defaultValue: false,
  },
  phone: {
    type: DataTypes.STRING,
  },
  permission: {
    type: DataTypes.STRING,
  },
  createdAt: {
    type: DataTypes.DATE,
  },
  updatedAt: {
    type: DataTypes.DATE,
  },
});

export default User;
