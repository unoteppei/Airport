# Go Airport

## サービス概要
空港に関する投稿や検索サイトです。<br>
気軽に自分の好きな空港の魅力の投稿や投稿検索ができます。

<img width="1437" alt="スクリーンショット 2023-09-14 17 53 21" src="https://github.com/unoteppei/Airport/assets/143475813/af9565d8-f43c-4a63-bfa7-17594c1179ac">


## 作成に至った背景

１.私自身空港の雰囲気が好きで友人にも同じく雰囲気が好きで空港巡りをしている方がおり、同じ趣味を持っている方がたくさんいらっしゃるのではと思いそのような方々が事前に情報収集できればと考え作成しました。

２.旅行などで遠距離移動をすることがあるかと思います。その際に微妙に時間が余ってしまった時に投稿検索機能を使用し過ごしていただければと思い作成しました。

## 投稿方法

新規登録　ログイン　ゲストログインのいずれかを行って行っていただき画面右上(PCの場合画像もしくはネーム スマートフォンやタブレッドの場合バーガーメニュー)に触れていただくとメニューを開くことができ投稿するリンクがございますのでそちらの方から投稿をお願いします。<br>

## 使用技術

・ Ruby 3.1.3<br>
・ Ruby on Rails 6.0.6.1<br>
・ jquery 3.7.0<br>
・ Bulma<br>
・ PostgreSQL 14.6<br>
・ AWS S3<br>
・ RSpec<br>
・ Rubocop<br>
・ GitHub Actions<br>
・ Heroku<br>
・ Google maps API<br>

## 機能一覧

・ログイン機能(devise)<br>
　-ユーザー名登録<br>
　-ログイン機能<br>
　-ゲストログイン機能<br>
・プロフィール機能<br>
　-アバター画像(ActiveStorage)<br>
　-オフライン　オンライン　ステータス<br>
　-自己紹介<br>
・投稿機能<br>
　-画像投稿<br>
　-編集 削除<br>
・フリーワード検索機能<br>
・地図(Google maps API)<br>

## ER 図


<img width="961" alt="スクリーンショット 2023-09-14 18 12 12" src="https://github.com/unoteppei/Airport/assets/143475813/e190bc28-f2f2-4f19-b4da-408ab2695721">


## インフラ構成図

<img width="805" alt="スクリーンショット 2023-09-25 10 00 45" src="https://github.com/unoteppei/Airport/assets/143475813/b5e8fdbe-626f-42df-bc0a-983b8076bd88">

