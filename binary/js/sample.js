// Node.jsを使う場合は、Bufferのメソッドを使う方が高速かつ簡単
// ブラウザ側では使えないので、その場合はArrayBuffer等への変換が必要


function encode() {
    // 16bitのリトルエンディアンで設定、つまり2バイト
    const buffer1 = Buffer.alloc(2); 
    buffer1.writeInt16LE(123);
    // UTF-8で、つまり1文字あたり1バイトでバイナリ化、合計4バイト
    const buffer2 = Buffer.from("test", 'utf8'); 
    // 32bitのリトルエンディアンで設定、つまり4バイト
    const buffer3 = Buffer.alloc(4);
    buffer3.writeFloatLE(123.45);  // 123.45 (32bit float)
    
    // 数値と文字列のバッファを結合
    return Buffer.concat([buffer1, buffer2, buffer3]);

}

function decode(buffer) {
    // 0バイト目からint16、つまり2バイト分切り出す
    const numberInt = buffer.readInt16LE(0);
    // 2バイト目からUTF8で4バイト分切り出す
    const text = buffer.toString('utf8', 2, 6);
    // 6バイト目から
    const numberFloat = buffer.readFloatLE(6);
    console.log(`int: ${numberInt}, text: ${text}, float: ${numberFloat}`)
}


const buffer = encode()
decode(buffer)
