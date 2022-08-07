// generator
// 一度脱出した後も値を保持し、再度利用できる

function * prinf3Num(num) {
    yield num;
    yield num + 1;
    yield num + 2;
}

const gen = prinf3Num(5);
console.log(gen.next().value);
console.log(gen.next().value);
console.log(gen.next().value);

console.log([...prinf3Num(10)])