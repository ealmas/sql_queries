load data local infile 'C:\\Users\\elif.issi\\Desktop\\crystals_digikey_06102019.csv' 
into table `crystals_digikey_06102019`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;