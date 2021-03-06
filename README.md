# RuckSutdy

## Creating Contracts

**constructor**

- コントラクトが作られた時に、一度だけ実行される
- constructorが実行された後、最終的なコントラクトのコードがブロックチェーン上にデプロイされる

## Visibility

**private**

- 定義されたコントラクト内でのみ使用することができる
- 継承した子のコントラクトでは使用できない

**public**

- 定義されたコントラクト内で使用することができる
- 継承先した子のコントラクトから使用することができる
- 外部から呼び出すことができる
- 関数：明示的に権限を指定していない場合のデフォルト値

**internal**

- 定義されたコントラクト内で使用することができる
- 継承したコントラクトから使用することができる
- 変数：明示的に権限を指定していない場合のデフォルト値

**external**

- 外部からのみ呼び出すことができる
- 大きい配列を受け取るときに効率的

## Functions

storegeの値を変更する場合は、viewとpureは定義しない

**View Functions**

- storageの値を参照することは可能
- storageの値を変更することは不可

**Pure Functions**

- storageの値を参照することは不可
- storageの値を変更することは不可

## Storage, Memory and the Stack

**strage**

- ブロックチェーンに記録される
- functionを呼び出してからトランザクションまで残る
- 256bitのワードを256bitのワードにマッピングしているKVS
- 参照コストが発生し、変更コストは参照コストよりも高い

**memory**

- ブロックチェーンには記録されない
- コントラクトが呼び出される時に毎回新たに作られ、関数の実行が完了すれば消える
- 関数内の引数はデフォルトでmemoryに格納される

**stack**

- 小さな値を内部で保持する際に使う
