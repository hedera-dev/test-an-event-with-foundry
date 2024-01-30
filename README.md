# How to Test a Solidity Event with Foundry 

Foundry supports the use of cheatcodes. Cheatcodes allow you to go beyond testing the outputs of your smart contracts. They allow developers to manipulate the state of the blockchain, test for reverts, 
and events. In this tutorial, we will focus on the cheatcode `vm.expectEmit` to test a solidity event.

## What you will accomplish

- ✅ Use the vm.expectEmit Cheatcode
- ✅ Test a Solidity event


---

## Get started

The repo, github.com/hedera-dev/test-an-event-with-foundry, is intended to be used alongside this [tutorial](https://docs.hedera.com/hedera/tutorials/smart-contracts/foundry/test-an-event-with-foundry).

> [!IMPORTANT]  
> This project has submodules. You  must initialize the submodule configuration file and fetch all submodule data from the project. To do this run the following command:

```shell
git clone --recurse-submodules git@github.com:hedera-dev/test-an-event-with-foundry.git
```
