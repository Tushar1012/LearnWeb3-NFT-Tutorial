// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// i am importing openZepplin contracts
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// cryptopunk is  ERC721 signifies that the contract we are creating imports ERC721 and follows ERC721 contract from openzeppelin
// this is form inheritance file need to understand
contract CryptoPunk is ERC721 {
    constructor() ERC721("CryptoPunk","CYP"){
        //_mint to NFT to yourself
        _mint(msg.sender,1);
        _mint(msg.sender,2);
        _mint(msg.sender,3);

    }
}