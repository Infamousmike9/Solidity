### Student: Michael De Paula

<p align="center">
<ins><b>Solidity with Remix:</b><br><ins>
</p>

In this project I will be coding two Remix notebooks using the Solidity blockchain language. Remix is the IDE that will compile the language to run the code. The two notebooks that were created were AssociateProfitSlitter.sol and TieredProfitSplitter.sol. 

### <ins>**Notebook 1: AssociateProfitSplitter:**

Within the AssociateProfitSplitter we will being using code to split payment for three employess evenly. We will be paying the employees using the Ethereum coin ETH and are deriving the wallets from Ganache.

Like all Solidity contracts we begin with our pragma and writing the version of solidity we will be using. Since there are no additional imports in this notebook will will g on to create our contract which will contain our variables and functions. Within the contract we name our variables which are our employees as payable addresses as they are going to receive funds and then we use a contructor function to not have to hard code the addresses and be able to select any three employee addreses at random. The addresses will be able to be entered when the contract is being deployed:

<img src = Screenshots/Level1_Prepping_Transaction.PNG>

When then move on to our balance and deposit functions. In this notebook the balance will or should always display zero and any remaining funds should be returned to the sender. The deposit function will be used to divide the amount being transfer by three and transfered to each employee. THe last line of the code is telling us that the amount being subtracted from the sender will be divided by the three employees. 

See below visualization of the transaction:

- The transaction being deployed:
<img src = Screenshots/Level1_Tx_Deployed.PNG>


- 130ETH being sent to three addresses:
<img src = Screenshots/Level1_Split_130ETH_to_3_accounts.PNG>


- The transfer being completed:
<img src = Screenshots/Level1_TX_complete.PNG>


- Funds reflecting in Ganache accounts:
<img src = Screenshots/Level1_Ganache_confirm.PNG>


### <ins>**Notebook 2: TieredProfitSplitter:**

In this notebook we are now splitting company profits to three employees by tiers. The CEO of the company gets 60%, the CTO gets 25% and Bob a top employee receives 15%. Aas done in the above code we setup our pragma and solidity version. We start our contract and enter all variables and functions with the contract. 

In this case we are using a constructor as done previously as well as a balance and deposit function. However in this case our deposit function will look slightly different. POur deposit function now contains specific code that tells the program that certain employees will receive a specified percentage of the coin being transferred. Any remaining amount of the balance will be sent to the CEO and the balance must be zero at the end. Again here we are not hard coding any addresses as we want to be abel to use this code for any company that may want to use the same percentage splits for their C-suite employees. 

<img src = Screenshots/Level2_Deployment.png>
<img src = Screenshots/Level2_Deployment_Confirmed.PNG>
<img src = Screenshots/Level2_Deposit_145ETH.PNG>
<img src = Screenshots/Level2_Deposit_Confirmed.PNG>
<img src = Screenshots/Level2_Remix_Confirm.PNG>