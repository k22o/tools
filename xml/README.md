# XML

## 文書構造の定義
xmlは、DTDやXMLスキーマを利用して、文書構造を定義できる。

### XMLスキーマ
以下のように、定義を記載したxsdファイルを作成して、xml側で読み込む

```
<?xml version="1.0"?> 
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <xsd:element name="hoge" type="xsd:string"/>
</xsd:schema>
```


## 備考
- vscodeの vscode-xml,XML Language Support by Red Hat が使いやすい
- たぶん、仕様を表で書き出して、生成AIに投げる方がいい
