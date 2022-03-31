-- Create table prior to importing csv file 
CREATE TABLE kushy_cleaned (
	test_id INT NOT NULL,
	test_strain VARCHAR NOT NULL,
   	type VARCHAR NOT NULL,
    ailment_1 VARCHAR NOT NULL,
    ailment_2 VARCHAR NOT NULL,
	ailment_3 VARCHAR NOT NULL,
	ailment_4 VARCHAR NOT NULL,
	ailment_5 VARCHAR NOT NULL,
	effects_1 VARCHAR NOT NULL,
	effects_2 VARCHAR NOT NULL,
	effects_3 VARCHAR NOT NULL,
	effects_4 VARCHAR NOT NULL,
	effects_5 VARCHAR NOT NULL,
	effects_6 VARCHAR NOT NULL,
	effects_7 VARCHAR NOT NULL,
	effects_8 VARCHAR NOT NULL,
	flavor_1 VARCHAR NOT NULL,
	flavor_2 VARCHAR NOT NULL,
	flavor_3 VARCHAR NOT NULL,
	ailment_count INT NOT NULL,
	effects_count INT NOT NULL,
	flavor_count INT NOT NULL,
    PRIMARY KEY (test_id),
	UNIQUE (test_id, test_strain)
);

-- Check table created and data imported
SELECT * FROM kushy_cleaned

-- Create table prior to importing csv file 
CREATE TABLE washington_cleaned (
	test_id INT NOT NULL,
	test_strain VARCHAR NOT NULL,
   	thc_max DECIMAL NOT NULL,
    cbd_max DECIMAL NOT NULL,
	thc_cbd DECIMAL NOT NULL,
    cbd_thc DECIMAL NOT NULL,
    inventory_type VARCHAR NOT NULL,
	chemotype INT NOT NULL,
	strain_leafly_page_rank INT NOT NULL,
	strain_leafly_review_rank INT NOT NULL,
	strain_tests INT NOT NULL,
	strain_chemotype INT NOT NULL,
	strain_prop_chemotype1 DECIMAL NOT NULL,
	strain_prop_chemotype2 DECIMAL NOT NULL,
	strain_prop_chemotype3 DECIMAL NOT NULL,
	strain_modal_chemo_prop DECIMAL NOT NULL,
    PRIMARY KEY (test_id),
	UNIQUE (test_id, test_strain)
);

-- Check table created and data imported
SELECT * FROM washington_cleaned

-- Left join all columns from both tables
SELECT 	kushy_cleaned.*,
		washington_cleaned.*
FROM kushy_cleaned
LEFT JOIN washington_cleaned
ON kushy_cleaned.test_id = washington_cleaned.test_id;

-- Create left join table
CREATE TABLE kushy_washington AS
	(SELECT kushy_cleaned.*,
			washington_cleaned.thc_max,
    		washington_cleaned.cbd_max,
	 		washington_cleaned.thc_cbd,
    		washington_cleaned.cbd_thc,
    		washington_cleaned.inventory_type,
			washington_cleaned.chemotype,
			washington_cleaned.strain_leafly_page_rank,
			washington_cleaned.strain_leafly_review_rank,
			washington_cleaned.strain_tests,
			washington_cleaned.strain_chemotype,
			washington_cleaned.strain_prop_chemotype1,
			washington_cleaned.strain_prop_chemotype2,
			washington_cleaned.strain_prop_chemotype3,
			washington_cleaned.strain_modal_chemo_prop
	FROM kushy_cleaned
	LEFT JOIN washington_cleaned
	ON kushy_cleaned.test_id = washington_cleaned.test_id
	);
	
-- Check table created
SELECT * FROM kushy_washington

-- Create table prior to importing csv file 
CREATE TABLE states_legal_status (
	State VARCHAR NOT NULL,
	Abbreviation VARCHAR NOT NULL,
   	Legalization_STatus VARCHAR NOT NULL,
    UNIQUE (State, Abbreviation)
);

-- Check table created and data imported
SELECT * FROM states_legal_status