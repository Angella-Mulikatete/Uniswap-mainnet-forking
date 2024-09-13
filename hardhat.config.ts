// import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
// require("dotenv").config({ path: ".env" });

// const ALCHEMY_MAINNET_API_KEY_URL = process.env.ALCHEMY_MAINNET_API_KEY_URL;
// const ACCOUNT_PRIVATE_KEY = process.env.ACCOUNT_PRIVATE_KEY;

module.exports = {
  solidity: "0.8.24",
  networks: {
    hardhat: {
      forking: {
        url: "https://eth-mainnet.g.alchemy.com/v2/QVY2UstBJhd7ELG4N6yM2GNbve_RT-0Y",
      }
    }
  },
  lockGasLimit: 200000000000,
  gasPrice: 10000000000,
};