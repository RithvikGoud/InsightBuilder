select 
    review_id,
    property_id,
    first_review,
    last_review,
    number_of_reviews,
    review_scores_rating,
    review_scores_accuracy,
    review_scores_cleanliness,
    review_scores_checkin,
    review_scores_communication,
    review_scores_location,
    review_scores_value
from {{ ref('stg_property') }}
