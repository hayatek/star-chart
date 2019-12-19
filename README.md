# star-chart
フォームに入力されたGitHubリポジトリのスター数をGitHub APIより取得してグラフで比較するWebアプリです。
Celeryを使ってGithubから毎日1回データを取得して日次のグラフを作成するのと、月次では毎月1日のデータを蓄積したグラフを作成します。

## Web
https://django-starchart.herokuapp.com/

## 使用技術
- Django2
- Bootstrap4
- GraphQL
- chart.js
- Celery
- Docker
- CircleCi

## 本番環境
- Heroku

## アプリの構成
├── chart
├── config
├── core
├── locale
├── staticfiles
├── templates
├── manage.py
├── Dockerfile
├── Procfile
├── Procfile.real
├── requirements.txt
├── requirements_local.txt
├── runtime.txt
├── docker-compose.yml

## 開発者について
IT業界には長くいるもののずっとメインフレームコンピュータなどのレガシーな環境でCOBOLでの開発をやってきました。
WebエンジニアへのJOBチェンジを目指して2018年11月よりPythonの学習を開始しました。

## 開発期間
- 2019年4月〜12月の約9ヶ月(約400時間)
