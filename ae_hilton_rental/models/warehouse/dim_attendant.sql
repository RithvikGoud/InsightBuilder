WITH CTE AS (
    SELECT 
        attendent_id,
        attendent_name,
        attendent_city,
        attendent_state,
        attendent_country,
        attendent_response_time,
        attendent_response_rate,
        attendent_is_superattendent,
        attendent_neighbourhood,
        attendent_propertys_count AS attendent_properties_count,
        attendent_total_propertys_count AS attendent_total_properties_count,
        attendent_verifications,
        attendent_has_profile_pic,
        attendent_identity_verified,
        ROW_NUMBER() OVER (PARTITION BY attendent_id ORDER BY attendent_name) AS rn
    FROM 
        {{ ref('stg_property') }}
)
SELECT *
FROM CTE
WHERE rn = 1
