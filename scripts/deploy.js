const {ethers} = require("hardhat");



async function main(){
    //tell script we want to deply ntee.sol
    const contract = await ethers.getContractFactory("CryptoPunk")


    // deploy it
    const deployedContract = await contract.deploy();
    await deployedContract.deployed();

    //print the address of the deplyoed contract
    console.log("NFT contract deployed to: " ,deployedContract.address);

}



main()
.then(() => process.exit(0))
.catch((error) => {
  console.error(error);
  process.exit(1);
});
