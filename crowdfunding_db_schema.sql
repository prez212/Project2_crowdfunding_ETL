-- Drop table if exists
DROP TABLE IF EXISTS campaign;

DROP TABLE IF EXISTS contacts;

DROP TABLE IF EXISTS category;

DROP TABLE IF EXISTS subcategory;


-- Create new tables to import data
CREATE TABLE contacts (
	contact_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR (200),
    last_name VARCHAR (200),
    email VARCHAR (200)
);

CREATE TABLE category (
	category_id VARCHAR (200) NOT NULL PRIMARY KEY,
	category VARCHAR (200)
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR (200) NOT NULL PRIMARY KEY,
	subcategory VARCHAR (200)
);

CREATE TABLE campaign (
	cf_id VARCHAR (200) NOT NULL PRIMARY KEY,
    contact_id INT,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    company_name VARCHAR (200),
    description VARCHAR(200),
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR(200),
    backers_count INT,
    country VARCHAR (200),
    currency VARCHAR(200),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR(200) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    subcategory_id VARCHAR (200) NOT NULL,
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM campaign