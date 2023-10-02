# Dimenzijsko modeliranje
## Namestitev MySQL baze
Prenesite in namestite MySQL bazo iz [te povezave](https://dev.mysql.com/downloads/workbench).
![Namestitev MySQL](../static/mysql-installer.png)

## Uporaba orodja MySQL Workbench
### Ustvarjanje novega modela
Za ustvarjanje novega modela, kliknite na ``File > New Model`` (oziroma Ctrl + N). Nato v razdelku ``Model Overview`` kliknite na "Add Diagram".  
![Ustvarjanje novega modela](../static/new-model.png)
![Ustvarjanje ER diagrama](../static/new-er-diagram.png)

### Dodajanje nove tabele
Za dodajanje nove tabele kliknite na ikono, prikazano na spodnji sliki, nato pa kliknite na poljubno mesto na mreži.  
![Dodajanje nove tabele](../static/new-table.png)
Dvakrat kliknite na novo ustvarjeno tabelo. V spodnjem delu MySQL Workbench se odpre nov razdelek, v katerem lahko tabelo preimenujete, dodate nove atribute, spreminjate njihove tipe, največje dovoljene dolžine ter omejitve.  
![Urejanje tabele](../static/table-attributes.png)

### Dodajanje relacij
Za dodajanje relacij med tabelami kliknite na katerokoli ikono na spodnji sliki (poskrbite za ustreznost smeri in kardinalnosti relacije). Po izbiri tipa relacije, kliknite na tabelo, s katero želite vzpostaviti relacijo, nato pa še na tabelo, s katero želite vzpostaviti relacijo.  
![Tipi relacij](../static/relation-types.png)
![Dodajanje relacij](../static/relation.png)