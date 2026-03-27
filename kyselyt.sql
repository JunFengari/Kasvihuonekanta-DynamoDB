-- KYSELYT
-- 1. Käyttötapaus 1: Katso viimeisimmät mittaukset kasvihuoneesta GH1
SELECT * FROM Kasvihuoneet
WHERE KasvihuoneID='GH1'
ORDER BY AikaLeima DESC

-- 2. "Käyttötapaus 1": Katso kaikki kosteusmittaukset kasvihuoneestaGH3
-- Tässä on huomioitava, että koska LaiteTyyppi ei ole avain tässä taulussa, tämä kysely käyttäytyy kuin scan (Query + FilterExpression).
-- Käytännössä se käy ensin GH3 rivit läpi ja sitten vasta filtteröi ne LaiteTyypin mukaan. 
-- Tämä ei ole skaalautuva ratkaisu, mutta toimii hyvin pienellä datalla. Kyselyt 4 ja 6 toimivat samalla tavalla. 
SELECT * FROM Kasvihuoneet
WHERE KasvihuoneID='GH3'
AND LaiteTyyppi='kosteus'

-- 3. Käyttötapaus 2: Katso mittaukset tietyn aikaikkunan sisällä kasvihuoneesta GH2
SELECT * FROM Kasvihuoneet
WHERE KasvihuoneID='GH2'
AND AikaLeima BETWEEN '2026-03-14T12:00' AND '2026-03-14T12:05'
ORDER BY AikaLeima ASC;

-- 4. "Käyttötapaus 2": Yhdistetään kasvihuone, laitetyyppi (filter) ja aikaikkuna yhteen kyselyyn: 
-- Katsotaan valon mittaukset kasvihuoneesta GH2 viimeisen päivän ajalta. 
-- Huom! Lue kysely 2 kommentti. 
SELECT * FROM Kasvihuoneet
WHERE KasvihuoneID='GH2'
AND LaiteTyyppi='valo'
AND AikaLeima BETWEEN '2026-03-13T12:00' AND '2026-03-14T12:15'

-- 5. Käyttötapaus 3: Katso aktiiviset hälytykset kaikista kasvihuoneista
SELECT * FROM Halytykset
WHERE Halytys='ACTIVE'

-- 6. "Käyttötapaus 3": Voidaan myös katsoa tietyn kasvihuoneen (filter) menneet hälytykset, eli "resolved" statuksella
-- Huom! Lue kysely 2 kommentti.
SELECT * FROM Halytykset
WHERE Halytys='RESOLVED'
AND KasvihuoneID='GH2'

