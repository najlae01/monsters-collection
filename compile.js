const path = require("path");
const fs = require("fs")

async function main() {
  try {
    const dir = path.resolve(
      __dirname,
      "./artifacts/contracts/Aliens.sol/Aliens.json"
    )
    const file = fs.readFileSync(dir, "utf8")
    const json = JSON.parse(file)
    const abi = json.abi
    console.log(`abi`, abi)

    return abi
  } catch (e) {
    console.log(`e`, e)
  }
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });