CREATE TABLE category(
    category_id VARCHAR(30) NOT NULL,
    category VARCHAR(30) NOT NULL,
    PRIMARY KEY (category_id)
);


CREATE TABLE Subcategory (
    subcategory_id VARCHAR(30) NOT NULL,
    subcategory VARCHAR(30) NOT NULL,
    PRIMARY KEY (subcategory_id)
);


CREATE TABLE Contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY (contact_id)
);

CREATE TABLE Campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(90) NOT NULL,
    description VARCHAR(60) NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(30) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(20) NOT NULL,
	currency VARCHAR(20) NOT NULL,
	launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(30) NOT NULL,
    subcategory_id VARCHAR(30) NOT NULL,
	FOREIGN KEY(contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY(category_id) REFERENCES Category(category_id),
	FOREIGN KEY(subcategory_id) REFERENCES Subcategory(subcategory_id)
);
SELECT * FROM Category;
SELECT * FROM Subcategory;
SELECT * FROM Contacts;
SELECT * FROM Campaign;