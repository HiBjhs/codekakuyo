# Ropstenの試し方メモ
## Ethのテストネット
RopstenはEthereumのテストネットの一つ  
PoW方式を採用している、FaucetからEthを入手可能  
https://faucet.egorfine.com/  
他には  
・Kovan  
・Rinkeby  
・Gorli  
等がありPoAが採用されている  
Ropstenをsnapモードで接続  
```

cd
mkdir Ethereum
cd Ethereum
mkdir Ropsten

geth --ropsten --syncmode "snap" --datadir "./ropsten" --http --http.addr "localhost" --http.port "8545" --http.api "eth,net,web3,admin,miner,txpool,personal" --allow-insecure-unlock -- console 2>> ./ropsten/geth_err.log

```
を実行して
```
To exit, press ctrl-d or type exit
>
```
となるのを確認(終了はctrl+d)  
また終了後Ropstenディレクトリ以下に  
geth  geth_err.log  keystore  ropsten  
等のファイルがあるのを確認する  

### EOAの作成  
```
const alice=personal.newAccount("alice")
alice
"0xb7cea700631d6ad39f6070ae728c301604172c6e"

const takahashi=personal.newAccount("takahashi")
takahashi
"0x72950a1163f00af2a4d6ea085ef266d5b6a53d78"

```
上記のFaucetにアクセスし作成したEOAのアドレスを入れるて ``` Give me Ropsten ETH```を押す(もらえるのは一日一回)  
90分くらいでethが入る  
metamaskからいけるRopsten Faucet死んでるっぽい？(原因不明)    
metamaskから貰おうとするもerror500が発生して受け取れず  
0x4B7ae9FC1e47954b4a789205e1505A486B20E371
### 送金を試す  
```
eth.sendTransaction({from: eth.accounts[2], to: eth.accounts[0], value: web3.toWei(0.001, "ether")}) 
"0x05ee5ac1df84e9b1ee359b53252f6ee7bd834721db609dc32dd9f38ad2e8139f"

eth.getBalance(alice)

1000000000000000
> eth.getBalance(takahashi)
9998901468041349000

```