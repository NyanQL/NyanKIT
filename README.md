# NyanKITについて

NyanKIT(にゃんキット)は
NyanQL(にゃんくる), Nyan8(にゃんぱち), NyanPUI(にゃんぷい)を使ってNyanQLアプリケーションを作るためのスターターキットです。
それぞれの使い方については、以下のREADMEを確認してください。
- [NyanQL README](https://github.com/NyanQL/NyanQL/blob/main/README.md)
- [Nyan8 README](https://github.com/NyanQL/Nyan8/blob/main/README.md)
- [NyanPUI README](https://github.com/NyanQL/NyanPUI/blob/main/README.md)
ホストに合わせて使用するzipファイルを選択しダウンロードしてください。

# リリースファイル
https://github.com/NyanQL/Nyan_STARTER_KIT/releases


NyanQLアプリはNyanQLを中心としたNyanQLエンジンで構成されたアプリケーションです。
- 安定したバックエンドで働くjavascript
- 安定したSQL
- 安定したHTMLとCSS、プラウザ上で活躍するJavaScript

長い保守期間を想定し、
また入門者にもやさしいアプリケーションが創造されることを想定してNyanQLたちは作られています。

# Nyanの各ソースについて

以下のリポジトリで管理しています。
* NyanQL https://github.com/NyanQL/NyanQL/
* Nyan8 https://github.com/NyanQL/Nyan8/
* NyanPUI https://github.com/NyanQL/NyanPUI/

NyanKIT v1.0.10 に同梱する各バイナリのバージョンは以下の通りです。
* NyanQL v1.0.23
* Nyan8 v1.0.21
* NyanPUI v1.0.17

リリース時には、上記リポジトリの指定バージョンのソースから実行バイナリをビルドし、同じバージョンの README.md を各サブディレクトリに同梱します。各サブディレクトリの README.md は、このスターターキットのリポジトリでは管理しません。

# サンプル設定

各製品の `config.json` は同梱サンプル用です。NyanQL はポート `8443`、Nyan8 は `8889`、NyanPUI は `8009` を使います。`certPath` / `keyPath` が空なので、接続には `http://localhost:ポート番号` を使用します。NyanQL のHTTP APIのBasic認証はユーザー名 `neko`、パスワード `nyan` です。

3製品に共通する設定として、以下の既定値を明記しています。

| 設定 | サンプルの値と動作 |
| --- | --- |
| `log.Level` | `info`。JavaScriptの `console.log` やWebSocket受信の詳細を確認するときは `debug` に変更します。 |
| `log.EnableLogging` | `false` は標準エラーへ出力します。`true` にすると `log.Filename` のファイルへ出力します。 |
| `httpTimeouts` | ヘッダー受信30秒、リクエスト読み取り20分、レスポンス書き込み30分、アイドル5分。 |
| `receiveLimits` | HTTP本文とWebSocketメッセージをそれぞれ20MBまで受信します。 |
| `APIHotReload` | `api.json` とそのinclude先の変更を1秒間隔で確認し、再読み込みします。 |

`config.json` の変更は再起動後に反映されます。`version` はサービスの表示用設定値なので、バイナリのバージョンとは別に `0.0.1` としています。Nyan8のメール送信を試す場合は、`smtp` に利用するサーバーと送信者情報を設定してください。BCCを使わない場合は `default_bcc` を空配列にします。

NyanQLの `/test1` はチェック専用サンプルのため、`/test1?nyan_mode=checkOnly` で実行します（この呼び出しではPushは送信しません）。

# ライセンス
NyanKIT(にゃんスターターキット)はMITライセンスで提供されています。詳細は[LICENSE.md](https://github.com/NyanQL/Nyan_STARTER_KIT/blob/main/LICENSE.md)を参照してください。
