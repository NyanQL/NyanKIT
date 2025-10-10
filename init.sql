-- init.sql
-- データベース初期化スクリプト

-- 拡張機能
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- ユーザーテーブル
CREATE TABLE users (
                       id            SERIAL PRIMARY KEY,
                       username      TEXT      NOT NULL UNIQUE,
                       email         TEXT      NOT NULL UNIQUE,
                       created_at    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- API呼び出しログ
CREATE TABLE users_activity_logs (
                                     user_id      INTEGER   NOT NULL REFERENCES users (id) ON DELETE CASCADE,
                                     api_name     TEXT      NOT NULL,
                                     request_data JSONB,                  -- JSON形式のリクエストを保存
                                     ip_address   TEXT,
                                     user_agent   TEXT,
                                     created_at   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- インデックス
CREATE INDEX idx_users_activity_logs_request_data ON users_activity_logs USING gin (request_data);
CREATE INDEX idx_users_activity_logs_created_at   ON users_activity_logs (created_at);

-- サンプルデータ ---------------------------------------------------

-- ユーザー
INSERT INTO users (username, email) VALUES
                                        ('neko', 'neko@example.com'),
                                        ('tama', 'tama@example.com');

-- アクティビティログ
INSERT INTO users_activity_logs (user_id, api_name, request_data, ip_address, user_agent)
VALUES
    (
        1,
        'login',
        '{"username":"neko","success":true}'::jsonb,
        '192.168.0.10',
        'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)'
    ),
    (
        1,
        'upload_file',
        '{"filename":"document.pdf","size":123456,"tags":["work","pdf"]}'::jsonb,
        '192.168.0.10',
        'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)'
    ),
    (
        2,
        'search',
        '{"query":"cat pictures","filters":{"type":"image","limit":10}}'::jsonb,
        '192.168.0.11',
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'
    );
