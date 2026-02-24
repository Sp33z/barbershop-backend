import { betterAuth } from "better-auth";
import pool from "./db.ts";

const auth = betterAuth({
  baseURL: "http://localhost:3000/",

  database: pool,

  user: {
    additionalFields: {
      phone: {
        type: "string",
        required: true,
      },
      /*permission: {
        type: "number",
        required: true,
        defaultValue: 0,
        transformer: (value: any) => Number(0),

      },*/
    },
  },

  session: {
    expiresIn: 1,
    additionalFields: {
      permission: {
        type: "number",
      },
    },
  },

  emailAndPassword: {
    enabled: true,
  },

  trustedOrigins: ["http://localhost:3001"],
});

export default auth;
