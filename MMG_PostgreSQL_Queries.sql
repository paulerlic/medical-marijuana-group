-- Create table prior to importing csv file 
CREATE TABLE kushy_reduced (
	test_id INT NOT NULL,
	test_strain VARCHAR NOT NULL,
   	type VARCHAR,
    ailment_1 VARCHAR,
    ailment_2 VARCHAR,
	ailment_3 VARCHAR,
	ailment_4 VARCHAR,
	ailment_5 VARCHAR,
	effects_1 VARCHAR,
	effects_2 VARCHAR,
	effects_3 VARCHAR,
	effects_4 VARCHAR,
	effects_5 VARCHAR,
	effects_6 VARCHAR,
	effects_7 VARCHAR,
	effects_8 VARCHAR,
	flavor_1 VARCHAR,
	flavor_2 VARCHAR,
	flavor_3 VARCHAR,
    PRIMARY KEY (test_id),
	UNIQUE (test_id, test_strain)
);

-- Check table created and data imported
SELECT * FROM kushy_reduced

-- Create table prior to importing csv file 
CREATE TABLE washington_reduced (
	test_id INT NOT NULL,
	test_strain VARCHAR,
   	thc_max DECIMAL,
    cbd_max DECIMAL,
    inventory_type VARCHAR,
	chemotype INT,
	strain_category VARCHAR,
	strain_leafly_page_rank INT,
	strain_leafly_review_rank INT,
	strain_tests INT,
	strain_chemotype INT,
	strain_prop_chemotype1 DECIMAL,
	strain_prop_chemotype2 DECIMAL,
	strain_prop_chemotype3 DECIMAL,
	strain_modal_chemo_prop DECIMAL,
    PRIMARY KEY (test_id),
	UNIQUE (test_id, test_strain)
);

-- Check table created and data imported
SELECT * FROM washington_reduced

-- Left join all columns from both tables
SELECT 	kushy_reduced.*,
		washington_reduced.*
FROM kushy_reduced
LEFT JOIN washington_reduced
ON kushy_reduced.test_id = washington_reduced.test_id;