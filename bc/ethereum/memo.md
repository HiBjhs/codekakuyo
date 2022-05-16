# Ethereumを使う  

取り敢えず色々使うための準備  
めんどくさくならないように色々最初に入れとく  
npmとnodeのアップデート  
色々warnが出るけど後から対応しとく  

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


