// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.7.5;

contract BytesTest{

    bytes data;

    function dataTest(uint amount) external{
        data = msg.data;
    }

    function keccakTest() external view returns(bytes memory){
        return abi.encodeWithSignature("dataTest(uint256)","2");
    }

    function keccakTest4() external view returns(bytes4){
        return bytes4(keccak256(bytes("dataTest(uint256)")));
    }
 
    function viewData() external view returns(bytes memory){
        return data;
    }
}
