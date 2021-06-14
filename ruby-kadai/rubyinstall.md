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
