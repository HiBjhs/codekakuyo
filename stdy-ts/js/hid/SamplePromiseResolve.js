const promise = new Promise((resolve) => {
    resolve("resolveしたよ");
    //引数に文字列を渡す
}).then((val) => {
    // 第一引数でresolve関数でワタシた文字列を受け取る
    console.log(val);
});
