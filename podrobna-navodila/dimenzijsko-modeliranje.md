# Dimenzijsko modeliranje
## Namestitev MySQL Workbench
Prenesite in namestite MySQL Workbench iz [te povezave](https://dev.mysql.com/downloads/workbench).  
![Namestitev MySQL](../static/mysql-installer.png)  

## Uporaba orodja MySQL Workbench
### Ustvarjanje novega modela
Za ustvarjanje novega modela, kliknite na ``File > New Model`` (oziroma Ctrl + N). Nato v razdelku ``Model Overview`` kliknite na "Add Diagram".  
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
!["Tabela dejstev"](../static/fact-table.png)  

### Končen dimenzijski model
Spodnja slika prikazuje končen dimenzijski model, ki vsebuje dimenziji "Čas" in "Lokacija", ter tabelo dejstev.  
![Dimenzijski model](../static/dimensional-model.png)  