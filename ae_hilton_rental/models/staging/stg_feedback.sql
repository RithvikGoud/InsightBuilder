WITH feedback_data AS (
  SELECT *
  FROM {{ source('HL_R_S', 'Feedback_Summary_Table') }}
)
SELECT * from feedback_data