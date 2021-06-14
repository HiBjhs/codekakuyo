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
