SELECT
    property_id,
    name,
    property_type,
    room_type,
    accommodates,
    bathrooms,
    bedrooms,
    beds,
    bed_type,
    amenities,
    zipcode,
    country_code,
    country,
    latitude,
    longitude,
    is_location_exact
FROM {{ ref('stg_property') }}