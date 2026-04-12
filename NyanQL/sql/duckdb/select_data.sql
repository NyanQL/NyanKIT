SELECT * FROM read_xlsx(
        './sql/duckdb/test.xlsx',
        header=true
              ) where
                    id = /*id*/1
OR name = /*name*/'にゃん'
;