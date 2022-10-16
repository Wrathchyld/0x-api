// SPDX-License-Identifier: Apache-2.0
/*

  Copyright 2020 ZeroEx Intl.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

*/

pragma solidity ^0.6;

interface IBancor {}

interface IBancorNetwork {
    function conversionPath(address _sourceToken, address _targetToken) external view returns (address[] memory);

    function rateByPath(address[] memory _path, uint256 _amount) external view returns (uint256);
}

interface IBancorRegistry {
    function getAddress(bytes32 _contractName) external view returns (address);

    function BANCOR_NETWORK() external view returns (bytes32);
}
