const promise = new Promise(function (resolve, reject) {
    resolve("test");
})
    .then((val) => {
        console.log(`then1: ${val}`);
        return val;
    })
    .catch((val) => {
        console.log(`catch: ${val}`);
        return val;
    })
    .then((val) => {
        console.log(`then2: ${val}`);
    });
console.log("sss")