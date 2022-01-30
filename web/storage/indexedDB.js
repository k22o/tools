/*
実際には実行していないので、あくまでサンプル。
動くかはようわからない。
*/

const dbName = 'sampleDataBase';
const dbVersion = 1;
const storeName = 'sampleTable';
const openRequest = indexedDB.open(dbName, dbVersion);

// DB新規作成/更新時に実行される
openRequest.onupgradeneeded = function(e) {
    let db = e.target.result;

    // tableを作成する
    if (!db.objectStoreNames.contains(storeName)) {
        db.createObjectStore(storeName, {keyPath: 'id'});
    }
}

// 接続に失敗したときに実行される
openRequest.error = function(e) {
    console.error("indexedDB Fail");
}

// 接続に成功したときに実行される
openRequest.onsuccess = function(e) {
    let db = openRequest.result;
    let data = {
        "id":1,
        "text":"text"
    };
    add(data, e);
}

function add(data, event) {

    const db = event.target.result;
    const trans = db.transaction(storeName, 'readwrite');
    const store = trans.objectStore(storeName);
    const addRequest = store.add(data);

    addRequest.onsuccess = function(){
      console.log('add data success');
    }
    addRequest.oncomplete = function(){
      console.log('transaction complete');
    }
}