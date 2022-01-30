# アプリケーション名
patients-management

# アプリケーション概要
電子カルテを導入していない病院にて、患者情報を病院全体で把握・管理できる。
また、他院からの転院調整、治療後の他院・他施設への退院調整の中で行われる職員同士の意見交換を容易に行うことができる。

# URL
https://patients-management-app.herokuapp.com/

# テスト用アカウント
Basic認証ID：admin
Basic認証パスワード：2222

# 利用方法
## 患者登録
1.トップページ(一覧ページ)のヘッダーから新規患者登録を行う<br>
2.患者の情報(患者ID、患者氏名、患者氏名(カタカナ)、生年月日、年齢、性別、住所、主病名、主治医、病棟、キーパーソン続柄、家族背景・その他、入院前施設、担当者、登録時の状況、転院調整の有無、入院日)を入力し登録する
## 患者情報表示
1.トップページで現在入院中の患者一覧を表示する<br>
2.入院前患者一覧ページで、転院調整中などの入院前の患者一覧を表示する
3.退院患者一覧ページで退院後の患者一覧を表示する
## 患者情報詳細表示、職員同士の意見交換を行う
1.患者情報の詳細部分を表示する
2.転院調整及び退院調整における職員同士の意見交換を行う

# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1hf8pHZqdjVtLceEbBcFFlx7Y0AD7og09jQ5o-5cIzFg/edit#gid=982722306)

# 実装した機能についての画像やGIFおよびその説明
[![Image from Gyazo](https://i.gyazo.com/50d1d645a6a995a321fa32ac390ced31.png)](https://gyazo.com/50d1d645a6a995a321fa32ac390ced31)
全ページ共通のヘッダーを作成し、どのページからでも各種一覧ページ及び患者登録画面に遷移することができる<br>
トップページにて患者一覧を表示する
(入院中かどうかの絞り込みは現在未実装)

[![Image from Gyazo](https://i.gyazo.com/deff375c8527769b68b1df3bef78d4f2.png)](https://gyazo.com/deff375c8527769b68b1df3bef78d4f2)
ページ下部に転院調整ページへ移動、患者情報編集ページへ移動、患者情報を削除するボタンを作成
患者情報を削除するボタンをクリックすると、アラートが表示される

[![Image from Gyazo](https://i.gyazo.com/6e8fb145022503a5b5b5d787c55538ea.png)](https://gyazo.com/6e8fb145022503a5b5b5d787c55538ea)
患者情報編集ページでは、データの編集・上書き保存が行える

# 実装予定の機能
今後、ユーザー(職員)登録機能を実装予定
ログイン時のみ患者情報の編集・削除が行えるように実装する

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/06bcd62b6432140e03039eed6bcbbcfc.png)](https://gyazo.com/06bcd62b6432140e03039eed6bcbbcfc)

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/06bcd62b6432140e03039eed6bcbbcfc.png)](https://gyazo.com/06bcd62b6432140e03039eed6bcbbcfc)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/69dd18eadeff059d1ba227d4040b0167.png)](https://gyazo.com/69dd18eadeff059d1ba227d4040b0167)

# 開発環境
・フロントエンド
・バックエンド
・インフラ
・テキストエディタ

# ローカルでの動作方法
以下のコマンドを順に実行
% git clone https://github.com/murakami-m/patients-management-second
% cd patients-management-second
% bundle install
% yarn install

# 工夫したポイント
患者詳細画面にて、テーブルの情報にて条件分岐し。転院調整情報の表示の有無を設定しました。

