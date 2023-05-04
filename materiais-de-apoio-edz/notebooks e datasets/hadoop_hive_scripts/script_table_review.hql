CREATE EXTERNAL TABLE IF NOT EXISTS `default`.`yelp_review` (
	`review_id` STRING,
	`user_id` STRING,
	`business_id` STRING,
	`stars` DOUBLE,
	`useful` INT,
	`funny` INT,
	`cool` INT,
	`text` STRING,
	`date` STRING)
ROW FORMAT SERDE 
	 'org.openx.data.jsonserde.JsonSerDe'
LOCATION
	 '/user/hadoop/reviews';