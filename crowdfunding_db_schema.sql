CREATE TABLE "campaign" (
	"cf_id" INT NOT NULL,
	"contact_id" INT,
	"company_name" VARCHAR(50),
	"description" VARCHAR(100),
	"goal" FLOAT,
	"pledged" FLOAT,
	"outcome" VARCHAR(20),
	"backers_count" INT,
	"country" VARCHAR(10),
	"currency" VARCHAR (5),
	"launch_date" DATE,
	"end_date" DATE,
	"staff_pick" BOOL,
	"spotlight" BOOL,
	"category_id" VARCHAR(10),
	"subcategory_id" VARCHAR(20),
	CONSTRAINT "pk_campaign" PRIMARY KEY (
		"cf_id"
	)
);

SELECT *
FROM campaign 
LIMIT (5);
----------------

CREATE TABLE "contacts"(
	"contact_id" INT,
	"first_name" VARCHAR(50),
	"last_name" VARCHAR(50),
	"email" VARCHAR(100),
	CONSTRAINT "pk_contacts" PRIMARY KEY(
		"contact_id"
	)
);

SELECT *
FROM contacts 
LIMIT (5);
--------------

CREATE TABLE "category" (
	"category_id" VARCHAR(10),
	"category" VARCHAR(50),
	CONSTRAINT "pk_category" PRIMARY KEY(
		"category_id"
	)
);

SELECT *
FROM category 
LIMIT (5);
--------------

CREATE TABLE "subcategory" (
	"subcategory_id" VARCHAR(20),
	"subcategory" VARCHAR(60),
	CONSTRAINT "pk_subcategory" PRIMARY KEY(
		"subcategory_id"
	)
);

SELECT *
FROM subcategory
LIMIT (5);

------- FOREIGN KEY CONSTRAINTS -------------

ALTER TABLE campaign ADD CONSTRAINT "fk_campaign_contact" FOREIGN KEY ("contact_id")
REFERENCES contacts(contact_id);

ALTER TABLE campaign ADD CONSTRAINT "fk_campaign_category" FOREIGN KEY ("category_id")
REFERENCES category(category_id);

ALTER TABLE campaign ADD CONSTRAINT "fk_campaign_subcategory" FOREIGN KEY ("subcategory_id")
REFERENCES subcategory(subcategory_id);

