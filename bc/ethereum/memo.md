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
スクリプトにしといて実行するだけにしといても良い  
やる場合はエディターで開いたファイルの頭に  
```
#!/bin/sh
``` 
を付けておく
``` 
chmod a+x ファイル名.sh
```
で実行権限を与えておく  
