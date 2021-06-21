# Sky Quest2 
https://skyquest-japan-pilot.xyz

Skyquest1を元に再制作をしています。
フロントページはNuxt.js、バックエンドはRails APIを使用しています。

## 使用技術
- Rails 6.1.3.2
- Nuxt 2.15.7
- MariaDB 10.4
- Docker
- Circle CI
- AWS
  - Route53
  - ACM
  - ALB
  - ECR
  - ECS
  - RDS

## 機能一覧
- 記事投稿機能
- レスポンシブ機能 (Bootstrap-Vue)
- 画像ファイルのアップロード機能 (Carrierwave + S3)
- ログイン認証機能 (Devise + Devise_token_auth)
- 非ログインユーザーの機能制限 (auth module)
- テスト機能 (Rspec)

## インフラ環境
![SkyQuest-Portfolio](https://user-images.githubusercontent.com/82098752/122500064-04f1e700-d02d-11eb-98f6-0c924e57ddb4.png)

