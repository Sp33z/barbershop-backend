import sequelize from "../../utils/orm.ts";

const User = sequelize.define("User", {
  id: {
    type: "STRING",
    primaryKey: true,
  },
  name: {
    type: "STRING",
    allowNull: false,
  },
  email: {
    type: "STRING",
    allowNull: false,
    unique: true,
  },
  emailVerified: {
    type: "BOOLEAN",
    defaultValue: false,
  },
  phone: {
    type: "STRING",
    allowNull: false,
  },
  permission: {
    type: "INTEGER",
    defaultValue: 0,
  },
  createdAt: {
    type: "DATETIME",
  },
  updatedAt: {
    type: "DATETIME",
  },
});

export default User;
