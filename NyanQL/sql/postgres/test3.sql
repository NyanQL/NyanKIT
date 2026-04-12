MERGE INTO users AS u
    USING (VALUES
               ('alice@example.com', 'Alice v2', 100.00),
               ('dave@example.com',  'Dave',     50.00)
    ) AS s(email, name, add_amount)
    ON (u.email = s.email)
    WHEN MATCHED THEN
        UPDATE SET
            name       = s.name,
            balance    = u.balance + s.add_amount,
            updated_at = now()
    WHEN NOT MATCHED BY TARGET THEN
    INSERT (email, name, balance, status)
    VALUES (s.email, s.name, s.add_amount, 'active')
    RETURNING WITH (OLD AS o, NEW AS n)
    merge_action() AS action, s.email,
    o.balance AS old_balance, n.balance AS new_balance, n.updated_at;
