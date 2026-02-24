import dotenv from "dotenv";

dotenv.config();

const config = {
    server: {
        port: process.env.PORT || 3000
    },
    db: {
        host: process.env.DB_HOST || "localhost",
        database: process.env.DB_NAME || "barbershop",
        user: process.env.DB_USER || "root",
        password: process.env.DB_PASSWORD || "",
    }
}

export default config;