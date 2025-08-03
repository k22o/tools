insert into 
members(name, profession) 

select 
name 
"engineer"
from members where id=1;


/*
あるテーブルの行をコピーする場合、
上記のように、valueに相当する部分に、select文を入れる。
単純にコピーするだけではなく、要素をカスタマイズする場合、
上記のように設定する値を並べてかけば良い。
(上記の例の場合、nameはコピーするがprofessionはこちらで設定している)
*/

/*
table: members
- id (auto_increment)
- name:
- profession:
*/