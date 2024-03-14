# Magazin-on-line-MySQL
## About
This project presents the database of an online perfume store and contains 20 products.

## Project structure
The products are cataloged in 8 different tables:

1. The "Produse" table which contains: product name, price, stock, BarCode id, Property id, ProductType id, Characteristic id, Description id.

2. The "CodBare" table contains the EAN code related to each product.

3. The "Proprietati" table contains the properties of each product.

4. The "TipProdus" table contains the type of product, for which gender it is recommended, idTip idProperties.

5. The "Caractersitici" table contains the characteristics of the product such as top notes, middle notes and base notes.

6. The "DescriereProdus" table contains the description of the products and the brand they belong to.

7. The "CategorieOlfactiva" table contains the olfactory category to which the products belong.

8. The "Tip" table contains the type of product in which the product can be cataloged.

## Links between tables
1. Tables "CodBare", "Proprietati", "TipProdus", "Caractersitici", "DescriereProdus" are linked to table "Produse".

2. Tables "Tip", "Proprietati" are linked to table "TipProdus".

3. Table "CategorieOlfactiva" is linked to table "Caractersitici".

![Imagine](https://github.com/mihaidaneasa/Magazin-on-line-MySQL/blob/main/Schema%20legaturi%20tabele.jpg)

## Database "MagazinOnLine"
https://github.com/mihaidaneasa/Magazin-on-line-MySQL/blob/main/MagazinOnLine.sql
