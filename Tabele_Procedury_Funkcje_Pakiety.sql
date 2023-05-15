CREATE TABLE  "MARKI" 
   (	"ID_MARKI" NUMBER(*,0) NOT NULL ENABLE, 
	"NAZWA" VARCHAR2(30)
   )
/

  CREATE UNIQUE INDEX  "MARKI_PK" ON  "MARKI" ("ID_MARKI")
/

ALTER TABLE  "MARKI" ADD CONSTRAINT "MARKI_PK" PRIMARY KEY ("ID_MARKI")
  USING INDEX  "MARKI_PK"  ENABLE
/
CREATE TABLE  "MODELE" 
   (	"ID_MODELU" NUMBER(*,0) NOT NULL ENABLE, 
	"NAZWA_MODELU" VARCHAR2(30), 
	"ID_MARKI" NUMBER(*,0) NOT NULL ENABLE
   )
/

  CREATE UNIQUE INDEX  "MODELE_PK" ON  "MODELE" ("ID_MODELU")
/

ALTER TABLE  "MODELE" ADD CONSTRAINT "MODELE_PK" PRIMARY KEY ("ID_MODELU")
  USING INDEX  "MODELE_PK"  ENABLE
/
CREATE TABLE  "KOLORY" 
   (	"ID_KOLORU" NUMBER(*,0) NOT NULL ENABLE, 
	"NAZWA" VARCHAR2(30)
   )
/

  CREATE UNIQUE INDEX  "KOLORY_PK" ON  "KOLORY" ("ID_KOLORU")
/

ALTER TABLE  "KOLORY" ADD CONSTRAINT "KOLORY_PK" PRIMARY KEY ("ID_KOLORU")
  USING INDEX  "KOLORY_PK"  ENABLE
/
CREATE TABLE  "NADWOZIE" 
   (	"ID_NADWOZIE" NUMBER(*,0) NOT NULL ENABLE, 
	"NADWOZIE" VARCHAR2(50)
   )
/

  CREATE UNIQUE INDEX  "NADWOZIE_PK" ON  "NADWOZIE" ("ID_NADWOZIE")
/

ALTER TABLE  "NADWOZIE" ADD CONSTRAINT "NADWOZIE_PK" PRIMARY KEY ("ID_NADWOZIE")
  USING INDEX  "NADWOZIE_PK"  ENABLE
/
CREATE TABLE  "PALIWO" 
   (	"ID_PALIWA" NUMBER(*,0) NOT NULL ENABLE, 
	"RODZAJ" VARCHAR2(20)
   )
/

  CREATE UNIQUE INDEX  "PALIWO_PK" ON  "PALIWO" ("ID_PALIWA")
/

ALTER TABLE  "PALIWO" ADD CONSTRAINT "PALIWO_PK" PRIMARY KEY ("ID_PALIWA")
  USING INDEX  "PALIWO_PK"  ENABLE
/
CREATE TABLE  "KRAJPOCHODZENIA" 
   (	"ID_KRAJU" NUMBER(*,0) NOT NULL ENABLE, 
	"KRAJ" VARCHAR2(50)
   )
/

  CREATE UNIQUE INDEX  "KRAJPOCHODZENIA_PK" ON  "KRAJPOCHODZENIA" ("ID_KRAJU")
/

ALTER TABLE  "KRAJPOCHODZENIA" ADD CONSTRAINT "KRAJPOCHODZENIA_PK" PRIMARY KEY ("ID_KRAJU")
  USING INDEX  "KRAJPOCHODZENIA_PK"  ENABLE
/
CREATE TABLE  "SAMOCHODY" 
   (	"ID_POJAZDU" NUMBER(*,0), 
	"ROCZNIK" NUMBER(*,0), 
	"CENA" NUMBER(10,0), 
	"VIN" VARCHAR2(17), 
	"DATA_REJ" DATE, 
	"DATA_PRZ" DATE, 
	"POWYPADKOWY" VARCHAR2(3), 
	"NR_REJ" VARCHAR2(8), 
	"SILNIK" VARCHAR2(3), 
	"MOC" VARCHAR2(3), 
	"ID_NADWOZIE" NUMBER(*,0), 
	"ID_PALIWA" NUMBER(*,0), 
	"ID_KRAJU" NUMBER(*,0), 
	"ID_MODELU" NUMBER(*,0), 
	"ID_KOLORU" NUMBER(*,0), 
	"PRZEBIEG" VARCHAR2(20)
   )
/

  CREATE UNIQUE INDEX  "SAMOCHODY_PK" ON  "SAMOCHODY" ("ID_POJAZDU")
/

ALTER TABLE  "SAMOCHODY" ADD CONSTRAINT "SAMOCHODY_PK" PRIMARY KEY ("ID_POJAZDU")
  USING INDEX  "SAMOCHODY_PK"  ENABLE
/
CREATE TABLE  "DOKUMENT" 
   (	"ID_DOKUMENTU" NUMBER(*,0) NOT NULL ENABLE, 
	"NAZWA" VARCHAR2(30)
   )
/

  CREATE UNIQUE INDEX  "DOKUMENT_PK" ON  "DOKUMENT" ("ID_DOKUMENTU")
/

ALTER TABLE  "DOKUMENT" ADD CONSTRAINT "DOKUMENT_PK" PRIMARY KEY ("ID_DOKUMENTU")
  USING INDEX  "DOKUMENT_PK"  ENABLE
/
CREATE TABLE  "ADRES" 
   (	"ID_ADRESU" NUMBER(*,0) NOT NULL ENABLE, 
	"MIASTO" VARCHAR2(50), 
	"ULICA" VARCHAR2(50), 
	"NR_MIESZKANIA" VARCHAR2(50), 
	"KOD_POCZTOWY" VARCHAR2(50)
   )
/

  CREATE UNIQUE INDEX  "ADRES_PK" ON  "ADRES" ("ID_ADRESU")
/

ALTER TABLE  "ADRES" ADD CONSTRAINT "ADRES_PK" PRIMARY KEY ("ID_ADRESU")
  USING INDEX  "ADRES_PK"  ENABLE
/
CREATE TABLE  "KLIENCI" 
   (	"ID_KLIENTA" NUMBER(*,0) NOT NULL ENABLE, 
	"NAZWISKO" VARCHAR2(50), 
	"IMIE" VARCHAR2(50), 
	"PESEL" VARCHAR2(11), 
	"DATA_UR" DATE, 
	"TELEFON" VARCHAR2(9), 
	"EMAIL" VARCHAR2(30), 
	"NR_DOK" VARCHAR2(9), 
	"ID_DOKUMENTU" NUMBER(*,0) NOT NULL ENABLE, 
	"ID_ADRESU" NUMBER(*,0) NOT NULL ENABLE
   )
/

  CREATE UNIQUE INDEX  "KLIENCI_PK" ON  "KLIENCI" ("ID_KLIENTA")
/

ALTER TABLE  "KLIENCI" ADD CONSTRAINT "KLIENCI_PK" PRIMARY KEY ("ID_KLIENTA")
  USING INDEX  "KLIENCI_PK"  ENABLE
/
CREATE TABLE  "SPRZEDAWCY" 
   (	"ID_SPRZEDAWCY" NUMBER(*,0), 
	"NAZWISKO" VARCHAR2(50), 
	"IMIE" VARCHAR2(50), 
	"DATA_ZATRUDNIENIA" DATE, 
	"PENSJA" NUMBER(*,0)
   )
/

  CREATE UNIQUE INDEX  "SPRZEDAWCY_PK" ON  "SPRZEDAWCY" ("ID_SPRZEDAWCY")
/

ALTER TABLE  "SPRZEDAWCY" ADD CONSTRAINT "SPRZEDAWCY_PK" PRIMARY KEY ("ID_SPRZEDAWCY")
  USING INDEX  "SPRZEDAWCY_PK"  ENABLE
/
CREATE TABLE  "TRANSAKCJE" 
   (	"ID_TRANSAKCJI" NUMBER(*,0) NOT NULL ENABLE, 
	"RODZAJ_TRAN" VARCHAR2(20), 
	"KWOTA" NUMBER(*,0), 
	"NR_FAKTURY" VARCHAR2(20), 
	"SP_ZAPLATY" VARCHAR2(20), 
	"DATA" DATE, 
	"ZAPLACONO" VARCHAR2(3), 
	"ID_POJAZDU" NUMBER(*,0) NOT NULL ENABLE, 
	"ID_KLIENTA" NUMBER(*,0) NOT NULL ENABLE, 
	"ID_SPRZEDAWCY" NUMBER
   )
/

  CREATE UNIQUE INDEX  "TRANSAKCJE_PK" ON  "TRANSAKCJE" ("ID_TRANSAKCJI")
/

ALTER TABLE  "TRANSAKCJE" ADD CONSTRAINT "TRANSAKCJE_PK" PRIMARY KEY ("ID_TRANSAKCJI")
  USING INDEX  "TRANSAKCJE_PK"  ENABLE
/
ALTER TABLE  "KLIENCI" ADD CONSTRAINT "KLIENCI_ADRES_FK" FOREIGN KEY ("ID_ADRESU")
	  REFERENCES  "ADRES" ("ID_ADRESU") ENABLE
/
ALTER TABLE  "KLIENCI" ADD CONSTRAINT "KLIENCI_DOKUMENT_FK" FOREIGN KEY ("ID_DOKUMENTU")
	  REFERENCES  "DOKUMENT" ("ID_DOKUMENTU") ENABLE
/
ALTER TABLE  "MODELE" ADD CONSTRAINT "MODELE_MARKI_FK" FOREIGN KEY ("ID_MARKI")
	  REFERENCES  "MARKI" ("ID_MARKI") ENABLE
/
ALTER TABLE  "SAMOCHODY" ADD CONSTRAINT "SAMOCHODY_KOLORY_FK" FOREIGN KEY ("ID_KOLORU")
	  REFERENCES  "KOLORY" ("ID_KOLORU") ENABLE
/
ALTER TABLE  "SAMOCHODY" ADD CONSTRAINT "SAMOCHODY_KRAJPOCHODZENIA_FK" FOREIGN KEY ("ID_KRAJU")
	  REFERENCES  "KRAJPOCHODZENIA" ("ID_KRAJU") ENABLE
/
ALTER TABLE  "SAMOCHODY" ADD CONSTRAINT "SAMOCHODY_MODELE_FK" FOREIGN KEY ("ID_MODELU")
	  REFERENCES  "MODELE" ("ID_MODELU") ENABLE
/
ALTER TABLE  "SAMOCHODY" ADD CONSTRAINT "SAMOCHODY_NADWOZIE_FK" FOREIGN KEY ("ID_NADWOZIE")
	  REFERENCES  "NADWOZIE" ("ID_NADWOZIE") ENABLE
/
ALTER TABLE  "SAMOCHODY" ADD CONSTRAINT "SAMOCHODY_PALIWO_FK" FOREIGN KEY ("ID_PALIWA")
	  REFERENCES  "PALIWO" ("ID_PALIWA") ENABLE
/
ALTER TABLE  "TRANSAKCJE" ADD CONSTRAINT "TRANSAKCJE_KLIENCI_FK" FOREIGN KEY ("ID_KLIENTA")
	  REFERENCES  "KLIENCI" ("ID_KLIENTA") ENABLE
/
ALTER TABLE  "TRANSAKCJE" ADD CONSTRAINT "TRANSAKCJE_SAMOCHODY_FK" FOREIGN KEY ("ID_POJAZDU")
	  REFERENCES  "SAMOCHODY" ("ID_POJAZDU") ENABLE
/
ALTER TABLE  "TRANSAKCJE" ADD CONSTRAINT "TRANSAKCJE_SPRZEDAWCY_FK" FOREIGN KEY ("ID_SPRZEDAWCY")
	  REFERENCES  "SPRZEDAWCY" ("ID_SPRZEDAWCY") ENABLE
/
CREATE OR REPLACE EDITIONABLE FUNCTION  "CENA_Z_RABATEM" (
    p_id_samochodu NUMBER,
    p_rabat NUMBER
) RETURN VARCHAR2
AS
    cena_po_rabacie NUMBER;
    stara_cena NUMBER;
    wynik VARCHAR2(200);
BEGIN
    SELECT cena, cena - cena * p_rabat / 100
    INTO stara_cena, cena_po_rabacie
    FROM samochody
    WHERE ID_POJAZDU = p_id_samochodu;

IF stara_cena IS NULL THEN
   RAISE NO_DATA_FOUND;
END IF;

IF p_rabat < 1 OR p_rabat > 90 THEN
    RAISE VALUE_ERROR;
END IF;

wynik := ('Samochod o ID ' || p_id_samochodu || ' kosztował ' || stara_cena || ' zł. Rabat w wysokości ' || p_rabat || '% obniżył cenę do ' || cena_po_rabacie || ' zł');
UPDATE samochody
SET cena = cena_po_rabacie
WHERE ID_POJAZDU = p_id_samochodu;

RETURN wynik;

EXCEPTION
WHEN NO_DATA_FOUND THEN
raise_application_error(-20005, 'Nie znaleziono samochodu o takim ID.');
WHEN VALUE_ERROR THEN
raise_application_error(-20005, 'Rabat musi być w zakresie 1-90%.');
END;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  "CZY_KLIENT_KUPIL_SAMOCHOD" (p_klient_id NUMBER)
RETURN VARCHAR2
AS
    v_czy_kupil NUMBER;
    v_result VARCHAR2(4000);
    v_czy_istnieje NUMBER;
    v_klient klienci%ROWTYPE;
    v_liczba NUMBER;
    v_sum_cena NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_czy_istnieje
    FROM klienci
    WHERE id_klienta = p_klient_id;

    IF v_czy_istnieje = 0 THEN
        v_result := ('W bazie danych nie ma takiego klienta.');
        RETURN v_result;
    ELSE
        SELECT * INTO v_klient
        FROM klienci
        WHERE id_klienta = p_klient_id;

        SELECT COUNT(*) INTO v_czy_kupil 
        FROM transakcje
        WHERE id_klienta = p_klient_id;

        IF v_czy_kupil > 0 THEN
            SELECT COUNT(*) INTO v_liczba FROM transakcje WHERE id_klienta = p_klient_id;
            SELECT SUM(kwota) INTO v_sum_cena FROM transakcje WHERE id_klienta = p_klient_id;
            v_result := ('Klient ' || v_klient.imie || ' ' || v_klient.nazwisko || ' zakupił ' || v_liczba || ' samochodów, za które zapłacił łącznie: ' || v_sum_cena || 'zł.');
        ELSE
            v_result := ('Klient ' || v_klient.imie || ' ' || v_klient.nazwisko || ' nie zakupił żadnego samochodu.');
        END IF;
    END IF;
RETURN v_result;
END;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  "CZY_SAMOCHOD_DOSTEPNY" (p_id_samochodu NUMBER) RETURN VARCHAR2
AS
    v_dostepnosc VARCHAR2(30);
    v_rocznik NUMBER;
    v_marka VARCHAR2(30);
    v_model VARCHAR2(30);
    wynik VARCHAR2(2000);
BEGIN
    SELECT s.rocznik, ma.nazwa, m.nazwa_modelu INTO v_rocznik, v_marka, v_model
    FROM samochody s INNER JOIN modele m ON s.id_modelu = m.id_modelu
    INNER JOIN marki ma ON m.id_marki = ma.id_marki
    WHERE ID_POJAZDU = p_id_samochodu;

    SELECT CASE WHEN COUNT(*) = 0 THEN 'dostępny' ELSE 'niedostępny' END
    INTO v_dostepnosc
    FROM transakcje
WHERE ID_POJAZDU = p_id_samochodu AND rodzaj_tran = 'Kupno';
wynik := ('Samochód: ' || v_marka || ' ' || v_model || ' z roku ' || v_rocznik || ' jest ' || v_dostepnosc);
RETURN wynik;
END;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  "NAJCZESCIEJ_KUPOWANA_MARKA" 
RETURN VARCHAR2
AS
    marka_samochodu VARCHAR2(30);
    v_ilosc NUMBER;
    v_max_ilosc NUMBER;
CURSOR c_samochody IS
    SELECT ma.nazwa marka_samochodu, COUNT(*) ilosc
    FROM samochody s INNER JOIN modele m ON s.id_modelu = m.id_modelu
    INNER JOIN marki ma ON m.id_marki = ma.id_marki
    GROUP BY ma.nazwa;
BEGIN
    v_max_ilosc := 0;
    marka_samochodu := NULL;
    FOR r_samochody IN c_samochody LOOP
        v_ilosc := r_samochody.ilosc;
        IF v_ilosc > v_max_ilosc THEN
            v_max_ilosc := v_ilosc;
            marka_samochodu := r_samochody.marka_samochodu;
        END IF;
    END LOOP;
    RETURN 'Najczęściej kupowaną marką przez naszych klientów jest: ' || marka_samochodu || ', kupiono ' || v_max_ilosc || ' modeli.';

EXCEPTION
WHEN NO_DATA_FOUND THEN
RETURN 'Brak samochodów w bazie danych';
END;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  "NAJCZESTSZE_KOLORY_SAMOCHODOW" RETURN VARCHAR2
AS
v_result VARCHAR2(4000);
CURSOR c_kolory IS
SELECT k.nazwa, COUNT(s.id_koloru) liczba
FROM kolory k
INNER JOIN samochody s ON s.id_koloru = k.id_koloru
GROUP BY k.nazwa
ORDER BY liczba DESC;
BEGIN
v_result := ('Najczęściej występujące kolory samochodów: ');
FOR r_kolory IN c_kolory LOOP
v_result := (v_result || r_kolory.nazwa || ' (' || r_kolory.liczba || ' szt.), ');
END LOOP;
RETURN SUBSTR(v_result, 1, LENGTH(v_result)-2);
EXCEPTION
WHEN NO_DATA_FOUND THEN
raise_application_error(-20005, 'Brak danych dotyczących kolorów samochodów.');
END;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  "PROCENTOWY_UDZIAL_MARKI" (p_marka VARCHAR2 DEFAULT NULL) RETURN VARCHAR2
AS
    v_count NUMBER;
    v_suma NUMBER;
    v_udzial NUMBER;
    v_suma_cen NUMBER;
    v_result VARCHAR2(4000);
    nic exception;
    brak exception;
BEGIN
    IF p_marka IS NULL THEN RAISE
    nic;
    ELSE
    SELECT COUNT(*) INTO v_count
    FROM marki
    WHERE nazwa = p_marka;

    IF v_count = 0 THEN RAISE
        brak;
    ELSE
        SELECT SUM(cena) INTO v_suma FROM samochody WHERE id_modelu IN (SELECT id_modelu FROM modele WHERE ID_MARKI IN (SELECT ID_MARKI FROM marki WHERE nazwa = p_marka));
        SELECT SUM(cena) INTO v_suma_cen FROM samochody;

        IF v_suma_cen = 0 THEN
            v_udzial := 0;
        ELSE
            v_udzial := v_suma / v_suma_cen * 100;
        END IF;
        v_result := ('Procentowy udział tej marki w naszym komisie wynosi: ' || TO_CHAR(round(v_udzial,2)) || '%.');
        RETURN v_result;
    END IF;
END IF;
EXCEPTION
    WHEN brak THEN
    raise_application_error(-20005, 'Nie znaleziono ' || p_marka || ' w naszym komisie.');
    WHEN nic THEN
    raise_application_error(-20001, 'Podaj markę samochodu!');
END;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  "SREDNIA_CENA_MARKI" (p_marka VARCHAR2) RETURN VARCHAR2
AS
    v_suma NUMBER;
    v_liczba NUMBER;
    v_srednia NUMBER;
    v_model VARCHAR2(30);
    v_count NUMBER;
    v_result VARCHAR2(4000);
BEGIN
SELECT SUM(cena), COUNT(*) INTO v_suma, v_liczba FROM samochody WHERE id_modelu IN (SELECT id_modelu FROM modele WHERE ID_MARKI IN (SELECT ID_MARKI FROM marki WHERE NAZWA = p_marka));
IF v_liczba = 0 THEN
    v_srednia := 0;
ELSE
    v_srednia := v_suma / v_liczba;
END IF;
  v_result := ('Średnia cena samochodów o marce ' || p_marka || ' wynosi ' || ROUND(v_srednia, 2) || ' zł.' || '<br>');
  v_result := (v_result || ' Modelami tej marki są samochody: ' || '<br>');

    FOR i IN 
        (SELECT id_modelu, COUNT(*) AS model_count FROM samochody WHERE id_modelu IN (SELECT id_modelu FROM modele WHERE ID_MARKI IN (SELECT ID_MARKI FROM marki WHERE NAZWA = p_marka)) GROUP BY id_modelu) LOOP
        SELECT NAZWA_MODELU INTO v_model FROM modele WHERE id_modelu = i.id_modelu;
            v_result := (v_result || v_model || ' wystąpił ' || i.model_count || ' razy.' || '<br>');
    END LOOP;

    RETURN v_result;
END;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  "SREDNI_ROCZNIK_SAMOCHODOW_DANEJ_MARKI" (p_marka VARCHAR2) RETURN VARCHAR2
AS
    v_suma NUMBER;
    v_liczba NUMBER;
    v_sredni_wiek NUMBER;
    v_rok NUMBER;
    blad exception;
    blad1 exception;
BEGIN
IF p_marka IS NULL OR p_marka = '' THEN RAISE
    blad;
ELSE
    SELECT SUM(EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM DATA_REJ)), COUNT(*)
    INTO v_suma, v_liczba
    FROM samochody s
    INNER JOIN modele m ON s.id_modelu = m.id_modelu
    INNER JOIN marki ma ON m.id_marki = ma.id_marki
    WHERE ma.nazwa = p_marka;

    IF v_liczba = 0 THEN RAISE
        blad1;
    ELSE
        SELECT MAX(EXTRACT(YEAR FROM DATA_REJ))
        INTO v_rok
        FROM samochody s
        INNER JOIN modele m ON s.id_modelu = m.id_modelu
        INNER JOIN marki ma ON m.id_marki = ma.id_marki
        WHERE ma.nazwa = p_marka;

        IF v_liczba = 0 THEN
            v_sredni_wiek := 0;
        ELSE
            v_sredni_wiek := v_suma / v_liczba;
        END IF;

        RETURN ('Średni rocznik samochodów marki ' || p_marka || ' wynosi ' || (v_rok - ROUND(v_sredni_wiek, 0)) || ' rok.');
    END IF;
END IF;
EXCEPTION
WHEN NO_DATA_FOUND THEN
raise_application_error(-20003, 'Podana marka samochodu nie istnieje w bazie danych.');
WHEN blad THEN
raise_application_error(-20005, 'Nie podano marki samochodu');
WHEN blad1 THEN
raise_application_error(-20002, 'Brak samochodów marki ' || p_marka || ' w bazie danych');  
END;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  "TOP_3_NAJLEPSZYCH_SPRZEDAWCOW" 
RETURN VARCHAR2
AS
    v_result VARCHAR2(4000);
    v_top_sprzedawcy SPRZEDAWCY%ROWTYPE;
BEGIN
    v_result := ('Najlepszymi sprzedawcami są: ' || '<br>');
    FOR v_top_sprzedawcy IN (
        SELECT s.nazwisko, s.imie, COUNT(t.id_transakcji) as ilosc_samochodow
        FROM transakcje t
        INNER JOIN sprzedawcy s ON t.id_sprzedawcy = s.id_sprzedawcy
        GROUP BY s.nazwisko, s.imie
        ORDER BY ilosc_samochodow DESC
        FETCH FIRST 3 ROWS ONLY
    ) LOOP
        v_result := (v_result || v_top_sprzedawcy.nazwisko || ' ' || v_top_sprzedawcy.imie || ' sprzedał ' || v_top_sprzedawcy.ilosc_samochodow || ' samochodów.' || '<br>');
    END LOOP;
    RETURN v_result;
END;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  "WYSWIETL_MODELE_MARKI" (p_marka VARCHAR2)
RETURN VARCHAR2
AS
    v_count NUMBER;
    l_ile NUMBER;
    l_modele VARCHAR2(4000);
    v_result VARCHAR2(4000);
    blad exception;
    blad1 exception;
CURSOR c_modele IS
    SELECT m.nazwa_modelu, s.rocznik, s.cena
    FROM samochody s INNER JOIN modele m ON s.id_modelu = m.id_modelu
    INNER JOIN marki ma ON m.id_marki = ma.id_marki
    WHERE ma.nazwa = p_marka;
BEGIN
    IF p_marka IS NULL THEN RAISE
    blad;
    ELSE
    SELECT COUNT(*) INTO v_count
    FROM marki
    WHERE nazwa = p_marka;

    IF v_count = 0 THEN RAISE
        blad1;
    ELSE
    SELECT COUNT(*) INTO l_ile FROM samochody s INNER JOIN modele m ON s.id_modelu = m.id_modelu INNER JOIN marki ma ON m.id_marki = ma.id_marki WHERE ma.nazwa = p_marka;
    l_modele := ('Samochodów marki ' || p_marka || ' jest: ' || l_ile || '<br>' || 'Lista modelów:' || '<br>');
    FOR model IN c_modele LOOP
        l_modele := (l_modele || model.nazwa_modelu || ' z roku: ' || model.rocznik || ' w cenie: ' || model.cena || 'zł. ' || '<br>');
    END LOOP;
    RETURN l_modele;
    END IF;
    END IF;
    EXCEPTION
    WHEN blad THEN
    raise_application_error(-20005, 'Podaj markę samochodu!');
    WHEN blad1 THEN
    raise_application_error(-20003, 'Nie znaleziono ' || p_marka || ' w naszym komisie.');
END;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  "WYSWIETL_SAMOCHODY_W_CENIE" (p_cena_od NUMBER, p_cena_do NUMBER) RETURN VARCHAR2 AS
v_result VARCHAR2(4000);
CURSOR c_samochody IS
   SELECT s.id_pojazdu, s.rocznik, s.cena, m.nazwa marka, mo.nazwa_modelu model,
           kp.kraj, n.nadwozie, p.rodzaj, ko.nazwa
    FROM samochody s
    INNER JOIN modele mo ON s.id_modelu = mo.id_modelu
    INNER JOIN marki m ON mo.id_marki = m.id_marki
    INNER JOIN krajpochodzenia kp ON s.id_kraju = kp.id_kraju
    INNER JOIN kolory ko ON s.id_koloru = ko.id_koloru
    INNER JOIN paliwo p ON s.id_paliwa = p.id_paliwa
    INNER JOIN nadwozie n ON s.id_nadwozie = n.id_nadwozie
    WHERE s.cena BETWEEN p_cena_od AND p_cena_do;
BEGIN
    IF p_cena_od < 1000 OR p_cena_do > 500000 THEN
    RAISE VALUE_ERROR;
    ELSE
        v_result := ('Lista samochodów w zakresie cenowym ' || p_cena_od || 'zł a ' || p_cena_do || 'zł:' || '<br>');
        FOR r_samochody IN c_samochody LOOP
            v_result := (v_result || r_samochody.marka || ' ' || r_samochody.model || ', rocznik ' || r_samochody.rocznik || ', cena ' ||
            r_samochody.cena || ' zł' || ', kraj ' || r_samochody.kraj || ', nadwozie ' || r_samochody.nadwozie ||
            ', paliwo ' || r_samochody.rodzaj || ', kolor ' || r_samochody.nazwa || '. ' || '<br>');
        END LOOP;
    RETURN v_result;
    END IF;
EXCEPTION
WHEN NO_DATA_FOUND THEN
raise_application_error(-20002, 'Brak samochodów w bazie danych');
WHEN VALUE_ERROR THEN
raise_application_error(-20005, 'Podane liczby muszą być w zakresie 1000 - 500 000');
END;
/

CREATE OR REPLACE EDITIONABLE FUNCTION  "WYSZUKAJ_SAMOCHODY" (p_marka VARCHAR2, p_model VARCHAR2, p_rocznik_od NUMBER, p_rocznik_do NUMBER, p_cena_od NUMBER, p_cena_do NUMBER) RETURN VARCHAR2
AS
v_result VARCHAR2(4000);
v_count NUMBER;
v_count1 NUMBER;
brak exception;
brak1 exception;
brak2 exception;
brak3 exception;
CURSOR c_samochody IS
   SELECT s.id_pojazdu, s.rocznik, s.cena, m.nazwa marka, mo.nazwa_modelu model,
           kp.kraj, n.nadwozie, p.rodzaj, ko.nazwa
    FROM samochody s
    INNER JOIN modele mo ON s.id_modelu = mo.id_modelu
    INNER JOIN marki m ON mo.id_marki = m.id_marki
    INNER JOIN krajpochodzenia kp ON s.id_kraju = kp.id_kraju
    INNER JOIN kolory ko ON s.id_koloru = ko.id_koloru
    INNER JOIN paliwo p ON s.id_paliwa = p.id_paliwa
    INNER JOIN nadwozie n ON s.id_nadwozie = n.id_nadwozie
    WHERE m.nazwa LIKE '%' || p_marka || '%'
    AND mo.nazwa_modelu LIKE '%' || p_model || '%'
    AND s.rocznik BETWEEN p_rocznik_od AND p_rocznik_do
    AND s.cena BETWEEN p_cena_od AND p_cena_do;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM marki
    WHERE nazwa = p_marka;

    SELECT COUNT(*) INTO v_count1
    FROM modele
    WHERE nazwa_modelu = p_model;

    IF v_count = 0 THEN
       RAISE brak;
    ELSIF v_count1 = 0 THEN
        RAISE brak1;
            ELSIF p_rocznik_od < 1900 OR p_rocznik_do > 2024 THEN
                RAISE brak2;
                ELSIF p_cena_od < 1000 OR p_cena_do > 500000 THEN
                        RAISE brak3;
                    ELSE
                        v_result := ('Samochody spelniajace kryteria:' || '<br>');
                        FOR r_samochody IN c_samochody LOOP
                            v_result := (v_result || r_samochody.marka || ' ' || r_samochody.model || ', rocznik ' || r_samochody.rocznik || ', cena ' ||
                            r_samochody.cena || ' zł' || ', kraj ' || r_samochody.kraj || ', nadwozie ' || r_samochody.nadwozie ||
                            ', paliwo ' || r_samochody.rodzaj || ', kolor ' || r_samochody.nazwa || '. ' || '<br>');
                        END LOOP;
                    RETURN v_result; 
    END IF;    

EXCEPTION
WHEN NO_DATA_FOUND THEN
RETURN 'Nie znaleziono samochodów spełniających podane kryteria.';
WHEN brak THEN
raise_application_error(-20005, 'Nie znaleziono marki:' || p_marka || ' w naszym komisie.');
WHEN brak1 THEN
raise_application_error(-20004, 'Nie znaleziono modelu:' || p_model || ' w naszym komisie.');
WHEN brak2 THEN
raise_application_error(-20004, 'Podane lata są błędne.');
WHEN brak3 THEN
raise_application_error(-20004, 'Cena musi byc w zakresie 1000 - 500 000.');
END;
/

CREATE UNIQUE INDEX  "ADRES_PK" ON  "ADRES" ("ID_ADRESU")
/
CREATE UNIQUE INDEX  "DOKUMENT_PK" ON  "DOKUMENT" ("ID_DOKUMENTU")
/
CREATE UNIQUE INDEX  "KLIENCI_PK" ON  "KLIENCI" ("ID_KLIENTA")
/
CREATE UNIQUE INDEX  "KOLORY_PK" ON  "KOLORY" ("ID_KOLORU")
/
CREATE UNIQUE INDEX  "KRAJPOCHODZENIA_PK" ON  "KRAJPOCHODZENIA" ("ID_KRAJU")
/
CREATE UNIQUE INDEX  "MARKI_PK" ON  "MARKI" ("ID_MARKI")
/
CREATE UNIQUE INDEX  "MODELE_PK" ON  "MODELE" ("ID_MODELU")
/
CREATE UNIQUE INDEX  "NADWOZIE_PK" ON  "NADWOZIE" ("ID_NADWOZIE")
/
CREATE UNIQUE INDEX  "PALIWO_PK" ON  "PALIWO" ("ID_PALIWA")
/
CREATE UNIQUE INDEX  "SAMOCHODY_PK" ON  "SAMOCHODY" ("ID_POJAZDU")
/
CREATE UNIQUE INDEX  "SPRZEDAWCY_PK" ON  "SPRZEDAWCY" ("ID_SPRZEDAWCY")
/
CREATE UNIQUE INDEX  "TRANSAKCJE_PK" ON  "TRANSAKCJE" ("ID_TRANSAKCJI")
/
CREATE OR REPLACE EDITIONABLE PACKAGE  "PAKIET1" IS
    
    PROCEDURE dodaj_klienta(p_nazwisko VARCHAR2, p_imie VARCHAR2, 
    p_pesel VARCHAR2, p_data_ur VARCHAR2, p_telefon VARCHAR2, p_email VARCHAR2, p_nr_dok VARCHAR2, 
    p_nazwa_dokumentu VARCHAR2, p_id_adresu NUMBER, wynik OUT VARCHAR2);

    PROCEDURE edytuj_klienta (
    p_id_klienta NUMBER,
    p_nazwisko VARCHAR2,
    p_imie VARCHAR2,
    p_PESEL VARCHAR2,
    wynik OUT VARCHAR2,
    wynik1 OUT VARCHAR2,
    wynik2 OUT VARCHAR2,
    wynik3 OUT VARCHAR2);

    PROCEDURE DODAJ_SAMOCHOD(
	   p_rocznik   	   IN samochody.ROCZNIK%TYPE,
       p_cena      	   IN samochody.CENA%TYPE,
       p_vin       	   IN samochody.VIN%TYPE,
       p_datarej   	   IN samochody.DATA_REJ%TYPE,
 	   p_dataprzy      IN samochody.DATA_PRZ%TYPE,
       p_powypad       IN samochody.POWYPADKOWY%TYPE,
       p_nrrej         IN samochody.NR_REJ%TYPE,
       p_silnik        IN samochody.SILNIK%TYPE,
	   p_moc       	   IN samochody.MOC%TYPE,
       p_typnadwozia   IN samochody.ID_NADWOZIE%TYPE,
       p_paliwo        IN samochody.ID_PALIWA%TYPE,
       p_kraj      	   IN samochody.ID_KRAJU%TYPE,
       p_idmodelu  	   IN samochody.ID_MODELU%TYPE,
 	   p_typkoloru     IN samochody.ID_KOLORU%TYPE,
	   p_przebieg      IN samochody.PRZEBIEG%TYPE,
       wynik OUT VARCHAR2);

       PROCEDURE srednia_cena_ostatniego (p_marka VARCHAR2, wynik OUT VARCHAR2);

       FUNCTION cena_z_rabatem (
        p_id_samochodu NUMBER,
        p_rabat NUMBER
        ) RETURN VARCHAR2;

        FUNCTION czy_klient_kupil_samochod (p_klient_id NUMBER)
        RETURN VARCHAR2;

        FUNCTION czy_samochod_dostepny(p_id_samochodu NUMBER) RETURN VARCHAR2;

        FUNCTION najczesciej_kupowana_marka RETURN VARCHAR2;

END;
/
CREATE OR REPLACE EDITIONABLE PACKAGE BODY  "PAKIET1" is
PROCEDURE edytuj_klienta (
    p_id_klienta NUMBER,
    p_nazwisko VARCHAR2,
    p_imie VARCHAR2,
    p_PESEL VARCHAR2,
    wynik OUT VARCHAR2,
    wynik1 OUT VARCHAR2,
    wynik2 OUT VARCHAR2,
    wynik3 OUT VARCHAR2
)
AS
    l_nazwisko_stare VARCHAR2(30);
    l_imie_stare VARCHAR2(30);
    l_PESEL_stare VARCHAR2(11);
    l_nazwisko VARCHAR2(30);
    l_imie VARCHAR2(30);
    l_PESEL VARCHAR2(11);
    zly_pesel exception;
CURSOR c_klient IS
    SELECT nazwisko, imie, PESEL FROM klienci WHERE id_klienta = p_id_klienta;
BEGIN
    SELECT nazwisko, imie, PESEL INTO l_nazwisko_stare, l_imie_stare, l_PESEL_stare FROM klienci WHERE id_klienta = p_id_klienta;
    OPEN c_klient;
    FETCH c_klient INTO l_nazwisko, l_imie, l_PESEL;
    CLOSE c_klient;
    l_nazwisko := COALESCE(p_nazwisko, l_nazwisko);
    l_imie := COALESCE(p_imie, l_imie);
    l_PESEL := COALESCE(p_PESEL, l_PESEL);
IF p_PESEL IS NOT NULL AND LENGTH(p_PESEL) <> 11 THEN RAISE
    zly_pesel;
ELSE
    UPDATE klienci
    SET nazwisko = l_nazwisko, imie = l_imie, PESEL = l_PESEL
    WHERE id_klienta = p_id_klienta;
    COMMIT;
    IF p_nazwisko IS NOT NULL THEN
        wynik1 := ('Zmieniono nazwisko z ' || l_nazwisko_stare || ' na ' || p_nazwisko || '<br>');
    END IF;
    IF p_imie IS NOT NULL THEN
        wynik2 := ('Zmieniono imie z ' || l_imie_stare || ' na ' || p_imie || '<br>');
    END IF;
    IF p_PESEL IS NOT NULL AND LENGTH(p_PESEL) = 11 THEN
        wynik3 := ('Zmieniono PESEL z ' || l_PESEL_stare || ' na ' || p_PESEL || '<br>');
    END IF;
END IF;
EXCEPTION
WHEN NO_DATA_FOUND THEN
     raise_application_error(-20005, 'Nie znaleziono klienta o takim ID.');
WHEN zly_pesel THEN
    raise_application_error(-20002, 'PESEL musi zawierać 11 znaków!');
END edytuj_klienta;
PROCEDURE srednia_cena_ostatniego (p_marka VARCHAR2, wynik OUT VARCHAR2)
AS
TYPE tabela_cen_samochodow_typ IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
tabela_cen_samochodow tabela_cen_samochodow_typ;
v_cursor SYS_REFCURSOR;
v_ile NUMBER;
v_suma NUMBER;
v_srednia NUMBER;
v_ostatni_model VARCHAR2(300);  
BEGIN
v_suma := 0;  
v_ile := 0;
OPEN v_cursor FOR
SELECT s.cena
FROM samochody s
INNER JOIN modele m ON s.id_modelu = m.id_modelu
INNER JOIN marki ma ON m.id_marki = ma.id_marki
WHERE ma.nazwa = p_marka;
FETCH v_cursor BULK COLLECT INTO tabela_cen_samochodow;
CLOSE v_cursor;
v_ile := tabela_cen_samochodow.COUNT;
IF v_ile = 0 THEN
    wynik := ('Nie sprzedano żadnego samochodu marki: ' || p_marka);
ELSE
    v_ile := 0;
    FOR i IN 1..tabela_cen_samochodow.COUNT LOOP
    v_suma := v_suma + tabela_cen_samochodow(i);
    v_ile := v_ile + 1;
    END LOOP;
    v_srednia := v_suma / v_ile;
    OPEN v_cursor FOR
    SELECT m.nazwa_modelu 
    FROM samochody s
    INNER JOIN modele m ON s.id_modelu = m.id_modelu
    INNER JOIN marki ma ON m.id_marki = ma.id_marki
    WHERE ma.nazwa = p_marka
    AND ROWNUM = 1
    ORDER BY DATA_PRZ DESC;
    FETCH v_cursor INTO v_ostatni_model; 
    CLOSE v_cursor;
        wynik := ('Ostatnio sprzedany samochód to ' || p_marka || ' ' || v_ostatni_model || '. Średnia cena samochodów tej marki wynosi ' || round(v_srednia,2) || 'zł.' );  
END IF;
END SREDNIA_CENA_OSTATNIEGO;
PROCEDURE dodaj_klienta(p_nazwisko VARCHAR2, p_imie VARCHAR2, p_pesel VARCHAR2, p_data_ur VARCHAR2, p_telefon VARCHAR2, p_email VARCHAR2, p_nr_dok VARCHAR2, p_nazwa_dokumentu VARCHAR2, p_id_adresu NUMBER, wynik OUT VARCHAR2)
AS 
v_id NUMBER;
v_id_dok NUMBER;
zly_pesel exception;
zly_email exception;
BEGIN
  SELECT ID_DOKUMENTU INTO v_id_dok FROM dokument WHERE nazwa = p_nazwa_dokumentu;
  IF LENGTH(p_pesel) <> 11 THEN raise
    zly_pesel;
  END IF;
  IF INSTR(p_email, '@gmail.com') < 1 THEN raise
    zly_email;
  END IF;
  SELECT SEQ_KLIENCI.NEXTVAL INTO v_id FROM DUAL;
  INSERT INTO klienci (ID_KLIENTA, nazwisko, imie, pesel, data_ur, telefon, email, nr_dok, id_dokumentu, id_adresu)
  VALUES (v_id, p_nazwisko, p_imie, p_pesel, TO_DATE(p_data_ur, 'MM/DD/RRRR'), p_telefon, p_email, p_nr_dok, v_id_dok, p_id_adresu);
EXCEPTION
  WHEN zly_pesel THEN
    apex_error.add_error(p_message => 'Niepoprawny numer pesel',
		     p_display_location => apex_error.c_inline_in_notification);
  WHEN zly_email THEN
    apex_error.add_error(p_message => 'Niepoprawny adres e-mail. Musi zawierać końcówkę @gmail.com',
		     p_display_location => apex_error.c_inline_in_notification);
END dodaj_klienta;
PROCEDURE DODAJ_SAMOCHOD(
	   p_rocznik   	   IN samochody.ROCZNIK%TYPE,
       p_cena      	   IN samochody.CENA%TYPE,
       p_vin       	   IN samochody.VIN%TYPE,
       p_datarej   	   IN samochody.DATA_REJ%TYPE,
 	   p_dataprzy      IN samochody.DATA_PRZ%TYPE,
       p_powypad       IN samochody.POWYPADKOWY%TYPE,
       p_nrrej         IN samochody.NR_REJ%TYPE,
       p_silnik        IN samochody.SILNIK%TYPE,
	   p_moc       	   IN samochody.MOC%TYPE,
       p_typnadwozia   IN samochody.ID_NADWOZIE%TYPE,
       p_paliwo        IN samochody.ID_PALIWA%TYPE,
       p_kraj      	   IN samochody.ID_KRAJU%TYPE,
       p_idmodelu  	   IN samochody.ID_MODELU%TYPE,
 	   p_typkoloru     IN samochody.ID_KOLORU%TYPE,
	   p_przebieg      IN samochody.PRZEBIEG%TYPE,
       wynik OUT VARCHAR2)
IS
  v_vin_exists NUMBER;
    zly_rocznik exception;
    zly_vin exception;
    zly_vin2 exception;
BEGIN
  SELECT COUNT(*) INTO v_vin_exists FROM samochody WHERE vin = p_vin;
   IF p_rocznik IS NULL OR p_cena IS NULL OR p_vin IS NULL OR p_datarej IS NULL OR p_dataprzy IS NULL OR p_nrrej IS NULL OR p_silnik IS NULL OR p_moc IS NULL OR p_typnadwozia IS NULL OR p_paliwo IS NULL OR p_kraj IS NULL OR p_idmodelu IS NULL OR p_typkoloru IS NULL OR p_przebieg IS NULL THEN RAISE
     zly_rocznik;
  ELSIF v_vin_exists > 0 THEN RAISE
     zly_vin;
  ELSIF LENGTH(p_vin) <> 11 THEN RAISE
     zly_vin2;
  ELSE
  INSERT INTO samochody ("ID_POJAZDU", "ROCZNIK", "CENA", "VIN", "DATA_REJ", "DATA_PRZ", "POWYPADKOWY", 
			 "NR_REJ", "SILNIK", "MOC", "ID_NADWOZIE", "ID_PALIWA", "ID_KRAJU", 
			 "ID_MODELU", "ID_KOLORU", "PRZEBIEG") 
  VALUES (SEQ_SAMOCHODY.NEXTVAL, p_rocznik, p_cena, p_vin, TO_DATE(p_datarej, 'MM/DD/RRRR'), TO_DATE(p_dataprzy, 'MM/DD/RRRR'), p_powypad, p_nrrej, p_silnik,  p_moc, p_typnadwozia, p_paliwo, p_kraj, p_idmodelu, p_typkoloru, p_przebieg);
  COMMIT;
  END IF;
  EXCEPTION
  WHEN zly_rocznik THEN
       apex_error.add_error(p_message => 'Wszystkie wymagane parametry muszą zostać podane',
		     p_display_location => apex_error.c_inline_in_notification);
  WHEN zly_vin THEN
    apex_error.add_error(p_message => 'Samochód o tym samym numerze VIN już istnieje',
		     p_display_location => apex_error.c_inline_in_notification);
  WHEN zly_vin2 THEN
    apex_error.add_error(p_message => 'Numer VIN musi mieć dokładnie 11 znaków',
		     p_display_location => apex_error.c_inline_in_notification);
END DODAJ_SAMOCHOD;
FUNCTION cena_z_rabatem (
    p_id_samochodu NUMBER,
    p_rabat NUMBER
) RETURN VARCHAR2
AS
    cena_po_rabacie NUMBER;
    stara_cena NUMBER;
    wynik VARCHAR2(200);
BEGIN
    SELECT cena, cena - cena * p_rabat / 100
    INTO stara_cena, cena_po_rabacie
    FROM samochody
    WHERE ID_POJAZDU = p_id_samochodu;

IF stara_cena IS NULL THEN
   RAISE NO_DATA_FOUND;
END IF;

IF p_rabat < 1 OR p_rabat > 90 THEN
    RAISE VALUE_ERROR;
END IF;

wynik := ('Samochod o ID ' || p_id_samochodu || ' kosztował ' || stara_cena || ' zł. Rabat w wysokości ' || p_rabat || '% obniżył cenę do ' || cena_po_rabacie || ' zł');
UPDATE samochody
SET cena = cena_po_rabacie
WHERE ID_POJAZDU = p_id_samochodu;

RETURN wynik;

EXCEPTION
WHEN NO_DATA_FOUND THEN
raise_application_error(-20005, 'Nie znaleziono samochodu o takim ID.');
WHEN VALUE_ERROR THEN
raise_application_error(-20005, 'Rabat musi być w zakresie 1-90%.');
END cena_z_rabatem;
FUNCTION czy_klient_kupil_samochod (p_klient_id NUMBER)
RETURN VARCHAR2
AS
    v_czy_kupil NUMBER;
    v_result VARCHAR2(4000);
    v_czy_istnieje NUMBER;
    v_klient klienci%ROWTYPE;
    v_liczba NUMBER;
    v_sum_cena NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_czy_istnieje
    FROM klienci
    WHERE id_klienta = p_klient_id;

    IF v_czy_istnieje = 0 THEN
        v_result := ('W bazie danych nie ma takiego klienta.');
        RETURN v_result;
    ELSE
        SELECT * INTO v_klient
        FROM klienci
        WHERE id_klienta = p_klient_id;

        SELECT COUNT(*) INTO v_czy_kupil 
        FROM transakcje
        WHERE id_klienta = p_klient_id;

        IF v_czy_kupil > 0 THEN
            SELECT COUNT(*) INTO v_liczba FROM transakcje WHERE id_klienta = p_klient_id;
            SELECT SUM(kwota) INTO v_sum_cena FROM transakcje WHERE id_klienta = p_klient_id;
            v_result := ('Klient ' || v_klient.imie || ' ' || v_klient.nazwisko || ' zakupił ' || v_liczba || ' samochodów, za które zapłacił łącznie: ' || v_sum_cena || 'zł.');
        ELSE
            v_result := ('Klient ' || v_klient.imie || ' ' || v_klient.nazwisko || ' nie zakupił żadnego samochodu.');
        END IF;
    END IF;
RETURN v_result;
END czy_klient_kupil_samochod;
FUNCTION czy_samochod_dostepny(p_id_samochodu NUMBER) RETURN VARCHAR2
AS
    v_dostepnosc VARCHAR2(30);
    v_rocznik NUMBER;
    v_marka VARCHAR2(30);
    v_model VARCHAR2(30);
    wynik VARCHAR2(2000);
BEGIN
    SELECT s.rocznik, ma.nazwa, m.nazwa_modelu INTO v_rocznik, v_marka, v_model
    FROM samochody s INNER JOIN modele m ON s.id_modelu = m.id_modelu
    INNER JOIN marki ma ON m.id_marki = ma.id_marki
    WHERE ID_POJAZDU = p_id_samochodu;

    SELECT CASE WHEN COUNT(*) = 0 THEN 'dostępny' ELSE 'niedostępny' END
    INTO v_dostepnosc
    FROM transakcje
WHERE ID_POJAZDU = p_id_samochodu AND rodzaj_tran = 'Kupno';
wynik := ('Samochód: ' || v_marka || ' ' || v_model || ' z roku ' || v_rocznik || ' jest ' || v_dostepnosc);
RETURN wynik;
END czy_samochod_dostepny;
FUNCTION najczesciej_kupowana_marka
RETURN VARCHAR2
AS
    marka_samochodu VARCHAR2(30);
    v_ilosc NUMBER;
    v_max_ilosc NUMBER;
CURSOR c_samochody IS
    SELECT ma.nazwa marka_samochodu, COUNT(*) ilosc
    FROM samochody s INNER JOIN modele m ON s.id_modelu = m.id_modelu
    INNER JOIN marki ma ON m.id_marki = ma.id_marki
    GROUP BY ma.nazwa;
BEGIN
    v_max_ilosc := 0;
    marka_samochodu := NULL;
    FOR r_samochody IN c_samochody LOOP
        v_ilosc := r_samochody.ilosc;
        IF v_ilosc > v_max_ilosc THEN
            v_max_ilosc := v_ilosc;
            marka_samochodu := r_samochody.marka_samochodu;
        END IF;
    END LOOP;
    RETURN 'Najczęściej kupowaną marką przez naszych klientów jest: ' || marka_samochodu || ', kupiono ' || v_max_ilosc || ' modeli.';

EXCEPTION
WHEN NO_DATA_FOUND THEN
RETURN 'Brak samochodów w bazie danych';
END najczesciej_kupowana_marka;
end "PAKIET1";
/

CREATE OR REPLACE EDITIONABLE PACKAGE  "PAKIET2" as

    FUNCTION najczestsze_kolory_samochodow RETURN VARCHAR2;
    FUNCTION procentowy_udzial_marki(p_marka VARCHAR2 DEFAULT NULL) RETURN VARCHAR2;
    FUNCTION SREDNIA_CENA_MARKI(p_marka VARCHAR2) RETURN VARCHAR2;
    FUNCTION sredni_rocznik_samochodow_danej_marki(p_marka VARCHAR2) RETURN VARCHAR2;
    PROCEDURE szczegoly_transakcji (wynik OUT VARCHAR2);
    PROCEDURE usun_samochod (
p_id_samochodu NUMBER,
    wynik OUT VARCHAR2
);
PROCEDURE wyswietl_klientow (wynik OUT VARCHAR2, wynik1 OUT VARCHAR2);
PROCEDURE wyswietl_samochody_o_przebiegu(p_przebieg_od NUMBER, p_przebieg_do NUMBER);

end;
/
CREATE OR REPLACE EDITIONABLE PACKAGE BODY  "PAKIET2" is
    PROCEDURE szczegoly_transakcji (wynik OUT VARCHAR2)
AS
v_cursor SYS_REFCURSOR;
v_id_transakcji NUMBER;
v_rodzaj_trans VARCHAR2(20);
v_kwota NUMBER;
v_data_trans DATE;
v_id_pojazdu NUMBER;
v_id_klienta NUMBER;
v_id_sprzedawcy NUMBER;
v_nazwisko_klienta VARCHAR2(50);
v_imie_klienta VARCHAR2(50);
v_nazwisko_sprzedawcy VARCHAR2(50);
v_imie_sprzedawcy VARCHAR2(50);
v_rocznik NUMBER;
v_cena NUMBER;
v_marka VARCHAR2(30);
v_model VARCHAR2(30);
v_kraj_pochodzenia VARCHAR2(30);
v_nadwozie VARCHAR2(30);
v_paliwo VARCHAR2(30);
v_kolor VARCHAR2(30);
BEGIN
OPEN v_cursor FOR
SELECT t.id_transakcji, t.rodzaj_tran, t.kwota, t.data, s.id_pojazdu, s.rocznik, s.cena,
k.id_klienta, k.nazwisko nazwisko_klienta, k.imie imie_klienta,
sp.id_sprzedawcy, sp.nazwisko nazwisko_sprzedawcy, sp.imie imie_sprzedawcy,
m.nazwa marka, mo.nazwa_modelu model, kp.kraj, n.nadwozie, ko.nazwa, p.rodzaj
FROM transakcje t
INNER JOIN samochody s ON t.id_pojazdu = s.id_pojazdu
INNER JOIN klienci k ON t.id_klienta = k.id_klienta
INNER JOIN sprzedawcy sp ON t.id_sprzedawcy = sp.id_sprzedawcy
INNER JOIN modele mo ON s.id_modelu = mo.id_modelu
INNER JOIN marki m ON mo.id_marki = m.id_marki
INNER JOIN krajpochodzenia kp ON s.id_kraju = kp.id_kraju
INNER JOIN kolory ko ON s.id_koloru = ko.id_koloru
INNER JOIN paliwo p ON s.id_paliwa = p.id_paliwa
INNER JOIN nadwozie n ON s.id_nadwozie = n.id_nadwozie
WHERE t.rodzaj_tran = 'Kupno' OR t.rodzaj_tran = 'Sprzedaz'
AND ROWNUM = 1
ORDER BY t.DATA DESC;

FETCH v_cursor INTO v_id_transakcji, v_rodzaj_trans, v_kwota, v_data_trans, v_id_pojazdu, v_rocznik, v_cena, v_id_klienta,
 v_nazwisko_klienta, v_imie_klienta, v_id_sprzedawcy, v_nazwisko_sprzedawcy, v_imie_sprzedawcy, v_marka, v_model,
 v_kraj_pochodzenia, v_nadwozie, v_kolor, v_paliwo;

 wynik := ('Szczegóły ostatniej transakcji:' || '<br>' ||
'ID transakcji: ' || v_id_transakcji || '<br>' ||
'Rodzaj transakcji: ' || v_rodzaj_trans || '<br>' ||
'Kwota: ' || v_kwota || ' zł' || '<br>' ||
'Data transakcji: ' || TO_CHAR(v_data_trans, 'MM/DD/RRRR') || '<br>' ||
'ID pojazdu: ' || v_id_pojazdu || '<br>' ||
'Marka: ' || v_marka || '<br>' ||
'Model: ' || v_model || '<br>' ||
'Rocznik: ' || v_rocznik || '<br>' ||
'Cena: ' || v_cena || ' zł' || '<br>' ||
'Marka: ' || v_kraj_pochodzenia || '<br>' ||
'Model: ' || v_nadwozie || '<br>' ||
'Marka: ' || v_paliwo || '<br>' ||
'Model: ' || v_kolor || '<br>' ||
'ID klienta: ' || v_id_klienta || '<br>' ||
'Nazwisko klienta: ' || v_nazwisko_klienta || '<br>' ||
' Imię klienta: ' || v_imie_klienta || '<br>' ||
'ID sprzedawcy: ' || v_id_sprzedawcy || '<br>' ||
'Nazwisko sprzedawcy: ' || v_nazwisko_sprzedawcy || '<br>' ||
' Imię sprzedawcy: ' || v_imie_sprzedawcy || '<br>');

CLOSE v_cursor;

END;

PROCEDURE usun_samochod (
p_id_samochodu NUMBER,
    wynik OUT VARCHAR2
)
AS
marka VARCHAR2(100);
model VARCHAR2(100);
BEGIN
SELECT ma.nazwa as marka, m.nazwa_modelu as model
INTO marka, model
FROM samochody s
INNER JOIN modele m ON s.id_modelu = m.id_modelu
INNER JOIN marki ma ON m.id_marki = ma.id_marki
WHERE s.id_pojazdu = p_id_samochodu;

DELETE FROM samochody
WHERE id_pojazdu = p_id_samochodu;
COMMIT;

wynik := ('Usunięto samochod marki ' || marka || ' model ' || model || ' o ID ' || p_id_samochodu || ' z bazy danych.');
EXCEPTION
WHEN NO_DATA_FOUND THEN
raise_application_error(-20005, 'Nie znaleziono samochodu o takim ID.');
END;

PROCEDURE wyswietl_klientow (wynik OUT VARCHAR2, wynik1 OUT VARCHAR2) AS 
    CURSOR c_klienci IS
        SELECT nazwisko, imie, TRUNC(TO_NUMBER(SYSDATE- TO_DATE(data_ur))/365.25) AS Wiek
        FROM klienci
        ORDER BY nazwisko;
BEGIN
    wynik := ('Lista klientów:');
    wynik1 := '';
    FOR r_klienci IN c_klienci LOOP
        wynik1 := (wynik1 || r_klienci.nazwisko || ' ' || r_klienci.imie || ' ' || r_klienci.Wiek || ' lat' || '<br>');
    END LOOP;
END;

PROCEDURE wyswietl_samochody_o_przebiegu(p_przebieg_od NUMBER, p_przebieg_do NUMBER) AS
CURSOR c_samochody IS
SELECT ma.nazwa as marka, m.nazwa_modelu as model, s.rocznik, s.przebieg, s.cena
FROM samochody s
INNER JOIN modele m ON s.id_modelu = m.id_modelu
INNER JOIN marki ma ON m.id_marki = ma.id_marki
WHERE s.przebieg BETWEEN p_przebieg_od AND p_przebieg_do
ORDER BY marka, model;
BEGIN
HTP.P('Lista samochodów o przebiegu pomiędzy ' || p_przebieg_od || 'km a ' || p_przebieg_do || 'km:' || '<br>');
FOR r_samochody IN c_samochody LOOP
HTP.P(r_samochody.marka || ' ' || r_samochody.model || ', rocznik ' || r_samochody.rocznik || ', przebieg ' || r_samochody.przebieg || 'km, cena ' || r_samochody.cena || ' zł' || '<br>');
END LOOP;
EXCEPTION
WHEN NO_DATA_FOUND THEN
apex_error.add_error(p_message => 'Nie znaleziono samochodów spełniających podane kryteria.',
		     p_display_location => apex_error.c_inline_in_notification);
END;

FUNCTION najczestsze_kolory_samochodow RETURN VARCHAR2
AS
v_result VARCHAR2(4000);
CURSOR c_kolory IS
SELECT k.nazwa, COUNT(s.id_koloru) liczba
FROM kolory k
INNER JOIN samochody s ON s.id_koloru = k.id_koloru
GROUP BY k.nazwa
ORDER BY liczba DESC;
BEGIN
v_result := ('Najczęściej występujące kolory samochodów: ');
FOR r_kolory IN c_kolory LOOP
v_result := (v_result || r_kolory.nazwa || ' (' || r_kolory.liczba || ' szt.), ');
END LOOP;
RETURN SUBSTR(v_result, 1, LENGTH(v_result)-2);
EXCEPTION
WHEN NO_DATA_FOUND THEN
raise_application_error(-20005, 'Brak danych dotyczących kolorów samochodów.');
END;

FUNCTION procentowy_udzial_marki(p_marka VARCHAR2 DEFAULT NULL) RETURN VARCHAR2
AS
    v_count NUMBER;
    v_suma NUMBER;
    v_udzial NUMBER;
    v_suma_cen NUMBER;
    v_result VARCHAR2(4000);
    nic exception;
    brak exception;
BEGIN
    IF p_marka IS NULL THEN RAISE
    nic;
    ELSE
    SELECT COUNT(*) INTO v_count
    FROM marki
    WHERE nazwa = p_marka;

    IF v_count = 0 THEN RAISE
        brak;
    ELSE
        SELECT SUM(cena) INTO v_suma FROM samochody WHERE id_modelu IN (SELECT id_modelu FROM modele WHERE ID_MARKI IN (SELECT ID_MARKI FROM marki WHERE nazwa = p_marka));
        SELECT SUM(cena) INTO v_suma_cen FROM samochody;

        IF v_suma_cen = 0 THEN
            v_udzial := 0;
        ELSE
            v_udzial := v_suma / v_suma_cen * 100;
        END IF;
        v_result := ('Procentowy udział tej marki w naszym komisie wynosi: ' || TO_CHAR(round(v_udzial,2)) || '%.');
        RETURN v_result;
    END IF;
END IF;
EXCEPTION
    WHEN brak THEN
    raise_application_error(-20005, 'Nie znaleziono ' || p_marka || ' w naszym komisie.');
    WHEN nic THEN
    raise_application_error(-20001, 'Podaj markę samochodu!');
END;

FUNCTION SREDNIA_CENA_MARKI(p_marka VARCHAR2) RETURN VARCHAR2
AS
    v_suma NUMBER;
    v_liczba NUMBER;
    v_srednia NUMBER;
    v_model VARCHAR2(30);
    v_count NUMBER;
    v_result VARCHAR2(4000);
BEGIN
SELECT SUM(cena), COUNT(*) INTO v_suma, v_liczba FROM samochody WHERE id_modelu IN (SELECT id_modelu FROM modele WHERE ID_MARKI IN (SELECT ID_MARKI FROM marki WHERE NAZWA = p_marka));
IF v_liczba = 0 THEN
    v_srednia := 0;
ELSE
    v_srednia := v_suma / v_liczba;
END IF;
  v_result := ('Średnia cena samochodów o marce ' || p_marka || ' wynosi ' || ROUND(v_srednia, 2) || ' zł.' || '<br>');
  v_result := (v_result || ' Modelami tej marki są samochody: ' || '<br>');

    FOR i IN 
        (SELECT id_modelu, COUNT(*) AS model_count FROM samochody WHERE id_modelu IN (SELECT id_modelu FROM modele WHERE ID_MARKI IN (SELECT ID_MARKI FROM marki WHERE NAZWA = p_marka)) GROUP BY id_modelu) LOOP
        SELECT NAZWA_MODELU INTO v_model FROM modele WHERE id_modelu = i.id_modelu;
            v_result := (v_result || v_model || ' wystąpił ' || i.model_count || ' razy.' || '<br>');
    END LOOP;

    RETURN v_result;
END;

FUNCTION sredni_rocznik_samochodow_danej_marki(p_marka VARCHAR2) RETURN VARCHAR2
AS
    v_suma NUMBER;
    v_liczba NUMBER;
    v_sredni_wiek NUMBER;
    v_rok NUMBER;
    blad exception;
    blad1 exception;
BEGIN
IF p_marka IS NULL OR p_marka = '' THEN RAISE
    blad;
ELSE
    SELECT SUM(EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM DATA_REJ)), COUNT(*)
    INTO v_suma, v_liczba
    FROM samochody s
    INNER JOIN modele m ON s.id_modelu = m.id_modelu
    INNER JOIN marki ma ON m.id_marki = ma.id_marki
    WHERE ma.nazwa = p_marka;

    IF v_liczba = 0 THEN RAISE
        blad1;
    ELSE
        SELECT MAX(EXTRACT(YEAR FROM DATA_REJ))
        INTO v_rok
        FROM samochody s
        INNER JOIN modele m ON s.id_modelu = m.id_modelu
        INNER JOIN marki ma ON m.id_marki = ma.id_marki
        WHERE ma.nazwa = p_marka;

        IF v_liczba = 0 THEN
            v_sredni_wiek := 0;
        ELSE
            v_sredni_wiek := v_suma / v_liczba;
        END IF;

        RETURN ('Średni rocznik samochodów marki ' || p_marka || ' wynosi ' || (v_rok - ROUND(v_sredni_wiek, 0)) || ' rok.');
    END IF;
END IF;
EXCEPTION
WHEN NO_DATA_FOUND THEN
apex_error.add_error(p_message => 'Wszystkie wymagane parametry muszą zostać podane',
		     p_display_location => apex_error.c_inline_in_notification);
WHEN blad THEN
    apex_error.add_error(p_message => 'Samochód o tym samym numerze VIN już istnieje',
		     p_display_location => apex_error.c_inline_in_notification);
WHEN blad1 THEN
    apex_error.add_error(p_message => 'Numer VIN musi mieć dokładnie 11 znaków',
		     p_display_location => apex_error.c_inline_in_notification);  
END;

end "PAKIET2";
/

CREATE OR REPLACE EDITIONABLE PACKAGE  "PAKIET3" as
PROCEDURE zatrudnij_Sprzedawce (
    p_imie VARCHAR2,
    p_nazwisko VARCHAR2,
    p_pensja NUMBER,
    wynik OUT VARCHAR2
);
PROCEDURE zmien_sprzedawce_samochodu (p_id_samochodu NUMBER, p_id_nowego_sprzedawcy NUMBER, 
powod VARCHAR2, wynik OUT VARCHAR2);
PROCEDURE zwiekszPensjeSprzedawcy (
p_id_sprzedawcy NUMBER,
wynik OUT VARCHAR2
);
PROCEDURE zwolnijSprzedawce (
    p_id NUMBER,
    p_powod VARCHAR2,
    wynik OUT VARCHAR2
);
FUNCTION top_3_najlepszych_sprzedawcow
RETURN VARCHAR2;
FUNCTION wyswietl_modele_marki (p_marka VARCHAR2)
RETURN VARCHAR2;
FUNCTION wyswietl_samochody_w_cenie (p_cena_od NUMBER, p_cena_do NUMBER) RETURN VARCHAR2;
FUNCTION wyszukaj_samochody(p_marka VARCHAR2, p_model VARCHAR2, p_rocznik_od NUMBER, p_rocznik_do NUMBER, p_cena_od NUMBER, p_cena_do NUMBER) RETURN VARCHAR2;
end;
/
CREATE OR REPLACE EDITIONABLE PACKAGE BODY  "PAKIET3" is
PROCEDURE zatrudnij_Sprzedawce (
    p_imie VARCHAR2,
    p_nazwisko VARCHAR2,
    p_pensja NUMBER,
    wynik OUT VARCHAR2
)
IS
v_id NUMBER;
v_datazatrudnienia DATE;
BEGIN
v_datazatrudnienia := SYSDATE;
IF p_pensja <= 1490 THEN
    RAISE NO_DATA_FOUND;
END IF;
    SELECT SEQ_SPRZEDAWCY.NEXTVAL INTO v_id FROM DUAL;
INSERT INTO "SPRZEDAWCY" ("ID_SPRZEDAWCY", "NAZWISKO", "IMIE", "DATA_ZATRUDNIENIA", "PENSJA")
    VALUES(v_id, p_imie, p_nazwisko, v_datazatrudnienia, p_pensja);
    wynik := ('Zatrudniono sprzedawce ' || p_nazwisko);
EXCEPTION
WHEN NO_DATA_FOUND THEN
raise_application_error(-20005, 'Pensja musi być minimalna.');
END;
PROCEDURE zmien_sprzedawce_samochodu (p_id_samochodu NUMBER, p_id_nowego_sprzedawcy NUMBER, 
powod VARCHAR2, wynik OUT VARCHAR2)
AS
    v_stary_sprzedawca SPRZEDAWCY%ROWTYPE;
    v_nowy_sprzedawca SPRZEDAWCY%ROWTYPE;
    v_czy_istnieje_sprzedawca NUMBER;
    v_czy_istnieje_samochod NUMBER;
    v_result VARCHAR2(1000);
    brak_samochodu exception;
    brak_sprzedawcy exception;
BEGIN
    SELECT COUNT(*) INTO v_czy_istnieje_sprzedawca
    FROM sprzedawcy
    WHERE id_sprzedawcy = p_id_nowego_sprzedawcy;

    SELECT COUNT(*) INTO v_czy_istnieje_samochod
    FROM transakcje
    WHERE id_pojazdu = p_id_samochodu;

    IF v_czy_istnieje_samochod = 0 THEN RAISE
        brak_samochodu;
    ELSIF v_czy_istnieje_sprzedawca = 0 THEN RAISE
        brak_sprzedawcy;
    ELSE
        SELECT * INTO v_stary_sprzedawca
        FROM sprzedawcy
        WHERE id_sprzedawcy = (SELECT id_sprzedawcy FROM transakcje WHERE id_pojazdu = p_id_samochodu);

        UPDATE transakcje
        SET id_sprzedawcy = p_id_nowego_sprzedawcy
        WHERE id_pojazdu = p_id_samochodu;

        SELECT * INTO v_nowy_sprzedawca
        FROM sprzedawcy
        WHERE id_sprzedawcy = p_id_nowego_sprzedawcy;

        wynik := ('Zmieniono sprzedawcę z ' || v_stary_sprzedawca.nazwisko || ' ' || v_stary_sprzedawca.imie ||
        ' na ' || v_nowy_sprzedawca.nazwisko || ' ' || v_nowy_sprzedawca.imie || '. Powód: ' || powod);
    END IF;
EXCEPTION
WHEN brak_samochodu THEN
     raise_application_error(-20005, 'W bazie danych nie ma takiego samochodu.');
WHEN brak_sprzedawcy THEN
    raise_application_error(-20002, 'W bazie danych nie ma takiego sprzedawcy.');
END;
PROCEDURE zwiekszPensjeSprzedawcy (
p_id_sprzedawcy NUMBER,
wynik OUT VARCHAR2
)
AS
brak exception;
    CURSOR sprzedawcy_podwyzka IS
      SELECT ID_SPRZEDAWCY,
             PENSJA,
             NAZWISKO
      FROM   SPRZEDAWCY
      WHERE  ID_SPRZEDAWCY = p_id_sprzedawcy 
      FOR UPDATE;
    podwyzka NUMBER;
    updated_rows INTEGER := 0;
    v_stara_pensja NUMBER;
    v_nowa_pensja NUMBER;
    v_nazwisko VARCHAR2(100);
BEGIN
    FOR sprzedawcy_rec IN sprzedawcy_podwyzka LOOP
        v_nazwisko := sprzedawcy_rec.nazwisko;
        v_stara_pensja := sprzedawcy_rec.pensja;
        IF sprzedawcy_rec.pensja < 5000 THEN
          podwyzka := .15;
        ELSE
          podwyzka := .10;
        END IF;

        UPDATE SPRZEDAWCY
        SET pensja = pensja + pensja * podwyzka
        WHERE CURRENT OF sprzedawcy_podwyzka;
        updated_rows := updated_rows + 1;
    END LOOP;
    IF updated_rows = 0 THEN RAISE
      brak;
    END IF;
    SELECT pensja INTO v_nowa_pensja FROM sprzedawcy WHERE id_sprzedawcy = p_id_sprzedawcy;
    wynik := 'Zmieniono pensję pracownikowi ' || v_nazwisko || ' z ' || v_stara_pensja || ' na ' || v_nowa_pensja;
EXCEPTION
WHEN brak THEN
     raise_application_error(-20005, 'Nie znaleziono pracownika o takim ID.');
END;
PROCEDURE zwolnijSprzedawce (
    p_id NUMBER,
    p_powod VARCHAR2,
    wynik OUT VARCHAR2
)
IS
    imie VARCHAR2(50);
    nazwisko VARCHAR2(50);
    dataDzis DATE;
BEGIN
    SELECT imie, nazwisko, SYSDATE
    INTO imie, nazwisko, dataDzis
    FROM "SPRZEDAWCY"
    WHERE "ID_SPRZEDAWCY" = p_id;
DELETE FROM "SPRZEDAWCY" WHERE "ID_SPRZEDAWCY" = p_id;
wynik := ('Zwolniono ' || nazwisko || ' ' || imie || ' dnia: ' || dataDzis || ' z powodu ' || p_powod);
EXCEPTION
WHEN NO_DATA_FOUND THEN
     raise_application_error(-20005, 'Nie można usunąć sprzedawcy o podanym ID. Sprawdź, czy taki sprzedawca istnieje i czy nie są do niego przypisane żadne transakcje.');
END;
FUNCTION top_3_najlepszych_sprzedawcow
RETURN VARCHAR2
AS
    v_result VARCHAR2(4000);
    v_top_sprzedawcy SPRZEDAWCY%ROWTYPE;
BEGIN
    v_result := ('Najlepszymi sprzedawcami są: ' || '<br>');
    FOR v_top_sprzedawcy IN (
        SELECT s.nazwisko, s.imie, COUNT(t.id_transakcji) as ilosc_samochodow
        FROM transakcje t
        INNER JOIN sprzedawcy s ON t.id_sprzedawcy = s.id_sprzedawcy
        GROUP BY s.nazwisko, s.imie
        ORDER BY ilosc_samochodow DESC
        FETCH FIRST 3 ROWS ONLY
    ) LOOP
        v_result := (v_result || v_top_sprzedawcy.nazwisko || ' ' || v_top_sprzedawcy.imie || ' sprzedał ' || v_top_sprzedawcy.ilosc_samochodow || ' samochodów.' || '<br>');
    END LOOP;
    RETURN v_result;
END;
FUNCTION wyswietl_modele_marki (p_marka VARCHAR2)
RETURN VARCHAR2
AS
    v_count NUMBER;
    l_ile NUMBER;
    l_modele VARCHAR2(4000);
    v_result VARCHAR2(4000);
    blad exception;
    blad1 exception;
CURSOR c_modele IS
    SELECT m.nazwa_modelu, s.rocznik, s.cena
    FROM samochody s INNER JOIN modele m ON s.id_modelu = m.id_modelu
    INNER JOIN marki ma ON m.id_marki = ma.id_marki
    WHERE ma.nazwa = p_marka;
BEGIN
    IF p_marka IS NULL THEN RAISE
    blad;
    ELSE
    SELECT COUNT(*) INTO v_count
    FROM marki
    WHERE nazwa = p_marka;

    IF v_count = 0 THEN RAISE
        blad1;
    ELSE
    SELECT COUNT(*) INTO l_ile FROM samochody s INNER JOIN modele m ON s.id_modelu = m.id_modelu INNER JOIN marki ma ON m.id_marki = ma.id_marki WHERE ma.nazwa = p_marka;
    l_modele := ('Samochodów marki ' || p_marka || ' jest: ' || l_ile || '<br>' || 'Lista modelów:' || '<br>');
    FOR model IN c_modele LOOP
        l_modele := (l_modele || model.nazwa_modelu || ' z roku: ' || model.rocznik || ' w cenie: ' || model.cena || 'zł. ' || '<br>');
    END LOOP;
    RETURN l_modele;
    END IF;
    END IF;
    EXCEPTION
    WHEN blad THEN
    raise_application_error(-20005, 'Podaj markę samochodu!');
    WHEN blad1 THEN
    raise_application_error(-20003, 'Nie znaleziono ' || p_marka || ' w naszym komisie.');
END;
FUNCTION wyswietl_samochody_w_cenie (p_cena_od NUMBER, p_cena_do NUMBER) RETURN VARCHAR2 AS
v_result VARCHAR2(4000);
CURSOR c_samochody IS
   SELECT s.id_pojazdu, s.rocznik, s.cena, m.nazwa marka, mo.nazwa_modelu model,
           kp.kraj, n.nadwozie, p.rodzaj, ko.nazwa
    FROM samochody s
    INNER JOIN modele mo ON s.id_modelu = mo.id_modelu
    INNER JOIN marki m ON mo.id_marki = m.id_marki
    INNER JOIN krajpochodzenia kp ON s.id_kraju = kp.id_kraju
    INNER JOIN kolory ko ON s.id_koloru = ko.id_koloru
    INNER JOIN paliwo p ON s.id_paliwa = p.id_paliwa
    INNER JOIN nadwozie n ON s.id_nadwozie = n.id_nadwozie
    WHERE s.cena BETWEEN p_cena_od AND p_cena_do;
BEGIN
    IF p_cena_od < 1000 OR p_cena_do > 500000 THEN
    RAISE VALUE_ERROR;
    ELSE
        v_result := ('Lista samochodów w zakresie cenowym ' || p_cena_od || 'zł a ' || p_cena_do || 'zł:' || '<br>');
        FOR r_samochody IN c_samochody LOOP
            v_result := (v_result || r_samochody.marka || ' ' || r_samochody.model || ', rocznik ' || r_samochody.rocznik || ', cena ' ||
            r_samochody.cena || ' zł' || ', kraj ' || r_samochody.kraj || ', nadwozie ' || r_samochody.nadwozie ||
            ', paliwo ' || r_samochody.rodzaj || ', kolor ' || r_samochody.nazwa || '. ' || '<br>');
        END LOOP;
    RETURN v_result;
    END IF;
EXCEPTION
WHEN NO_DATA_FOUND THEN
RETURN 'Brak samochodów w bazie danych';
WHEN VALUE_ERROR THEN
raise_application_error(-20005, 'Podane liczby muszą być w zakresie 1000 - 500 000');
END;
FUNCTION wyszukaj_samochody(p_marka VARCHAR2, p_model VARCHAR2, p_rocznik_od NUMBER, p_rocznik_do NUMBER, p_cena_od NUMBER, p_cena_do NUMBER) RETURN VARCHAR2
AS
v_result VARCHAR2(4000);
v_count NUMBER;
v_count1 NUMBER;
brak exception;
brak1 exception;
brak2 exception;
brak3 exception;
CURSOR c_samochody IS
   SELECT s.id_pojazdu, s.rocznik, s.cena, m.nazwa marka, mo.nazwa_modelu model,
           kp.kraj, n.nadwozie, p.rodzaj, ko.nazwa
    FROM samochody s
    INNER JOIN modele mo ON s.id_modelu = mo.id_modelu
    INNER JOIN marki m ON mo.id_marki = m.id_marki
    INNER JOIN krajpochodzenia kp ON s.id_kraju = kp.id_kraju
    INNER JOIN kolory ko ON s.id_koloru = ko.id_koloru
    INNER JOIN paliwo p ON s.id_paliwa = p.id_paliwa
    INNER JOIN nadwozie n ON s.id_nadwozie = n.id_nadwozie
    WHERE m.nazwa LIKE '%' || p_marka || '%'
    AND mo.nazwa_modelu LIKE '%' || p_model || '%'
    AND s.rocznik BETWEEN p_rocznik_od AND p_rocznik_do
    AND s.cena BETWEEN p_cena_od AND p_cena_do;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM marki
    WHERE nazwa = p_marka;

    SELECT COUNT(*) INTO v_count1
    FROM modele
    WHERE nazwa_modelu = p_model;

    IF v_count = 0 THEN
       RAISE brak;
    ELSIF v_count1 = 0 THEN
        RAISE brak1;
            ELSIF p_rocznik_od < 1900 OR p_rocznik_do > 2024 THEN
                RAISE brak2;
                ELSIF p_cena_od < 1000 OR p_cena_do > 500000 THEN
                        RAISE brak3;
                    ELSE
                        v_result := ('Samochody spelniajace kryteria:' || '<br>');
                        FOR r_samochody IN c_samochody LOOP
                            v_result := (v_result || r_samochody.marka || ' ' || r_samochody.model || ', rocznik ' || r_samochody.rocznik || ', cena ' ||
                            r_samochody.cena || ' zł' || ', kraj ' || r_samochody.kraj || ', nadwozie ' || r_samochody.nadwozie ||
                            ', paliwo ' || r_samochody.rodzaj || ', kolor ' || r_samochody.nazwa || '. ' || '<br>');
                        END LOOP;
                    RETURN v_result; 
    END IF;    

EXCEPTION
WHEN NO_DATA_FOUND THEN
RETURN 'Nie znaleziono samochodów spełniających podane kryteria.';
WHEN brak THEN
raise_application_error(-20005, 'Nie znaleziono marki:' || p_marka || ' w naszym komisie.');
WHEN brak1 THEN
raise_application_error(-20004, 'Nie znaleziono modelu:' || p_model || ' w naszym komisie.');
WHEN brak2 THEN
raise_application_error(-20004, 'Podane lata są błędne.');
WHEN brak3 THEN
raise_application_error(-20004, 'Cena musi byc w zakresie 1000 - 500 000.');
END;
end "PAKIET3";
/

CREATE OR REPLACE EDITIONABLE PROCEDURE  "DODAJ_KLIENTA" (p_nazwisko VARCHAR2, p_imie VARCHAR2, p_pesel VARCHAR2, p_data_ur VARCHAR2, p_telefon VARCHAR2, p_email VARCHAR2, p_nr_dok VARCHAR2, p_nazwa_dokumentu VARCHAR2, p_id_adresu NUMBER, wynik OUT VARCHAR2)
AS 
v_id NUMBER;
v_id_dok NUMBER;
zly_pesel exception;
zly_email exception;
BEGIN
  SELECT ID_DOKUMENTU INTO v_id_dok FROM dokument WHERE nazwa = p_nazwa_dokumentu;

  IF LENGTH(p_pesel) <> 11 THEN raise
    zly_pesel;
  END IF;

  IF INSTR(p_email, '@gmail.com') < 1 THEN raise
    zly_email;
  END IF;

  SELECT SEQ_KLIENCI.NEXTVAL INTO v_id FROM DUAL;

  INSERT INTO klienci (ID_KLIENTA, nazwisko, imie, pesel, data_ur, telefon, email, nr_dok, id_dokumentu, id_adresu)
  VALUES (v_id, p_nazwisko, p_imie, p_pesel, TO_DATE(p_data_ur, 'MM/DD/RRRR'), p_telefon, p_email, p_nr_dok, v_id_dok, p_id_adresu);
EXCEPTION
  WHEN zly_pesel THEN
    apex_error.add_error(p_message => 'Niepoprawny numer pesel',
		     p_display_location => apex_error.c_inline_in_notification);
  WHEN zly_email THEN
	apex_error.add_error(p_message => 'Niepoprawny adres e-mail. Musi zawierać końcówkę @gmail.com',
		     p_display_location => apex_error.c_inline_in_notification);
END;
/

CREATE OR REPLACE EDITIONABLE PROCEDURE  "DODAJ_SAMOCHOD" (
	   p_rocznik   	   IN samochody.ROCZNIK%TYPE,
       p_cena      	   IN samochody.CENA%TYPE,
       p_vin       	   IN samochody.VIN%TYPE,
       p_datarej   	   IN samochody.DATA_REJ%TYPE,
 	   p_dataprzy      IN samochody.DATA_PRZ%TYPE,
       p_powypad       IN samochody.POWYPADKOWY%TYPE,
       p_nrrej         IN samochody.NR_REJ%TYPE,
       p_silnik        IN samochody.SILNIK%TYPE,
	   p_moc       	   IN samochody.MOC%TYPE,
       p_typnadwozia   IN samochody.ID_NADWOZIE%TYPE,
       p_paliwo        IN samochody.ID_PALIWA%TYPE,
       p_kraj      	   IN samochody.ID_KRAJU%TYPE,
       p_idmodelu  	   IN samochody.ID_MODELU%TYPE,
 	   p_typkoloru     IN samochody.ID_KOLORU%TYPE,
	   p_przebieg      IN samochody.PRZEBIEG%TYPE,
       wynik OUT VARCHAR2)
IS
  v_vin_exists NUMBER;
    zly_rocznik exception;
    zly_vin exception;
    zly_vin2 exception;
BEGIN
  SELECT COUNT(*) INTO v_vin_exists FROM samochody WHERE vin = p_vin;
   IF p_rocznik IS NULL OR p_cena IS NULL OR p_vin IS NULL OR p_datarej IS NULL OR p_dataprzy IS NULL OR p_nrrej IS NULL OR p_silnik IS NULL OR p_moc IS NULL OR p_typnadwozia IS NULL OR p_paliwo IS NULL OR p_kraj IS NULL OR p_idmodelu IS NULL OR p_typkoloru IS NULL OR p_przebieg IS NULL THEN RAISE
     zly_rocznik;
  ELSIF v_vin_exists > 0 THEN RAISE
     zly_vin;
  ELSIF LENGTH(p_vin) <> 11 THEN RAISE
     zly_vin2;
  ELSE
  INSERT INTO samochody ("ID_POJAZDU", "ROCZNIK", "CENA", "VIN", "DATA_REJ", "DATA_PRZ", "POWYPADKOWY", 
			 "NR_REJ", "SILNIK", "MOC", "ID_NADWOZIE", "ID_PALIWA", "ID_KRAJU", 
			 "ID_MODELU", "ID_KOLORU", "PRZEBIEG") 
  VALUES (SEQ_SAMOCHODY.NEXTVAL, p_rocznik, p_cena, p_vin, TO_DATE(p_datarej, 'MM/DD/RRRR'), TO_DATE(p_dataprzy, 'MM/DD/RRRR'), p_powypad, p_nrrej, p_silnik,  p_moc, p_typnadwozia, p_paliwo, p_kraj, p_idmodelu, p_typkoloru, p_przebieg);
  COMMIT;
  END IF;
  EXCEPTION
  WHEN zly_rocznik THEN
    apex_error.add_error(p_message => 'Wszystkie wymagane parametry muszą zostać podane',
		     p_display_location => apex_error.c_inline_in_notification);
  WHEN zly_vin THEN
    apex_error.add_error(p_message => 'Samochód o tym samym numerze VIN już istnieje',
		     p_display_location => apex_error.c_inline_in_notification);
  WHEN zly_vin2 THEN
    apex_error.add_error(p_message => 'Numer VIN musi mieć dokładnie 11 znaków',
		     p_display_location => apex_error.c_inline_in_notification);
END; 
/

CREATE OR REPLACE EDITIONABLE PROCEDURE  "EDYTUJ_KLIENTA" (
    p_id_klienta NUMBER,
    p_nazwisko VARCHAR2,
    p_imie VARCHAR2,
    p_PESEL VARCHAR2,
    wynik OUT VARCHAR2,
    wynik1 OUT VARCHAR2,
    wynik2 OUT VARCHAR2,
    wynik3 OUT VARCHAR2
)
AS
    l_nazwisko_stare VARCHAR2(30);
    l_imie_stare VARCHAR2(30);
    l_PESEL_stare VARCHAR2(11);
    l_nazwisko VARCHAR2(30);
    l_imie VARCHAR2(30);
    l_PESEL VARCHAR2(11);
    zly_pesel exception;

CURSOR c_klient IS
    SELECT nazwisko, imie, PESEL FROM klienci WHERE id_klienta = p_id_klienta;
BEGIN
    SELECT nazwisko, imie, PESEL INTO l_nazwisko_stare, l_imie_stare, l_PESEL_stare FROM klienci WHERE id_klienta = p_id_klienta;
    OPEN c_klient;
    FETCH c_klient INTO l_nazwisko, l_imie, l_PESEL;
    CLOSE c_klient;

    l_nazwisko := COALESCE(p_nazwisko, l_nazwisko);
    l_imie := COALESCE(p_imie, l_imie);
    l_PESEL := COALESCE(p_PESEL, l_PESEL);

IF p_PESEL IS NOT NULL AND LENGTH(p_PESEL) <> 11 THEN RAISE
    zly_pesel;
ELSE
    UPDATE klienci
    SET nazwisko = l_nazwisko, imie = l_imie, PESEL = l_PESEL
    WHERE id_klienta = p_id_klienta;
    COMMIT;

    IF p_nazwisko IS NOT NULL THEN
        wynik1 := ('Zmieniono nazwisko z ' || l_nazwisko_stare || ' na ' || p_nazwisko || '<br>');
    END IF;

    IF p_imie IS NOT NULL THEN
        wynik2 := ('Zmieniono imie z ' || l_imie_stare || ' na ' || p_imie || '<br>');
    END IF;

    IF p_PESEL IS NOT NULL AND LENGTH(p_PESEL) = 11 THEN
        wynik3 := ('Zmieniono PESEL z ' || l_PESEL_stare || ' na ' || p_PESEL || '<br>');
    END IF;
END IF;
EXCEPTION
WHEN NO_DATA_FOUND THEN
     raise_application_error(-20005, 'Nie znaleziono klienta o takim ID.');
WHEN zly_pesel THEN
    raise_application_error(-20002, 'PESEL musi zawierać 11 znaków!');
END;
/

CREATE OR REPLACE EDITIONABLE PROCEDURE  "SREDNIA_CENA_OSTATNIEGO" (p_marka VARCHAR2, wynik OUT VARCHAR2)
AS
TYPE tabela_cen_samochodow_typ IS TABLE OF NUMBER INDEX BY PLS_INTEGER;
tabela_cen_samochodow tabela_cen_samochodow_typ;

v_cursor SYS_REFCURSOR;
v_ile NUMBER;
v_suma NUMBER;
v_srednia NUMBER;
v_ostatni_model VARCHAR2(300);  
BEGIN

v_suma := 0;  
v_ile := 0;

OPEN v_cursor FOR
SELECT s.cena
FROM samochody s
INNER JOIN modele m ON s.id_modelu = m.id_modelu
INNER JOIN marki ma ON m.id_marki = ma.id_marki
WHERE ma.nazwa = p_marka;
FETCH v_cursor BULK COLLECT INTO tabela_cen_samochodow;
CLOSE v_cursor;

v_ile := tabela_cen_samochodow.COUNT;

IF v_ile = 0 THEN
    wynik := ('Nie sprzedano żadnego samochodu marki: ' || p_marka);
ELSE
    v_ile := 0;
    FOR i IN 1..tabela_cen_samochodow.COUNT LOOP
    v_suma := v_suma + tabela_cen_samochodow(i);
    v_ile := v_ile + 1;
    END LOOP;

    v_srednia := v_suma / v_ile;

    OPEN v_cursor FOR
    SELECT m.nazwa_modelu 
    FROM samochody s
    INNER JOIN modele m ON s.id_modelu = m.id_modelu
    INNER JOIN marki ma ON m.id_marki = ma.id_marki
    WHERE ma.nazwa = p_marka
    AND ROWNUM = 1
    ORDER BY DATA_PRZ DESC;

    FETCH v_cursor INTO v_ostatni_model; 
    CLOSE v_cursor;
        wynik := ('Ostatnio sprzedany samochód to ' || p_marka || ' ' || v_ostatni_model || '. Średnia cena samochodów tej marki wynosi ' || round(v_srednia,2) || 'zł.' );  
END IF;
END;
/

CREATE OR REPLACE EDITIONABLE PROCEDURE  "SZCZEGOLY_TRANSAKCJI" (wynik OUT VARCHAR2)
AS
v_cursor SYS_REFCURSOR;
v_id_transakcji NUMBER;
v_rodzaj_trans VARCHAR2(20);
v_kwota NUMBER;
v_data_trans DATE;
v_id_pojazdu NUMBER;
v_id_klienta NUMBER;
v_id_sprzedawcy NUMBER;
v_nazwisko_klienta VARCHAR2(50);
v_imie_klienta VARCHAR2(50);
v_nazwisko_sprzedawcy VARCHAR2(50);
v_imie_sprzedawcy VARCHAR2(50);
v_rocznik NUMBER;
v_cena NUMBER;
v_marka VARCHAR2(30);
v_model VARCHAR2(30);
v_kraj_pochodzenia VARCHAR2(30);
v_nadwozie VARCHAR2(30);
v_paliwo VARCHAR2(30);
v_kolor VARCHAR2(30);
BEGIN
OPEN v_cursor FOR
SELECT t.id_transakcji, t.rodzaj_tran, t.kwota, t.data, s.id_pojazdu, s.rocznik, s.cena,
k.id_klienta, k.nazwisko nazwisko_klienta, k.imie imie_klienta,
sp.id_sprzedawcy, sp.nazwisko nazwisko_sprzedawcy, sp.imie imie_sprzedawcy,
m.nazwa marka, mo.nazwa_modelu model, kp.kraj, n.nadwozie, ko.nazwa, p.rodzaj
FROM transakcje t
INNER JOIN samochody s ON t.id_pojazdu = s.id_pojazdu
INNER JOIN klienci k ON t.id_klienta = k.id_klienta
INNER JOIN sprzedawcy sp ON t.id_sprzedawcy = sp.id_sprzedawcy
INNER JOIN modele mo ON s.id_modelu = mo.id_modelu
INNER JOIN marki m ON mo.id_marki = m.id_marki
INNER JOIN krajpochodzenia kp ON s.id_kraju = kp.id_kraju
INNER JOIN kolory ko ON s.id_koloru = ko.id_koloru
INNER JOIN paliwo p ON s.id_paliwa = p.id_paliwa
INNER JOIN nadwozie n ON s.id_nadwozie = n.id_nadwozie
WHERE t.rodzaj_tran = 'Kupno' OR t.rodzaj_tran = 'Sprzedaz'
AND ROWNUM = 1
ORDER BY t.DATA DESC;

FETCH v_cursor INTO v_id_transakcji, v_rodzaj_trans, v_kwota, v_data_trans, v_id_pojazdu, v_rocznik, v_cena, v_id_klienta,
 v_nazwisko_klienta, v_imie_klienta, v_id_sprzedawcy, v_nazwisko_sprzedawcy, v_imie_sprzedawcy, v_marka, v_model,
 v_kraj_pochodzenia, v_nadwozie, v_kolor, v_paliwo;

 wynik := ('Szczegóły ostatniej transakcji:' || '<br>' ||
'ID transakcji: ' || v_id_transakcji || '<br>' ||
'Rodzaj transakcji: ' || v_rodzaj_trans || '<br>' ||
'Kwota: ' || v_kwota || ' zł' || '<br>' ||
'Data transakcji: ' || TO_CHAR(v_data_trans, 'MM/DD/RRRR') || '<br>' ||
'ID pojazdu: ' || v_id_pojazdu || '<br>' ||
'Marka: ' || v_marka || '<br>' ||
'Model: ' || v_model || '<br>' ||
'Rocznik: ' || v_rocznik || '<br>' ||
'Cena: ' || v_cena || ' zł' || '<br>' ||
'Marka: ' || v_kraj_pochodzenia || '<br>' ||
'Model: ' || v_nadwozie || '<br>' ||
'Marka: ' || v_paliwo || '<br>' ||
'Model: ' || v_kolor || '<br>' ||
'ID klienta: ' || v_id_klienta || '<br>' ||
'Nazwisko klienta: ' || v_nazwisko_klienta || '<br>' ||
' Imię klienta: ' || v_imie_klienta || '<br>' ||
'ID sprzedawcy: ' || v_id_sprzedawcy || '<br>' ||
'Nazwisko sprzedawcy: ' || v_nazwisko_sprzedawcy || '<br>' ||
' Imię sprzedawcy: ' || v_imie_sprzedawcy || '<br>');

CLOSE v_cursor;

END;
/

CREATE OR REPLACE EDITIONABLE PROCEDURE  "USUN_SAMOCHOD" (
p_id_samochodu NUMBER,
    wynik OUT VARCHAR2
)
AS
marka VARCHAR2(100);
model VARCHAR2(100);
BEGIN
SELECT ma.nazwa as marka, m.nazwa_modelu as model
INTO marka, model
FROM samochody s
INNER JOIN modele m ON s.id_modelu = m.id_modelu
INNER JOIN marki ma ON m.id_marki = ma.id_marki
WHERE s.id_pojazdu = p_id_samochodu;

DELETE FROM samochody
WHERE id_pojazdu = p_id_samochodu;
COMMIT;

wynik := ('Usunięto samochod marki ' || marka || ' model ' || model || ' o ID ' || p_id_samochodu || ' z bazy danych.');
EXCEPTION
WHEN NO_DATA_FOUND THEN
raise_application_error(-20005, 'Nie znaleziono samochodu o takim ID.');
END;
/

CREATE OR REPLACE EDITIONABLE PROCEDURE  "WYSWIETL_KLIENTOW" (wynik OUT VARCHAR2, wynik1 OUT VARCHAR2) AS 
    CURSOR c_klienci IS
        SELECT nazwisko, imie, TRUNC(TO_NUMBER(SYSDATE- TO_DATE(data_ur))/365.25) AS Wiek
        FROM klienci
        ORDER BY nazwisko;
BEGIN
    wynik := ('Lista klientów:');
    wynik1 := '';
    FOR r_klienci IN c_klienci LOOP
        wynik1 := (wynik1 || r_klienci.nazwisko || ' ' || r_klienci.imie || ' ' || r_klienci.Wiek || ' lat' || '<br>');
    END LOOP;
END;
/

CREATE OR REPLACE EDITIONABLE PROCEDURE  "WYSWIETL_SAMOCHODY_O_PRZEBIEGU" (p_przebieg_od NUMBER, p_przebieg_do NUMBER) AS
CURSOR c_samochody IS
SELECT ma.nazwa as marka, m.nazwa_modelu as model, s.rocznik, s.przebieg, s.cena
FROM samochody s
INNER JOIN modele m ON s.id_modelu = m.id_modelu
INNER JOIN marki ma ON m.id_marki = ma.id_marki
WHERE s.przebieg BETWEEN p_przebieg_od AND p_przebieg_do
ORDER BY marka, model;
BEGIN
HTP.P('Lista samochodów o przebiegu pomiędzy ' || p_przebieg_od || 'km a ' || p_przebieg_do || 'km:' || '<br>');
FOR r_samochody IN c_samochody LOOP
HTP.P(r_samochody.marka || ' ' || r_samochody.model || ', rocznik ' || r_samochody.rocznik || ', przebieg ' || r_samochody.przebieg || 'km, cena ' || r_samochody.cena || ' zł' || '<br>');
END LOOP;
EXCEPTION
WHEN NO_DATA_FOUND THEN
apex_error.add_error(p_message => 'Nie znaleziono samochodów spełniających podane kryteria.',
		     p_display_location => apex_error.c_inline_in_notification);
END;
/

CREATE OR REPLACE EDITIONABLE PROCEDURE  "ZATRUDNIJ_SPRZEDAWCE" (
    p_imie VARCHAR2,
    p_nazwisko VARCHAR2,
    p_pensja NUMBER,
    wynik OUT VARCHAR2
)
IS
v_id NUMBER;
v_datazatrudnienia DATE;
BEGIN
v_datazatrudnienia := SYSDATE;
IF p_pensja <= 1490 THEN
    RAISE NO_DATA_FOUND;
END IF;
    SELECT SEQ_SPRZEDAWCY.NEXTVAL INTO v_id FROM DUAL;
INSERT INTO "SPRZEDAWCY" ("ID_SPRZEDAWCY", "NAZWISKO", "IMIE", "DATA_ZATRUDNIENIA", "PENSJA")
    VALUES(v_id, p_imie, p_nazwisko, v_datazatrudnienia, p_pensja);
    wynik := ('Zatrudniono sprzedawce ' || p_nazwisko);
EXCEPTION
WHEN NO_DATA_FOUND THEN
raise_application_error(-20005, 'Pensja musi być minimalna.');
END;
/

CREATE OR REPLACE EDITIONABLE PROCEDURE  "ZMIEN_SPRZEDAWCE_SAMOCHODU" (p_id_samochodu NUMBER, p_id_nowego_sprzedawcy NUMBER, 
powod VARCHAR2, wynik OUT VARCHAR2)
AS
    v_stary_sprzedawca SPRZEDAWCY%ROWTYPE;
    v_nowy_sprzedawca SPRZEDAWCY%ROWTYPE;
    v_czy_istnieje_sprzedawca NUMBER;
    v_czy_istnieje_samochod NUMBER;
    v_result VARCHAR2(1000);
    brak_samochodu exception;
    brak_sprzedawcy exception;
BEGIN
    SELECT COUNT(*) INTO v_czy_istnieje_sprzedawca
    FROM sprzedawcy
    WHERE id_sprzedawcy = p_id_nowego_sprzedawcy;

    SELECT COUNT(*) INTO v_czy_istnieje_samochod
    FROM transakcje
    WHERE id_pojazdu = p_id_samochodu;

    IF v_czy_istnieje_samochod = 0 THEN RAISE
        brak_samochodu;
    ELSIF v_czy_istnieje_sprzedawca = 0 THEN RAISE
        brak_sprzedawcy;
    ELSE
        SELECT * INTO v_stary_sprzedawca
        FROM sprzedawcy
        WHERE id_sprzedawcy = (SELECT id_sprzedawcy FROM transakcje WHERE id_pojazdu = p_id_samochodu);

        UPDATE transakcje
        SET id_sprzedawcy = p_id_nowego_sprzedawcy
        WHERE id_pojazdu = p_id_samochodu;

        SELECT * INTO v_nowy_sprzedawca
        FROM sprzedawcy
        WHERE id_sprzedawcy = p_id_nowego_sprzedawcy;

        wynik := ('Zmieniono sprzedawcę z ' || v_stary_sprzedawca.nazwisko || ' ' || v_stary_sprzedawca.imie ||
        ' na ' || v_nowy_sprzedawca.nazwisko || ' ' || v_nowy_sprzedawca.imie || '. Powód: ' || powod);
    END IF;
EXCEPTION
WHEN brak_samochodu THEN
     raise_application_error(-20005, 'W bazie danych nie ma takiego samochodu.');
WHEN brak_sprzedawcy THEN
    raise_application_error(-20002, 'W bazie danych nie ma takiego sprzedawcy.');
END;
/

CREATE OR REPLACE EDITIONABLE PROCEDURE  "ZWIEKSZPENSJESPRZEDAWCY" (
p_id_sprzedawcy NUMBER,
wynik OUT VARCHAR2
)
AS
brak exception;
    CURSOR sprzedawcy_podwyzka IS
      SELECT ID_SPRZEDAWCY,
             PENSJA,
             NAZWISKO
      FROM   SPRZEDAWCY
      WHERE  ID_SPRZEDAWCY = p_id_sprzedawcy 
      FOR UPDATE;
    podwyzka NUMBER;
    updated_rows INTEGER := 0;
    v_stara_pensja NUMBER;
    v_nowa_pensja NUMBER;
    v_nazwisko VARCHAR2(100);
BEGIN
    FOR sprzedawcy_rec IN sprzedawcy_podwyzka LOOP
        v_nazwisko := sprzedawcy_rec.nazwisko;
        v_stara_pensja := sprzedawcy_rec.pensja;
        IF sprzedawcy_rec.pensja < 5000 THEN
          podwyzka := .15;
        ELSE
          podwyzka := .10;
        END IF;

        UPDATE SPRZEDAWCY
        SET pensja = pensja + pensja * podwyzka
        WHERE CURRENT OF sprzedawcy_podwyzka;
        updated_rows := updated_rows + 1;
    END LOOP;
    IF updated_rows = 0 THEN RAISE
      brak;
    END IF;
    SELECT pensja INTO v_nowa_pensja FROM sprzedawcy WHERE id_sprzedawcy = p_id_sprzedawcy;
    wynik := 'Zmieniono pensję pracownikowi ' || v_nazwisko || ' z ' || v_stara_pensja || ' na ' || v_nowa_pensja;
EXCEPTION
WHEN brak THEN
     raise_application_error(-20005, 'Nie znaleziono pracownika o takim ID.');
END;
/

CREATE OR REPLACE EDITIONABLE PROCEDURE  "ZWOLNIJSPRZEDAWCE" (
    p_id NUMBER,
    p_powod VARCHAR2,
    wynik OUT VARCHAR2
)
IS
    imie VARCHAR2(50);
    nazwisko VARCHAR2(50);
    dataDzis DATE;
BEGIN
    SELECT imie, nazwisko, SYSDATE
    INTO imie, nazwisko, dataDzis
    FROM "SPRZEDAWCY"
    WHERE "ID_SPRZEDAWCY" = p_id;
DELETE FROM "SPRZEDAWCY" WHERE "ID_SPRZEDAWCY" = p_id;
wynik := ('Zwolniono ' || nazwisko || ' ' || imie || ' dnia: ' || dataDzis || ' z powodu ' || p_powod);
EXCEPTION
WHEN NO_DATA_FOUND THEN
     raise_application_error(-20005, 'Nie można usunąć sprzedawcy o podanym ID. Sprawdź, czy taki sprzedawca istnieje i czy nie są do niego przypisane żadne transakcje.');
END;
/

 CREATE SEQUENCE   "JAZDA_PROBNA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "SEQ_KLIENCI"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "SEQ_SAMOCHODY"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "SEQ_SPRZEDAWCY"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 162 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
CREATE OR REPLACE EDITIONABLE TYPE  "SAMOCHODY_W_CENIE" AS OBJECT (
  id_pojazdu NUMBER,
  rocznik NUMBER,
  cena NUMBER,
  marka VARCHAR2(30),
  model VARCHAR2(30),
  kraj_pochodzenia VARCHAR2(30),
  nadwozie VARCHAR2(30),
  paliwo VARCHAR2(30),
  kolor VARCHAR2(30)
);

CREATE OR REPLACE TYPE samochody_w_cenie_tab AS TABLE OF samochody_w_cenie;

CREATE OR REPLACE FUNCTION wyswietl_samochody_w_cenie (p_cena_od NUMBER, p_cena_do NUMBER) RETURN samochody_w_cenie_tab AS
  v_tab samochody_w_cenie_tab := samochody_w_cenie_tab();
  v_cursor SYS_REFCURSOR;
  v_id_pojazdu NUMBER;
  v_rocznik NUMBER;
  v_cena NUMBER;
  v_marka VARCHAR2(30);
  v_model VARCHAR2(30);
  v_kraj_pochodzenia VARCHAR2(30);
  v_nadwozie VARCHAR2(30);
  v_paliwo VARCHAR2(30);
  v_kolor VARCHAR2(30);
BEGIN
  OPEN v_cursor FOR
    SELECT s.id_pojazdu, s.rocznik, s.cena, m.nazwa marka, mo.nazwa_modelu model,
           kp.kraj, n.nadwozie, p.rodzaj, ko.nazwa
    FROM samochody s
    INNER JOIN modele mo ON s.id_modelu = mo.id_modelu
    INNER JOIN marki m ON mo.id_marki = m.id_marki
    INNER JOIN krajpochodzenia kp ON s.id_kraju = kp.id_kraju
    INNER JOIN kolory ko ON s.id_koloru = ko.id_koloru
    INNER JOIN paliwo p ON s.id_paliwa = p.id_paliwa
    INNER JOIN nadwozie n ON s.id_nadwozie = n.id_nadwozie
    WHERE s.cena BETWEEN p_cena_od AND p_cena_do;

  LOOP
    FETCH v_cursor INTO v_id_pojazdu, v_rocznik, v_cena, v_marka, v_model, v_kraj_pochodzenia, v_nadwozie, v_paliwo, v_kolor;
    EXIT WHEN v_cursor%NOTFOUND;
v_tab.extend;
v_tab(v_tab.count) := samochody_w_cenie(v_id_pojazdu, v_rocznik, v_cena, v_marka, v_model, v_kraj_pochodzenia, v_nadwozie, v_paliwo, v_kolor);
END LOOP;

CLOSE v_cursor;
RETURN v_tab;
END;
/
