CREATE EXTERNAL TABLE IF NOT EXISTS `default`.`yelp_business` (
	`business_id` STRING,
	`name` STRING,
	`address` STRING,
	`city` STRING,
	`state` STRING,
	`postal_code` STRING,
	`latitude` DOUBLE,
	`longitude` DOUBLE,
	`stars` DOUBLE,
	`review_count` INT,
	`is_open` INT,
	`attributes` STRING,
	`categories` STRING,
	`hours` STRUCT<
	`Monday`:STRING,
`Tuesday`:STRING,
`Wednesday`:STRING,
`Thursday`:STRING,
`Friday`:STRING>)
ROW FORMAT SERDE
	 'org.openx.data.jsonserde.JsonSerDe'
LOCATION
	 '/user/hadoop/business';