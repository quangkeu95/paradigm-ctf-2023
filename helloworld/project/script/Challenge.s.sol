pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "forge-std/console2.sol";
import { Challenge } from "src/Challenge.sol";

contract ChallengeScript is Script {
    Challenge challenge;
    
    function run() external {
        uint256 deployerPKey = vm.envUint("PRIVATE_KEY");

        address deployerAddr = vm.addr(deployerPKey);
        console2.log("Using deployer address %s", deployerAddr);

        vm.startBroadcast(deployerPKey);

        address challengeAddr = vm.envAddress("CHALLENGE_CONTRACT");
        Challenge challenge = Challenge(challengeAddr);

            
        bool isSolved = challenge.isSolved();

        console2.log("Is solved = %s", isSolved);

        vm.stopBroadcast();
    }
}
