SELECT 	u.user_id, 
 		u.name as yelp_user, 
 		u.average_stars as user_avg_stars, 
 		u.useful as user_useful, 
		u.review_count as user_review_count,
		u.yelping_since,
		b.business_id,
		b.name as business,
		b.city,
		b.state,
		b.stars as business_stars,
		b.review_count as business_review_count,
		r.useful as review_useful,
		r.stars as review_stars
FROM yelp_review as r
INNER JOIN yelp_business as b
ON r.business_id = b.business_id
INNER JOIN yelp_user as u
ON u.user_id = r.user_id;