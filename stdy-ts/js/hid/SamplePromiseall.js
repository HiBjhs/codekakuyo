const promise1 = new Promise((resolve) => {
    setTimeout(() => {
        resolve();
    }, 1000);
}).then(() => {
    console.log("promise1おわったよ！");
});
