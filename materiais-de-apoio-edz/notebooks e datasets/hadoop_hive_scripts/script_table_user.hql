CREATE EXTERNAL TABLE IF NOT EXISTS `default`.`yelp_user` (
	`user_id` STRING,
	`name` STRING,
	`review_count` INT,
	`yelping_since` STRING,
	`useful` INT,
	`funny` INT,
	`cool` INT,
	`elite` STRING,
	`friends` STRING,
	`fans` INT,
	`average_stars` DOUBLE,
	`compliment_hot` INT,
	`compliment_more` INT,
	`compliment_profile` INT,
	`compliment_cute` INT,
	`compliment_list` INT,
	`compliment_note` INT,
	`compliment_plain` INT,
	`compliment_cool` INT,
	`compliment_funny` INT,
	`compliment_writer` INT,
	`compliment_photos` INT)
ROW FORMAT SERDE 
	 'org.openx.data.jsonserde.JsonSerDe'
LOCATION
	 '/user/hadoop/user';