# Kasvihuone Kanta

Kasvihuonekanta on tietokanta joka kuuluu IoT-tietoputkeen. Se kerää kasvihuoneiden eri sensoreista tärkeää ilmastodataa kasvien hyvinvoinnin ja kasvun edistämiseksi.
Tämän tietokannan päätarkoitus on vastaanottaa reaaliaikaista sensoridataa sekä hälytyksiä kasvihuoneiden sensoreilta. Data tallennetaan aikaleimojen perusteella, mikä mahdollistaa tehokkaita aikasarjakyselyitä.

Käyttötapaukset

1. Katso tietyn kasvihuoneen viimeisimpiä tietoja.
2. Katso tietoja tietyn aikaikkunan sisällä.
3. Katso aktiivisia hälytyksiä.

Tämä tietokantaprojekti on toinen osa Tietokantojen Jatko -kurssin lopputyöstä.

### Dokumentaatio:

<a href="https://github.com/JunFengari/Kasvihuonekanta-DynamoDB/raw/main/Kasvihuonekanta_Dokumentaatio.pdf" download>Download PDF</a>

### Esittelyvideo:

Oikea klikkaus ja avaa uudessa välilehdessä: [Youtube](https://youtu.be/e698aXdAoLg)

---

## Asennus- ja käyttöohjeet

1. Käy [Kasvihuone Kanta GitHub](https://github.com/JunFengari/Kasvihuonekanta-DynamoDB) sivuilla, ja kloonaa
   repositorio haluamaasi hakemistoon seuraavalla komennolla:

    ```bash
    git clone https://github.com/JunFengari/Kasvihuonekanta-DynamoDB

    ```

2. Siirry projektihakemistoon ja pystytä Docker kontin komennolla:

    ```bash
    docker compose up -d

    ```

3. Kun kontti on käynnistynyt, avaa NoSQL Workbench ohjelma.

4. Projects välilehdessä on ylhäällä Import Model nappi, paina sitä, ja lataa kantadata.json tiedosto. Paina Import Model.

5. Avaa Models-valikosta Kasvihuonekanta, ja tee kannalle commit. Valitse samalla oman localhost yhteyden siihen.

6. Avaa sivusta Operation Builder -välilehden. Täältä voit katsella kantaa ja suorittaa kyselyitä. Kyselyt löytyy kyselyt.sql tiedostosta PartiQL-koodina.
