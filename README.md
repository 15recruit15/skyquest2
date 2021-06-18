# Sky Quest2 (制作中)
https://skyquest-japan-pilot.xyz

Skyquest1を元に再制作をしています。
フロントページはNuxt.js、バックエンドはRails APIを使用しています。

## 使用技術
- Rails 6.1.3
- Nuxt 2.15.3
- MariaDB 10.4
- Docker
- Circle CI
- AWS
  - Route53
  - ACM
  - ALB
  - ECR
  - ECS (EC2)
  - RDS

## 機能一覧
- 記事投稿機能 (axios)
- レスポンシブ機能 (Bootstrap-Vue)
- 画像ファイルのアップロード機能 (Carrierwave + S3)
- ログイン認証機能 (Devise + Devise_token_auth + auth module)
- テスト機能 (Rspec)
