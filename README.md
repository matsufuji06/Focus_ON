## 概要
タスクの「リスト」と「カード」を作成することで、すべきことを洗い出すタスク管理アプリケーションです。
そのアプリ名の通り、「集中」していただくために、ストップウォッチ機能を付けております。

#### 【ログイン画面（devise + Facebook, Twitter, Google Oauth2）】
<img width="1440" alt="b41e6ed50b6aeb28823bcf3cce4f246f" src="https://user-images.githubusercontent.com/66365394/99932366-20e52100-2d9b-11eb-8b60-c95cbb38f027.png">

#### 【タスク一覧画面】
<img width="1440" alt="df7a4706a7b827c0666a4387384bdfd5" src="https://user-images.githubusercontent.com/66365394/99934647-e763e400-2da1-11eb-9a05-c9881be61797.png">

#### 【リスト作成画面（編集も可）】
<img width="1440" alt="e91034b97f4ea4b828af14d69f45b80b" src="https://user-images.githubusercontent.com/66365394/99932599-ec259980-2d9b-11eb-8f92-c040baef988f.png">

#### 【カード作成画面】
<img width="1420" alt="96d77195bcfb8f453e49894b59c99a93" src="https://user-images.githubusercontent.com/66365394/99932286-f1361900-2d9a-11eb-8c1c-6dbcf18a4a74.png">

#### 【カード編集画面（他リストに移動可）】
<img width="1438" alt="8c2a33cd6166d50bf307ec9bcbf5a3fb" src="https://user-images.githubusercontent.com/66365394/99932274-ebd8ce80-2d9a-11eb-8f09-f725ebbb7d15.png">

#### 【カードの編集と削除画面 with ストップウォッチ】
<img width="1440" alt="536443e58241fc5f20b25a3bd1ee3f0b" src="https://user-images.githubusercontent.com/66365394/99934550-a4a20c00-2da1-11eb-918e-281474264148.png">

## URL
[https://focus-on-tasks.herokuapp.com/](https://focus-on-tasks.herokuapp.com/)

## 機能一覧
#### ログイン機能
・devise  
・外部APIによるログイン(Facebook, Twitter, Google Oauth2)

#### リスト&タスクCRUD機能
・投稿機能  
・詳細確認  
・編集機能  
・削除機能  

#### ストップウォッチ機能
・スタート  
・ストップ  
・リセット  

## 技術一覧
・Ruby  
・Ruby on Rails  
・haml  
・scss  
・JavaScript  
・Gem('font-awesome-sass', 'devise', 'omniauth', 'omniauth-facebook', 'omniauth-twitter', 'omniauth-google-oauth2', 'dotenv-rails')  
・Github  
・Heroku  

## アプリへの想い
チーム開発の時に用いた"Trello"に近いようなアプリケーションを作りたいと思ったのがきっかけです。個人的にも仕事やプライベートで使えるようなシンプルなアプリに仕上がったのではと思います。
また、本家"Trello"にはなかったような、Facebook, Twitter, Googleログイン機能やストップウォッチ機能を実装することで、ユーザビリティ性を高めるのと同時に、自らの技術力を高めていくことにも取り組んでいくことができました。なお、追加実装していきたい点としては、JSを用いてもカード移動機能です。単体テストも記述ができておりません（外部APIとの兼ね合いで難易度が上がり、挫折した）ので、ブラッシュアップしていきたいと考えています。

