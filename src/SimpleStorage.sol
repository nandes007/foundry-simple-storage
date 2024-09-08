// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; //solidity versions

contract SimpleStorage {
    uint256 myFavoriteNumber;

    // uint256[] listOfFavoriteNumbers;
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // dyanamic array
    Person[] public listOfPeople;

    // static array
    // Person[3] public listOfPeople2;

    // mapping
    mapping(string => uint256) public nameOfFavoriteNumber;

    // Person public pat = Person({
    //     favoriteNumber: 7,
    //     name: "pat"
    // });
    // Person public mariah = Person({
    //     favoriteNumber: 7,
    //     name: "marian"
    // });
    // Person public jon = Person({
    //     favoriteNumber: 7,
    //     name: "jon"
    // });

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameOfFavoriteNumber[_name] = _favoriteNumber;
    }
}
