import { createPool } from "mysql2/promise";
import config from "../config.ts";

const pool = createPool({
    host: config.db.host,
    database: config.db.database,
    user: config.db.user,
    password: config.db.password,
});

export default pool;