### ghc install
ghcupを用いる
インストールはいつか書く以下に
***
まずghcupを用いいる際のghcupのインストールから公式サイト  
[公式サイト](https://www.haskell.org/ghcup/)に行きインストール  
インストールが完了したら`ghcup list`で利用可能なツールのバージョンを確認  
`ghc -h`でコマンドの一覧を出せる  
`ghcup install XXX`でインストールしたいものをインストールcabal,hls,ghc,stackまあお好みで  
終わり  
追記  
>>[1 of 1] Compiling Main             ( hello.hs, hello.o )
Linking hello ...
/usr/bin/ld.gold: エラー: -lgmp が見つかりません
collect2: error: ld returned 1 exit status
'gcc' failed in phase `Linker'. (Exit code: 1)  

上記のエラーが発生することがあるが`ghcup`にてghcをインストールし直したら直った完
***
さて  
| ghciコマンド | 動作 |  
----|----   
| :load hoge | プログラム hoge を読み込む |  
| :reload | 現在のプログラムを読み込む |  
| :type huga | huga の型を表示する |  
| :?,:help | すべてのコマンドを表示する |  
| :quit,:q | 終了 |  


--一行コメント--  
{-囲みコメント-}  

1.  略

2.  
2^3*4    
= (2^3)*4  

2*3+4*5  
= (2*3) + (4*5)  

2+3*4^5  
=2+(3*(4^5))  
3.```
n = s `div` length xs
  where
    s = 10
    xs = [1,2,3,4,5]```

4.  xs=[1,2,3,4,5]  
`last xs=xs !! (length xs-1)`  
`last xs= head (reverse xs)`  
5
5.  xs=[1,2,3,4,5]   
`init xs= take (length xs-1) xs`  
`init xs= reverse (drop 1 (reverse xs))`  
[1,2,3,4]
