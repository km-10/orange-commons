# orange-commons

ディレクトリ構成（初期状態）{

root/
  |__app/
  |    |__config/
  |    |    |__config.php    // 共通設定を記すファイル
  |    |
  |    |__htdocs/
  |    |    |__assets/
  |    |    |    |__css/
  |    |    |    |__images/
  |    |    |    |__scripts/        // JavaScriptを格納するディレクトリ
  |    |    |        |__script.js
  |    |    |
  |    |    |__board/
  |    |    |    |__index.php    // 各機能ごとにディレクトリを分け，それぞれのディレクトリ内にindex.phpを配置する
  |    |    |
  |    |    |__home/
  |    |         |__index.php
  |    |
  |    |__library/    // WEBサイトの機能に関わる部分のファイルを格納するディレクトリ
  |    |__template/    // WEBサイトの見た目に関わる部分のファイルを格納するディレクトリ
  |
  |__batch/
  |    |__library/    // バッチプログラムを格納するディレクトリ
  |    |__log/    // ログを格納するディレクトリ
  |
  |__docker/    // dockerの設定ファイルが格納されているディレクトリ
  |    |__db/
  |    |    |__init/
  |    |    |    |__1.create-db.sql
  |    |    |    |__2.grant-user.sql
  |    |    |    |__3.create-table.sql
  |    |    |    |__4.insert-data.sql
  |    |    |
  |    |    |__dockerfile
  |    |    |__my.cnf
  |    |
  |    |__web/
  |         |__dockerfile
  |         |__php.ini
  |
  |__docker-compose.yml

  }
 
