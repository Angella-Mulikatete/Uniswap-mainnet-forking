import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const AddLiquidityModule = buildModule("AddLiquidityModule", (m) => {

    const addLiquidity = m.contract("addLiquidity");

    return { addLiquidity };
});

export default AddLiquidityModule;
