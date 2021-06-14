コマンド
```
git clone https://github.com/rbenv/rbenv.git ~/.rbenv  
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build  
```
path通す(fish)  
/home/自分の名前/.config/fish
```
#ruby
set PATH /home/自分の名前/.rbenv/bin $PATH
eval (rbenv init - | source)
```
sourceで読込  
`rbenv install -l`でインストールできるのを確認　  
`rbenv install 3.0.1`  
`rbenv global 3.0.1`  
終わり！  
ついでにRailsも
gem install -v 6.1.0 rails  
gem install bundler  
gem install sqlite3  
gem install json-jwt  
gem install jwt  
gem install rails  
gem install twitter  
gem install devise  
gem install omniauth  
gem install omniauth-twitter  
gem install omniauth-facebook  

ところで　`yarn install `しようとしたら `ERROR: [Errno 2] No such file or directory: 'install'`とのエラー   
yarn再インストール
```
sudo apt remove cmdtest
sudo apt remove yarn

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
```
`sudo apt-get install yarn`  
これで解決yarnが古すぎたのかしら
