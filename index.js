const { server } = require("./src/server.js");
const PORT = 3004 || process.env.PORT;

server.listen(PORT, () => {
  console.log(`Server OK in PORT: ${PORT}`);
});
