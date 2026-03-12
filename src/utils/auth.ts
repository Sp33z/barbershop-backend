import { betterAuth } from "better-auth";
import pool from "./db.ts";

const auth = betterAuth({
  baseURL: "http://localhost:3000/",

  database: pool,

  tables: {
    users: "users",
    sessions: "sessions",
  },

  user: {
    modelName: "users",
    additionalFields: {
      phone: {
        type: "string",
        required: true,
      },
      permission: {
        type: "number",
        defaultValue: 0,
        required: true,
        input: false,
      },
    },
  },
  account: {
    modelName: "accounts",
  },
  session: {
    modelName: "sessions",
    expiresIn: 10,
    preserveSessionInDatabase: false,
  },

  emailAndPassword: {
    enabled: true,
  },

  trustedOrigins: ["http://localhost:3001"],
});

export default auth;
