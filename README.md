# Magazin-on-line-MySQL
## About
This project presents the database of an online perfume store and contains a number of 20 products.

## Project structure
The products are cataloged in 8 different tables:

1. The "Produse" table which contains: product name, price, stock, BarCode id, Property id, ProductType id, Characteristic id, Description id.

2. The "CodBare" table contains the EAN code related to each product.

3. The "Proprietati" table contains the properties of each product.

4. The "TipProdus" table contains the type of product, for which gender it is recommended, idTip idProperties.

5. The "Caractersitici" table contains the characteristics of the product such as top notes, middle notes and base notes.

6. Tabela "Descriere produs" contine descrierea produselor si brandul din care fac parte acestea.

7. Tabela "CategorieOlfactiva" contine categoria olfactiva din care fac parte produsele.

8. Tabela "Tip" contine genul de produs in care se poate cataloga produsul.

## Links between tables
1. Tables "CodBare", "Proprietati", "TipProdus", "Caractersitici", "Descriere produs" are linked to table "Produse".

2. Tables "Tip", "Proprietati" are linked to table "TipProdus".

3. Table "CategorieOlfactiva" is linked to table "Caractersitici".

![Imagine](https://github.com/mihaidaneasa/Magazin-on-line-MySQL/blob/main/Schema%20legaturi%20tabele.jpg)

## database "magazinOnLine"

