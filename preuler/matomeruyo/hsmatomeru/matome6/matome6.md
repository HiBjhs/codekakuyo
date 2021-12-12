ls書き始める  
scottyとかあるらしい  
.gitignoreを作成するときはファイルをpushするより前に.gitignoreに書いて追跡させないようにしないとキャッシュに保存されて反映されない、もしpushした後に.gitignoreに追加したいなら `git rm -r --cached リポジトリ名`のようにして一回キャッシュを削除する、その後commitとpushをすると反映される  
.gitignoreを書くときはなるべく最初の段階でついかしておくようにするとあとで面倒にならない
