
-- 1. Käyttötapaus 1: Katso viimeisimmät mittaukset kasvihuoneesta GH1
SELECT * FROM Kasvihuoneet
WHERE KasvihuoneID='GH1'
ORDER BY AikaLeimaLaite DESC
LIMIT 5;

-- 2. Käyttötapaus 1: Katso mittaukset tietyltä laitteelta kasvihuoneesta GH1
SELECT * FROM Kasvihuoneet
WHERE KasvihuoneID='GH1'
AND AikaLeimaLaite LIKE '%#LAMPO01'
ORDER BY AikaLeimaLaite DESC;

-- 3. Käyttötapaus 1: Katso kaikki kosteusmittaukset kasvihuoneestaGH3
SELECT * FROM Kasvihuoneet
WHERE KasvihuoneID='GH3'
AND LaiteTyyppi='kosteus'
ORDER BY AikaLeimaLaite DESC;

-- 4. Käyttötapaus 2: Katso mittaukset tietyn aikaikkunan sisällä kasvihuoneestaGH2
SELECT * FROM Kasvihuoneet
WHERE KasvihuoneID='GH2'
AND AikaLeimaLaite BETWEEN '2026-03-14T12:00#' AND '2026-03-14T12:15#'
ORDER BY AikaLeimaLaite ASC;

-- 5. Käyttötapaus 2: Yhdistetään kasvihuone, laitetyyppi ja aikaikkuna yhteen kyselyyn: 
-- Katsotaan valon mittaukset kasvihuoneesta GH2 viimeisen päivän ajalta. 
SELECT * FROM Kasvihuoneet
WHERE KasvihuoneID='GH2'
AND LaiteTyyppi='valo'
AND AikaLeimaLaite BETWEEN '2026-03-13T12:00#' AND '2026-03-14T12:15#'
ORDER BY AikaLeimaLaite ASC;

-- 6. Käyttötapaus 3: Katso aktiiviset hälytykset kaikista kasvihuoneista
SELECT * FROM Hälytykset
WHERE Hälytys='ACTIVE'

-- 7. Käyttötapaus 3: Voidaan myös katsoa tietyn kasvihuoneen menneet hälytykset, eli "resolved" statuksella
SELECT * FROM Hälytykset
WHERE Hälytys='RESOLVED'
AND KasvihuoneID='GH2'

-- 8. Aggregaatio esimerkki: Lasketaan GH2 kasvihuoneen hälytykset viimeisen viikon ajalta. 
SELECT COUNT(*) FROM Hälytykset
WHERE KasvihuoneID='GH2'
AND AikaLeima BETWEEN '2026-03-18T00:00#' AND '2026-03-25T23:59#';
