const hre = require("hardhat");

const main = async () => {
	const contractFactory = await hre.ethers.getContractFactory("Hello");

	const contract = await contractFactory.deploy("Helu Shipper!", "Shipends");

	await contract.deployed();

	console.log(`Contract deployed at address -- ${contract.address}`);
};

main().catch((error) => {
	console.error(error);
	process.exit(1);
});
