// SPDX-License-Identifier: MIT
// @author Mariusz Dekarski
pragma solidity 0.8.26;

import "@openzeppelin/contracts@5.0.0/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts@5.0.0/access/Ownable.sol";

contract DogzNFTToken is ERC721URIStorage, Ownable {
    constructor() ERC721("Dogz NFT Collection", "DOGZ") Ownable(msg.sender) {}

    function mint(
        address to,
        uint256 tokenId,
        string memory uri
    ) public onlyOwner {
        _mint(to, tokenId);
        _setTokenURI(tokenId, uri);
    }
}
