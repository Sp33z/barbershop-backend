import app from "./src/app.ts";
import config from "./src/config.ts";

app.listen(config.server.port, () => {
  console.log(`Server is running on port ${config.server.port}.`);
});