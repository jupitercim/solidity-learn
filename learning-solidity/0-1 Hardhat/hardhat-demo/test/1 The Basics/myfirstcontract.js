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
    async function deployMyFixture() {

        console.log("gary test Hello")


        const Myfirstcontract = await ethers.getContractFactory("1 The Basics/myfirstcontract");
        const mMyfirstcontract = await Myfirstcontract.deploy();

        console.log("gary test Hello finish")
        return {hello};
    }


    describe("Deployment Myfirstcontract", function () {
        it("Should set ", async function () {
            const {mMyfirstcontract} = await loadFixture(deployMyFixture);


            console.log(mMyfirstcontract)
        });


    });
});