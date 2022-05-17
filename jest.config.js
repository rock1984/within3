/** @type {import('ts-jest/dist/types').InitialOptionsTsJest} */
module.exports = {
    preset: 'ts-jest',
    testEnvironment: 'node',
    transform: {
    '^.+\\.ts?$': 'ts-jest',
    },
    transformIgnorePatterns: ['<rootDir>/node_modules/'],
    globals: {
      // when we are testing we want to use a slightly different config
      // to allow for jest types
      'ts-jest': {
        tsconfig: '<rootDir>/tests/tsconfig.json',
      },
    },
  };