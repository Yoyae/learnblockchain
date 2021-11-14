// Import du smart contract "SimpleStorage"
const SimpleStorage = artifacts.require("SimpleStorage");
module.exports = (deployer) => {
    //Deplyer un smart contract!
    deployer.deploy(SimpleStorage);
}