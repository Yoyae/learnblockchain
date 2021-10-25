// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract GameItem is ERC721URIStorage{
    //on rattache la librairie counters au type counters
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721URIStorage("GameItem", "ITM") public{}

    /* Creation d'un nouveau objet
    *** adress player qui va tere le propriétaire du token 
    *** tokenUri : uri du toekn 
    */

    function addItem(address player, string memory tokenURI)
    public
    returns (uint256)
    {
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        //creation du nouveau token, en prenant comme propriétaire le player
        _mint(player, newItemId);
        //affectation du “tokenURI” au nouveau objet “newItemId” à l’aide de la fonction “_setTokenURI”
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}