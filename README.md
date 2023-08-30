# Go Airport

## サービス概要
気軽に自分の好きな空港の魅力の投稿や投稿 空港場所を検索できるサービスです。

<img width="1436" alt="スクリーンショット 2023-08-10 9 53 12" src="https://github.com/uno-teppei/Work/assets/102563081/9b71504e-d19c-4b5e-8720-7e61203cbceb">


## 作成に至った背景
１.私自身空港の雰囲気が好きで友人にも同じく雰囲気が好きで空港巡りをしている方がおり、同じ趣味を持っている方がたくさんいらっしゃるのではと思いそのような方々が事前に情報収集できればと考え作成しました。

２.旅行などで遠距離移動をすることがあるかと思います。その際に微妙に時間が余ってしまった時に投稿検索機能を使用し過ごして頂きただければと思い作成しました。

## 使用方法
新規登録　ログイン　ゲストログインのいずれかを行って行っていただき画面右上の画像もしくはユーザー名に触れていただくとメニューを開くことができ投稿するリンクがございますのでそちらの方から投稿をお願いします。<br>

場所検索は登録を行わなくともできるようにしております。
## 使用技術
・ Ruby 3.1.3<br>
・ Ruby on Rails 6.0.6.1<br>
・ jquery 3.7.0<br>
・ Bulma<br>
・ PostgreSQL 14.6<br>
・ AWS S3<br>
・ GitHub Actions CI/CD<br>
・ RSpec<br>
・ Rubocop<br>
・ Heroku<br>

## 機能一覧
・ログイン機能(devise)<br>
　-ユーザー名登録<br>
　-ログイン機能<br>
　-ゲストログイン機能<br>
・ Google認証(omniauth-google-oauth2)<br>
　-Googleユーザー登録<br>
　-Googleログイン<br>
・　プロフィール機能<br>
　-アバター画像(ActiveStorage)<br>
　-オフライン　オンライン　ステータス<br>
　-自己紹介<br>
・　投稿機能<br>
・　フリーワード検索機能<br>
・　地図検索(Google maps API)<br>

## ER図

<img width="638" alt="スクリーンショット 2023-08-30 19 45 28" src="https://github.com/unoteppei/Airport/assets/143475813/90c8e4b8-b593-45c4-bdb4-70fa9ed31c60">

