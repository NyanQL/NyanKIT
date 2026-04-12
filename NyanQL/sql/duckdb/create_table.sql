-- テーブルの作成
CREATE TABLE test (
                      id INTEGER,
                      name TEXT
);

-- データの挿入
INSERT INTO test VALUES (1, 'にゃん'), (2, 'にゃんにゃん');

-- データの確認
SELECT id, name FROM test;