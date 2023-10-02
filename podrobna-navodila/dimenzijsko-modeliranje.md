# Dimenzijsko modeliranje
## Namestitev MySQL Workbench
Prenesite in namestite MySQL Workbench iz [te povezave](https://dev.mysql.com/downloads/workbench).  
![Namestitev MySQL](../static/mysql-installer.png)  

## Uporaba orodja MySQL Workbench
### Ustvarjanje novega modela
Za ustvarjanje novega modela, kliknite na ``File > New Model`` (oziroma Ctrl + N). Nato v razdelku ``Model Overview`` kliknite na ``Add Diagram``.  
![Ustvarjanje novega modela](../static/new-model.png)  
![Ustvarjanje ER diagrama](../static/new-er-diagram.png)  

### Dodajanje nove tabele
Za dodajanje nove tabele kliknite na ikono, prikazano na spodnji sliki, nato pa kliknite na poljubno mesto na mreži.  
![Dodajanje nove tabele](../static/new-table.png)  
Po dvojnem kliku na novo ustvarjeno tabelo se v spodnjem delu MySQL Workbench odpre nov razdelek, v katerem lahko tabelo preimenujete, dodate nove atribute, spreminjate njihove tipe, največje dovoljene dolžine ter omejitve.  
![Urejanje tabele](../static/table-attributes.png)  

### Dodajanje relacij
Za dodajanje relacij med tabelami kliknite na katerokoli ikono na spodnji sliki. Po izbiri tipa relacije, kliknite na tabelo, s katero želite vzpostaviti relacijo, nato pa še na tabelo, s katero želite vzpostaviti relacijo. Pri tem bodite pozorni na ustreznost smeri in kardinalnost relacije.  
![Tipi relacij](../static/relation-types.png)  
![Dodajanje relacij](../static/relation.png)  

## Dimenzijski model
### Dimenzija "Čas"
Na spodnji sliki je prikazan primer dimenzijske tabele "Čas", ki vsebuje atribute desetletje, leto, četrtletje, mesec, dan, ura, minuta in sekunda.  
![Dimenzija "Čas"](../static/dimension-time.png)  

### Dimenzija "Lokacija"
Na spodnji sliki je prikazan primer dimenzijske tabele "Lokacija", ki vsebuje atribute kontinent, država, regija, mesto, ulica in hišna številka.  
![Dimenzija "Lokacija"](../static/dimension-location.png)  

### Tabela dejstev
Na spodnji sliki je prikazan primer tabele dejstev (za beleženje prodaj v trgovini), ki vsebuje atribute količina, cena, popust in način plačila. Zaenkrat še ne vsebuje tujih ključev na dimenzijske tabele.  
![Tabela dejstev](../static/fact-table.png)  

### Končen dimenzijski model
Spodnja slika prikazuje končen dimenzijski model, ki vsebuje dimenziji "Čas" in "Lokacija", ter tabelo dejstev.  
![Dimenzijski model](../static/dimensional-model.png)  

## Pretvorba modela v podatkovno bazo
Za pretvorbo modela v podatkovno bazo kliknite na ``Database > Forward Engineer`` (oziroma Ctrl + G). Odprlo se bo novo okno, kjer trikrat kliknete na ``Next``. V oknu se bo nato prikazala skripta za ustvarjanje podatkovne baze. Skripto prekopirajte ali shranite v datoteko. 

![Pretvorba modela v podatkovno bazo](../static/forward-engineer.png)  

Shranjeno datoteko odprite s klikom na ``File > Open SQL Script`` (oziroma Ctrl + Shift + O). Če ste skripto prekopirali, kliknite na ``File > New Query Tab`` (oziroma Ctrl + T) in v novo odprto okno prilepite skripto.

Ker obstaja možnost, da skripta ne bo delovala, jo je potrebno pred izvedbo še malenkost popraviti. Iz skripte izbrišite vse pojave ključne besede ``VISIBLE``, saj le-ta ni kompatibilna z MySQL podatkovno bazo. Nato skripto izvedite s klikom na ``Query > Execute (All or Selection)`` (oziroma Ctrl + Shift + Enter). Če se skripta izvede brez napak, se v levem delu MySQL Workbench odpre novo drevo, ki vsebuje ustvarjeno podatkovno bazo, njene tabele in atribute.
![Drevesna struktura](../static/tree-structure.png)  