# 非同期処理  
## Promise  
3状態あるのでそのへんを理解する  
**Promise**  
+ pending: 未解決(処理待ち)
+ resolved: 解決済み(処理が正常に終了)
+ rejected: 拒否(処理が失敗した時)

resolveしたらthenの処理が実行される。  
rejectされたらcatchの処理が実行される。  
```
const promise = new Promise((resolve) => {
    resolve("resolveしたよ");
    //引数に文字列を渡す
}).then((val) => {
    // 第一引数でresolve関数でワタシた文字列を受け取る
    console.log(val);
});

```
PromiseValue にresolveに渡した文字列が入る  
PromiseValueへと格納された値を次のメソッドの第一引数に渡すことができる。  
