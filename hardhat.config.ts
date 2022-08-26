import '@nomiclabs/hardhat-waffle'
import 'hardhat-contract-sizer'
import 'hardhat-abi-exporter'

const COMPILER_SETTINGS = {
  optimizer: {
    enabled: true,
    runs: 1000000,
  },
  metadata: {
    bytecodeHash: 'none',
  },
}

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
export default {
  abiExporter: {
    path: './abi',
  },
  paths: {
    artifacts: './artifacts',
    cache: './cache',
    sources: './contracts',
    tests: './test',
  },
  networks: {
    hardhat: {},
    localhost: {
      url: 'http://127.0.0.1:8545',
    },
  },
  solidity: {
    compilers: [
      {
        version: '0.6.5',
        settings: COMPILER_SETTINGS,
      },
      {
        version: '0.4.17',
        settings: COMPILER_SETTINGS,
      },
    ],
  },
  contractSizer: {
    alphaSort: true,
    runOnCompile: false,
    disambiguatePaths: false,
  },
}
