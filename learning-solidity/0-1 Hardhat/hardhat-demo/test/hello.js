const {
    time,
    loadFixture,
} = require("@nomicfoundation/hardhat-toolbox/network-helpers");
const {anyValue} = require("@nomicfoundation/hardhat-chai-matchers/withArgs");
const {expect} = require("chai");
//定义了一个描述符为 "Lock" 的测试套件
describe("Hello", function () {
    // We define a fixture to reuse the same setup in every test.
    // We use loadFixture to run this setup once, snapshot that state,
    // and reset Hardhat Network to that snapshot in every test.
    async function deployHelloFixture() {

        console.log("gary test Hello")

        const Hello = await ethers.getContractFactory("hello");
        const hello = await Hello.deploy();

        console.log("gary test Hello finish")
        return {hello};
    }


    describe("Deployment", function () {
        it("Should set the right unlockTime", async function () {
            const {hello} = await loadFixture(deployHelloFixture);


            console.log(hello)
        });


    });
});