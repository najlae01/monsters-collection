// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Aliens {
    string public name;

    string public symbol;

    mapping(uint256 => address) public ownerOf;
    mapping(uint256 => string) public tokenURI;
    mapping(uint256 => string) public tokenName;
    mapping(uint256 => string) public tokenDescription;
    mapping(uint256 => string) public tokenImage;
    mapping(uint256 => uint256) public tokenPrice;
    uint256 public totalSupply;

    event Transfer(address indexed from, address indexed to, uint256 tokenId);
    event Mint(address owner, uint256 tokenId);

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
        totalSupply = 0;
    }

    function mint(
        string memory _tokenURI,
        string memory _tokenName,
        string memory _tokenDescription,
        string memory _tokenImage,
        uint256 _tokenPrice
    ) public {
        require(
            msg.sender == msg.sender,
            "Only msg.sender can mint new tokens."
        );
        totalSupply++;
        ownerOf[totalSupply] = msg.sender;
        tokenURI[totalSupply] = _tokenURI;
        tokenName[totalSupply] = _tokenName;
        tokenDescription[totalSupply] = _tokenDescription;
        tokenImage[totalSupply] = _tokenImage;
        tokenPrice[totalSupply] = _tokenPrice;
        emit Mint(msg.sender, totalSupply);
    }

    function transfer(address _to, uint256 _tokenId) public {
        require(
            ownerOf[_tokenId] == msg.sender,
            "Only the owner can transfer tokens."
        );
        require(_to != address(0), "Cannot transfer to address 0x0.");
        require(_tokenId <= totalSupply, "Token does not exist.");
        ownerOf[_tokenId] = _to;
        emit Transfer(msg.sender, _to, _tokenId);
    }

    function supportsInterface(bytes4 interfaceId) public pure returns (bool) {
        return interfaceId == 0x80ac58cd || interfaceId == 0x5b5e139f;
    }

    function tokenIdToUri(uint256 _tokenId)
        public
        view
        returns (string memory)
    {
        return tokenURI[_tokenId];
    }

    function tokenIdToDescription(uint256 _tokenId)
        public
        view
        returns (string memory)
    {
        return tokenDescription[_tokenId];
    }

    function tokenIdToName(uint256 _tokenId)
        public
        view
        returns (string memory)
    {
        return tokenName[_tokenId];
    }

    function tokenIdToPrice(uint256 _tokenId) public view returns (uint256) {
        return tokenPrice[_tokenId];
    }

    function tokenIdToOwnerOf(uint256 _tokenId) public view returns (address) {
        return ownerOf[_tokenId];
    }
}
