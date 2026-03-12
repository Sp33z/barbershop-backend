import { DataTypes } from "sequelize";
import sequelize from "../../utils/orm.ts";

const Service = sequelize.define("service", {
  id: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true,
  },
  icon: {
    type: DataTypes.STRING,
  },
  name: {
    type: DataTypes.STRING,
  },
  description: {
    type: DataTypes.STRING,
  },
  price: {
    type: DataTypes.FLOAT,
  },
});

export default Service;
