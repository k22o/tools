// List : 存在しない

// Array
let array = new Array(1, 2, "abe");    //arrayの初期化
let len = array.length;         //長さ
array.forEach(val=>{console.log(val);});
let array2 = [1,2,3,4,5];
let array2Even = array.filter(num =>{return num%2 == 0;}); //filterがTrueのもののみ返す
console.log(array2);


// object 
let object = {
    id:1,
    name: "Taro"
};
console.log(object.id + ":" + object.name);


// map
let map = new Map([["key1", "value1"], ["key2", "value2"]]);
let size = map.size;
map.set("key3", "value3");
console.log(map.get("key1")); // => "value1"
console.log(map.has("key1")); // => true

// set
let set = new Set(["value1", "value2", "value2"]);
let size = set1.size; // => 2
set.add("value3");
console.log(set2.has("value1")); // => true

