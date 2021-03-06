    SELECT
        order_id,
        SUM(amount) AS total_order_amount
    FROM {{ref("stg_payments")}}
    GROUP BY order_id
    HAVING total_order_amount < 0 
