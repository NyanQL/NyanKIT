SELECT count(id) AS today_count
FROM stamps
/*BEGIN*/
WHERE
    /*IF date != null*/ DATE(date) = /*date*/'2024-06-10' /*END*/
/*END*/;