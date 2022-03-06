/* This test is pretty contrived, but example of building a specific test */

SELECT
  *
FROM {{ref("stg_customers")}}
WHERE len(last_name) != 2