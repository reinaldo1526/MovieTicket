CREATE TABLE Customer(
	customer_id SERIAL PRIMARY KEY,
	First_Name VARCHAR(100),
	Last_Name VARCHAR(100),
	Address VARCHAR(200),
	Billing_info VARCHAR(300)
);

CREATE TABLE Brand(
	Seller_ID SERIAL PRIMARY KEY,
	Brand_name VARCHAR(150),
	Contact_Number VARCHAR(15),
	Address VARCHAR(150)
);

CREATE TABLE Product(
	ItemID SERIAL PRIMARY KEY,
	Amount Numeric(8,2),
	Prod_name VARCHAR(100),
	seller_id INTEGER NOT NULL,
	FOREIGN KEY(seller_id) REFERENCES Brand(Seller_ID)
);

CREATE TABLE orders(
	OrderID SERIAL PRIMARY KEY,
	OrderDate DATE,
	Amount Numeric(8,2),
	Total_Cost Numeric(8,2),
	customer_id INTEGER NOT NULL,
	itemID INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES Customer(Customer_id),
	FOREIGN KEY(itemID) REFERENCES Product(ItemID)
);