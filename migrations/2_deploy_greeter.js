const GreeterContract = artifacts.require("greeter");

module.exports = function(deployer) {
    deployer.deploy(GreeterContract);
}