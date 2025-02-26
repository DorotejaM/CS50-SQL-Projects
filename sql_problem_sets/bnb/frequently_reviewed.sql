CREATE VIEW frequently_reviewed AS
    SELECT l.id, l.property_type, l.host_name, COUNT(r.id) reviews
    FROM listings l
    JOIN reviews r
        ON l.id = r.listing_id
    GROUP BY listing_id
    ORDER BY COUNT(r.id) DESC, l.property_type, l.host_name
    LIMIT 100;
