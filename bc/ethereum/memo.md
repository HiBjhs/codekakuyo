# Ethereumを使う  

取り敢えず色々使うための準備  
めんどくさくならないように色々最初に入れとく  
npmとnodeのアップデート  
色々warnが出るけど後から対応しとく    
プラベートネットでアカウント作るときは名前とパスワードをおんなじにしとくと簡単でいい(ほんとはすなよ)  


```
sudo npm install n -g
sudo n stable
sudo npm update npm -g

sudo apt install -y libsnappy-dev wget curl build-essential cmake gcc sqlite3
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt install -y ethereum
npm install -g solc
```  
スクリプトにしといて実行するだけにしといた方が良い  
やる場合はエディターで開いたファイルの頭に  
```
#!/bin/sh
``` 
を付けておく
``` 
chmod a+x ファイル名.sh
```
で実行権限を与えておく  
Ethereumファイルを作成  
```
cd ~
mkdir Ethereum
cd Ethereum

```
## metamaskの追加  
https://chrome.google.com/webstore/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn  
https://metamask.io/  
を手順を確認しながら行う  
成功したら拡張機能の所に狐が出てくる  
ニーモニックバックアップは秘密にし保管方法を考えとく(物理的にも残すとか)  


## Genesisファイル作成
```
{
  "config": {
    "chainId": 15,
    "homesteadBlock": 0,
    "eip150Block": 0,
    "eip155Block": 0,
    "eip158Block": 0,
    "byzantiumBlock": 0,
    "constantinopleBlock": 0,
    "petersburgBlock": 0,
    "istanbulBlock": 0,
    "berlinBlock": 0
  },
  "nonce": "0x0000000000000042",
  "timestamp": "0x0",
  "parentHash": "0x0000000000000000000000000000000000000000000000000000000000000000",
  "extraData": "",
  "gasLimit": "0x8000000",
  "difficulty": "0x4000",
  "mixhash": "0x0000000000000000000000000000000000000000000000000000000000000000",
  "coinbase": "0x3333333333333333333333333333333333333333",
  "alloc": {}
}
```

## EOAの作成
```
> eth.getBlock(0)
{
  difficulty: 16384,
  extraData: "0x",
  gasLimit: 134217728,
  gasUsed: 0,
  hash: "0x7b2e8be699df0d329cc74a99271ff7720e2875cd2c4dd0b419ec60d1fe7e0432",
  logsBloom: "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
  miner: "0x3333333333333333333333333333333333333333",
  mixHash: "0x0000000000000000000000000000000000000000000000000000000000000000",
  nonce: "0x0000000000000042",
  number: 0,
  parentHash: "0x0000000000000000000000000000000000000000000000000000000000000000",
  receiptsRoot: "0x56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421",
  sha3Uncles: "0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347",
  size: 507,
  stateRoot: "0x56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421",
  timestamp: 0,
  totalDifficulty: 16384,
  transactions: [],
  transactionsRoot: "0x56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421",
  uncles: []
}
> eth.accounts
[]
> personal.newAccount("alice")
"0x06025ae68a789caa7111e845c9b131d82d2faa09"
> personal.newAccount("bob")
"0x8d354193b59717e083b9e3c9cf366c87edc7a4a4"
```
コマンドを試す
```
eth.getBlock(0)
{
  difficulty: 16384,
  extraData: "0x",
  gasLimit: 134217728,
  gasUsed: 0,
  hash: "0x7b2e8be699df0d329cc74a99271ff7720e2875cd2c4dd0b419ec60d1fe7e0432",
  logsBloom: "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
  miner: "0x3333333333333333333333333333333333333333",
  mixHash: "0x0000000000000000000000000000000000000000000000000000000000000000",
  nonce: "0x0000000000000042",
  number: 0,
  parentHash: "0x0000000000000000000000000000000000000000000000000000000000000000",
  receiptsRoot: "0x56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421",
  sha3Uncles: "0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347",
  size: 507,
  stateRoot: "0x56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421",
  timestamp: 0,
  totalDifficulty: 16384,
  transactions: [],
  transactionsRoot: "0x56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421",
  uncles: []
```
### EOAの作成
```
> personal.newAccount("alice")
"0x06025ae68a789caa7111e845c9b131d82d2faa09"
> personal.newAccount("bob")
"0x8d354193b59717e083b9e3c9cf366c87edc7a4a4"
> eth.accounts
["0x06025ae68a789caa7111e845c9b131d82d2faa09", "0x8d354193b59717e083b9e3c9cf366c87edc7a4a4"]
> eth.coinbase
"0x06025ae68a789caa7111e845c9b131d82d2faa09"
/ここでマイニングをスタートさせてる
> miner.start()
null
> eth.blockNumber
0
> eth.blockNumber
162
8892
> eth.getBalance(eth.accounts[0])
1.7798e+22

```

### 送金

```
> personal.unlockAccount(eth.accounts[0])
Unlock account 0x06025ae68a789caa7111e845c9b131d82d2faa09
Passphrase: 
true
> eth.sendTransaction({from: eth.accounts[0], to: eth.accounts[1], value: web3.toWei(1, "ether")})
"0x38eff908d3358381817a97764d2db31ff57548addb4d3ed16f8d84eee91e4d56"
>  eth.getTransaction('0x38eff908d3358381817a97764d2db31ff57548addb4d3ed16f8d84eee91e4d56')
{
  blockHash: "0xc46b78c3c1470ff415570d78598a933a6302d8c30549e93c8fa25546fe381895",
  blockNumber: 8905,
  from: "0x06025ae68a789caa7111e845c9b131d82d2faa09",
  gas: 21000,
  gasPrice: 1000000000,
  hash: "0x38eff908d3358381817a97764d2db31ff57548addb4d3ed16f8d84eee91e4d56",
  input: "0x",
  nonce: 0,
  r: "0x2ed80fc8af5e7f824600adf754d8a0f98bf4d24973baaf45afd38c6575a99032",
  s: "0x43011b87f30e3f1dd70738273ec02155b24ce692bc2eee148bfa4041fc74835e",
  to: "0x8d354193b59717e083b9e3c9cf366c87edc7a4a4",
  transactionIndex: 0,
  type: "0x0",
  v: "0x41",
  value: 1000000000000000000
}
> eth.getBalance(eth.accounts[1])

1000000000000000000

```
faucetのスマートコントラクトをコンパイルする(solidity)
```
solc --abi --bin Faucet.sol
======= Faucet.sol:Faucet =======
Binary:
608060405234801561001057600080fd5b50610154806100206000396000f3fe6080604052600436106100225760003560e01c80632e1a7d4d1461002e57610029565b3661002957005b600080fd5b34801561003a57600080fd5b50610055600480360381019061005091906100f1565b610057565b005b67016345785d8a000081111561006c57600080fd5b3373ffffffffffffffffffffffffffffffffffffffff166108fc829081150290604051600060405180830381858888f193505050501580156100b2573d6000803e3d6000fd5b5050565b600080fd5b6000819050919050565b6100ce816100bb565b81146100d957600080fd5b50565b6000813590506100eb816100c5565b92915050565b600060208284031215610107576101066100b6565b5b6000610115848285016100dc565b9150509291505056fea2646970667358221220d12e8cef7155795c84290cadfe716086012a55fdc7a9a740c79ae3ed8bb5018f64736f6c634300080d0033
Contract JSON ABI
[{"inputs":[{"internalType":"uint256","name":"withdraw_amount","type":"uint256"}],"name":"withdraw","outputs":[],"stateMutability":"nonpayable","type":"function"},{"stateMutability":"payable","type":"receive"}]
```
Binary Codeを"0x"とくっつけて実行する  
ABIは機械と人間両方にわかりやすくした形式のはず   
コントラクトの生成  
```
> var bin ="0x"+"608060405234801561001057600080fd5b50610154806100206000396000f3fe6080604052600436106100225760003560e01c80632e1a7d4d1461002e57610029565b3661002957005b600080fd5b34801561003a57600080fd5b50610055600480360381019061005091906100f1565b610057565b005b67016345785d8a000081111561006c57600080fd5b3373ffffffffffffffffffffffffffffffffffffffff166108fc829081150290604051600060405180830381858888f193505050501580156100b2573d6000803e3d6000fd5b5050565b600080fd5b6000819050919050565b6100ce816100bb565b81146100d957600080fd5b50565b6000813590506100eb816100c5565b92915050565b600060208284031215610107576101066100b6565b5b6000610115848285016100dc565b9150509291505056fea2646970667358221220d12e8cef7155795c84290cadfe716086012a55fdc7a9a740c79ae3ed8bb5018f64736f6c634300080d0033"
undefined
> var abi=[{"inputs":[{"internalType":"uint256","name":"withdraw_amount","type":"uint256"}],"name":"withdraw","outputs":[],"stateMutability":"nonpayable","type":"function"},{"stateMutability":"payable","type":"receive"}]
undefined
> var contract = eth.contract(abi)
undefined
```
### コントラクトアカウントの作成
```
> personal.unlockAccount(eth.accounts[0])

Unlock account 0x06025ae68a789caa7111e845c9b131d82d2faa09
Passphrase: 
true
> var myContract = contract.new({ from: eth.accounts[0], data: bin})
undefined
> myContract
{
  abi: [{
      inputs: [{...}],
      name: "withdraw",
      outputs: [],
      stateMutability: "nonpayable",
      type: "function"
  }, {
      stateMutability: "payable",
      type: "receive"
  }],
  address: "0xabd2366fcf1d23887120dcdbb5440db85bc518df",
  transactionHash: "0xb932bd72ba4e332a78fd390ac35346d89b2df2c9e76306a7310827f157ce601e",
  allEvents: function bound(),
  withdraw: function bound()
}
> myContract.address
"0xabd2366fcf1d23887120dcdbb5440db85bc518df"
> myContract.abi
[{
    inputs: [{
        internalType: "uint256",
        name: "withdraw_amount",
        type: "uint256"
    }],
    name: "withdraw",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function"
}, {
    stateMutability: "payable",
    type: "receive"
}]
> var cnt = eth.contract(myContract.abi).at(myContract.address);
undefined
> personal.unlockAccount(eth.accounts[0])
Unlock account 0x06025ae68a789caa7111e845c9b131d82d2faa09
Passphrase: 
true
```

SPoF(単一障害点)  
  
ワイオミング州でDAO法が制定  
https://www.americancryptofed.org/   
