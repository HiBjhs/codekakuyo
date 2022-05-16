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
30分くらいでethが入る  
### 送金を試す  
