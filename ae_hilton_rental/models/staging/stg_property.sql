WITH property_data AS (
  SELECT
    *,
    ROW_NUMBER() OVER (ORDER BY property_id) AS review_id  
  FROM {{ source('HL_R_S', 'Property_Summary_Table') }}
)

SELECT *
FROM property_data