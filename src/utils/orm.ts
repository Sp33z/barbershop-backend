import { Sequelize } from "sequelize";
import config from "../config.ts";

const sequelize = new Sequelize({
    dialect: "mysql",
    host: config.db.host,
    database: config.db.database,
    username: config.db.user,
    password: config.db.password,
});

export default sequelize;