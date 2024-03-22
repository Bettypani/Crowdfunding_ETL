--Drop tables if necessary
--DROP TABLE categories,
--	subcategories,
--	contacts,
--	campaign;
CREATE TABLE categories(
    category_id        VARCHAR(4)      NOT NULL    PRIMARY KEY,
    category           VARCHAR(30)     NOT NULL
);
CREATE TABLE subcategories(
    subcategory_id     VARCHAR(30)     NOT NULL    PRIMARY KEY,
    subcategory        VARCHAR(30)      NOT NULL
);
CREATE TABLE contacts(
    contact_id        INTEGER          NOT NULL    PRIMARY KEY,
    fist_name         VARCHAR(30)      NOT NULL,
    last_name         VARCHAR(30)      NOT NULL,
    email             VARCHAR(60)      NOT NULL
);
CREATE TABLE campaign(
    cf_id           INTEGER           NOT NULL    PRIMARY KEY,
    contact_id      INTEGER           NOT NULL,
    company_name    VARCHAR(60)       NOT NULL,
    description     VARCHAR(60)       NOT NULL,
    goal            FLOAT           NOT NULL,
    pledged         FLOAT           NOT NULL,
    outcome         VARCHAR(60)      NOT NULL,
    backers_count   INTEGER           NOT NULL,
    country         VARCHAR(60)      NOT NULL,
    currency        VARCHAR(60)      NOT NULL,
    launched_date   DATE             NOT NULL,
    end_date        DATE             NOT NULL,
    category_id     VARCHAR(4)       NOT NULL,
    subcategory_id  VARCHAR(60)   NOT NULL,
    FOREIGN KEY(category_id)  REFERENCES categories(category_id),
    FOREIGN KEY(subcategory_id)  REFERENCES subcategories(subcategory_id),
    FOREIGN KEY(contact_id)  REFERENCES contacts(contact_id)
)
SELECT *
FROM categories;
SELECT *
FROM subcategories;
SELECT *
FROM contacts;
SELECT *
FROM campaign;
