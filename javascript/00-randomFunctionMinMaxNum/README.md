# Random Numbers Generator

The function definition to obtain a whole randome number between minNum and maxNum

```javascript
let randomNumber = function(minNum, maxNum){
    return Math.floor(Math.random()*(maxNum - minNum + 1)) + minNum;
};
```

