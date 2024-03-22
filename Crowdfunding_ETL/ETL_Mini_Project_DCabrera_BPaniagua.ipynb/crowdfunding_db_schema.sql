
CREATE TABLE categories(
    category_id        VARCHAR(30)      NOT NULL    PRIMARY KEY,
    category           VARCHAR(30)     NOT NULL
);

CREATE TABLE subcategories(
    subcategory_id     VARCHAR(30)     NOT NULL   PRIMARY KEY,
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
    company_name    VARCHAR(40)       NOT NULL,
    description     VARCHAR(40)       NOT NULL,
    goal            INTEGER           NOT NULL,
    pledged         INTEGER           NOT NULL,
    outcome         VARCHAR(30)      NOT NULL,
    backers_count   INTEGER           NOT NULL,
    country         VARCHAR(30)      NOT NULL,
    currency        VARCHAR(30)      NOT NULL,
    launched_date   DATE             NOT NULL,
    end_date        DATE             NOT NULL,
    category_id     VARCHAR(30)       NOT NULL,
    subcategory_id  VARCHAR(30)   NOT NULL,
    FOREIGN KEY(category_id)  REFERENCES categories(category_id),
    FOREIGN KEY(subcategory_id)  REFERENCES subcategories(subcategory_id),
    FOREIGN KEY(contact_id)  REFERENCES contacts(contact_id)
)