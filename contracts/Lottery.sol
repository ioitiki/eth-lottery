pragma solidity ^0.4.2;

contract Lottery {

    struct Wallet {
        uint id;
        uint balance;
    }

    struct Bet {
        uint value; // bet size
        uint betHash; // selected numbers
        uint blockNum; // blocknumber when lottery runs
    }

    mapping (uint => Wallet) public wallets;
    mapping (uint => Bet) public bets;

    // betting parameters
    uint public maxWin = 0; // maximum prize won
    uint public hashFirst = 0; // start time of building hashes database
    uint public hashLast = 0; // last saved block of hashes
    uint public hashNext = 0; // next available bet block.number
    uint public hashBetSum = 0; // used bet volume of next block
    uint public hashBetMax = 5 ether; // maximum bet size per block
    uint[] public hashes; // space for storing lottery results

    // constants
    uint public constant hashesSize = 16384 ; // 30 days of blocks

    uint public walletId = 0;
    uint public betId = 0;

    function Lottery() public {
        addWallet(100);
    }

    function addWallet(uint _balance) private {
        walletId++;
        wallets[walletId] = Wallet(walletId, _balance);
    }

    function getHash(uint _block) constant public returns (uint32) {

    }


}
