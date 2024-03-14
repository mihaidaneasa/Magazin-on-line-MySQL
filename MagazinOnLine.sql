create database magasinOnline;

Create table Produse
(
ID int not null auto_increment,
denumireProdus varchar (50) not null,
idCodBare int not null,
idDescriere int not null,
Pret double not null,
Stoc int,
Brand varchar (20) not null,
idTipProdus int not null,
Cantitate varchar (10) not null,
idCaracteristici int not null,
primary key (ID)
);

alter table produse
add column idDescriere int not null;

alter table produse
drop column Cantitate;

alter table produse
drop column Brand;

select * from produse;

create table CodBare
(
ID int not null auto_increment,
EAN int not null,
primary key (ID)
);

alter table CodBare
modify EAN bigint not null;

create table DescriereProdus
(
ID int not null auto_increment,
descriere varchar (200) not null,
primary key (ID)
);

alter table DescriereProdus
add Brand varchar (20) not null;

alter table DescriereProdus
modify descriere varchar (800) not null;

select * from DescriereProdus;

create table TipProdus
(
ID int not null auto_increment,
tipProdus varchar (20) not null,
recomandat varchar (20) not null,
idTip int not null,
idProprietati int not null,
primary key (ID)
);

create table Caracteristici
(
ID int not null auto_increment,
categorieOlfactiva varchar (20) not null,
noteDeVarf varchar (30) not null,
noteDeMijloc varchar (30) not null,
noteDeBaza varchar (30) not null,
primary key (ID)
);

alter table Caracteristici
drop column categorieOlfactiva;

alter table caracteristici
modify noteDeVarf varchar (100) not null;
alter table caracteristici
modify noteDeMijloc varchar (100) not null;
alter table caracteristici
modify noteDeBaza varchar (100) not null;

alter table Caracteristici
add idCategorie int not null;

select * from Caracteristici;

create table Tip
(
ID int not null auto_increment,
tip varchar (10) not null,
primary key (ID)
);

create table Proprietati
(
ID int not null auto_increment,
proprietati varchar (20) not null,
primary key (ID)
);

create table CategorieOlfactiva
(
ID int not null auto_increment,
categorieOlfactiva varchar (20) not null,
primary key (ID)
);

alter table Produse
add foreign key (idCodBare) references CodBare (ID);

alter table produse
add foreign key (idDescriere) references descriereprodus (ID);

alter table produse
drop foreign key produse_ibfk_2;

alter table produse
change idDescriere idProprietati int not null;

alter table produse 
add foreign key (idProprietati) references proprietati (ID);

alter table produse
add foreign key (idTipProdus) references tipProdus (ID);

alter table produse
add foreign key (idCaracteristici) references caracteristici (ID);

alter table produse
drop foreign key produse_ibfk_4;

/*alter table produse
drop foreign key produse_ibfk_4;
*/

alter table tipProdus
add foreign key (idTip) references tip (ID);

alter table tipProdus
add foreign key (idProprietati) references proprietati (ID);

alter table caracteristici
add foreign key (idCategorie) references categorieolfactiva (ID);

/*alter table caracteristici
drop foreign key caracteristici_ibfk_2;
*/

insert into codbare (EAN) value
(5941941500004),
(5941941500011),
(5941941500028),
(5941941500035),
(5941941500042),
(5941941500059),
(5941941500066),
(5941941500073),
(5941941500080),
(5941941500097),
(5941941500103),
(5941941500110),
(5941941500127),
(5941941500134),
(5941941500141),
(5941941500158),
(5941941500165),
(5941941500172),
(5941941500189),
(5941941500196);

select * from codbare;

insert into tip (tip) values
('Clasic'),
('Masstige'),
('Luxury');

select * from tip;

insert into proprietati (proprietati) value
('Afrodisiac'),
('Cu feromoni'),
('Victory league');

select * from proprietati;

insert into descriereProdus (descriere, brand) value
('Conceput în jurul notei exclusiviste Luxury Essenza a florilor de portocal, parfumul luminos Giordani Gold Essenza evocă povestea luxului autentic şi a măiestriei în acest deodorant spray, cu o concentraţie 
înaltă şi în acelaşi timp subtil. Un parfum premium floral-lemnos, pentru femeia care personifică arta de a trăi frumos.', 'Giordani Gold'),
('Cele mai preţioase bijuterii îţi dau o anumită senzaţie, luxoasă şi specială, deţin o putere care îţi ia respiraţia şi te transpun într-o stare sublimă din clipa în care îţi ating pielea. Captat într-o 
sticlă bijuterie cu un nou accent contemporan roz-auriu, parfumul Giordani Gold Essenza Blossom radiază o energie care te face să înfloreşti.', 'Giordani Gold'),
('Oferă-ţi un moment de intimitate luxoasă în fiecare zi, când simţi învăluirea acestei ape de parfum sofisticate şi trăieşti o experienţă olfactivă captivantă. Învăluind un buchet floral alb, de o feminitate 
încântătoare, nota solară a florii de portocal radiază o căldură bogată care înfloreşte cu pasiune din inima parfumului. Luminoasă şi feminină, această apă de parfum captează cu adevărat pasiunea şi vitalitatea 
femeii GG.', 'Giordani Gold'),
('Luminos ca razele calde ale unui apus de soare de vară, parfumul floral și picant al Giordani Gold Good as Gold este făcut pentru a te face să strălucești. În acest set exclusivist, în ediție limitată, 
apa de parfum este asortată cu o cremă de mâini care îți lasă pielea moale și parfumată cu parfumul strălucitor Good as Gold.', 'Giordani Gold'),
('Emani încredere de sine şi senzualitate masculină discretă, în timp ce te învălui în această apă de parfum rafinată care întruchipează pasiunea pentru viaţă a bărbatului GG. Vetiverul multifaţetat conferă un caracter 
lemnos parfumului masculin conceput cu ingrediente elegante şi contrastat de bergamota proaspătă, pentru a crea o senzaţie intensă de strălucire.', 'Giordani Gold'),
('Plin de pasiune, acest parfum este dedicat femeii care întrupează stilul şi sofisticarea. Luminozitatea florii neroli este semnătura definitorie a acestui parfum plin de vitalitate. Neroli, floarea specific italiană,
 captează aura luminoasă a vitalităţii irezistibile şi un accent de sofisticare firească.', 'Giordani Gold'),
('Exprimă bucuria feminității cu Miss Giordani Floral, parfumul floral încântător pentru ea. O compoziție sublimă de iasomie, tuberoză, bujor și ylang ylang înalță și îmbunătățește nota caracteristică Miss 
Giordani neroli. Sofisticat, plin de viață și înfloritor, o călătorie senzorială captivantă într-o sticlă.', 'Giordani Gold'),
('Apa de toaletă Mister Giordani evocă spontaneitatea specifică tinereţii surprinsă de momentele imprevizibile ale vieţii; mersul pe bicicletă prin oraş, savurarea unui espresso delicios sau bucuria de a mânca o 
ingheţată la o întalnire lângă cea mai apropiată fântână. Aceasta este aroma spontaneităţii cu o senzualitate ce persistă, asemenea unui zâmbet irezistibil, lăsând o impresie de neuitat.', 'Giordani Go;d'),
('Imaginează-te pentru o clipă într-un superb peisaj de coastă, cu acest parfum ce captează prospeţimea brizei mării. Un parfum masculin modern ce te poartă pe note acvatice puse în valoare de senzualitatea esenţelor 
lemnoase, inspirat de frumuseţea captivantă a unei evadări într-un peisaj de coastă.', 'Giordani Gold'),
('Un parfum carismatic, ce evocă succesul prin combinaţia surprinzătoare a fructului aproape copt, proaspăt şi amărui, de grapefruit cu uleiul de dafin, învăluită definitiv în farmecele irisului seducător.
 Pentru bărbatul a cărui tărie de caracter aminteşte de Spartacus şi al cărui destin este să cucerească lumea.', 'Possess'),
('Simte puterea absolută cu acest parfum bărbătesc. Possess The Secret pentru el a fost inspirat de cel mai puternic zeu nordic, Thor. Un parfum îndrăzneţ şi masculin ce captează toată forţa fulgerului prin 
 notele extrem de proaspete ale acordurilor unice de gheaţă.', 'Possess'),
('Descoperă-ți puterea eroică cu această apă de parfum îndrăzneață și dinamică. O aură epică de explozii picante generată de piperul negru proaspăt emană o prezență masculină puternică în parfumul lemnos, cu 
 accente calde de scorțișoară și lemn de santal bogat.', 'Possess'),
('Atemporală, de o seducţie plină de magnetism, apa de parfum Possess captează senzualitatea provocatoare a Cleopatrei, ale cărei farmece i l-au adus pe Marc Antoniu la picioarele ei. 
Împletit cu note irezistibile de ylang ylang, acest parfum sexy şi efervescent nu poate trece neobsevat, întrucât surprinde vraja hipnotică a atracţiei.', 'Possess'),
('Creat în jurul unui acord exclusiv de rodie, parfumul puternic feminin evocă o tentaţie irezistibilă, cu faţete luxoase şi suculente contrastate de un acord intens lemnos. Un parfum îndrăzneţ cu
 o aură captivantă, ce posedă o putere care te transportă într-o lume mistică şi te fascinează de la prima pulverizare.', 'Possess'),
('De la notele de vârf citrice și florile nostalgice până la acordul frapant și cald de piele vegetală, parfumul este țesut cu contraste elegante, care amintesc de un club de țară sofisticat.', 'Eclat'),
('Acordul contemporan de flori de tei este piesa centrală strălucitoare într-un buchet de flori albe clasice, amplificat de mandarine suculente și care se sprijină pe un fond lemnos elegant, dar senzual.', 'Eclat'),
('Inspirate de parfumeria franţuzească, parfumurile Eclat sunt create întotdeauna în jurul unei flori albe. Conceput în jurul notelor luxoase de piele neagră, cu tonuri uşor întunecate ce persistă pe tot parcursul 
nopţii, contrastate de o luminozitate proaspătă.', 'Eclat'),
('Extrem de feminin şi cu o aromă fascinantă irezistibilă, Jasmine Grandiflorum Absolute reprezintă chintesenţa florilor albe. Timp de secole, iasomia a fost considerată simbolul iubirii şi al tentaţiei feminine – transformând-o 
într-o floare legendară în parfumerie, renumită pentru graţia şi delicateţea sa.', 'Eclat'),
('Reinterpretat pentru bărbatul de astăzi, acest parfum persistent este echilibrul perfect între atemporalitate şi modernitate. Cu note-semnătură unice de cedrată şi acorduri de piele Barenia, Eclat Homme surprinde 
alura masculinităţii sofisticate – esenţă a luxului tipic franţuzesc.', 'Eclat'),
('Pentru luminozitatea incredibilă şi esenţa lor nobilă, florile de iasomie au fost alese ingredient-semnătură al acestui parfum fabulos. Acestea sunt cultivate în ţinutul parfumurilor fine - în Grasse, Franţa.', 'Eclat');
 
select * from descriereProdus;

insert into categorieolfactiva (categorieOlfactiva) values
('Oriental'),
("Floral"),
('Fougere'),
('Acromatic'),
('Fresh'),
('Chypre'),
('Dulce'),
('Lemnos');
insert into categorieolfactiva (categorieOlfactiva) values
('Acvatic');

select * from categorieolfactiva;

insert into caracteristici (noteDeVarf, noteDeMijloc, noteDeBaza, idCategorie) values
('Floare de portocal', 'ylang ylang', 'citrice', 1),
('Floare de portocal', 'patchouli', 'Camellia Celebratissima', 1),
('Floare de portocal', 'Flori albe', 'ambrox', 2),
('Portocală, Șofran', 'Zmeură, Glow Accord, ulei de Pathouli', 'Ambrox', 1),
('Mandarină', 'Vetiver', 'Lemn de santal, Ambră', 3),
('Floare de portocal', 'Iasomie', 'Neroli', 4),
('Mandarină, Neroli, Ghimbir', 'Iasomie, Tuberoză, Bujor', 'Ylang ylang, Lemn de cedru, Vanilie', 2),
('Pondicherry', 'Acorduri de gheata', 'Osmanthus', 5),
('Lămâie, Cardamon, Artemisia', 'Acord de buştean plutitor, Lemn de gaiac, Calone, Note solare', 'Vetiver, Lemn de santal', 5),
('Ambrox', 'Salvie', 'Acorduri de stejar', 6),
('Acorduri de gheata', 'Salvie', 'Lemn de stejar', 3),
('Piper negru, Cimbru, Cardamon', 'Levănțică, Mușcată, Scorțișoară', 'Ambrostar®, Lemn de santal, Benzoină', 1),
('Rodie', 'Osmanthus', 'Ylang-ylang', 6),
('Iris Alb', 'Acord de piere cuir corroye', 'Rodie', 1),
('Lămâie, Piper negru, Acord tonic', 'Geranium, Lavandin, Labdanum', 'Lemn de cedru, Patchouli, Acord de piele vegetală', 3),
('Piper roz, Mandarină, Pară', 'Petale de trandafir, Floare de tei, Iasomie', 'Vanilie, Lemn de santal, Ambrox', 7),
('Mandarină, Rozmarin, Bergamotă', 'Muşcată, Salvie, Lavandă', 'Note de piele neagră, Note lemnoase intense, Vetiver', 8),
('Flori de crăiţe, Piersică, Afine', 'Trandafir, Iasomie, Trandafir Absolute', 'Patchouli, Mosc, Vanilie', 2),
('Ceai himalaian', 'Boabe de tonka', 'Acorduri de piele', 3),
('Mandarină', 'Lemn de santal', 'Iasomie', 8);

select * from caracteristici;

truncate table caracteristici;

insert into tipprodus (tipProdus, recomandat, idTip, idProprietati) values
('Parfum', 'Femei', 1, 1),
('Parfum', 'Femei', 1, 1),
('Apa de parfum', 'Femei', 2, 1),
('Apa de parfum', 'Femei', 1, 1),
('Parfum', 'Femei', 3, 1),
('Apa de parfum', 'Femei', 3, 3),
('Apa de parfum', 'Barbati', 3, 3), 
('Apa de toaleta', 'Barbati', 2, 3),
('Apa de toaleta', 'Barbati', 2, 3),
('Apa de parfum', 'Barbati', 3, 1),
('Apa de parfum', 'Femei', 2, 1),
('Apa de parfum', 'Barbati', 2, 3),
('Apa de parfum', 'Femei' , 2, 1),
('Apa de parfum', 'Femei', 2, 3),
('Apa de toaleta', 'Femei', 1, 1),
('Apa de toaleta', 'Femei', 2, 3),
('Apa de parfum', 'Barbati', 2, 1),
('Apa de parfum', 'Femei', 1, 3),
('Apa de toaleta', 'Femei', 2, 1),
('Apa de toaleta', 'Femei', 3, 2);

insert into tipprodus (tipProdus, recomandat, idTip, idProprietati) values
('Apa de colonie', 'Barbati', 3, 2),
('Parfum pentru par', 'Femei', 3, 2);

select * from tipprodus;

insert into produse (denumireProdus, idCodBare, idProprietati, Pret, Stoc, idTipProdus, idCaracteristici, idDescriere) values
('Giordani Gold Essenza', 1, 1, 105, 15, 1, 1, 1),
('Giordani Gold Essenza Blossom', 2, 1, 105, 5, 2, 2, 2),
('Giordani Gold Woman', 3, 1, 80, 10, 3, 3, 3),
('Giordani Good as Gold', 4, 1, 90, 10, 4, 4, 4),
('Giordani Gold Man', 5, 1, 90, 10, 5, 5, 5),
('Miss Giordani', 6, 1, 65, 20, 6, 6, 6),
('Miss Giordani Floral', 7, 3, 65, 10, 7, 7, 7),
('Mister Giordani', 8, 3, 75, 15, 8, 8, 8),
('Mister Giordani Aqua', 9, 3, 80, 10, 9, 9, 9),
('Possess Man', 10, 1, 65, 10, 10, 10, 10),
('Possess The Secret', 11, 1, 65, 15, 11, 11, 11),
('Possess Absolute Man', 12, 2, 85, 5, 12, 12, 12),
('Posses Her', 13, 2, 70, 15, 13, 13, 13),
('Possess Absolute Her', 14, 1, 70, 10, 14, 14, 14),
('Eclat Toujours Intensite', 15, 3, 65, 15, 15, 15, 15),
('Eclat Amour Intensite', 16, 2, 65, 20, 16, 16, 16),
("Eclat Nuit Man", 17, 2, 70, 10, 17, 17, 17),
('Eclat Nuit Her', 18, 1, 70, 10, 18, 18, 18),
('Eclat Homme', 19, 2, 75, 10, 19, 19, 19),
('Eclat Femme', 20, 3, 75, 12, 20, 20, 20);

select * from produse;

-- -----------------------------------------------------------------------------------------------------------------------
select denumireprodus from produse;

-- Select the products with the price greater then 70 lei
select denumireprodus, pret from produse
where pret > 70;

-- Select the products with the price greater then 65 lei and smaller then 90 lei
select denumireprodus, pret from produse
where pret > 65 and pret < 90;

-- Select the products with the price between 65 and 100 lei
select id, denumireprodus, pret from produse
where pret between 65 and 100;

-- Select the products with the price greater then 65 lei and stock smaller then 10 pieces
select denumireprodus, pret, stoc from produse
where pret > 65 and stoc < 10;

-- Select the products with the price between 65 and 90 lei and stock between 5 and 15 pieces
select denumireprodus, pret, stoc from produse
where (pret between 65 and 90)
and (stoc between 5 and 15);

-- Select the products with the price between 65 and 90 lei or stock between 5 and 15 pieces
select denumireprodus, pret, stoc from produse
where (pret between 65 and 90)
or (stoc between 5 and 15);

-- Show the total number of products with the price 65 lei
select count(*) from produse
where pret = 65;

-- Order products acording with the price
select denumireprodus, pret from produse
order by pret;

select denumireprodus, pret from produse
order by pret desc;

-- Oreder products acording with the stock
select denumireprodus, pret, stoc from produse
order by stoc;

select denumireprodus, pret, stoc from produse
order by stoc desc;

-- Show the average price for the products in the list
select avg(pret) from produse;

-- Show the price sum of all prices of the produscts
select sum(pret) from produse;

-- Show the average stock for all products
select avg(stoc) from produse;

-- Show the total ammount of products in stock
select sum(stoc) from produse;

-- Shoe the primary caracteristic of products
select produse.denumireprodus, caracteristici.notedevarf
from produse inner join caracteristici
on produse.idcaracteristici = caracteristici.id;

-- Shoe the primary caracteristic of the first 5 products
select produse.denumireprodus, caracteristici.notedevarf
from produse inner join caracteristici
on produse.idcaracteristici = caracteristici.id
limit 5;

-- Show all aracteristics of products
select produse.id, produse.denumireprodus, caracteristici.notedevarf, caracteristici.notedemijloc, caracteristici.notedebaza
from produse inner join caracteristici
on produse.idcaracteristici = caracteristici.id;

-- Show the EAN for all products
select produse.id, produse.denumireprodus, codbare.EAN
from produse inner join codbare
on produse.idCodBare = codbare.id;

-- Show all caracteristics and EAN of products
select produse.id, produse.denumireprodus, caracteristici.notedevarf, caracteristici.notedemijloc, caracteristici.notedebaza, codbare.EAN, proprietati.proprietati
from produse 
inner join caracteristici
on produse.idcaracteristici = caracteristici.id
inner join codbare
on produse.idCodBare = codbare.id;

-- Show all caracteristics, EAN and proprieties of products
select produse.id, produse.denumireprodus, caracteristici.notedevarf, caracteristici.notedemijloc, caracteristici.notedebaza, codbare.EAN, proprietati.proprietati
from produse 
inner join caracteristici
on produse.idcaracteristici = caracteristici.id
inner join codbare
on produse.idCodBare = codbare.id
inner join proprietati
on produse.idproprietati = proprietati.id;

-- Show the tip of products and the recomandations
select produse.denumireprodus, tipprodus.tipProdus, tipprodus.recomandat
from produse
inner join tipprodus
on produse.idTipProdus = tipProdus.id;

-- Show the products propieties
select produse.denumireprodus, proprietati.proprietati
from produse
inner join proprietati
on produse.idProprietati = proprietati.id;

-- Show the description and brand of products
select produse.denumireprodus, descriereprodus.Brand, descriereprodus.descriere
from produse
inner join descriereprodus
on produse.idDescriere = descriereprodus.id;

-- Show the recomandation, proprities and tipe of products
select tipprodus.recomandat, proprietati.proprietati, tip.tip
from tipprodus
inner join proprietati
on tipProdus.idproprietati = proprietati.id
inner join tip
on tipProdus.idTip = tip.id;

-- Show the caracteristics and olfactive category of products
select caracteristici.noteDeVarf, caracteristici.noteDeMijloc, caracteristici.noteDeBaza, categorieolfactiva.categorieOlfactiva
from caracteristici
inner join categorieolfactiva
on caracteristici.idCategorie = categorieOlfactiva.id;

-- Show olfactive category of products
select produse.denumireProdus, categorieolfactiva.categorieOlfactiva
from produse
inner join categorieolfactiva
on produse.idCaracteristici = categorieOlfactiva.id;

--
select produse.id, produse.denumireProdus, produse.pret, tipprodus.tipProdus
from produse
left join tipprodus
on produse.idProprietati = tipProdus.id;

select produse.id, produse.denumireProdus, produse.pret, tipprodus.tipProdus
from produse
right join tipprodus
on produse.idProprietati = tipProdus.id;




