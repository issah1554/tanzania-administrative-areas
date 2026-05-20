-- ------------------------------------------------------------
-- Tanzania locations table + seed data
-- Single table hierarchy: region -> district -> ward
-- No slug column
-- ------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS locations;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE locations (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

    name VARCHAR(255) NOT NULL,

    parent_id BIGINT UNSIGNED NULL,

    type ENUM('region', 'district', 'ward') NOT NULL,

    latitude DECIMAL(10, 7) NULL,
    longitude DECIMAL(10, 7) NULL,

    created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_locations_parent
        FOREIGN KEY (parent_id)
        REFERENCES locations(id)
        ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- ============================================================
-- REGION: Dodoma
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Dodoma', NULL, 'region');

SET @region_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Kondoa', @region_1, 'district');

SET @district_1_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Bumbuta', @district_1_1, 'ward'),
('Pahi', @district_1_1, 'ward'),
('Haubi', @district_1_1, 'ward'),
('Kalamba', @district_1_1, 'ward'),
('Kwadelo', @district_1_1, 'ward'),
('Masange', @district_1_1, 'ward'),
('Kikilo', @district_1_1, 'ward'),
('Bereko', @district_1_1, 'ward'),
('Kisese', @district_1_1, 'ward'),
('Kikore', @district_1_1, 'ward'),
('Serya', @district_1_1, 'ward'),
('Kilimani', @district_1_1, 'ward'),
('Chemchem', @district_1_1, 'ward'),
('Hondo mairo', @district_1_1, 'ward'),
('Bolisa', @district_1_1, 'ward'),
('Kinyasi', @district_1_1, 'ward'),
('Salanka', @district_1_1, 'ward'),
('Itololo', @district_1_1, 'ward'),
('Itaswi', @district_1_1, 'ward'),
('Suruke', @district_1_1, 'ward'),
('Kingale', @district_1_1, 'ward'),
('Kondoa mjini', @district_1_1, 'ward'),
('Kolo', @district_1_1, 'ward'),
('Changaa', @district_1_1, 'ward'),
('Thawi', @district_1_1, 'ward'),
('Mnenia', @district_1_1, 'ward'),
('Soera', @district_1_1, 'ward'),
('Busi', @district_1_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mpwapwa', @region_1, 'district');

SET @district_1_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mazae', @district_1_2, 'ward'),
('Vingh''awe', @district_1_2, 'ward'),
('Matomondo', @district_1_2, 'ward'),
('Kimagai', @district_1_2, 'ward'),
('Kibakwe', @district_1_2, 'ward'),
('Lumuma', @district_1_2, 'ward'),
('Luhundwa', @district_1_2, 'ward'),
('Massa', @district_1_2, 'ward'),
('Ipera', @district_1_2, 'ward'),
('Rudi', @district_1_2, 'ward'),
('Mlunduzi', @district_1_2, 'ward'),
('Wotta', @district_1_2, 'ward'),
('Mima', @district_1_2, 'ward'),
('Berege', @district_1_2, 'ward'),
('Chunyu', @district_1_2, 'ward'),
('Mbuga', @district_1_2, 'ward'),
('Godegode', @district_1_2, 'ward'),
('Mpwapwa', @district_1_2, 'ward'),
('Lupeta', @district_1_2, 'ward'),
('Gulwe', @district_1_2, 'ward'),
('Nghambi', @district_1_2, 'ward'),
('Chitemo', @district_1_2, 'ward'),
('Iwondo', @district_1_2, 'ward'),
('Kingiti', @district_1_2, 'ward'),
('Lufu', @district_1_2, 'ward'),
('Pwaga', @district_1_2, 'ward'),
('Galigali', @district_1_2, 'ward'),
('Mtera', @district_1_2, 'ward'),
('Chipogoro', @district_1_2, 'ward'),
('Malolo', @district_1_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kongwa', @region_1, 'district');

SET @district_1_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kongwa', @district_1_3, 'ward'),
('Sejeli', @district_1_3, 'ward'),
('Hogoro', @district_1_3, 'ward'),
('Zoissa', @district_1_3, 'ward'),
('Mkoka', @district_1_3, 'ward'),
('Njoge', @district_1_3, 'ward'),
('Mtanana', @district_1_3, 'ward'),
('Pandambili', @district_1_3, 'ward'),
('Mlali', @district_1_3, 'ward'),
('Iduo', @district_1_3, 'ward'),
('Sagara', @district_1_3, 'ward'),
('Kibaigwa', @district_1_3, 'ward'),
('Ugogoni', @district_1_3, 'ward'),
('Chamkoroma', @district_1_3, 'ward'),
('Makawa', @district_1_3, 'ward'),
('Chitego', @district_1_3, 'ward'),
('Matongoro', @district_1_3, 'ward'),
('Ngomai', @district_1_3, 'ward'),
('Songambele', @district_1_3, 'ward'),
('Chiwe', @district_1_3, 'ward'),
('Lenjulu', @district_1_3, 'ward'),
('Nghumbi', @district_1_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Chamwino', @region_1, 'district');

SET @district_1_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Haneti', @district_1_4, 'ward'),
('Segala', @district_1_4, 'ward'),
('Itiso', @district_1_4, 'ward'),
('Dabalo', @district_1_4, 'ward'),
('Membe', @district_1_4, 'ward'),
('Msanga', @district_1_4, 'ward'),
('Chilonwa', @district_1_4, 'ward'),
('Buigiri', @district_1_4, 'ward'),
('Majeleko', @district_1_4, 'ward'),
('Manchali', @district_1_4, 'ward'),
('Ikowa', @district_1_4, 'ward'),
('Msamalo', @district_1_4, 'ward'),
('Igandu', @district_1_4, 'ward'),
('Muungano', @district_1_4, 'ward'),
('Mvumi Makulu', @district_1_4, 'ward'),
('Handali', @district_1_4, 'ward'),
('Mvumi Mission', @district_1_4, 'ward'),
('Idifu', @district_1_4, 'ward'),
('Makang''wa', @district_1_4, 'ward'),
('Iringamvumi', @district_1_4, 'ward'),
('Manzase', @district_1_4, 'ward'),
('Fufu', @district_1_4, 'ward'),
('Mlowa Bwawani', @district_1_4, 'ward'),
('Mpwayungu', @district_1_4, 'ward'),
('Nghambaku', @district_1_4, 'ward'),
('Chinugulu', @district_1_4, 'ward'),
('Manda', @district_1_4, 'ward'),
('Huzi', @district_1_4, 'ward'),
('Loje', @district_1_4, 'ward'),
('Chiboli', @district_1_4, 'ward'),
('Nhinhi', @district_1_4, 'ward'),
('Zajilwa', @district_1_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Dodoma Urban', @region_1, 'district');

SET @district_1_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Viwandani', @district_1_5, 'ward'),
('Uhuru', @district_1_5, 'ward'),
('Chamwino', @district_1_5, 'ward'),
('Kiwanja cha ndege', @district_1_5, 'ward'),
('Makole', @district_1_5, 'ward'),
('Miyuji', @district_1_5, 'ward'),
('Msalato', @district_1_5, 'ward'),
('Makutupora', @district_1_5, 'ward'),
('Chihanga', @district_1_5, 'ward'),
('Hombolo', @district_1_5, 'ward'),
('Ipala', @district_1_5, 'ward'),
('Nzuguni', @district_1_5, 'ward'),
('Dom-Makulu', @district_1_5, 'ward'),
('Mtumba', @district_1_5, 'ward'),
('Kikombo', @district_1_5, 'ward'),
('Ngh''ongh''onha', @district_1_5, 'ward'),
('Mpunguzi', @district_1_5, 'ward'),
('Tambukareli', @district_1_5, 'ward'),
('Kilimani', @district_1_5, 'ward'),
('Kikuyu Kusini', @district_1_5, 'ward'),
('Kikuyu Kaskazini', @district_1_5, 'ward'),
('Mkonze', @district_1_5, 'ward'),
('Mbabala', @district_1_5, 'ward'),
('Zuzu', @district_1_5, 'ward'),
('Hazina', @district_1_5, 'ward'),
('Madukani', @district_1_5, 'ward'),
('Majengo', @district_1_5, 'ward'),
('Kizota', @district_1_5, 'ward'),
('Nala', @district_1_5, 'ward'),
('Mbalawala', @district_1_5, 'ward'),
('Ntyuka', @district_1_5, 'ward'),
('Chigongwe', @district_1_5, 'ward'),
('Chang''ombe', @district_1_5, 'ward'),
('Iyumbu', @district_1_5, 'ward'),
('Chahwa', @district_1_5, 'ward'),
('Mnadani', @district_1_5, 'ward'),
('Ipagala', @district_1_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Bahi', @region_1, 'district');

SET @district_1_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Makanda', @district_1_6, 'ward'),
('Lamaiti', @district_1_6, 'ward'),
('Babayu', @district_1_6, 'ward'),
('Zanka', @district_1_6, 'ward'),
('Msisi', @district_1_6, 'ward'),
('Mundemu', @district_1_6, 'ward'),
('Bahi', @district_1_6, 'ward'),
('Mpamantwa', @district_1_6, 'ward'),
('Ibihwa', @district_1_6, 'ward'),
('Ilindi', @district_1_6, 'ward'),
('Kigwe', @district_1_6, 'ward'),
('Chikola', @district_1_6, 'ward'),
('Chipanga', @district_1_6, 'ward'),
('Chali', @district_1_6, 'ward'),
('Nondwa', @district_1_6, 'ward'),
('Mpalanga', @district_1_6, 'ward'),
('Ibugule', @district_1_6, 'ward'),
('Chibelela', @district_1_6, 'ward'),
('Mwitikira', @district_1_6, 'ward'),
('Mtitaa', @district_1_6, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Chemba', @region_1, 'district');

SET @district_1_7 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Makorongo', @district_1_7, 'ward'),
('Ovada', @district_1_7, 'ward'),
('Msaada', @district_1_7, 'ward'),
('Kimaha', @district_1_7, 'ward'),
('Churuku', @district_1_7, 'ward'),
('Songoro', @district_1_7, 'ward'),
('Mondo', @district_1_7, 'ward'),
('Dalai', @district_1_7, 'ward'),
('Mrijo', @district_1_7, 'ward'),
('Chandama', @district_1_7, 'ward'),
('Goima', @district_1_7, 'ward'),
('Chemba', @district_1_7, 'ward'),
('Paranga', @district_1_7, 'ward'),
('Gwandi', @district_1_7, 'ward'),
('Farkwa', @district_1_7, 'ward'),
('Mpendo', @district_1_7, 'ward'),
('Sanzawa', @district_1_7, 'ward'),
('Kwamtoro', @district_1_7, 'ward'),
('Lalta', @district_1_7, 'ward'),
('Jangalo', @district_1_7, 'ward');


-- ============================================================
-- REGION: Arusha
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Arusha', NULL, 'region');

SET @region_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Monduli', @region_2, 'district');

SET @district_2_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Engaruka', @district_2_1, 'ward'),
('Monduli juu', @district_2_1, 'ward'),
('Engutoto', @district_2_1, 'ward'),
('Monduli Mjini', @district_2_1, 'ward'),
('Moita', @district_2_1, 'ward'),
('Sepeko', @district_2_1, 'ward'),
('Lolkisale', @district_2_1, 'ward'),
('Makuyuni', @district_2_1, 'ward'),
('Esilalei', @district_2_1, 'ward'),
('Mto wa Mbu', @district_2_1, 'ward'),
('Lepurko', @district_2_1, 'ward'),
('Meserani', @district_2_1, 'ward'),
('Mswakini', @district_2_1, 'ward'),
('Majengo', @district_2_1, 'ward'),
('Selela', @district_2_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Meru', @region_2, 'district');

SET @district_2_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Ngarenanyuki', @district_2_2, 'ward'),
('Leguruki', @district_2_2, 'ward'),
('King''ori', @district_2_2, 'ward'),
('Maji ya chai', @district_2_2, 'ward'),
('Kikatiti', @district_2_2, 'ward'),
('Maroroni', @district_2_2, 'ward'),
('Makiba', @district_2_2, 'ward'),
('Mbuguni', @district_2_2, 'ward'),
('Kikwe', @district_2_2, 'ward'),
('Usariver', @district_2_2, 'ward'),
('Nkoaranga', @district_2_2, 'ward'),
('Poli', @district_2_2, 'ward'),
('Seela Sing''isi', @district_2_2, 'ward'),
('Akheri', @district_2_2, 'ward'),
('Nkoanrua', @district_2_2, 'ward'),
('Songoro', @district_2_2, 'ward'),
('Nkoarisambu', @district_2_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Arusha Urban', @region_2, 'district');

SET @district_2_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kati', @district_2_3, 'ward'),
('Kaloleni', @district_2_3, 'ward'),
('Sekei', @district_2_3, 'ward'),
('Kimandolu', @district_2_3, 'ward'),
('Baraa', @district_2_3, 'ward'),
('Oloirieni', @district_2_3, 'ward'),
('Themi', @district_2_3, 'ward'),
('Lemara', @district_2_3, 'ward'),
('Terrat', @district_2_3, 'ward'),
('Sokoni I', @district_2_3, 'ward'),
('Daraja Mbili', @district_2_3, 'ward'),
('Unga Ltd', @district_2_3, 'ward'),
('Sombetini', @district_2_3, 'ward'),
('Ngarenaro', @district_2_3, 'ward'),
('Levolosi', @district_2_3, 'ward'),
('Engutoto', @district_2_3, 'ward'),
('Elerai', @district_2_3, 'ward'),
('Olasiti', @district_2_3, 'ward'),
('Moshono', @district_2_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Karatu', @region_2, 'district');

SET @district_2_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Karatu', @district_2_4, 'ward'),
('Endamarariek', @district_2_4, 'ward'),
('Buger', @district_2_4, 'ward'),
('Endabash', @district_2_4, 'ward'),
('Kansay', @district_2_4, 'ward'),
('Baray', @district_2_4, 'ward'),
('Mang''ola', @district_2_4, 'ward'),
('Daa', @district_2_4, 'ward'),
('Oldean', @district_2_4, 'ward'),
('Qurus', @district_2_4, 'ward'),
('Ganako', @district_2_4, 'ward'),
('Rhotia', @district_2_4, 'ward'),
('Mbulumbulu', @district_2_4, 'ward'),
('Endamaghang', @district_2_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Ngorongoro', @region_2, 'district');

SET @district_2_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Orgosorok', @district_2_5, 'ward'),
('Digodigo', @district_2_5, 'ward'),
('Oldonyo Sambu', @district_2_5, 'ward'),
('Pinyinyi', @district_2_5, 'ward'),
('Sale', @district_2_5, 'ward'),
('Malambo', @district_2_5, 'ward'),
('Naiyobi', @district_2_5, 'ward'),
('Nainokanoka', @district_2_5, 'ward'),
('Olbalbal', @district_2_5, 'ward'),
('Ngorongoro', @district_2_5, 'ward'),
('Endulen', @district_2_5, 'ward'),
('Kakesio', @district_2_5, 'ward'),
('Arash', @district_2_5, 'ward'),
('Soitsambu', @district_2_5, 'ward'),
('Engusero Sambu', @district_2_5, 'ward'),
('Oloirien', @district_2_5, 'ward'),
('Samunge', @district_2_5, 'ward'),
('Alailelai', @district_2_5, 'ward'),
('Maalon', @district_2_5, 'ward'),
('Ololosokwan', @district_2_5, 'ward'),
('Oloipiri', @district_2_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Arusha', @region_2, 'district');

SET @district_2_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Olkokola', @district_2_6, 'ward'),
('Ilkiding''a', @district_2_6, 'ward'),
('Bangata', @district_2_6, 'ward'),
('Sokon II', @district_2_6, 'ward'),
('Oltoroto', @district_2_6, 'ward'),
('Moivo', @district_2_6, 'ward'),
('Kiranyi', @district_2_6, 'ward'),
('Kimnyaki', @district_2_6, 'ward'),
('Oltrumet', @district_2_6, 'ward'),
('Mwandeti', @district_2_6, 'ward'),
('Mussa', @district_2_6, 'ward'),
('Kisongo', @district_2_6, 'ward'),
('Mateves', @district_2_6, 'ward'),
('Oljoro', @district_2_6, 'ward'),
('Bwawani', @district_2_6, 'ward'),
('Nduruma', @district_2_6, 'ward'),
('Mlangarini', @district_2_6, 'ward'),
('Sambasha', @district_2_6, 'ward'),
('Olorieni', @district_2_6, 'ward'),
('Olmotonyi', @district_2_6, 'ward'),
('Oldonyosambu', @district_2_6, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Longido', @region_2, 'district');

SET @district_2_7 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kitumbeine', @district_2_7, 'ward'),
('Engikaret', @district_2_7, 'ward'),
('Eleng''ata Dapash', @district_2_7, 'ward'),
('Ilorienito', @district_2_7, 'ward'),
('Gelai Meirugoi', @district_2_7, 'ward'),
('Gelai lumbwa', @district_2_7, 'ward'),
('Matale', @district_2_7, 'ward'),
('Engarenaibor', @district_2_7, 'ward'),
('Mundarara', @district_2_7, 'ward'),
('Kimokouwa', @district_2_7, 'ward'),
('Namanga', @district_2_7, 'ward'),
('Orbomba', @district_2_7, 'ward'),
('Longido', @district_2_7, 'ward'),
('Tingatinga', @district_2_7, 'ward'),
('Olmolog', @district_2_7, 'ward'),
('Kamwanga', @district_2_7, 'ward');


-- ============================================================
-- REGION: Kilimanjaro
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Kilimanjaro', NULL, 'region');

SET @region_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Rombo', @region_3, 'district');

SET @district_3_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mamsera', @district_3_1, 'ward'),
('Mahida', @district_3_1, 'ward'),
('Mengwe', @district_3_1, 'ward'),
('Keni Mengeni', @district_3_1, 'ward'),
('Aleni', @district_3_1, 'ward'),
('Shimbi', @district_3_1, 'ward'),
('Makiidi', @district_3_1, 'ward'),
('Kelamfua Mokala', @district_3_1, 'ward'),
('Ushiri Ikuini', @district_3_1, 'ward'),
('Mrao Keryo', @district_3_1, 'ward'),
('Kirwa Keni', @district_3_1, 'ward'),
('Katangara Mrere', @district_3_1, 'ward'),
('Kisale Msaranga', @district_3_1, 'ward'),
('Olele', @district_3_1, 'ward'),
('Kirongo Samanga', @district_3_1, 'ward'),
('Kitirima Kingachi', @district_3_1, 'ward'),
('Ubetu Kahe', @district_3_1, 'ward'),
('Nanjara Reha', @district_3_1, 'ward'),
('Tarakea Motamburu', @district_3_1, 'ward'),
('Motamburu Kitendeni', @district_3_1, 'ward'),
('Marangu Kitowo', @district_3_1, 'ward'),
('Ngoyoni', @district_3_1, 'ward'),
('Manda', @district_3_1, 'ward'),
('Holili', @district_3_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mwanga', @region_3, 'district');

SET @district_3_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kileo', @district_3_2, 'ward'),
('Mwanga', @district_3_2, 'ward'),
('Msangeni', @district_3_2, 'ward'),
('Kifula', @district_3_2, 'ward'),
('Kighare', @district_3_2, 'ward'),
('Kirongwe', @district_3_2, 'ward'),
('Kwakoa', @district_3_2, 'ward'),
('Lembeni', @district_3_2, 'ward'),
('Jipe', @district_3_2, 'ward'),
('Mwaniko', @district_3_2, 'ward'),
('Chomvu', @district_3_2, 'ward'),
('Ngujini', @district_3_2, 'ward'),
('Kirya', @district_3_2, 'ward'),
('Kilomeni', @district_3_2, 'ward'),
('Shighatini', @district_3_2, 'ward'),
('Lang''ata', @district_3_2, 'ward'),
('Mgagao', @district_3_2, 'ward'),
('Toloha', @district_3_2, 'ward'),
('Kigoningoni', @district_3_2, 'ward'),
('Kivisini', @district_3_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Same', @region_3, 'district');

SET @district_3_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Same', @district_3_3, 'ward'),
('Ruvu', @district_3_3, 'ward'),
('Njoro', @district_3_3, 'ward'),
('Kisiwani', @district_3_3, 'ward'),
('Msindo', @district_3_3, 'ward'),
('Mshewa', @district_3_3, 'ward'),
('Mhezi', @district_3_3, 'ward'),
('Mwembe', @district_3_3, 'ward'),
('Vudee', @district_3_3, 'ward'),
('Vuje', @district_3_3, 'ward'),
('Bombo', @district_3_3, 'ward'),
('Mtii', @district_3_3, 'ward'),
('Maore', @district_3_3, 'ward'),
('Ndungu', @district_3_3, 'ward'),
('Kihurio', @district_3_3, 'ward'),
('Bendera', @district_3_3, 'ward'),
('Myamba', @district_3_3, 'ward'),
('Mpinji', @district_3_3, 'ward'),
('Bwambo', @district_3_3, 'ward'),
('Vunta', @district_3_3, 'ward'),
('Chome', @district_3_3, 'ward'),
('Suji', @district_3_3, 'ward'),
('Makanya', @district_3_3, 'ward'),
('Hedaru', @district_3_3, 'ward'),
('Kirangare', @district_3_3, 'ward'),
('Kisima', @district_3_3, 'ward'),
('Stesheni', @district_3_3, 'ward'),
('Vumari', @district_3_3, 'ward'),
('Mabilioni', @district_3_3, 'ward'),
('Kalemawe', @district_3_3, 'ward'),
('Lugulu', @district_3_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Moshi', @region_3, 'district');

SET @district_3_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mwika Kusini', @district_3_4, 'ward'),
('MwikaKaskazini', @district_3_4, 'ward'),
('Mamba Kaskazini', @district_3_4, 'ward'),
('Mamba Kusini', @district_3_4, 'ward'),
('Marangu Mashariki', @district_3_4, 'ward'),
('Marangu Magharibi', @district_3_4, 'ward'),
('Makuyuni', @district_3_4, 'ward'),
('Kilema Kaskazini', @district_3_4, 'ward'),
('Kilema Kusini', @district_3_4, 'ward'),
('KiruaVunjo Mashariki', @district_3_4, 'ward'),
('KiruaVunjo Magharibi', @district_3_4, 'ward'),
('Kahe', @district_3_4, 'ward'),
('Kahe Mashariki', @district_3_4, 'ward'),
('Old Moshi Mashariki', @district_3_4, 'ward'),
('Old Moshi Magharibi', @district_3_4, 'ward'),
('Mbokomu', @district_3_4, 'ward'),
('Uru Mashariki', @district_3_4, 'ward'),
('Uru Shimbwe', @district_3_4, 'ward'),
('Uru Kusini', @district_3_4, 'ward'),
('Uru Kaskazini', @district_3_4, 'ward'),
('Mabogini', @district_3_4, 'ward'),
('Arusha Chini', @district_3_4, 'ward'),
('Kibosho Mashariki', @district_3_4, 'ward'),
('Kibosho Kati', @district_3_4, 'ward'),
('Kibosho Magharibi', @district_3_4, 'ward'),
('Kindi', @district_3_4, 'ward'),
('KiruaVunjo Kusini', @district_3_4, 'ward'),
('Kirima', @district_3_4, 'ward'),
('Okaoni', @district_3_4, 'ward'),
('Kimochi', @district_3_4, 'ward'),
('Kilema Kati', @district_3_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Hai', @region_3, 'district');

SET @district_3_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Machame Mashariki', @district_3_5, 'ward'),
('Machame Kusini', @district_3_5, 'ward'),
('Machame Kaskazini', @district_3_5, 'ward'),
('Machame Magharibi', @district_3_5, 'ward'),
('Machame Uroki', @district_3_5, 'ward'),
('Masama Mashariki', @district_3_5, 'ward'),
('Masama Magharibi', @district_3_5, 'ward'),
('Masama Kusini', @district_3_5, 'ward'),
('Masama Rundugai', @district_3_5, 'ward'),
('Hai Mjini', @district_3_5, 'ward'),
('Masama Kati', @district_3_5, 'ward'),
('Machame Weruweru', @district_3_5, 'ward'),
('KIA', @district_3_5, 'ward'),
('Machame Narumu', @district_3_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Moshi Urban', @region_3, 'district');

SET @district_3_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kilimanjaro', @district_3_6, 'ward'),
('Njoro', @district_3_6, 'ward'),
('Mji Mpya', @district_3_6, 'ward'),
('Majengo', @district_3_6, 'ward'),
('Mawenzi', @district_3_6, 'ward'),
('Rau', @district_3_6, 'ward'),
('Korongoni', @district_3_6, 'ward'),
('Kiusa', @district_3_6, 'ward'),
('Bondeni', @district_3_6, 'ward'),
('Pasua', @district_3_6, 'ward'),
('Kaloleni', @district_3_6, 'ward'),
('Kiboriloni', @district_3_6, 'ward'),
('Msaranga', @district_3_6, 'ward'),
('Karanga', @district_3_6, 'ward'),
('Longuo B', @district_3_6, 'ward'),
('Miembeni', @district_3_6, 'ward'),
('Mfumuni', @district_3_6, 'ward'),
('Soweto', @district_3_6, 'ward'),
('Boma Mbuzi', @district_3_6, 'ward'),
('Ng''ambo', @district_3_6, 'ward'),
('Shirimatunda', @district_3_6, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Siha', @region_3, 'district');

SET @district_3_7 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Ndumeti', @district_3_7, 'ward'),
('Ngarenairobi', @district_3_7, 'ward'),
('Gararagua', @district_3_7, 'ward'),
('Sanya Juu', @district_3_7, 'ward'),
('Biriri', @district_3_7, 'ward'),
('Makiwaru', @district_3_7, 'ward'),
('Nasai', @district_3_7, 'ward'),
('Livishi', @district_3_7, 'ward'),
('Ivaeny', @district_3_7, 'ward'),
('Kashisha', @district_3_7, 'ward'),
('Karansi', @district_3_7, 'ward'),
('Olkolili', @district_3_7, 'ward');


-- ============================================================
-- REGION: Tanga
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Tanga', NULL, 'region');

SET @region_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Lushoto', @region_4, 'district');

SET @district_4_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Lushoto', @district_4_1, 'ward'),
('Gare', @district_4_1, 'ward'),
('Kwai', @district_4_1, 'ward'),
('Ubiri', @district_4_1, 'ward'),
('Soni', @district_4_1, 'ward'),
('Vuga', @district_4_1, 'ward'),
('Mponde', @district_4_1, 'ward'),
('Mamba', @district_4_1, 'ward'),
('Mbuzii', @district_4_1, 'ward'),
('Tamota', @district_4_1, 'ward'),
('Bumbuli', @district_4_1, 'ward'),
('Funta', @district_4_1, 'ward'),
('Mayo', @district_4_1, 'ward'),
('Baga', @district_4_1, 'ward'),
('Milingano', @district_4_1, 'ward'),
('Mgwashi', @district_4_1, 'ward'),
('Mtae', @district_4_1, 'ward'),
('Sunga', @district_4_1, 'ward'),
('Rangwi', @district_4_1, 'ward'),
('Mnazi', @district_4_1, 'ward'),
('Lunguza', @district_4_1, 'ward'),
('Mbaramo', @district_4_1, 'ward'),
('Mng''aro', @district_4_1, 'ward'),
('Mlalo', @district_4_1, 'ward'),
('Mwangoi', @district_4_1, 'ward'),
('Shume', @district_4_1, 'ward'),
('Malindi', @district_4_1, 'ward'),
('Hemtoye', @district_4_1, 'ward'),
('Malibwi', @district_4_1, 'ward'),
('Mlola', @district_4_1, 'ward'),
('Makanya', @district_4_1, 'ward'),
('Ngwelo', @district_4_1, 'ward'),
('Kilole', @district_4_1, 'ward'),
('Kwekanga', @district_4_1, 'ward'),
('Lukozi', @district_4_1, 'ward'),
('Manolo', @district_4_1, 'ward'),
('Dule "M"', @district_4_1, 'ward'),
('Kwemshasha', @district_4_1, 'ward'),
('Nkongoi', @district_4_1, 'ward'),
('Dule "B"', @district_4_1, 'ward'),
('Maheza ngulu', @district_4_1, 'ward'),
('Usambara', @district_4_1, 'ward'),
('Ngulwi', @district_4_1, 'ward'),
('Kwemashai', @district_4_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Korogwe', @region_4, 'district');

SET @district_4_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mashewa', @district_4_2, 'ward'),
('Kizara', @district_4_2, 'ward'),
('Magoma', @district_4_2, 'ward'),
('Kerenge', @district_4_2, 'ward'),
('Kwagunda', @district_4_2, 'ward'),
('Mnyuzi', @district_4_2, 'ward'),
('Vugiri', @district_4_2, 'ward'),
('Dindira', @district_4_2, 'ward'),
('Bungu', @district_4_2, 'ward'),
('Lutindi', @district_4_2, 'ward'),
('Makuyuni', @district_4_2, 'ward'),
('Chekelei', @district_4_2, 'ward'),
('Mombo', @district_4_2, 'ward'),
('Mkalamo', @district_4_2, 'ward'),
('Mkomazi', @district_4_2, 'ward'),
('Kwashemshi', @district_4_2, 'ward'),
('Mpale', @district_4_2, 'ward'),
('Mswaha', @district_4_2, 'ward'),
('Magamba Kwalukonge', @district_4_2, 'ward'),
('Mazinde', @district_4_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Muheza', @region_4, 'district');

SET @district_4_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Misozwe', @district_4_3, 'ward'),
('Pande Darajani', @district_4_3, 'ward'),
('Ngomeni', @district_4_3, 'ward'),
('Kigombe', @district_4_3, 'ward'),
('Lusanga', @district_4_3, 'ward'),
('Kicheba', @district_4_3, 'ward'),
('Magoroto', @district_4_3, 'ward'),
('Magila', @district_4_3, 'ward'),
('Mbaramo', @district_4_3, 'ward'),
('Majengo', @district_4_3, 'ward'),
('Masuguru', @district_4_3, 'ward'),
('Tingeni', @district_4_3, 'ward'),
('Kilulu', @district_4_3, 'ward'),
('Mkuzi', @district_4_3, 'ward'),
('Mtindiro', @district_4_3, 'ward'),
('Kwafungo', @district_4_3, 'ward'),
('Songa', @district_4_3, 'ward'),
('Bwembwera', @district_4_3, 'ward'),
('Potwe', @district_4_3, 'ward'),
('Nkumba', @district_4_3, 'ward'),
('Kisiwani', @district_4_3, 'ward'),
('Misalai', @district_4_3, 'ward'),
('Zirai', @district_4_3, 'ward'),
('Mbomole', @district_4_3, 'ward'),
('Amani', @district_4_3, 'ward'),
('Tongwe', @district_4_3, 'ward'),
('Mhamba', @district_4_3, 'ward'),
('Kwakifua', @district_4_3, 'ward'),
('Kwemkabala', @district_4_3, 'ward'),
('Genge', @district_4_3, 'ward'),
('Tanganyika', @district_4_3, 'ward'),
('Mpapayu', @district_4_3, 'ward'),
('Mlingano', @district_4_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Tanga Urban', @region_4, 'district');

SET @district_4_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Central', @district_4_4, 'ward'),
('Majengo', @district_4_4, 'ward'),
('Nguvumali', @district_4_4, 'ward'),
('Chumbageni', @district_4_4, 'ward'),
('Ngamiani Kaskazini', @district_4_4, 'ward'),
('Ngamiani Kati', @district_4_4, 'ward'),
('Ngamiani Kusini', @district_4_4, 'ward'),
('Usagara', @district_4_4, 'ward'),
('Makorora', @district_4_4, 'ward'),
('Mzingani', @district_4_4, 'ward'),
('Msambweni', @district_4_4, 'ward'),
('Mwanzange', @district_4_4, 'ward'),
('Tangasisi', @district_4_4, 'ward'),
('Mabawa', @district_4_4, 'ward'),
('Tongoni', @district_4_4, 'ward'),
('Marungu', @district_4_4, 'ward'),
('Pongwe', @district_4_4, 'ward'),
('Maweni', @district_4_4, 'ward'),
('Duga', @district_4_4, 'ward'),
('Mzizima', @district_4_4, 'ward'),
('Mabokweni', @district_4_4, 'ward'),
('Kirare', @district_4_4, 'ward'),
('Kiomoni', @district_4_4, 'ward'),
('Chongoleani', @district_4_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Pangani', @region_4, 'district');

SET @district_4_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Pangani Mashariki', @district_4_5, 'ward'),
('Pangani Magharibi', @district_4_5, 'ward'),
('Bweni', @district_4_5, 'ward'),
('Madanga', @district_4_5, 'ward'),
('Kimang''a', @district_4_5, 'ward'),
('Bushiri', @district_4_5, 'ward'),
('Mwera', @district_4_5, 'ward'),
('Tungamaa', @district_4_5, 'ward'),
('Kipumbwi', @district_4_5, 'ward'),
('Mikunguni', @district_4_5, 'ward'),
('Ubangaa', @district_4_5, 'ward'),
('Mkwaja', @district_4_5, 'ward'),
('Mkalamo', @district_4_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Handeni', @region_4, 'district');

SET @district_4_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Segera', @district_4_6, 'ward'),
('Ndolwa', @district_4_6, 'ward'),
('Mazingara', @district_4_6, 'ward'),
('Kwamsisi', @district_4_6, 'ward'),
('Kwasunga', @district_4_6, 'ward'),
('Kwaluguru', @district_4_6, 'ward'),
('Kang''ata', @district_4_6, 'ward'),
('Kwamkonje', @district_4_6, 'ward'),
('Kwachaga', @district_4_6, 'ward'),
('Sindeni', @district_4_6, 'ward'),
('Misima', @district_4_6, 'ward'),
('Kiva', @district_4_6, 'ward'),
('Kabuku', @district_4_6, 'ward'),
('Kwamatuku', @district_4_6, 'ward'),
('Kwedizinga', @district_4_6, 'ward'),
('Mgambo', @district_4_6, 'ward'),
('Komkonga', @district_4_6, 'ward'),
('Mkata', @district_4_6, 'ward'),
('Kabuku ndani', @district_4_6, 'ward'),
('Kwamgwe', @district_4_6, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kilindi', @region_4, 'district');

SET @district_4_7 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Lwande', @district_4_7, 'ward'),
('Kikunde', @district_4_7, 'ward'),
('Songe', @district_4_7, 'ward'),
('Pagwi', @district_4_7, 'ward'),
('Masagalu', @district_4_7, 'ward'),
('Kimbe', @district_4_7, 'ward'),
('Kilindi', @district_4_7, 'ward'),
('Negero', @district_4_7, 'ward'),
('Mkindi', @district_4_7, 'ward'),
('Mvungwe', @district_4_7, 'ward'),
('Kwediboma', @district_4_7, 'ward'),
('Saunyi', @district_4_7, 'ward'),
('Jaila', @district_4_7, 'ward'),
('Msanja', @district_4_7, 'ward'),
('Kisangasa', @district_4_7, 'ward'),
('Mabalanga', @district_4_7, 'ward'),
('Kibirashi', @district_4_7, 'ward'),
('Kilwa', @district_4_7, 'ward'),
('Tunguli', @district_4_7, 'ward'),
('Kwekivu', @district_4_7, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mkinga', @region_4, 'district');

SET @district_4_8 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mwakijembe', @district_4_8, 'ward'),
('Mkinga', @district_4_8, 'ward'),
('Duga', @district_4_8, 'ward'),
('Moa', @district_4_8, 'ward'),
('Manza', @district_4_8, 'ward'),
('Kwale', @district_4_8, 'ward'),
('Mtimbwani', @district_4_8, 'ward'),
('Gombero', @district_4_8, 'ward'),
('Mhinduro', @district_4_8, 'ward'),
('Maramba', @district_4_8, 'ward'),
('Kigongoi', @district_4_8, 'ward'),
('Daluni', @district_4_8, 'ward'),
('Bosha', @district_4_8, 'ward'),
('Mapatano', @district_4_8, 'ward'),
('Bwiti', @district_4_8, 'ward'),
('Mnyenzani', @district_4_8, 'ward'),
('Doda', @district_4_8, 'ward'),
('Boma', @district_4_8, 'ward'),
('Parungu Kasera', @district_4_8, 'ward'),
('Mayomboni', @district_4_8, 'ward'),
('Sigaya', @district_4_8, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Korogwe Township Authority', @region_4, 'district');

SET @district_4_9 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Ngombezi', @district_4_9, 'ward'),
('Mtonga', @district_4_9, 'ward'),
('Magunga', @district_4_9, 'ward'),
('Kwamndolwa', @district_4_9, 'ward'),
('Old Korogwe', @district_4_9, 'ward'),
('Manundu', @district_4_9, 'ward'),
('Kilole', @district_4_9, 'ward'),
('Kwamsisi', @district_4_9, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Handeni Mji', @region_4, 'district');

SET @district_4_10 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Malezi', @district_4_10, 'ward'),
('Kwenjugo', @district_4_10, 'ward'),
('Mabanda', @district_4_10, 'ward'),
('Konje', @district_4_10, 'ward'),
('Mlimani', @district_4_10, 'ward'),
('Msasa', @district_4_10, 'ward'),
('Kideleko', @district_4_10, 'ward'),
('Kwamagome', @district_4_10, 'ward'),
('Vibaoni', @district_4_10, 'ward'),
('Chanika', @district_4_10, 'ward'),
('Mdoe', @district_4_10, 'ward'),
('Kwediyamba', @district_4_10, 'ward');


-- ============================================================
-- REGION: Morogoro
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Morogoro', NULL, 'region');

SET @region_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Kilosa', @region_5, 'district');

SET @district_5_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mabula', @district_5_1, 'ward'),
('Maguha', @district_5_1, 'ward'),
('Berega', @district_5_1, 'ward'),
('Magubike', @district_5_1, 'ward'),
('Mamboya', @district_5_1, 'ward'),
('Dumila', @district_5_1, 'ward'),
('Magole', @district_5_1, 'ward'),
('Msowero', @district_5_1, 'ward'),
('Rudewa', @district_5_1, 'ward'),
('Chanzulu', @district_5_1, 'ward'),
('Kimamba ''A''', @district_5_1, 'ward'),
('Kimamba '' B ''', @district_5_1, 'ward'),
('Mbumi', @district_5_1, 'ward'),
('Mkwatani', @district_5_1, 'ward'),
('Magomeni', @district_5_1, 'ward'),
('Kasiki', @district_5_1, 'ward'),
('Mabwerebwere', @district_5_1, 'ward'),
('Kilangali', @district_5_1, 'ward'),
('Mikumi', @district_5_1, 'ward'),
('Ruhembe', @district_5_1, 'ward'),
('Kidodi', @district_5_1, 'ward'),
('Vidunda', @district_5_1, 'ward'),
('Malolo', @district_5_1, 'ward'),
('Kisanga', @district_5_1, 'ward'),
('Uleling''ombe', @district_5_1, 'ward'),
('Ulaya', @district_5_1, 'ward'),
('Zombo', @district_5_1, 'ward'),
('Lumuma', @district_5_1, 'ward'),
('Masanze', @district_5_1, 'ward'),
('Lumbiji', @district_5_1, 'ward'),
('Kitete', @district_5_1, 'ward'),
('Madoto', @district_5_1, 'ward'),
('Tindiga', @district_5_1, 'ward'),
('Ruaha', @district_5_1, 'ward'),
('Kidete', @district_5_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Morogoro', @region_5, 'district');

SET @district_5_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kasanga', @district_5_2, 'ward'),
('Kolero', @district_5_2, 'ward'),
('Mvuha', @district_5_2, 'ward'),
('Selembala', @district_5_2, 'ward'),
('Bwaki la Chini', @district_5_2, 'ward'),
('Bwakila Juu', @district_5_2, 'ward'),
('Kisaki', @district_5_2, 'ward'),
('Mngazi', @district_5_2, 'ward'),
('Singisa', @district_5_2, 'ward'),
('Mkambarani', @district_5_2, 'ward'),
('Mikese', @district_5_2, 'ward'),
('Kidugalo', @district_5_2, 'ward'),
('Mkulazi', @district_5_2, 'ward'),
('Ngerengere', @district_5_2, 'ward'),
('Tununguo', @district_5_2, 'ward'),
('Kiroka', @district_5_2, 'ward'),
('Mkuyuni', @district_5_2, 'ward'),
('Tegetero', @district_5_2, 'ward'),
('Kibogwa', @district_5_2, 'ward'),
('Kibungo Juu', @district_5_2, 'ward'),
('Kisemu', @district_5_2, 'ward'),
('Lundi', @district_5_2, 'ward'),
('Mtombozi', @district_5_2, 'ward'),
('Tawa', @district_5_2, 'ward'),
('Matuli', @district_5_2, 'ward'),
('Gwata', @district_5_2, 'ward'),
('Konde', @district_5_2, 'ward'),
('Bungu', @district_5_2, 'ward'),
('Kinole', @district_5_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kilombero', @region_5, 'district');

SET @district_5_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kidatu', @district_5_3, 'ward'),
('Sanje', @district_5_3, 'ward'),
('Mkula', @district_5_3, 'ward'),
('Mang''ula', @district_5_3, 'ward'),
('Kisawasawa', @district_5_3, 'ward'),
('Kiberege', @district_5_3, 'ward'),
('Kibaoni', @district_5_3, 'ward'),
('Ifakara', @district_5_3, 'ward'),
('Lumemo', @district_5_3, 'ward'),
('Idete', @district_5_3, 'ward'),
('Mbingu', @district_5_3, 'ward'),
('Mofu', @district_5_3, 'ward'),
('Mchombe', @district_5_3, 'ward'),
('Chisano', @district_5_3, 'ward'),
('Mlimba', @district_5_3, 'ward'),
('Utengule', @district_5_3, 'ward'),
('Masagati', @district_5_3, 'ward'),
('Uchindile', @district_5_3, 'ward'),
('Chita', @district_5_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Ulanga', @region_5, 'district');

SET @district_5_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Minepa', @district_5_4, 'ward'),
('Lupiro', @district_5_4, 'ward'),
('Kichangani', @district_5_4, 'ward'),
('Msogezi', @district_5_4, 'ward'),
('Vigoi', @district_5_4, 'ward'),
('Mahenge', @district_5_4, 'ward'),
('Isongo', @district_5_4, 'ward'),
('Ruaha', @district_5_4, 'ward'),
('Chirombola', @district_5_4, 'ward'),
('Sali', @district_5_4, 'ward'),
('Euga', @district_5_4, 'ward'),
('Mwaya', @district_5_4, 'ward'),
('Lukande', @district_5_4, 'ward'),
('Mbuga', @district_5_4, 'ward'),
('Ilonga', @district_5_4, 'ward'),
('Kilosa kwa Mpepo', @district_5_4, 'ward'),
('Ngoheranga', @district_5_4, 'ward'),
('Biro', @district_5_4, 'ward'),
('Malinyi', @district_5_4, 'ward'),
('Sofi', @district_5_4, 'ward'),
('Usangule', @district_5_4, 'ward'),
('Mtimbira', @district_5_4, 'ward'),
('Itete', @district_5_4, 'ward'),
('Iragua', @district_5_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Morogoro Urban', @region_5, 'district');

SET @district_5_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Sabasaba', @district_5_5, 'ward'),
('Uwanja wa Taifa', @district_5_5, 'ward'),
('Kiwanja Cha Ndege', @district_5_5, 'ward'),
('Mji Mpya', @district_5_5, 'ward'),
('Kingo', @district_5_5, 'ward'),
('Mji Mkuu', @district_5_5, 'ward'),
('Sultan Area', @district_5_5, 'ward'),
('Mafiga', @district_5_5, 'ward'),
('Mazimbu', @district_5_5, 'ward'),
('Mwembesongo', @district_5_5, 'ward'),
('Kichangani', @district_5_5, 'ward'),
('Kilakala', @district_5_5, 'ward'),
('Boma', @district_5_5, 'ward'),
('Mlimani', @district_5_5, 'ward'),
('Mbuyuni', @district_5_5, 'ward'),
('Kingolwira', @district_5_5, 'ward'),
('Bigwa', @district_5_5, 'ward'),
('Mzinga', @district_5_5, 'ward'),
('Kihonda', @district_5_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mvomero', @region_5, 'district');

SET @district_5_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mvomero', @district_5_6, 'ward'),
('Hembeti', @district_5_6, 'ward'),
('Maskati', @district_5_6, 'ward'),
('Kibati', @district_5_6, 'ward'),
('Sungaji', @district_5_6, 'ward'),
('Mhonda', @district_5_6, 'ward'),
('Diongoya', @district_5_6, 'ward'),
('Mtibwa', @district_5_6, 'ward'),
('Kanga', @district_5_6, 'ward'),
('Bunduki', @district_5_6, 'ward'),
('Kikeo', @district_5_6, 'ward'),
('Langali', @district_5_6, 'ward'),
('Tchenzema', @district_5_6, 'ward'),
('Mzumbe', @district_5_6, 'ward'),
('Mlali', @district_5_6, 'ward'),
('Doma', @district_5_6, 'ward'),
('Melela', @district_5_6, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Gairo', @region_5, 'district');

SET @district_5_7 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Chakwale', @district_5_7, 'ward'),
('Iyogwe', @district_5_7, 'ward'),
('Idibo', @district_5_7, 'ward'),
('Kibedya', @district_5_7, 'ward'),
('Msingisi', @district_5_7, 'ward'),
('Gairo', @district_5_7, 'ward'),
('Rubeho', @district_5_7, 'ward'),
('Mandege', @district_5_7, 'ward'),
('Chagongwe', @district_5_7, 'ward'),
('Chanjale', @district_5_7, 'ward'),
('Nongwe', @district_5_7, 'ward');


-- ============================================================
-- REGION: Pwani
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Pwani', NULL, 'region');

SET @region_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Bagamoyo', @region_6, 'district');

SET @district_6_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kiwangwa', @district_6_1, 'ward'),
('Msata', @district_6_1, 'ward'),
('Miono', @district_6_1, 'ward'),
('Mkange', @district_6_1, 'ward'),
('Magomeni', @district_6_1, 'ward'),
('Dunda', @district_6_1, 'ward'),
('Kiromo', @district_6_1, 'ward'),
('Zinga', @district_6_1, 'ward'),
('Yombo', @district_6_1, 'ward'),
('Vigwaza', @district_6_1, 'ward'),
('Talawanda', @district_6_1, 'ward'),
('Bwilingu', @district_6_1, 'ward'),
('Lugoba', @district_6_1, 'ward'),
('Ubenazomozi', @district_6_1, 'ward'),
('Kibindu', @district_6_1, 'ward'),
('Fukayose', @district_6_1, 'ward'),
('Kerege', @district_6_1, 'ward'),
('Pera', @district_6_1, 'ward'),
('Msoga', @district_6_1, 'ward'),
('Kimange', @district_6_1, 'ward'),
('Mandera', @district_6_1, 'ward'),
('Mbwewe', @district_6_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kibaha', @region_6, 'district');

SET @district_6_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Gwata', @district_6_2, 'ward'),
('Dutumi', @district_6_2, 'ward'),
('Magindu', @district_6_2, 'ward'),
('Soga', @district_6_2, 'ward'),
('Kikongo', @district_6_2, 'ward'),
('Ruvu', @district_6_2, 'ward'),
('Mlandizi', @district_6_2, 'ward'),
('Kwala', @district_6_2, 'ward'),
('Kilangalanga', @district_6_2, 'ward'),
('Janga', @district_6_2, 'ward'),
('Bokomnemela', @district_6_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kisarawe', @region_6, 'district');

SET @district_6_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kisarawe', @district_6_3, 'ward'),
('Msimbu', @district_6_3, 'ward'),
('Masaki', @district_6_3, 'ward'),
('Kibuta', @district_6_3, 'ward'),
('Marumbo', @district_6_3, 'ward'),
('Maneromango', @district_6_3, 'ward'),
('Msanga', @district_6_3, 'ward'),
('Marui', @district_6_3, 'ward'),
('Cholesamvula', @district_6_3, 'ward'),
('Vikumbulu', @district_6_3, 'ward'),
('Mafizi', @district_6_3, 'ward'),
('Kurui', @district_6_3, 'ward'),
('Mzenga', @district_6_3, 'ward'),
('Vihingo', @district_6_3, 'ward'),
('Kiluvya', @district_6_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mkuranga', @region_6, 'district');

SET @district_6_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mkuranga', @district_6_4, 'ward'),
('Tambani', @district_6_4, 'ward'),
('Vikindu', @district_6_4, 'ward'),
('Mbezi', @district_6_4, 'ward'),
('Shungubweni', @district_6_4, 'ward'),
('Kisiju', @district_6_4, 'ward'),
('Magawa', @district_6_4, 'ward'),
('Kitomondo', @district_6_4, 'ward'),
('Lukanga', @district_6_4, 'ward'),
('Nyamato', @district_6_4, 'ward'),
('Kimanzichana', @district_6_4, 'ward'),
('Mkamba', @district_6_4, 'ward'),
('Panzuo', @district_6_4, 'ward'),
('Bupu', @district_6_4, 'ward'),
('Mwarusembe', @district_6_4, 'ward'),
('Vianzi', @district_6_4, 'ward'),
('Njia nne', @district_6_4, 'ward'),
('Kiparang''anda', @district_6_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Rufiji', @region_6, 'district');

SET @district_6_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Ikwiriri', @district_6_5, 'ward'),
('Mgomba', @district_6_5, 'ward'),
('Umwe', @district_6_5, 'ward'),
('Utete', @district_6_5, 'ward'),
('Mkongo', @district_6_5, 'ward'),
('Ngorongo', @district_6_5, 'ward'),
('Mwaseni', @district_6_5, 'ward'),
('Kibiti', @district_6_5, 'ward'),
('Bungu', @district_6_5, 'ward'),
('Mahege', @district_6_5, 'ward'),
('Mchukwi', @district_6_5, 'ward'),
('Chumbi', @district_6_5, 'ward'),
('Mbwara', @district_6_5, 'ward'),
('Mtunda', @district_6_5, 'ward'),
('Ruaruke', @district_6_5, 'ward'),
('Salale', @district_6_5, 'ward'),
('Mbuchi', @district_6_5, 'ward'),
('Kiongoroni', @district_6_5, 'ward'),
('Maparoni', @district_6_5, 'ward'),
('Chemchem', @district_6_5, 'ward'),
('Ngarambe', @district_6_5, 'ward'),
('Dimani', @district_6_5, 'ward'),
('Mtawanya', @district_6_5, 'ward'),
('Mjawa', @district_6_5, 'ward'),
('Mlanzi', @district_6_5, 'ward'),
('Mwambao', @district_6_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mafia', @region_6, 'district');

SET @district_6_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kanga', @district_6_6, 'ward'),
('Kirongwe', @district_6_6, 'ward'),
('Baleni', @district_6_6, 'ward'),
('Ndagoni', @district_6_6, 'ward'),
('Kilindoni', @district_6_6, 'ward'),
('Miburani', @district_6_6, 'ward'),
('Kiegeani', @district_6_6, 'ward'),
('Jibondo', @district_6_6, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kibaha Urban', @region_6, 'district');

SET @district_6_7 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Pangani', @district_6_7, 'ward'),
('Mailimoja', @district_6_7, 'ward'),
('Tumbi', @district_6_7, 'ward'),
('Picha ya Ndege', @district_6_7, 'ward'),
('Mkuza', @district_6_7, 'ward'),
('Kibaha', @district_6_7, 'ward'),
('Msangani', @district_6_7, 'ward'),
('Kongowe', @district_6_7, 'ward'),
('Misugusugu', @district_6_7, 'ward'),
('Visiga', @district_6_7, 'ward'),
('Mbwawa', @district_6_7, 'ward');


-- ============================================================
-- REGION: Dar-es-salaam
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Dar-es-salaam', NULL, 'region');

SET @region_7 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Kinondoni', @region_7, 'district');

SET @district_7_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Magomeni', @district_7_1, 'ward'),
('Makurumla', @district_7_1, 'ward'),
('Ndugumbi', @district_7_1, 'ward'),
('Tandale', @district_7_1, 'ward'),
('Mwananyamala', @district_7_1, 'ward'),
('Msasani', @district_7_1, 'ward'),
('Kinondoni', @district_7_1, 'ward'),
('Mzimuni', @district_7_1, 'ward'),
('Kigogo', @district_7_1, 'ward'),
('Mabibo', @district_7_1, 'ward'),
('Manzese', @district_7_1, 'ward'),
('Ubungo', @district_7_1, 'ward'),
('Kibamba', @district_7_1, 'ward'),
('Goba', @district_7_1, 'ward'),
('Kawe', @district_7_1, 'ward'),
('Kunduchi', @district_7_1, 'ward'),
('Mbweni', @district_7_1, 'ward'),
('Bunju', @district_7_1, 'ward'),
('Makuburi', @district_7_1, 'ward'),
('Mburahati', @district_7_1, 'ward'),
('Makumbusho', @district_7_1, 'ward'),
('Sinza', @district_7_1, 'ward'),
('Kijitonyama', @district_7_1, 'ward'),
('Kimara', @district_7_1, 'ward'),
('Mikocheni', @district_7_1, 'ward'),
('Mbezi', @district_7_1, 'ward'),
('Hananasifu', @district_7_1, 'ward'),
('Saranga', @district_7_1, 'ward'),
('Kwembe', @district_7_1, 'ward'),
('Msigani', @district_7_1, 'ward'),
('Mbezi Juu', @district_7_1, 'ward'),
('Makongo', @district_7_1, 'ward'),
('Mabwepande', @district_7_1, 'ward'),
('Wazo', @district_7_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Ilala', @region_7, 'district');

SET @district_7_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Ukonga', @district_7_2, 'ward'),
('Pugu', @district_7_2, 'ward'),
('Msongola', @district_7_2, 'ward'),
('Tabata', @district_7_2, 'ward'),
('Kinyerezi', @district_7_2, 'ward'),
('Ilala', @district_7_2, 'ward'),
('Mchikichini', @district_7_2, 'ward'),
('Vingunguti', @district_7_2, 'ward'),
('Kipawa', @district_7_2, 'ward'),
('Buguruni', @district_7_2, 'ward'),
('Kariakoo', @district_7_2, 'ward'),
('Jangwani', @district_7_2, 'ward'),
('Gerezani', @district_7_2, 'ward'),
('Kisutu', @district_7_2, 'ward'),
('Mchafukoge', @district_7_2, 'ward'),
('Upanga Mashariki', @district_7_2, 'ward'),
('Upanga Magharibi', @district_7_2, 'ward'),
('Kivukoni', @district_7_2, 'ward'),
('Kiwalani', @district_7_2, 'ward'),
('Segerea', @district_7_2, 'ward'),
('Kitunda', @district_7_2, 'ward'),
('Chanika', @district_7_2, 'ward'),
('Kivule', @district_7_2, 'ward'),
('Gongolamboto', @district_7_2, 'ward'),
('Majohe', @district_7_2, 'ward'),
('Kimanga', @district_7_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Temeke', @region_7, 'district');

SET @district_7_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kigamboni', @district_7_3, 'ward'),
('Vijibweni', @district_7_3, 'ward'),
('Kibada', @district_7_3, 'ward'),
('Kisarawe II', @district_7_3, 'ward'),
('Somangila', @district_7_3, 'ward'),
('Kimbiji', @district_7_3, 'ward'),
('Mbagala', @district_7_3, 'ward'),
('Chamazi', @district_7_3, 'ward'),
('Yombo Vituka', @district_7_3, 'ward'),
('Charambe', @district_7_3, 'ward'),
('Toangoma', @district_7_3, 'ward'),
('Miburani', @district_7_3, 'ward'),
('Temeke', @district_7_3, 'ward'),
('Mtoni', @district_7_3, 'ward'),
('Keko', @district_7_3, 'ward'),
('Kurasini', @district_7_3, 'ward'),
('Azimio', @district_7_3, 'ward'),
('Tandika', @district_7_3, 'ward'),
('Sandali', @district_7_3, 'ward'),
('Chang''ombe', @district_7_3, 'ward'),
('Mbagala Kuu', @district_7_3, 'ward'),
('Makangarawe', @district_7_3, 'ward'),
('Pemba Mnazi', @district_7_3, 'ward'),
('Mjimwema', @district_7_3, 'ward'),
('Tungi', @district_7_3, 'ward'),
('Kijichi', @district_7_3, 'ward'),
('Mianzini', @district_7_3, 'ward'),
('Kiburugwa', @district_7_3, 'ward'),
('Buza', @district_7_3, 'ward'),
('Kilakala', @district_7_3, 'ward');


-- ============================================================
-- REGION: Lindi
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Lindi', NULL, 'region');

SET @region_8 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Kilwa', @region_8, 'district');

SET @district_8_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Tingi', @district_8_1, 'ward'),
('Miteja', @district_8_1, 'ward'),
('Mingumbi', @district_8_1, 'ward'),
('Kinjumbi', @district_8_1, 'ward'),
('Chumo', @district_8_1, 'ward'),
('Kipatimu', @district_8_1, 'ward'),
('Kandawale', @district_8_1, 'ward'),
('Njinjo', @district_8_1, 'ward'),
('Mitole', @district_8_1, 'ward'),
('Miguruwe', @district_8_1, 'ward'),
('Likawage', @district_8_1, 'ward'),
('Nanjirinji', @district_8_1, 'ward'),
('Kirnjernje', @district_8_1, 'ward'),
('Mandawa', @district_8_1, 'ward'),
('Lihimalyao', @district_8_1, 'ward'),
('Pande', @district_8_1, 'ward'),
('Kikole', @district_8_1, 'ward'),
('Kivinjesingino', @district_8_1, 'ward'),
('Songosongo', @district_8_1, 'ward'),
('Masoko', @district_8_1, 'ward'),
('Kibata', @district_8_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Lindi', @region_8, 'district');

SET @district_8_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mipingo', @district_8_2, 'ward'),
('Kitomanga', @district_8_2, 'ward'),
('Mchinga', @district_8_2, 'ward'),
('Kilolambwani', @district_8_2, 'ward'),
('Kilangala', @district_8_2, 'ward'),
('Kiwalala', @district_8_2, 'ward'),
('Navanga', @district_8_2, 'ward'),
('Mnolela', @district_8_2, 'ward'),
('Sudi', @district_8_2, 'ward'),
('Nachunyu', @district_8_2, 'ward'),
('Mtama', @district_8_2, 'ward'),
('Nyangao', @district_8_2, 'ward'),
('Namupa', @district_8_2, 'ward'),
('Nyengedi', @district_8_2, 'ward'),
('Mtua', @district_8_2, 'ward'),
('Nahukahuka', @district_8_2, 'ward'),
('Nyangamara', @district_8_2, 'ward'),
('Mandwanga', @district_8_2, 'ward'),
('Mnara', @district_8_2, 'ward'),
('Chiponda', @district_8_2, 'ward'),
('Pangatena', @district_8_2, 'ward'),
('Longa', @district_8_2, 'ward'),
('Rutamba', @district_8_2, 'ward'),
('Milola', @district_8_2, 'ward'),
('Kiwawa', @district_8_2, 'ward'),
('Mtumbya', @district_8_2, 'ward'),
('Matimba', @district_8_2, 'ward'),
('Nangaru', @district_8_2, 'ward'),
('Majengo', @district_8_2, 'ward'),
('Namangale', @district_8_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Nachingwea', @region_8, 'district');

SET @district_8_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Nambambo', @district_8_3, 'ward'),
('Kilimanihewa', @district_8_3, 'ward'),
('Ruponda', @district_8_3, 'ward'),
('Minero Miembeni', @district_8_3, 'ward'),
('Namapwia', @district_8_3, 'ward'),
('Kipara Mnero', @district_8_3, 'ward'),
('Lionja', @district_8_3, 'ward'),
('Namikango', @district_8_3, 'ward'),
('Nditi', @district_8_3, 'ward'),
('Kilima Rondo', @district_8_3, 'ward'),
('Mbondo', @district_8_3, 'ward'),
('Kiegei', @district_8_3, 'ward'),
('Mkoka', @district_8_3, 'ward'),
('Chiola', @district_8_3, 'ward'),
('Mpiruka', @district_8_3, 'ward'),
('Nangowe', @district_8_3, 'ward'),
('Mkotokuyana', @district_8_3, 'ward'),
('Naipanga', @district_8_3, 'ward'),
('Stesheni', @district_8_3, 'ward'),
('Naipingo', @district_8_3, 'ward'),
('Mtua', @district_8_3, 'ward'),
('Minerongongo', @district_8_3, 'ward'),
('Matekwe', @district_8_3, 'ward'),
('Marambo', @district_8_3, 'ward'),
('Namatula', @district_8_3, 'ward'),
('Ndomoni', @district_8_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Liwale', @region_8, 'district');

SET @district_8_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Liwale Mjini', @district_8_4, 'ward'),
('Mihumo', @district_8_4, 'ward'),
('Ngongowele', @district_8_4, 'ward'),
('Mlembwe', @district_8_4, 'ward'),
('Makata', @district_8_4, 'ward'),
('Barikiwa', @district_8_4, 'ward'),
('Mkutano', @district_8_4, 'ward'),
('Mbaya', @district_8_4, 'ward'),
('Kimambi', @district_8_4, 'ward'),
('Kiangara', @district_8_4, 'ward'),
('Kibutuka', @district_8_4, 'ward'),
('Nangano', @district_8_4, 'ward'),
('Mpigamiti', @district_8_4, 'ward'),
('Mirui', @district_8_4, 'ward'),
('Liwale ''B''', @district_8_4, 'ward'),
('Mangirikiti', @district_8_4, 'ward'),
('Nangando', @district_8_4, 'ward'),
('Likongowele', @district_8_4, 'ward'),
('Kichonda', @district_8_4, 'ward'),
('Lilombe', @district_8_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Ruangwa', @region_8, 'district');

SET @district_8_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Ruangwa', @district_8_5, 'ward'),
('Mbekenyera', @district_8_5, 'ward'),
('Nkowe', @district_8_5, 'ward'),
('Malolo', @district_8_5, 'ward'),
('Luchelegwa', @district_8_5, 'ward'),
('Chienjele', @district_8_5, 'ward'),
('Namichiga', @district_8_5, 'ward'),
('Narung''ombe', @district_8_5, 'ward'),
('Makanjiro', @district_8_5, 'ward'),
('Likunja', @district_8_5, 'ward'),
('Mnacho', @district_8_5, 'ward'),
('Mandawa', @district_8_5, 'ward'),
('Nambilanje', @district_8_5, 'ward'),
('Chunyu', @district_8_5, 'ward'),
('Mandarawe', @district_8_5, 'ward'),
('Nachingwea', @district_8_5, 'ward'),
('Matambarale', @district_8_5, 'ward'),
('Chibula', @district_8_5, 'ward'),
('Nandagala', @district_8_5, 'ward'),
('Nanganga', @district_8_5, 'ward'),
('Chinongwe', @district_8_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Lindi Urban', @region_8, 'district');

SET @district_8_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Ndoro', @district_8_6, 'ward'),
('Makonde', @district_8_6, 'ward'),
('Mikumbi', @district_8_6, 'ward'),
('Mitandi', @district_8_6, 'ward'),
('Rahaleo', @district_8_6, 'ward'),
('Mwenge', @district_8_6, 'ward'),
('Matopeni', @district_8_6, 'ward'),
('Wailes', @district_8_6, 'ward'),
('Nachingwea', @district_8_6, 'ward'),
('Rasbura', @district_8_6, 'ward'),
('Mtanda', @district_8_6, 'ward'),
('Jamhuri', @district_8_6, 'ward'),
('Msinjahili', @district_8_6, 'ward'),
('Mingoyo', @district_8_6, 'ward'),
('Ng''apa', @district_8_6, 'ward'),
('Tandangongoro', @district_8_6, 'ward'),
('Chikonji', @district_8_6, 'ward'),
('Mbanja', @district_8_6, 'ward');


-- ============================================================
-- REGION: Mtwara
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Mtwara', NULL, 'region');

SET @region_9 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Mtwara', @region_9, 'district');

SET @district_9_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Madimba', @district_9_1, 'ward'),
('Ziwani', @district_9_1, 'ward'),
('Nanguruwe', @district_9_1, 'ward'),
('Mahurunga', @district_9_1, 'ward'),
('Kitaya', @district_9_1, 'ward'),
('Kiromba', @district_9_1, 'ward'),
('Njengwa', @district_9_1, 'ward'),
('Nitekela', @district_9_1, 'ward'),
('Nanyamba', @district_9_1, 'ward'),
('Mtiniko', @district_9_1, 'ward'),
('Dihimba', @district_9_1, 'ward'),
('Mnima', @district_9_1, 'ward'),
('Kitere', @district_9_1, 'ward'),
('Ndumbwe', @district_9_1, 'ward'),
('Mayanga', @district_9_1, 'ward'),
('Naumbu', @district_9_1, 'ward'),
('Chawi', @district_9_1, 'ward'),
('Namtumbuka', @district_9_1, 'ward'),
('Libobe', @district_9_1, 'ward'),
('Mpapura', @district_9_1, 'ward'),
('Muungano', @district_9_1, 'ward'),
('Mbawala', @district_9_1, 'ward'),
('Msanga Mkuu', @district_9_1, 'ward'),
('Tangazo', @district_9_1, 'ward'),
('Kiyanga', @district_9_1, 'ward'),
('Milango Minne', @district_9_1, 'ward'),
('Mbembaleo', @district_9_1, 'ward'),
('Mtimbwilimbwi', @district_9_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Newala', @region_9, 'district');

SET @district_9_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Luchindu', @district_9_2, 'ward'),
('Makote', @district_9_2, 'ward'),
('Nanguruwe', @district_9_2, 'ward'),
('Mkunya', @district_9_2, 'ward'),
('Mcholi I', @district_9_2, 'ward'),
('Namiyonga', @district_9_2, 'ward'),
('Mnekachi', @district_9_2, 'ward'),
('Chitekete', @district_9_2, 'ward'),
('Mnyambe', @district_9_2, 'ward'),
('Chilangala', @district_9_2, 'ward'),
('Mkoma II', @district_9_2, 'ward'),
('Kitangari', @district_9_2, 'ward'),
('Malatu', @district_9_2, 'ward'),
('Mchemo', @district_9_2, 'ward'),
('Mtopwa', @district_9_2, 'ward'),
('Chiwonga', @district_9_2, 'ward'),
('Maputi', @district_9_2, 'ward'),
('Makukwe', @district_9_2, 'ward'),
('Mkwedu', @district_9_2, 'ward'),
('Mcholi II', @district_9_2, 'ward'),
('Mtonya', @district_9_2, 'ward'),
('Makonga', @district_9_2, 'ward'),
('Nakahako', @district_9_2, 'ward'),
('Chihangu', @district_9_2, 'ward'),
('Nambali', @district_9_2, 'ward'),
('Nandwahi', @district_9_2, 'ward'),
('Mtunguru', @district_9_2, 'ward'),
('Mdimba MpeleMpele', @district_9_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Masasi', @region_9, 'district');

SET @district_9_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Namatutwe', @district_9_3, 'ward'),
('Namajani', @district_9_3, 'ward'),
('Mlingula', @district_9_3, 'ward'),
('Chiwale', @district_9_3, 'ward'),
('Lukuledi', @district_9_3, 'ward'),
('Mpanyani', @district_9_3, 'ward'),
('Chigugu', @district_9_3, 'ward'),
('Mwena', @district_9_3, 'ward'),
('Nanganga', @district_9_3, 'ward'),
('Chiwata', @district_9_3, 'ward'),
('Mkundi', @district_9_3, 'ward'),
('Mkululu', @district_9_3, 'ward'),
('Nanjota', @district_9_3, 'ward'),
('Chiungutwa', @district_9_3, 'ward'),
('Mbuyuni', @district_9_3, 'ward'),
('Lipumburu', @district_9_3, 'ward'),
('Sindano', @district_9_3, 'ward'),
('Namalenga', @district_9_3, 'ward'),
('Mchauru', @district_9_3, 'ward'),
('Mnavira', @district_9_3, 'ward'),
('Chikolopola', @district_9_3, 'ward'),
('Lulindi', @district_9_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Tandahimba', @region_9, 'district');

SET @district_9_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Tandahimba', @district_9_4, 'ward'),
('Kitama', @district_9_4, 'ward'),
('Michenjele', @district_9_4, 'ward'),
('Mihambwe', @district_9_4, 'ward'),
('Mkoreha', @district_9_4, 'ward'),
('Maundo', @district_9_4, 'ward'),
('Naputa', @district_9_4, 'ward'),
('Namikupa', @district_9_4, 'ward'),
('Mnyawa', @district_9_4, 'ward'),
('Mkundi', @district_9_4, 'ward'),
('Lukokoda', @district_9_4, 'ward'),
('Mahuta', @district_9_4, 'ward'),
('Nanhyanga', @district_9_4, 'ward'),
('Chingungwe', @district_9_4, 'ward'),
('Mdimba Mnyoma', @district_9_4, 'ward'),
('Milongodi', @district_9_4, 'ward'),
('Lyenje', @district_9_4, 'ward'),
('Chaume', @district_9_4, 'ward'),
('Mkonjowano', @district_9_4, 'ward'),
('Luagala', @district_9_4, 'ward'),
('Ngunja', @district_9_4, 'ward'),
('Mkwiti', @district_9_4, 'ward'),
('Litehu', @district_9_4, 'ward'),
('Nambahu', @district_9_4, 'ward'),
('Miuta', @district_9_4, 'ward'),
('Kwanyama', @district_9_4, 'ward'),
('Mchichira', @district_9_4, 'ward'),
('Chikongola', @district_9_4, 'ward'),
('Dinduma', @district_9_4, 'ward'),
('Mdumbwe', @district_9_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mtwara Urban', @region_9, 'district');

SET @district_9_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Majengo', @district_9_5, 'ward'),
('Chikongola', @district_9_5, 'ward'),
('Likombe', @district_9_5, 'ward'),
('Railway', @district_9_5, 'ward'),
('Shangani', @district_9_5, 'ward'),
('Vigaeni', @district_9_5, 'ward'),
('Chuno', @district_9_5, 'ward'),
('Jangwani', @district_9_5, 'ward'),
('Kisungule', @district_9_5, 'ward'),
('Mitengo', @district_9_5, 'ward'),
('Mtonya', @district_9_5, 'ward'),
('Ufukoni', @district_9_5, 'ward'),
('Magengeni', @district_9_5, 'ward'),
('Rahaleo', @district_9_5, 'ward'),
('Naliendele', @district_9_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Nanyumbu', @region_9, 'district');

SET @district_9_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mangaka', @district_9_6, 'ward'),
('Nangomba', @district_9_6, 'ward'),
('Lumesule', @district_9_6, 'ward'),
('Likokona', @district_9_6, 'ward'),
('Sengenya', @district_9_6, 'ward'),
('Mnanje', @district_9_6, 'ward'),
('Mikangaula', @district_9_6, 'ward'),
('Maratani', @district_9_6, 'ward'),
('Nandete', @district_9_6, 'ward'),
('Mkonona', @district_9_6, 'ward'),
('Nanyumbu', @district_9_6, 'ward'),
('Masuguru', @district_9_6, 'ward'),
('Chipuputa', @district_9_6, 'ward'),
('Napacho', @district_9_6, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Masasi  Township Authority', @region_9, 'district');

SET @district_9_7 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mwenge Mtapika', @district_9_7, 'ward'),
('Temeke', @district_9_7, 'ward'),
('Mkuti', @district_9_7, 'ward'),
('Mpindimbi', @district_9_7, 'ward'),
('Nyasa', @district_9_7, 'ward'),
('Marika', @district_9_7, 'ward'),
('Mkomaindo', @district_9_7, 'ward'),
('Mtandi', @district_9_7, 'ward'),
('Jida', @district_9_7, 'ward'),
('Migongo', @district_9_7, 'ward'),
('Mwenge', @district_9_7, 'ward'),
('Sululu', @district_9_7, 'ward');


-- ============================================================
-- REGION: Ruvuma
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Ruvuma', NULL, 'region');

SET @region_10 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Tunduru', @region_10, 'district');

SET @district_10_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kalulu', @district_10_1, 'ward'),
('Ligunga', @district_10_1, 'ward'),
('Mlingoti  Mashariki', @district_10_1, 'ward'),
('Mindu', @district_10_1, 'ward'),
('Ngapa', @district_10_1, 'ward'),
('Nakapanya', @district_10_1, 'ward'),
('Muhuwesi', @district_10_1, 'ward'),
('Tuwemacho', @district_10_1, 'ward'),
('Ligoma', @district_10_1, 'ward'),
('Misechela', @district_10_1, 'ward'),
('Namasakata', @district_10_1, 'ward'),
('Mtina', @district_10_1, 'ward'),
('Mchesi', @district_10_1, 'ward'),
('Lukumbule', @district_10_1, 'ward'),
('Nalasi-Magharibi', @district_10_1, 'ward'),
('Mchoteka', @district_10_1, 'ward'),
('Marumba', @district_10_1, 'ward'),
('Mbesa', @district_10_1, 'ward'),
('Mlingoti  Magharibi', @district_10_1, 'ward'),
('Kidodoma', @district_10_1, 'ward'),
('Nandembo', @district_10_1, 'ward'),
('Nampungu', @district_10_1, 'ward'),
('Matemanga', @district_10_1, 'ward'),
('Namwinyu', @district_10_1, 'ward'),
('Mbati', @district_10_1, 'ward'),
('Nalasi Mashariki', @district_10_1, 'ward'),
('Mchuluka', @district_10_1, 'ward'),
('Namiungo', @district_10_1, 'ward'),
('Jakika', @district_10_1, 'ward'),
('Masonya', @district_10_1, 'ward'),
('Sisikwasisi', @district_10_1, 'ward'),
('Mchangani', @district_10_1, 'ward'),
('Majengo', @district_10_1, 'ward'),
('Nanjoka', @district_10_1, 'ward'),
('Nakayaya', @district_10_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Songea', @region_10, 'district');

SET @district_10_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Wino', @district_10_2, 'ward'),
('Ndongosi', @district_10_2, 'ward'),
('Matumbi', @district_10_2, 'ward'),
('Mpandangino', @district_10_2, 'ward'),
('Gumbiro', @district_10_2, 'ward'),
('Mpitimbi', @district_10_2, 'ward'),
('Muhuruku', @district_10_2, 'ward'),
('Magagura', @district_10_2, 'ward'),
('Litisha', @district_10_2, 'ward'),
('Kilagano', @district_10_2, 'ward'),
('Maposeni', @district_10_2, 'ward'),
('Peramiho', @district_10_2, 'ward'),
('Mahanje', @district_10_2, 'ward'),
('Matimira', @district_10_2, 'ward'),
('Mtyangimbole', @district_10_2, 'ward'),
('Mkongotema', @district_10_2, 'ward'),
('Mbinga Mhalule', @district_10_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mbinga', @region_10, 'district');

SET @district_10_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Ruanda', @district_10_3, 'ward'),
('Litumbandyosi', @district_10_3, 'ward'),
('Kigonsera', @district_10_3, 'ward'),
('Kihangi Mahuka', @district_10_3, 'ward'),
('Utiri', @district_10_3, 'ward'),
('Mbinga Mjini', @district_10_3, 'ward'),
('Kilimani', @district_10_3, 'ward'),
('Mbangamao', @district_10_3, 'ward'),
('Kihungu', @district_10_3, 'ward'),
('Kikolo', @district_10_3, 'ward'),
('Kambarage', @district_10_3, 'ward'),
('Mapera', @district_10_3, 'ward'),
('Kipapa', @district_10_3, 'ward'),
('Kipololo', @district_10_3, 'ward'),
('Nyoni', @district_10_3, 'ward'),
('Luwaita', @district_10_3, 'ward'),
('Maguu', @district_10_3, 'ward'),
('Kitumbalomo', @district_10_3, 'ward'),
('Mkako', @district_10_3, 'ward'),
('Mikalanga', @district_10_3, 'ward'),
('Langiro', @district_10_3, 'ward'),
('Mbuji', @district_10_3, 'ward'),
('Litembo', @district_10_3, 'ward'),
('Ngima', @district_10_3, 'ward'),
('Myangayanga', @district_10_3, 'ward'),
('Mkumbi', @district_10_3, 'ward'),
('Linda', @district_10_3, 'ward'),
('Matiri', @district_10_3, 'ward'),
('Ukata', @district_10_3, 'ward'),
('Kitanda', @district_10_3, 'ward'),
('Kitura', @district_10_3, 'ward'),
('Namswea', @district_10_3, 'ward'),
('Mpepai', @district_10_3, 'ward'),
('Mpapa', @district_10_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Songea Urban', @region_10, 'district');

SET @district_10_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mjini', @district_10_4, 'ward'),
('Majengo', @district_10_4, 'ward'),
('Misufini', @district_10_4, 'ward'),
('Mfaranyaki', @district_10_4, 'ward'),
('Lizaboni', @district_10_4, 'ward'),
('Matarawe', @district_10_4, 'ward'),
('Bombambili', @district_10_4, 'ward'),
('Matogoro', @district_10_4, 'ward'),
('Ruvuma', @district_10_4, 'ward'),
('Subira', @district_10_4, 'ward'),
('Ruhuwiko', @district_10_4, 'ward'),
('Mshangano', @district_10_4, 'ward'),
('Mletele', @district_10_4, 'ward'),
('Seedfarm', @district_10_4, 'ward'),
('Tanga', @district_10_4, 'ward'),
('Msamala', @district_10_4, 'ward'),
('Mwengemshindo', @district_10_4, 'ward'),
('Mjimwema', @district_10_4, 'ward'),
('Mateka', @district_10_4, 'ward'),
('Ndilimalitembo', @district_10_4, 'ward'),
('Lilambo', @district_10_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Namtumbo', @region_10, 'district');

SET @district_10_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Rwinga', @district_10_5, 'ward'),
('Mkongo', @district_10_5, 'ward'),
('Ligera', @district_10_5, 'ward'),
('Lusewa', @district_10_5, 'ward'),
('Magazini', @district_10_5, 'ward'),
('Msindo', @district_10_5, 'ward'),
('Luchili', @district_10_5, 'ward'),
('Namabengo', @district_10_5, 'ward'),
('Kitanda', @district_10_5, 'ward'),
('Luegu', @district_10_5, 'ward'),
('Namtumbo', @district_10_5, 'ward'),
('Mgombasi', @district_10_5, 'ward'),
('Litola', @district_10_5, 'ward'),
('Likuyuseka', @district_10_5, 'ward'),
('Mputa', @district_10_5, 'ward'),
('Hanga', @district_10_5, 'ward'),
('Limamu', @district_10_5, 'ward'),
('Mchomoro', @district_10_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Nyasa', @region_10, 'district');

SET @district_10_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Liparamba', @district_10_6, 'ward'),
('Tingi', @district_10_6, 'ward'),
('Chiwanda', @district_10_6, 'ward'),
('Mtipwili', @district_10_6, 'ward'),
('Kingerikiti', @district_10_6, 'ward'),
('Luhangarasi', @district_10_6, 'ward'),
('Kilosa', @district_10_6, 'ward'),
('Mbambabay', @district_10_6, 'ward'),
('Lipingo', @district_10_6, 'ward'),
('Liuli', @district_10_6, 'ward'),
('Kihagara', @district_10_6, 'ward'),
('Ngumbo', @district_10_6, 'ward'),
('Liwundi', @district_10_6, 'ward'),
('Mbaha', @district_10_6, 'ward'),
('Lituhi', @district_10_6, 'ward');


-- ============================================================
-- REGION: Iringa
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Iringa', NULL, 'region');

SET @region_11 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Iringa', @region_11, 'district');

SET @district_11_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kalenga', @district_11_1, 'ward'),
('Kiwere', @district_11_1, 'ward'),
('Nzihi', @district_11_1, 'ward'),
('Ulanda', @district_11_1, 'ward'),
('Mseke', @district_11_1, 'ward'),
('Maguliwa', @district_11_1, 'ward'),
('Mgama', @district_11_1, 'ward'),
('Ifunda', @district_11_1, 'ward'),
('Lumuli', @district_11_1, 'ward'),
('Maboga', @district_11_1, 'ward'),
('Wasa', @district_11_1, 'ward'),
('Mahuninga', @district_11_1, 'ward'),
('Idodi', @district_11_1, 'ward'),
('Mlowa', @district_11_1, 'ward'),
('Itunundu', @district_11_1, 'ward'),
('Ilolo Mpya', @district_11_1, 'ward'),
('Nduli', @district_11_1, 'ward'),
('Kihorogota', @district_11_1, 'ward'),
('Izazi', @district_11_1, 'ward'),
('Malenga Makali', @district_11_1, 'ward'),
('Nyang''oro', @district_11_1, 'ward'),
('Luhota', @district_11_1, 'ward'),
('Lyamgungwe', @district_11_1, 'ward'),
('Mlenge', @district_11_1, 'ward'),
('Migoli', @district_11_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mufindi', @region_11, 'district');

SET @district_11_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kiyowela', @district_11_2, 'ward'),
('Makungu', @district_11_2, 'ward'),
('Mninga', @district_11_2, 'ward'),
('Kasanga', @district_11_2, 'ward'),
('Igowole', @district_11_2, 'ward'),
('Mtambula', @district_11_2, 'ward'),
('Itandula', @district_11_2, 'ward'),
('Mbalamaziwa', @district_11_2, 'ward'),
('Idunda', @district_11_2, 'ward'),
('Malangali', @district_11_2, 'ward'),
('Nyololo', @district_11_2, 'ward'),
('Ihowanza', @district_11_2, 'ward'),
('Ikweha', @district_11_2, 'ward'),
('Sadani', @district_11_2, 'ward'),
('Igombavanu', @district_11_2, 'ward'),
('Bumilayinga', @district_11_2, 'ward'),
('Mtwango', @district_11_2, 'ward'),
('Isalavanu', @district_11_2, 'ward'),
('Rungemba', @district_11_2, 'ward'),
('Ifwagi', @district_11_2, 'ward'),
('Mdabulo', @district_11_2, 'ward'),
('Ihalimba', @district_11_2, 'ward'),
('Kibengu', @district_11_2, 'ward'),
('Mapanda', @district_11_2, 'ward'),
('Mpanga', @district_11_2, 'ward'),
('Ihanu', @district_11_2, 'ward'),
('Luhanga', @district_11_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Iringa Urban', @region_11, 'district');

SET @district_11_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kihesa', @district_11_3, 'ward'),
('Mtwivila', @district_11_3, 'ward'),
('Gangilonga', @district_11_3, 'ward'),
('Kitanzini', @district_11_3, 'ward'),
('Ruaha', @district_11_3, 'ward'),
('Mshindo', @district_11_3, 'ward'),
('Mivinjeni', @district_11_3, 'ward'),
('Mlandege', @district_11_3, 'ward'),
('Mwangata', @district_11_3, 'ward'),
('Kwakilosa', @district_11_3, 'ward'),
('Makorongoni', @district_11_3, 'ward'),
('Ilala', @district_11_3, 'ward'),
('Mkwawa', @district_11_3, 'ward'),
('Kitwiru', @district_11_3, 'ward'),
('Isakalilo', @district_11_3, 'ward'),
('Nduli', @district_11_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kilolo', @region_11, 'district');

SET @district_11_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Image', @district_11_4, 'ward'),
('Irole', @district_11_4, 'ward'),
('Ilula', @district_11_4, 'ward'),
('Uhambingeto', @district_11_4, 'ward'),
('Udekwa', @district_11_4, 'ward'),
('Mahenge', @district_11_4, 'ward'),
('Mtitu', @district_11_4, 'ward'),
('Dabaga', @district_11_4, 'ward'),
('Ukumbi', @district_11_4, 'ward'),
('Ukwega', @district_11_4, 'ward'),
('Boma la Ng''ombe', @district_11_4, 'ward'),
('Idete', @district_11_4, 'ward'),
('Masisiwe', @district_11_4, 'ward'),
('Ng''uruhe', @district_11_4, 'ward'),
('Ng''ang''ange', @district_11_4, 'ward'),
('Ihimbo', @district_11_4, 'ward'),
('Lugalo', @district_11_4, 'ward'),
('Nyalumbu', @district_11_4, 'ward'),
('Mlafu', @district_11_4, 'ward'),
('Ibumu', @district_11_4, 'ward'),
('Ruaha Mbuyuni', @district_11_4, 'ward'),
('Kimala', @district_11_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mafinga Township Authority', @region_11, 'district');

SET @district_11_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Sao Hill', @district_11_5, 'ward'),
('Boma', @district_11_5, 'ward'),
('Kinyanambo', @district_11_5, 'ward');


-- ============================================================
-- REGION: Mbeya
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Mbeya', NULL, 'region');

SET @region_12 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Chunya', @region_12, 'district');

SET @district_12_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kambikatoto', @district_12_1, 'ward'),
('Mafyeko', @district_12_1, 'ward'),
('Matwiga', @district_12_1, 'ward'),
('Mtanila', @district_12_1, 'ward'),
('Lupatingatinga', @district_12_1, 'ward'),
('Luwalaje', @district_12_1, 'ward'),
('Sangambi', @district_12_1, 'ward'),
('Itewe', @district_12_1, 'ward'),
('Chokaa', @district_12_1, 'ward'),
('Mbugani', @district_12_1, 'ward'),
('Chalangwa', @district_12_1, 'ward'),
('Ifumbo', @district_12_1, 'ward'),
('Mamba', @district_12_1, 'ward'),
('Mkola', @district_12_1, 'ward'),
('Makongorosi', @district_12_1, 'ward'),
('Matundasi', @district_12_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mbeya', @region_12, 'district');

SET @district_12_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Ihango', @district_12_2, 'ward'),
('Ulenje', @district_12_2, 'ward'),
('Tembela', @district_12_2, 'ward'),
('Ijombe', @district_12_2, 'ward'),
('Santilya', @district_12_2, 'ward'),
('Ilembo', @district_12_2, 'ward'),
('Iwiji', @district_12_2, 'ward'),
('Isuto', @district_12_2, 'ward'),
('Igale', @district_12_2, 'ward'),
('Iwindi', @district_12_2, 'ward'),
('Utengule Usongwe', @district_12_2, 'ward'),
('Mshewe', @district_12_2, 'ward'),
('Ikukwa', @district_12_2, 'ward'),
('Iyunga Mapinduzi', @district_12_2, 'ward'),
('Bonde la Songwe', @district_12_2, 'ward'),
('Inyala', @district_12_2, 'ward'),
('Ilungu', @district_12_2, 'ward'),
('Maendeleo', @district_12_2, 'ward'),
('Swaya', @district_12_2, 'ward'),
('Masoko', @district_12_2, 'ward'),
('Itawa', @district_12_2, 'ward'),
('Nsalala', @district_12_2, 'ward'),
('Lwanjiro', @district_12_2, 'ward'),
('Itewe', @district_12_2, 'ward'),
('Igoma', @district_12_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kyela', @region_12, 'district');

SET @district_12_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Lusungo', @district_12_3, 'ward'),
('Makwale', @district_12_3, 'ward'),
('Matema', @district_12_3, 'ward'),
('Mwaya', @district_12_3, 'ward'),
('Ndobo', @district_12_3, 'ward'),
('Kajunjumele', @district_12_3, 'ward'),
('Bujonde', @district_12_3, 'ward'),
('Ikolo', @district_12_3, 'ward'),
('Katumbasongwe', @district_12_3, 'ward'),
('Ngana', @district_12_3, 'ward'),
('Busale', @district_12_3, 'ward'),
('Ipande', @district_12_3, 'ward'),
('Ikama', @district_12_3, 'ward'),
('Ipinda', @district_12_3, 'ward'),
('Ngonga', @district_12_3, 'ward'),
('Ikimba', @district_12_3, 'ward'),
('Itope', @district_12_3, 'ward'),
('Muungano', @district_12_3, 'ward'),
('Talatala', @district_12_3, 'ward'),
('Kyela', @district_12_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Rungwe', @region_12, 'district');

SET @district_12_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Swaya', @district_12_4, 'ward'),
('Masebe', @district_12_4, 'ward'),
('Suma', @district_12_4, 'ward'),
('Kandete', @district_12_4, 'ward'),
('Luteba', @district_12_4, 'ward'),
('Mpombo', @district_12_4, 'ward'),
('Isange', @district_12_4, 'ward'),
('Kabula', @district_12_4, 'ward'),
('Lwangwa', @district_12_4, 'ward'),
('Lufilyo', @district_12_4, 'ward'),
('Itete', @district_12_4, 'ward'),
('Kisegese', @district_12_4, 'ward'),
('Lupata', @district_12_4, 'ward'),
('Kambasegela', @district_12_4, 'ward'),
('Masukulu', @district_12_4, 'ward'),
('Kisiba', @district_12_4, 'ward'),
('Masoko', @district_12_4, 'ward'),
('Bujela', @district_12_4, 'ward'),
('Ilima', @district_12_4, 'ward'),
('Kisondela', @district_12_4, 'ward'),
('Ikuti', @district_12_4, 'ward'),
('Malindo', @district_12_4, 'ward'),
('Mpuguso', @district_12_4, 'ward'),
('Kikole', @district_12_4, 'ward'),
('Lufingo', @district_12_4, 'ward'),
('Nkunga', @district_12_4, 'ward'),
('Kyimo', @district_12_4, 'ward'),
('Kinyala', @district_12_4, 'ward'),
('Kiwira', @district_12_4, 'ward'),
('Isongole', @district_12_4, 'ward'),
('Ikama', @district_12_4, 'ward'),
('Ibighi', @district_12_4, 'ward'),
('Bagamoyo', @district_12_4, 'ward'),
('Kawetele', @district_12_4, 'ward'),
('Bulyaga', @district_12_4, 'ward'),
('Msasani', @district_12_4, 'ward'),
('Makandana', @district_12_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mbarali', @region_12, 'district');

SET @district_12_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Luhanga', @district_12_5, 'ward'),
('Madibira', @district_12_5, 'ward'),
('Mawindi', @district_12_5, 'ward'),
('Ihahi', @district_12_5, 'ward'),
('Mapogoro', @district_12_5, 'ward'),
('Chimala', @district_12_5, 'ward'),
('Utengule Usangu', @district_12_5, 'ward'),
('Ruiwa', @district_12_5, 'ward'),
('Mahongole', @district_12_5, 'ward'),
('Ubaruku', @district_12_5, 'ward'),
('Igurusi', @district_12_5, 'ward'),
('Kongolo', @district_12_5, 'ward'),
('Mwatenga', @district_12_5, 'ward'),
('Imalilosongwe', @district_12_5, 'ward'),
('Igava', @district_12_5, 'ward'),
('Ipwani', @district_12_5, 'ward'),
('Itambaleo', @district_12_5, 'ward'),
('Miyombweni', @district_12_5, 'ward'),
('Rujewa', @district_12_5, 'ward'),
('Lugelele', @district_12_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mbeya Urban', @region_12, 'district');

SET @district_12_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Sisimba', @district_12_6, 'ward'),
('Isanga', @district_12_6, 'ward'),
('Iganzo', @district_12_6, 'ward'),
('Mwansekwa', @district_12_6, 'ward'),
('Itagano', @district_12_6, 'ward'),
('Itezi', @district_12_6, 'ward'),
('Nsalaga', @district_12_6, 'ward'),
('Igawilo', @district_12_6, 'ward'),
('Iganjo', @district_12_6, 'ward'),
('Uyole', @district_12_6, 'ward'),
('Iduda', @district_12_6, 'ward'),
('Mwasanga', @district_12_6, 'ward'),
('Tembela', @district_12_6, 'ward'),
('Ilomba', @district_12_6, 'ward'),
('Mwakibete', @district_12_6, 'ward'),
('Ilemi', @district_12_6, 'ward'),
('Isyesye', @district_12_6, 'ward'),
('Ruanda', @district_12_6, 'ward'),
('Iyela', @district_12_6, 'ward'),
('Sinde', @district_12_6, 'ward'),
('Maanga', @district_12_6, 'ward'),
('Mbalizi RD', @district_12_6, 'ward'),
('Forest', @district_12_6, 'ward'),
('Mabatini', @district_12_6, 'ward'),
('Nzovwe', @district_12_6, 'ward'),
('Kalobe', @district_12_6, 'ward'),
('Iyunga', @district_12_6, 'ward'),
('Iwambi', @district_12_6, 'ward'),
('Itende', @district_12_6, 'ward'),
('Iziwa', @district_12_6, 'ward'),
('Nsoho', @district_12_6, 'ward'),
('Majengo', @district_12_6, 'ward'),
('Ghana', @district_12_6, 'ward'),
('Nonde', @district_12_6, 'ward'),
('Itiji', @district_12_6, 'ward'),
('Maendeleo', @district_12_6, 'ward');


-- ============================================================
-- REGION: Songwe
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Songwe', NULL, 'region');

SET @region_13 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Songwe', @region_13, 'district');

SET @district_13_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kanga', @district_13_1, 'ward'),
('Galula', @district_13_1, 'ward'),
('Mbuyuni', @district_13_1, 'ward'),
('Totowe', @district_13_1, 'ward'),
('Namkukwe', @district_13_1, 'ward'),
('Mkwajuni', @district_13_1, 'ward'),
('Mbangala', @district_13_1, 'ward'),
('Kapalala', @district_13_1, 'ward'),
('Gua', @district_13_1, 'ward'),
('Ngwala', @district_13_1, 'ward'),
('Ifyenkenya', @district_13_1, 'ward'),
('Magamba', @district_13_1, 'ward'),
('Saza', @district_13_1, 'ward'),
('Mwambani', @district_13_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Ileje', @region_13, 'district');

SET @district_13_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Itumba', @district_13_2, 'ward'),
('Itale', @district_13_2, 'ward'),
('Ibaba', @district_13_2, 'ward'),
('Ndola', @district_13_2, 'ward'),
('Luswisi', @district_13_2, 'ward'),
('Ngulilo', @district_13_2, 'ward'),
('Lubanda', @district_13_2, 'ward'),
('Ngulugulu', @district_13_2, 'ward'),
('Sange', @district_13_2, 'ward'),
('Ikinga', @district_13_2, 'ward'),
('Kafule', @district_13_2, 'ward'),
('Malangali', @district_13_2, 'ward'),
('Bupigu', @district_13_2, 'ward'),
('Isongole', @district_13_2, 'ward'),
('Chitete', @district_13_2, 'ward'),
('Mbebe', @district_13_2, 'ward'),
('Mlale', @district_13_2, 'ward'),
('Kalembo', @district_13_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mbozi', @region_13, 'district');

SET @district_13_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Ihanda', @district_13_3, 'ward'),
('Bara', @district_13_3, 'ward'),
('Nanyala', @district_13_3, 'ward'),
('Nambinzo', @district_13_3, 'ward'),
('Itaka', @district_13_3, 'ward'),
('Isansa', @district_13_3, 'ward'),
('Ruanda', @district_13_3, 'ward'),
('Iyula', @district_13_3, 'ward'),
('Nyambili', @district_13_3, 'ward'),
('Mlangali', @district_13_3, 'ward'),
('Myovizi', @district_13_3, 'ward'),
('Igamba', @district_13_3, 'ward'),
('Halungu', @district_13_3, 'ward'),
('Msia', @district_13_3, 'ward'),
('Mlowo', @district_13_3, 'ward'),
('Ipunga', @district_13_3, 'ward'),
('Isandula', @district_13_3, 'ward'),
('Vwawa', @district_13_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Momba', @region_13, 'district');

SET @district_13_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Chilulumo', @district_13_4, 'ward'),
('Kamsamba', @district_13_4, 'ward'),
('Ivuna', @district_13_4, 'ward'),
('Mpapa', @district_13_4, 'ward'),
('Mkulwe', @district_13_4, 'ward'),
('Chitete', @district_13_4, 'ward'),
('Msangano', @district_13_4, 'ward'),
('Chiwezi', @district_13_4, 'ward'),
('Nkangamo', @district_13_4, 'ward'),
('Ndalembo', @district_13_4, 'ward'),
('Kapele', @district_13_4, 'ward'),
('Nzoka', @district_13_4, 'ward'),
('Myunga', @district_13_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Tunduma', @region_13, 'district');

SET @district_13_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Tunduma', @district_13_5, 'ward');


-- ============================================================
-- REGION: Singida
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Singida', NULL, 'region');

SET @region_14 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Iramba', @region_14, 'district');

SET @district_14_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Urughu', @district_14_1, 'ward'),
('Mtekente', @district_14_1, 'ward'),
('Mtoa', @district_14_1, 'ward'),
('Mgongo', @district_14_1, 'ward'),
('Shelui', @district_14_1, 'ward'),
('Ntwike', @district_14_1, 'ward'),
('Tulya', @district_14_1, 'ward'),
('Kidaru', @district_14_1, 'ward'),
('Kisiriri', @district_14_1, 'ward'),
('Kiomboi', @district_14_1, 'ward'),
('Kinampanda', @district_14_1, 'ward'),
('Ulemo', @district_14_1, 'ward'),
('Kyengege', @district_14_1, 'ward'),
('Ndago', @district_14_1, 'ward'),
('Mbelekese', @district_14_1, 'ward'),
('Kaselya', @district_14_1, 'ward'),
('Ndulungu', @district_14_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Singida', @region_14, 'district');

SET @district_14_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mudida', @district_14_2, 'ward'),
('Makuro', @district_14_2, 'ward'),
('Ikhanoda', @district_14_2, 'ward'),
('Mwasauya', @district_14_2, 'ward'),
('Msange', @district_14_2, 'ward'),
('Maghojoa', @district_14_2, 'ward'),
('Itaja', @district_14_2, 'ward'),
('Ngimu', @district_14_2, 'ward'),
('Mughunga', @district_14_2, 'ward'),
('Mgori', @district_14_2, 'ward'),
('Mughamo', @district_14_2, 'ward'),
('Kinyagigi', @district_14_2, 'ward'),
('Merya', @district_14_2, 'ward'),
('Kinyeto', @district_14_2, 'ward'),
('Ntonge', @district_14_2, 'ward'),
('Ilongero', @district_14_2, 'ward'),
('Mrama', @district_14_2, 'ward'),
('Kijota', @district_14_2, 'ward'),
('Mtinko', @district_14_2, 'ward'),
('Ughandi', @district_14_2, 'ward'),
('Msisi', @district_14_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Manyoni', @region_14, 'district');

SET @district_14_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Manyoni', @district_14_3, 'ward'),
('Solya', @district_14_3, 'ward'),
('Makuru', @district_14_3, 'ward'),
('Chikuyu', @district_14_3, 'ward'),
('Makanda', @district_14_3, 'ward'),
('Kintinku', @district_14_3, 'ward'),
('Mvumi', @district_14_3, 'ward'),
('Majiri', @district_14_3, 'ward'),
('Sasajila', @district_14_3, 'ward'),
('Idodyandole', @district_14_3, 'ward'),
('Chikola', @district_14_3, 'ward'),
('Heka', @district_14_3, 'ward'),
('Nkonko', @district_14_3, 'ward'),
('Sanza', @district_14_3, 'ward'),
('Isseke', @district_14_3, 'ward'),
('Rungwa', @district_14_3, 'ward'),
('Mgandu', @district_14_3, 'ward'),
('Itigi Mjini', @district_14_3, 'ward'),
('Ipande', @district_14_3, 'ward'),
('Sanjaranda', @district_14_3, 'ward'),
('Aghondi', @district_14_3, 'ward'),
('Mkwese', @district_14_3, 'ward'),
('Muhalala', @district_14_3, 'ward'),
('Saranda', @district_14_3, 'ward'),
('Makutupora', @district_14_3, 'ward'),
('Sasilo', @district_14_3, 'ward'),
('Mwamagembe', @district_14_3, 'ward'),
('Mitundu', @district_14_3, 'ward'),
('Kitaraka', @district_14_3, 'ward'),
('Itigi Majengo', @district_14_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Singida Urban', @region_14, 'district');

SET @district_14_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mtipa', @district_14_4, 'ward'),
('Mughanga', @district_14_4, 'ward'),
('Mitunduru', @district_14_4, 'ward'),
('Majengo', @district_14_4, 'ward'),
('Umyambwa', @district_14_4, 'ward'),
('Mungu maji', @district_14_4, 'ward'),
('Unyamikumbi', @district_14_4, 'ward'),
('Mtamaa', @district_14_4, 'ward'),
('Kindai', @district_14_4, 'ward'),
('Ipembe', @district_14_4, 'ward'),
('Utemini', @district_14_4, 'ward'),
('Mwankoko', @district_14_4, 'ward'),
('Mandewa', @district_14_4, 'ward'),
('Minga', @district_14_4, 'ward'),
('Misuna', @district_14_4, 'ward'),
('Uhamaka', @district_14_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Ikungi', @region_14, 'district');

SET @district_14_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Puma', @district_14_5, 'ward'),
('Kituntu', @district_14_5, 'ward'),
('Mungaa', @district_14_5, 'ward'),
('Siuyu', @district_14_5, 'ward'),
('Kikio', @district_14_5, 'ward'),
('Lighwa', @district_14_5, 'ward'),
('Misughaa', @district_14_5, 'ward'),
('Ntuntu', @district_14_5, 'ward'),
('Dung''unyi', @district_14_5, 'ward'),
('Mang''onyi', @district_14_5, 'ward'),
('Mkiwa', @district_14_5, 'ward'),
('Issuna', @district_14_5, 'ward'),
('Unyahati', @district_14_5, 'ward'),
('Ikungi', @district_14_5, 'ward'),
('Iglansoni', @district_14_5, 'ward'),
('Iseke', @district_14_5, 'ward'),
('Ihanja', @district_14_5, 'ward'),
('Minyughe', @district_14_5, 'ward'),
('Muhintiri', @district_14_5, 'ward'),
('Iyumbu', @district_14_5, 'ward'),
('Mgungira', @district_14_5, 'ward'),
('Mwaru', @district_14_5, 'ward'),
('Ighombwe', @district_14_5, 'ward'),
('Mtunduru', @district_14_5, 'ward'),
('Sepuka', @district_14_5, 'ward'),
('Irisya', @district_14_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mkalama', @region_14, 'district');

SET @district_14_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mpambala', @district_14_6, 'ward'),
('Mwangeza', @district_14_6, 'ward'),
('Mwanga', @district_14_6, 'ward'),
('Nkinto', @district_14_6, 'ward'),
('Ibaga', @district_14_6, 'ward'),
('Gumanga', @district_14_6, 'ward'),
('Msingi', @district_14_6, 'ward'),
('Nduguti', @district_14_6, 'ward'),
('Ilunda', @district_14_6, 'ward'),
('Kinyangiri', @district_14_6, 'ward'),
('Iguguno', @district_14_6, 'ward'),
('Miganga', @district_14_6, 'ward'),
('Matongo', @district_14_6, 'ward'),
('Kikhonda', @district_14_6, 'ward');


-- ============================================================
-- REGION: Tabora
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Tabora', NULL, 'region');

SET @region_15 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Nzega', @region_15, 'district');

SET @district_15_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Puge', @district_15_1, 'ward'),
('Nkiniziwa', @district_15_1, 'ward'),
('Budushi', @district_15_1, 'ward'),
('Mwakashanhala', @district_15_1, 'ward'),
('Tongi', @district_15_1, 'ward'),
('Mizibaziba', @district_15_1, 'ward'),
('Milambo Itobo', @district_15_1, 'ward'),
('Magengati', @district_15_1, 'ward'),
('Ndala', @district_15_1, 'ward'),
('Nzega Mjini', @district_15_1, 'ward'),
('Wela', @district_15_1, 'ward'),
('Mbogwe', @district_15_1, 'ward'),
('Miguwa', @district_15_1, 'ward'),
('Itilo', @district_15_1, 'ward'),
('Muhugi', @district_15_1, 'ward'),
('Utwigu', @district_15_1, 'ward'),
('Ijanija', @district_15_1, 'ward'),
('Nzegandogo', @district_15_1, 'ward'),
('Lusu', @district_15_1, 'ward'),
('Nata', @district_15_1, 'ward'),
('Isanzu', @district_15_1, 'ward'),
('Itobo', @district_15_1, 'ward'),
('Mwangoye', @district_15_1, 'ward'),
('Sigili', @district_15_1, 'ward'),
('Mwamala', @district_15_1, 'ward'),
('Igusule', @district_15_1, 'ward'),
('Shigamba', @district_15_1, 'ward'),
('Kasela', @district_15_1, 'ward'),
('Karitu', @district_15_1, 'ward'),
('Bukene', @district_15_1, 'ward'),
('Mogwa', @district_15_1, 'ward'),
('Mambali', @district_15_1, 'ward'),
('Kahamanhalanga', @district_15_1, 'ward'),
('Uduka', @district_15_1, 'ward'),
('Semembela', @district_15_1, 'ward'),
('Isagenhe', @district_15_1, 'ward'),
('Ikindwa', @district_15_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Igunga', @region_15, 'district');

SET @district_15_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Igunga', @district_15_2, 'ward'),
('Itumba', @district_15_2, 'ward'),
('Bukoko', @district_15_2, 'ward'),
('Isakamaliwa', @district_15_2, 'ward'),
('Nyandekwa', @district_15_2, 'ward'),
('Nanga', @district_15_2, 'ward'),
('Nguvumoja', @district_15_2, 'ward'),
('Mbutu', @district_15_2, 'ward'),
('Kining''inila', @district_15_2, 'ward'),
('Igurubi', @district_15_2, 'ward'),
('Mwamashimba', @district_15_2, 'ward'),
('Kinungu', @district_15_2, 'ward'),
('Ntobo', @district_15_2, 'ward'),
('Itunduru', @district_15_2, 'ward'),
('Mwamashiga', @district_15_2, 'ward'),
('Choma', @district_15_2, 'ward'),
('Mwashiku', @district_15_2, 'ward'),
('Ziba', @district_15_2, 'ward'),
('Ndembezi', @district_15_2, 'ward'),
('Nkinga', @district_15_2, 'ward'),
('Ngulu', @district_15_2, 'ward'),
('Simbo', @district_15_2, 'ward'),
('Igowero', @district_15_2, 'ward'),
('Mwisi', @district_15_2, 'ward'),
('Chabutwa', @district_15_2, 'ward'),
('Sungwizi', @district_15_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Uyui', @region_15, 'district');

SET @district_15_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Lutende', @district_15_3, 'ward'),
('Kizengi', @district_15_3, 'ward'),
('Goweko', @district_15_3, 'ward'),
('Igalula', @district_15_3, 'ward'),
('Ilolanguru', @district_15_3, 'ward'),
('Mabama', @district_15_3, 'ward'),
('Ndono', @district_15_3, 'ward'),
('Ufuluma', @district_15_3, 'ward'),
('Usagari', @district_15_3, 'ward'),
('Ibiri', @district_15_3, 'ward'),
('Bukumbi', @district_15_3, 'ward'),
('Ikongolo', @district_15_3, 'ward'),
('Upuge', @district_15_3, 'ward'),
('Magiri', @district_15_3, 'ward'),
('Isikizya', @district_15_3, 'ward'),
('Shitage', @district_15_3, 'ward'),
('Loya', @district_15_3, 'ward'),
('Miswaki', @district_15_3, 'ward'),
('Tura', @district_15_3, 'ward'),
('Nsololo', @district_15_3, 'ward'),
('Kigwa', @district_15_3, 'ward'),
('Miyenze', @district_15_3, 'ward'),
('Nsimbo', @district_15_3, 'ward'),
('Ibelamilundi', @district_15_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Urambo', @region_15, 'district');

SET @district_15_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kapilula', @district_15_4, 'ward'),
('Urambo', @district_15_4, 'ward'),
('Vumilia', @district_15_4, 'ward'),
('Muungano', @district_15_4, 'ward'),
('Songambele', @district_15_4, 'ward'),
('Uyogo', @district_15_4, 'ward'),
('Kiloleni', @district_15_4, 'ward'),
('Ussoke', @district_15_4, 'ward'),
('Uyumbu', @district_15_4, 'ward'),
('Ugalla', @district_15_4, 'ward'),
('Usisya', @district_15_4, 'ward'),
('Utundu', @district_15_4, 'ward'),
('Kasisi', @district_15_4, 'ward'),
('Imalamakoye', @district_15_4, 'ward'),
('Nsenda', @district_15_4, 'ward'),
('Ukondamoyo', @district_15_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Sikonge', @region_15, 'district');

SET @district_15_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Tutuo', @district_15_5, 'ward'),
('Chabutwa', @district_15_5, 'ward'),
('Kaloleli', @district_15_5, 'ward'),
('Kipanga', @district_15_5, 'ward'),
('Sikonge', @district_15_5, 'ward'),
('Kitunda', @district_15_5, 'ward'),
('Kiloli', @district_15_5, 'ward'),
('Kipili', @district_15_5, 'ward'),
('Pangale', @district_15_5, 'ward'),
('Ipole', @district_15_5, 'ward'),
('Ngoywa', @district_15_5, 'ward'),
('Kisanga', @district_15_5, 'ward'),
('Misheni', @district_15_5, 'ward'),
('Mole', @district_15_5, 'ward'),
('Mpombwe', @district_15_5, 'ward'),
('Usunga', @district_15_5, 'ward'),
('Igigwa', @district_15_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Tabora Urban', @region_15, 'district');

SET @district_15_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kanyenye', @district_15_6, 'ward'),
('Gongoni', @district_15_6, 'ward'),
('Mbugani', @district_15_6, 'ward'),
('Chemchem', @district_15_6, 'ward'),
('Tambukareli', @district_15_6, 'ward'),
('Kiloleni', @district_15_6, 'ward'),
('Mtendeni', @district_15_6, 'ward'),
('Isevya', @district_15_6, 'ward'),
('Ipuli', @district_15_6, 'ward'),
('Cheyo', @district_15_6, 'ward'),
('Kitete', @district_15_6, 'ward'),
('Ng`ambo', @district_15_6, 'ward'),
('Malolo', @district_15_6, 'ward'),
('Kakola', @district_15_6, 'ward'),
('Uyui', @district_15_6, 'ward'),
('Itonjanda', @district_15_6, 'ward'),
('Ndevelwa', @district_15_6, 'ward'),
('Itetemia', @district_15_6, 'ward'),
('Tumbi', @district_15_6, 'ward'),
('Kalunde', @district_15_6, 'ward'),
('Misha', @district_15_6, 'ward'),
('Kabila', @district_15_6, 'ward'),
('Ikomwa', @district_15_6, 'ward'),
('Ifucha', @district_15_6, 'ward'),
('Ntalikwa', @district_15_6, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kaliua', @region_15, 'district');

SET @district_15_7 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Ukumbi Siganga', @district_15_7, 'ward'),
('Zugimlole', @district_15_7, 'ward'),
('Ushokola', @district_15_7, 'ward'),
('Ugunga', @district_15_7, 'ward'),
('Kaliua', @district_15_7, 'ward'),
('Usinge', @district_15_7, 'ward'),
('Igagala', @district_15_7, 'ward'),
('Kamsekwa', @district_15_7, 'ward'),
('Kazaroho', @district_15_7, 'ward'),
('Igwisi', @district_15_7, 'ward'),
('Uyowa', @district_15_7, 'ward'),
('Silambo', @district_15_7, 'ward'),
('Kashishi', @district_15_7, 'ward'),
('Sasu', @district_15_7, 'ward'),
('Seleli', @district_15_7, 'ward'),
('Ichemba', @district_15_7, 'ward'),
('Mwongozo', @district_15_7, 'ward'),
('Kanoge', @district_15_7, 'ward'),
('Kanindo', @district_15_7, 'ward'),
('Milambo', @district_15_7, 'ward'),
('Igombe Mkulu', @district_15_7, 'ward');


-- ============================================================
-- REGION: Rukwa
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Rukwa', NULL, 'region');

SET @region_16 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Kalambo', @region_16, 'district');

SET @district_16_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kasanga', @district_16_1, 'ward'),
('Mkowe', @district_16_1, 'ward'),
('Msanzi', @district_16_1, 'ward'),
('Matai', @district_16_1, 'ward'),
('Sopa', @district_16_1, 'ward'),
('Mwazye', @district_16_1, 'ward'),
('Katazi', @district_16_1, 'ward'),
('Mwimbi', @district_16_1, 'ward'),
('Mabwekenya', @district_16_1, 'ward'),
('Mwembenkoswe', @district_16_1, 'ward'),
('Legeza Mwendo', @district_16_1, 'ward'),
('Ulumi', @district_16_1, 'ward'),
('Mnamba', @district_16_1, 'ward'),
('Katete', @district_16_1, 'ward'),
('Kisumba', @district_16_1, 'ward'),
('Mkali', @district_16_1, 'ward'),
('Kilesha', @district_16_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Sumbawanga', @region_16, 'district');

SET @district_16_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mfinga', @district_16_2, 'ward'),
('Laela', @district_16_2, 'ward'),
('Muze', @district_16_2, 'ward'),
('Mtowisa', @district_16_2, 'ward'),
('Milepa', @district_16_2, 'ward'),
('Sandulula', @district_16_2, 'ward'),
('Kaengesa', @district_16_2, 'ward'),
('Mpui', @district_16_2, 'ward'),
('Msanda Muungano', @district_16_2, 'ward'),
('Ilemba', @district_16_2, 'ward'),
('Kipeta', @district_16_2, 'ward'),
('Kaoze', @district_16_2, 'ward'),
('Miangalua', @district_16_2, 'ward'),
('Kalambanzite', @district_16_2, 'ward'),
('Lusaka', @district_16_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Nkasi', @region_16, 'district');

SET @district_16_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Korongwe', @district_16_3, 'ward'),
('Mtenga', @district_16_3, 'ward'),
('Mkwamba', @district_16_3, 'ward'),
('Chala', @district_16_3, 'ward'),
('Kipande', @district_16_3, 'ward'),
('Isale', @district_16_3, 'ward'),
('Kate', @district_16_3, 'ward'),
('Sintali', @district_16_3, 'ward'),
('Kala', @district_16_3, 'ward'),
('Wampembe', @district_16_3, 'ward'),
('Ninde', @district_16_3, 'ward'),
('Kirando', @district_16_3, 'ward'),
('Kabwe', @district_16_3, 'ward'),
('Kipili', @district_16_3, 'ward'),
('Nkandasi', @district_16_3, 'ward'),
('Namanyere', @district_16_3, 'ward'),
('Nkomolo', @district_16_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Sumbawanga Urban', @region_16, 'district');

SET @district_16_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Malangali', @district_16_4, 'ward'),
('Mazwi', @district_16_4, 'ward'),
('Izia', @district_16_4, 'ward'),
('Katandala', @district_16_4, 'ward'),
('Old Sumbawanga', @district_16_4, 'ward'),
('Kizwite', @district_16_4, 'ward'),
('Ntendo', @district_16_4, 'ward'),
('Senga', @district_16_4, 'ward'),
('Mollo', @district_16_4, 'ward'),
('Pito', @district_16_4, 'ward'),
('Milanzi', @district_16_4, 'ward'),
('Matanga', @district_16_4, 'ward'),
('Kasense', @district_16_4, 'ward'),
('Majengo', @district_16_4, 'ward'),
('Chanji', @district_16_4, 'ward');


-- ============================================================
-- REGION: Kigoma
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Kigoma', NULL, 'region');

SET @region_17 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Kibondo', @region_17, 'district');

SET @district_17_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Misezero', @district_17_1, 'ward'),
('Bitare', @district_17_1, 'ward'),
('Kibondo', @district_17_1, 'ward'),
('Murungu', @district_17_1, 'ward'),
('Busagara', @district_17_1, 'ward'),
('Rugongwe', @district_17_1, 'ward'),
('Busunzu', @district_17_1, 'ward'),
('Kumsenga', @district_17_1, 'ward'),
('Kizazi', @district_17_1, 'ward'),
('Mabamba', @district_17_1, 'ward'),
('Bunyambo', @district_17_1, 'ward'),
('Itaba', @district_17_1, 'ward'),
('Kitahana', @district_17_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kasulu', @region_17, 'district');

SET @district_17_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kitanga', @district_17_2, 'ward'),
('Heru Shingo', @district_17_2, 'ward'),
('Nyamidaho', @district_17_2, 'ward'),
('Kitagata', @district_17_2, 'ward'),
('Nyachenda', @district_17_2, 'ward'),
('Buhoro', @district_17_2, 'ward'),
('Nyamnyusi', @district_17_2, 'ward'),
('Nyakitonto', @district_17_2, 'ward'),
('Kagerankanda', @district_17_2, 'ward'),
('Kurugongo', @district_17_2, 'ward'),
('Rungwe Mpya', @district_17_2, 'ward'),
('Asante Nyerere', @district_17_2, 'ward'),
('Titye', @district_17_2, 'ward'),
('Shunguliba', @district_17_2, 'ward'),
('Muzye', @district_17_2, 'ward'),
('Bugaga', @district_17_2, 'ward'),
('Kigembe', @district_17_2, 'ward'),
('Rusesa', @district_17_2, 'ward'),
('Kwaga', @district_17_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kigoma', @region_17, 'district');

SET @district_17_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kagunga', @district_17_3, 'ward'),
('Mkigo', @district_17_3, 'ward'),
('Mwamgongo', @district_17_3, 'ward'),
('Kalinzi', @district_17_3, 'ward'),
('Bitale', @district_17_3, 'ward'),
('Mkongoro', @district_17_3, 'ward'),
('Mahembe', @district_17_3, 'ward'),
('Matendo', @district_17_3, 'ward'),
('Mungonya', @district_17_3, 'ward'),
('Kagongo', @district_17_3, 'ward'),
('Mwandiga', @district_17_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kigoma  Urban', @region_17, 'district');

SET @district_17_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Gungu', @district_17_4, 'ward'),
('Kibirizi', @district_17_4, 'ward'),
('Buhanda', @district_17_4, 'ward'),
('Businde', @district_17_4, 'ward'),
('Machinjioni', @district_17_4, 'ward'),
('Kagera', @district_17_4, 'ward'),
('Kasimbu', @district_17_4, 'ward'),
('Rubuga', @district_17_4, 'ward'),
('Kasingirima', @district_17_4, 'ward'),
('Majengo', @district_17_4, 'ward'),
('Kitongoni', @district_17_4, 'ward'),
('Kipampa', @district_17_4, 'ward'),
('Rusimbi', @district_17_4, 'ward'),
('Buzebazeba', @district_17_4, 'ward'),
('Mwanga Kusini', @district_17_4, 'ward'),
('Kigoma', @district_17_4, 'ward'),
('Bangwe', @district_17_4, 'ward'),
('Mwanga Kaskazini', @district_17_4, 'ward'),
('Katubuka', @district_17_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Uvinza', @region_17, 'district');

SET @district_17_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kalya', @district_17_5, 'ward'),
('Buhingu', @district_17_5, 'ward'),
('Igalula', @district_17_5, 'ward'),
('Sigunga', @district_17_5, 'ward'),
('Sunuka', @district_17_5, 'ward'),
('Ilagala', @district_17_5, 'ward'),
('Simbo', @district_17_5, 'ward'),
('Kandaga', @district_17_5, 'ward'),
('Kazuramimba', @district_17_5, 'ward'),
('Uvinza', @district_17_5, 'ward'),
('Mganza', @district_17_5, 'ward'),
('Mtego wa Noti', @district_17_5, 'ward'),
('Nguruka', @district_17_5, 'ward'),
('Itebula', @district_17_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Buhigwe', @region_17, 'district');

SET @district_17_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Nyamugali', @district_17_6, 'ward'),
('Biharu', @district_17_6, 'ward'),
('Muyama', @district_17_6, 'ward'),
('Kajana', @district_17_6, 'ward'),
('Mugera', @district_17_6, 'ward'),
('Kilelema', @district_17_6, 'ward'),
('Munyegera', @district_17_6, 'ward'),
('Buhigwe', @district_17_6, 'ward'),
('Kibande', @district_17_6, 'ward'),
('Janda', @district_17_6, 'ward'),
('Munzeze', @district_17_6, 'ward'),
('Rusaba', @district_17_6, 'ward'),
('Muhinda', @district_17_6, 'ward'),
('Munanila', @district_17_6, 'ward'),
('Mwayaya', @district_17_6, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kakonko', @region_17, 'district');

SET @district_17_7 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Nyabibuye', @district_17_7, 'ward'),
('Nyamtukuza', @district_17_7, 'ward'),
('Muhange', @district_17_7, 'ward'),
('Kasunga', @district_17_7, 'ward'),
('Kakonko', @district_17_7, 'ward'),
('Kiziguzigu', @district_17_7, 'ward'),
('Rugenge', @district_17_7, 'ward'),
('Kasanda', @district_17_7, 'ward'),
('Gwamumpu', @district_17_7, 'ward'),
('Katanga', @district_17_7, 'ward'),
('Mugunzu', @district_17_7, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kasulu Township Authority', @region_17, 'district');

SET @district_17_8 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Muganza', @district_17_8, 'ward'),
('Kigondo', @district_17_8, 'ward'),
('Msambara', @district_17_8, 'ward'),
('Ruhita', @district_17_8, 'ward'),
('Nyumbigwa', @district_17_8, 'ward'),
('Murufiti', @district_17_8, 'ward'),
('Nyansha', @district_17_8, 'ward'),
('Kasulu Mjini', @district_17_8, 'ward'),
('Muhunga', @district_17_8, 'ward');


-- ============================================================
-- REGION: Shinyanga
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Shinyanga', NULL, 'region');

SET @region_18 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Shinyanga Urban', @region_18, 'district');

SET @district_18_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mwamalili', @district_18_1, 'ward'),
('Kolandoto', @district_18_1, 'ward'),
('Ngokolo', @district_18_1, 'ward'),
('Ibadakuli', @district_18_1, 'ward'),
('Shinyanga Mjini', @district_18_1, 'ward'),
('Chamaguha', @district_18_1, 'ward'),
('Ibinzamata', @district_18_1, 'ward'),
('Kitangili', @district_18_1, 'ward'),
('Kizumbi', @district_18_1, 'ward'),
('Mwawaza', @district_18_1, 'ward'),
('Ndala', @district_18_1, 'ward'),
('Kambarage', @district_18_1, 'ward'),
('Chibe', @district_18_1, 'ward'),
('Lubaga', @district_18_1, 'ward'),
('Ndembezi', @district_18_1, 'ward'),
('Masekelo', @district_18_1, 'ward'),
('Old Shinyanga', @district_18_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kishapu', @region_18, 'district');

SET @district_18_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Bunambiyu', @district_18_2, 'ward'),
('Bubiki', @district_18_2, 'ward'),
('Songwa', @district_18_2, 'ward'),
('Seke Bugoro', @district_18_2, 'ward'),
('Mondo', @district_18_2, 'ward'),
('Mwadui Lohumbo', @district_18_2, 'ward'),
('Uchunga', @district_18_2, 'ward'),
('Kishapu', @district_18_2, 'ward'),
('Mwakipoya', @district_18_2, 'ward'),
('Shagihilu', @district_18_2, 'ward'),
('Somagedi', @district_18_2, 'ward'),
('Mwamalasa', @district_18_2, 'ward'),
('Masanga', @district_18_2, 'ward'),
('Lagana', @district_18_2, 'ward'),
('Mwamashele', @district_18_2, 'ward'),
('Ngofila', @district_18_2, 'ward'),
('Kiloleli', @district_18_2, 'ward'),
('Ukenyenge', @district_18_2, 'ward'),
('Talaga', @district_18_2, 'ward'),
('Itilima', @district_18_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Shinyanga', @region_18, 'district');

SET @district_18_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Imesela', @district_18_3, 'ward'),
('Usule', @district_18_3, 'ward'),
('Ilola', @district_18_3, 'ward'),
('Didia', @district_18_3, 'ward'),
('Itwangi', @district_18_3, 'ward'),
('Tinde', @district_18_3, 'ward'),
('Mwakitolyoo', @district_18_3, 'ward'),
('Salawe', @district_18_3, 'ward'),
('Solwa', @district_18_3, 'ward'),
('Iselamagazi', @district_18_3, 'ward'),
('Lyabukande', @district_18_3, 'ward'),
('Mwantini', @district_18_3, 'ward'),
('Pandagichiza', @district_18_3, 'ward'),
('Mwamala', @district_18_3, 'ward'),
('Samuye', @district_18_3, 'ward'),
('Usanda', @district_18_3, 'ward'),
('Puni', @district_18_3, 'ward'),
('Nyida', @district_18_3, 'ward'),
('Nsalala', @district_18_3, 'ward'),
('Bukene', @district_18_3, 'ward'),
('Masengwa', @district_18_3, 'ward'),
('Mwenge', @district_18_3, 'ward'),
('Lyabusalu', @district_18_3, 'ward'),
('Mwalukwa', @district_18_3, 'ward'),
('Nyamalogo', @district_18_3, 'ward'),
('Lyamidati', @district_18_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kahama', @region_18, 'district');

SET @district_18_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Bulyanhulu', @district_18_4, 'ward'),
('Bugarama', @district_18_4, 'ward'),
('Lunguya', @district_18_4, 'ward'),
('Shilela', @district_18_4, 'ward'),
('Segese', @district_18_4, 'ward'),
('Mega', @district_18_4, 'ward'),
('Chela', @district_18_4, 'ward'),
('Busangi', @district_18_4, 'ward'),
('Ntobo', @district_18_4, 'ward'),
('Ngaya', @district_18_4, 'ward'),
('Bulige', @district_18_4, 'ward'),
('Kashishi', @district_18_4, 'ward'),
('Mwanase', @district_18_4, 'ward'),
('Mwalugulu', @district_18_4, 'ward'),
('Jana', @district_18_4, 'ward'),
('Isaka', @district_18_4, 'ward'),
('Chona', @district_18_4, 'ward'),
('Chambo', @district_18_4, 'ward'),
('Kisuke', @district_18_4, 'ward'),
('Mapamba', @district_18_4, 'ward'),
('Bukomela', @district_18_4, 'ward'),
('Ukune', @district_18_4, 'ward'),
('Igunda', @district_18_4, 'ward'),
('Kinamapula', @district_18_4, 'ward'),
('Igwamanoni', @district_18_4, 'ward'),
('Mpunze', @district_18_4, 'ward'),
('Sabasabini', @district_18_4, 'ward'),
('Idahina', @district_18_4, 'ward'),
('Bulungwa', @district_18_4, 'ward'),
('Nyankende', @district_18_4, 'ward'),
('Ulewe', @district_18_4, 'ward'),
('Ushetu', @district_18_4, 'ward'),
('Uyogo', @district_18_4, 'ward'),
('Ulowa', @district_18_4, 'ward'),
('Ubagwe', @district_18_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kahama Township Authority', @region_18, 'district');

SET @district_18_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Ngogwa', @district_18_5, 'ward'),
('Wendele', @district_18_5, 'ward'),
('Kinaga', @district_18_5, 'ward'),
('Isagehe', @district_18_5, 'ward'),
('Mondo', @district_18_5, 'ward'),
('Kagongwa', @district_18_5, 'ward'),
('Nyahanga', @district_18_5, 'ward'),
('Malunga', @district_18_5, 'ward'),
('Mhongolo', @district_18_5, 'ward'),
('Mwendakulima', @district_18_5, 'ward'),
('Zongomera', @district_18_5, 'ward'),
('Mhungula', @district_18_5, 'ward'),
('Nyihogo', @district_18_5, 'ward'),
('Nyasubi', @district_18_5, 'ward'),
('Kahama Mjini', @district_18_5, 'ward'),
('Majengo', @district_18_5, 'ward'),
('Busoka', @district_18_5, 'ward'),
('Kilago', @district_18_5, 'ward'),
('Iyenze', @district_18_5, 'ward'),
('Nyandekwa', @district_18_5, 'ward');


-- ============================================================
-- REGION: Kagera
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Kagera', NULL, 'region');

SET @region_19 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Karagwe', @region_19, 'district');

SET @district_19_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Igurwa', @district_19_1, 'ward'),
('Kanoni', @district_19_1, 'ward'),
('Kihanga', @district_19_1, 'ward'),
('Kituntu', @district_19_1, 'ward'),
('Chanika', @district_19_1, 'ward'),
('Kayanga', @district_19_1, 'ward'),
('Bugene', @district_19_1, 'ward'),
('Ndama', @district_19_1, 'ward'),
('Rugera', @district_19_1, 'ward'),
('Ihembe', @district_19_1, 'ward'),
('Nyaishozi', @district_19_1, 'ward'),
('Rugu', @district_19_1, 'ward'),
('Nyakasimbi', @district_19_1, 'ward'),
('Nyakakika', @district_19_1, 'ward'),
('Nyakabanga', @district_19_1, 'ward'),
('Bweranyange', @district_19_1, 'ward'),
('Kibondo', @district_19_1, 'ward'),
('Nyabiyonza', @district_19_1, 'ward'),
('Kiruruma', @district_19_1, 'ward'),
('Nyakahanga', @district_19_1, 'ward'),
('Ihanda', @district_19_1, 'ward'),
('Chonyonyo', @district_19_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Bukoba', @region_19, 'district');

SET @district_19_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Rubafu', @district_19_2, 'ward'),
('Kishanje', @district_19_2, 'ward'),
('Kaagya', @district_19_2, 'ward'),
('Buhendangabo', @district_19_2, 'ward'),
('Nyakato', @district_19_2, 'ward'),
('Katoma', @district_19_2, 'ward'),
('Karabagaine', @district_19_2, 'ward'),
('Bujugo', @district_19_2, 'ward'),
('Maruku', @district_19_2, 'ward'),
('Kanyangereko', @district_19_2, 'ward'),
('Katerero', @district_19_2, 'ward'),
('Kemondo', @district_19_2, 'ward'),
('Nyakibimbili', @district_19_2, 'ward'),
('Ibwera', @district_19_2, 'ward'),
('Mikoni', @district_19_2, 'ward'),
('Butelankuzi', @district_19_2, 'ward'),
('Rubale', @district_19_2, 'ward'),
('Rukoma', @district_19_2, 'ward'),
('Kikomero', @district_19_2, 'ward'),
('Kibirizi', @district_19_2, 'ward'),
('Izimbya', @district_19_2, 'ward'),
('Butulage', @district_19_2, 'ward'),
('Ruhunga', @district_19_2, 'ward'),
('Mugajwale', @district_19_2, 'ward'),
('Kyamulaile', @district_19_2, 'ward'),
('Katoro', @district_19_2, 'ward'),
('Kaibanja', @district_19_2, 'ward'),
('Kasharu', @district_19_2, 'ward'),
('Kishogo', @district_19_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Muleba', @region_19, 'district');

SET @district_19_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Muhutwe', @district_19_3, 'ward'),
('Mayondwe', @district_19_3, 'ward'),
('Goziba', @district_19_3, 'ward'),
('Kerebe', @district_19_3, 'ward'),
('Bumbire', @district_19_3, 'ward'),
('Ikuza', @district_19_3, 'ward'),
('Izigo', @district_19_3, 'ward'),
('Katoke', @district_19_3, 'ward'),
('Kagoma', @district_19_3, 'ward'),
('Kikuku', @district_19_3, 'ward'),
('Bureza', @district_19_3, 'ward'),
('Muleba', @district_19_3, 'ward'),
('Ikondo', @district_19_3, 'ward'),
('Buhangaza', @district_19_3, 'ward'),
('Mazinga', @district_19_3, 'ward'),
('Magata (Karutanga)', @district_19_3, 'ward'),
('Gwanseli', @district_19_3, 'ward'),
('Kibanga', @district_19_3, 'ward'),
('Kasharunga', @district_19_3, 'ward'),
('Rulanda', @district_19_3, 'ward'),
('Kimwani', @district_19_3, 'ward'),
('Nyakabango', @district_19_3, 'ward'),
('Kyebitembe', @district_19_3, 'ward'),
('Karambi', @district_19_3, 'ward'),
('Mubunda', @district_19_3, 'ward'),
('Bisheke', @district_19_3, 'ward'),
('Burungura', @district_19_3, 'ward'),
('Biirabo', @district_19_3, 'ward'),
('Mushabago', @district_19_3, 'ward'),
('Nyakatanga', @district_19_3, 'ward'),
('Ngenge', @district_19_3, 'ward'),
('Rutoro', @district_19_3, 'ward'),
('Kabirizi', @district_19_3, 'ward'),
('Nshamba', @district_19_3, 'ward'),
('Kashasha', @district_19_3, 'ward'),
('Ijumbi', @district_19_3, 'ward'),
('Kishanda', @district_19_3, 'ward'),
('Buganguzi', @district_19_3, 'ward'),
('Ibuga', @district_19_3, 'ward'),
('Bulyakashaju', @district_19_3, 'ward'),
('Kamachumu', @district_19_3, 'ward'),
('Ruhanga', @district_19_3, 'ward'),
('Mafumbo', @district_19_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Biharamulo', @region_19, 'district');

SET @district_19_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Nyakahura', @district_19_4, 'ward'),
('Ruziba', @district_19_4, 'ward'),
('Biharamulo Mjini', @district_19_4, 'ward'),
('Bisibo', @district_19_4, 'ward'),
('Nyarubungo', @district_19_4, 'ward'),
('Nyamahanga', @district_19_4, 'ward'),
('Runazi', @district_19_4, 'ward'),
('Kabindi', @district_19_4, 'ward'),
('Nyamigogo', @district_19_4, 'ward'),
('Nyabusozi', @district_19_4, 'ward'),
('Nemba', @district_19_4, 'ward'),
('Lusahunga', @district_19_4, 'ward'),
('Kaniha', @district_19_4, 'ward'),
('Nyantakara', @district_19_4, 'ward'),
('Kalenge', @district_19_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Ngara', @region_19, 'district');

SET @district_19_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Rusumo', @district_19_5, 'ward'),
('Nyakisasa', @district_19_5, 'ward'),
('Rulenge', @district_19_5, 'ward'),
('Keza', @district_19_5, 'ward'),
('Murusagamba', @district_19_5, 'ward'),
('Muganza', @district_19_5, 'ward'),
('Bugarama', @district_19_5, 'ward'),
('Bukiriro', @district_19_5, 'ward'),
('Kabanga', @district_19_5, 'ward'),
('Mabawe', @district_19_5, 'ward'),
('Kanazi', @district_19_5, 'ward'),
('Mugoma', @district_19_5, 'ward'),
('Kirushya', @district_19_5, 'ward'),
('Ntobeye', @district_19_5, 'ward'),
('Nyamiyaga', @district_19_5, 'ward'),
('Ngara Mjini', @district_19_5, 'ward'),
('Kibimba', @district_19_5, 'ward'),
('Mbuba', @district_19_5, 'ward'),
('Murukulazo', @district_19_5, 'ward'),
('Kasulo', @district_19_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Bukoba Urban', @region_19, 'district');

SET @district_19_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Hamugembe', @district_19_6, 'ward'),
('Nshambya', @district_19_6, 'ward'),
('Buhemba', @district_19_6, 'ward'),
('Kahororo', @district_19_6, 'ward'),
('Kashai', @district_19_6, 'ward'),
('Miembeni', @district_19_6, 'ward'),
('Bilele', @district_19_6, 'ward'),
('Bakoba', @district_19_6, 'ward'),
('Ijuganyondo', @district_19_6, 'ward'),
('Kitendaguro', @district_19_6, 'ward'),
('Kibeta', @district_19_6, 'ward'),
('Kagondo', @district_19_6, 'ward'),
('Nyanga', @district_19_6, 'ward'),
('Rwamishenye', @district_19_6, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Missenyi', @region_19, 'district');

SET @district_19_7 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kakunyu', @district_19_7, 'ward'),
('Nsunga', @district_19_7, 'ward'),
('Mutukula', @district_19_7, 'ward'),
('Kassambya', @district_19_7, 'ward'),
('Minziro', @district_19_7, 'ward'),
('Ruzinga', @district_19_7, 'ward'),
('Kashenye', @district_19_7, 'ward'),
('Kanyigo', @district_19_7, 'ward'),
('Ishunju', @district_19_7, 'ward'),
('Buyango', @district_19_7, 'ward'),
('Bwanjai', @district_19_7, 'ward'),
('Ishozi', @district_19_7, 'ward'),
('Gera', @district_19_7, 'ward'),
('Bugandika', @district_19_7, 'ward'),
('Kitobo', @district_19_7, 'ward'),
('Bugorora', @district_19_7, 'ward'),
('Kyaka', @district_19_7, 'ward'),
('Mushasha', @district_19_7, 'ward'),
('Kilimilil', @district_19_7, 'ward'),
('Mabale', @district_19_7, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kyerwa', @region_19, 'district');

SET @district_19_8 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Isingiro', @district_19_8, 'ward'),
('Kaisho', @district_19_8, 'ward'),
('Rutunguru', @district_19_8, 'ward'),
('Kibingo', @district_19_8, 'ward'),
('Murongo', @district_19_8, 'ward'),
('Bugomora', @district_19_8, 'ward'),
('Kibale', @district_19_8, 'ward'),
('Mabira', @district_19_8, 'ward'),
('Businde', @district_19_8, 'ward'),
('Kamuli', @district_19_8, 'ward'),
('Nyakatuntu', @district_19_8, 'ward'),
('Kimuli', @district_19_8, 'ward'),
('Kikukuru', @district_19_8, 'ward'),
('Rwabwere', @district_19_8, 'ward'),
('Nkwenda', @district_19_8, 'ward'),
('Rukuraijo', @district_19_8, 'ward'),
('Songambele', @district_19_8, 'ward'),
('Kyerwa', @district_19_8, 'ward');


-- ============================================================
-- REGION: Mwanza
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Mwanza', NULL, 'region');

SET @region_20 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Ukerewe', @region_20, 'district');

SET @district_20_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Nansio', @district_20_1, 'ward'),
('Kagera', @district_20_1, 'ward'),
('Nakatunguru', @district_20_1, 'ward'),
('Kakerege', @district_20_1, 'ward'),
('Bukongo', @district_20_1, 'ward'),
('Nkilizya', @district_20_1, 'ward'),
('Bukanda', @district_20_1, 'ward'),
('Mukituntu', @district_20_1, 'ward'),
('Igala', @district_20_1, 'ward'),
('Bwiro', @district_20_1, 'ward'),
('Muriti', @district_20_1, 'ward'),
('Ilangala', @district_20_1, 'ward'),
('Namilembe', @district_20_1, 'ward'),
('Nduruma', @district_20_1, 'ward'),
('Murutunguru', @district_20_1, 'ward'),
('Kagunguli', @district_20_1, 'ward'),
('Bukindo', @district_20_1, 'ward'),
('Namagondo', @district_20_1, 'ward'),
('Ngoma', @district_20_1, 'ward'),
('Bwisya', @district_20_1, 'ward'),
('Bukungu', @district_20_1, 'ward'),
('Nyamanga', @district_20_1, 'ward'),
('Bukiro', @district_20_1, 'ward'),
('Irugwa', @district_20_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Magu', @region_20, 'district');

SET @district_20_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kisesa', @district_20_2, 'ward'),
('Bujashi', @district_20_2, 'ward'),
('Lutale', @district_20_2, 'ward'),
('Kongolo', @district_20_2, 'ward'),
('Nyanguge', @district_20_2, 'ward'),
('Kitongo Sim', @district_20_2, 'ward'),
('Mwamanga', @district_20_2, 'ward'),
('Kahangara', @district_20_2, 'ward'),
('Nyigogo', @district_20_2, 'ward'),
('Mwamabanza', @district_20_2, 'ward'),
('Sukuma', @district_20_2, 'ward'),
('Lubugu', @district_20_2, 'ward'),
('Ng''haya', @district_20_2, 'ward'),
('Nkungulu', @district_20_2, 'ward'),
('Jinjimili', @district_20_2, 'ward'),
('Shishani', @district_20_2, 'ward'),
('Magu Mjini', @district_20_2, 'ward'),
('Bukandwe', @district_20_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Nyamagana', @region_20, 'district');

SET @district_20_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mkuyuni', @district_20_3, 'ward'),
('Igogo', @district_20_3, 'ward'),
('Pamba', @district_20_3, 'ward'),
('Nyamagana', @district_20_3, 'ward'),
('Mirongo', @district_20_3, 'ward'),
('Isamilo', @district_20_3, 'ward'),
('Mbugani', @district_20_3, 'ward'),
('Mahina', @district_20_3, 'ward'),
('Igoma', @district_20_3, 'ward'),
('Buhongwa', @district_20_3, 'ward'),
('Mkolani', @district_20_3, 'ward'),
('Butimba', @district_20_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kwimba', @region_20, 'district');

SET @district_20_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Walla', @district_20_4, 'ward'),
('Bungulwa', @district_20_4, 'ward'),
('Sumve', @district_20_4, 'ward'),
('Mantare', @district_20_4, 'ward'),
('Ngulla', @district_20_4, 'ward'),
('Mwabomba', @district_20_4, 'ward'),
('Mwagi', @district_20_4, 'ward'),
('Iseni', @district_20_4, 'ward'),
('Nyambiti', @district_20_4, 'ward'),
('Maligisu', @district_20_4, 'ward'),
('Mwandu', @district_20_4, 'ward'),
('Malya', @district_20_4, 'ward'),
('Lyoma', @district_20_4, 'ward'),
('Mwang''halanga', @district_20_4, 'ward'),
('Nyamilama', @district_20_4, 'ward'),
('Mwakilambiti', @district_20_4, 'ward'),
('Hungumalwa', @district_20_4, 'ward'),
('Mwamala', @district_20_4, 'ward'),
('Kikubiji', @district_20_4, 'ward'),
('Mhande', @district_20_4, 'ward'),
('Bupamwa', @district_20_4, 'ward'),
('Fukalo', @district_20_4, 'ward'),
('Ng''hundi', @district_20_4, 'ward'),
('Igongwa', @district_20_4, 'ward'),
('Ngudu', @district_20_4, 'ward'),
('Bugando', @district_20_4, 'ward'),
('Nkalalo', @district_20_4, 'ward'),
('Mwankulwe', @district_20_4, 'ward'),
('Ilula', @district_20_4, 'ward'),
('Shilembo', @district_20_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Sengerema', @region_20, 'district');

SET @district_20_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Ibisabageni', @district_20_5, 'ward'),
('Nyamazugo', @district_20_5, 'ward'),
('Chifumfu', @district_20_5, 'ward'),
('Katunguru', @district_20_5, 'ward'),
('Kasungamile', @district_20_5, 'ward'),
('Nyamatongo', @district_20_5, 'ward'),
('Tabaruka', @district_20_5, 'ward'),
('Busisi', @district_20_5, 'ward'),
('Buyagu', @district_20_5, 'ward'),
('Igalula', @district_20_5, 'ward'),
('Kagunga', @district_20_5, 'ward'),
('Sima', @district_20_5, 'ward'),
('Nyakasunga', @district_20_5, 'ward'),
('Kalebezo', @district_20_5, 'ward'),
('Nyehunge', @district_20_5, 'ward'),
('Kafunzo', @district_20_5, 'ward'),
('Bupandwa', @district_20_5, 'ward'),
('Katwe', @district_20_5, 'ward'),
('Maisome', @district_20_5, 'ward'),
('Kazunzu', @district_20_5, 'ward'),
('Lugata', @district_20_5, 'ward'),
('Nyakaliro', @district_20_5, 'ward'),
('Nyakasasa', @district_20_5, 'ward'),
('Buzilasoga', @district_20_5, 'ward'),
('Nyanzenda', @district_20_5, 'ward'),
('Bulyaheke', @district_20_5, 'ward'),
('Irenza', @district_20_5, 'ward'),
('Kasenyi', @district_20_5, 'ward'),
('Mwambului', @district_20_5, 'ward'),
('Nyatukala', @district_20_5, 'ward'),
('Nyampulukano', @district_20_5, 'ward'),
('Nyampande', @district_20_5, 'ward'),
('Kishinda', @district_20_5, 'ward'),
('Igulumuki', @district_20_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Ilemela', @region_20, 'district');

SET @district_20_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Buswelu', @district_20_6, 'ward'),
('Nyakato', @district_20_6, 'ward'),
('Nyamanoro', @district_20_6, 'ward'),
('Kirumba', @district_20_6, 'ward'),
('Kitangiri', @district_20_6, 'ward'),
('Pasiansi', @district_20_6, 'ward'),
('Ilemela', @district_20_6, 'ward'),
('Bugogwa', @district_20_6, 'ward'),
('Sangabuye', @district_20_6, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Misungwi', @region_20, 'district');

SET @district_20_7 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Bulemeji', @district_20_7, 'ward'),
('Idetemya', @district_20_7, 'ward'),
('Usagara', @district_20_7, 'ward'),
('Ukiriguru', @district_20_7, 'ward'),
('Kanyelele', @district_20_7, 'ward'),
('Koromije', @district_20_7, 'ward'),
('Igokelo', @district_20_7, 'ward'),
('Mwaniko', @district_20_7, 'ward'),
('Misungwi', @district_20_7, 'ward'),
('Masasi', @district_20_7, 'ward'),
('Kijima', @district_20_7, 'ward'),
('Shilalo', @district_20_7, 'ward'),
('Buhingo', @district_20_7, 'ward'),
('Busongo', @district_20_7, 'ward'),
('Nhundulu', @district_20_7, 'ward'),
('Lubili', @district_20_7, 'ward'),
('Ilujamate', @district_20_7, 'ward'),
('Mbarika', @district_20_7, 'ward'),
('Sumbugu', @district_20_7, 'ward'),
('Kasololo', @district_20_7, 'ward'),
('Ilalambogo', @district_20_7, 'ward'),
('Isesa', @district_20_7, 'ward'),
('Gulumungu', @district_20_7, 'ward'),
('Mabuki', @district_20_7, 'ward'),
('Mondo', @district_20_7, 'ward'),
('Mamaye', @district_20_7, 'ward'),
('Fella', @district_20_7, 'ward');


-- ============================================================
-- REGION: Mara
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Mara', NULL, 'region');

SET @region_21 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Tarime', @region_21, 'district');

SET @district_21_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Susuni', @district_21_1, 'ward'),
('Mwema', @district_21_1, 'ward'),
('Sirari', @district_21_1, 'ward'),
('Pemba', @district_21_1, 'ward'),
('Nyakonga', @district_21_1, 'ward'),
('Nyarero', @district_21_1, 'ward'),
('Nyamwaga', @district_21_1, 'ward'),
('Muriba', @district_21_1, 'ward'),
('Nyanungu', @district_21_1, 'ward'),
('Gorong''a', @district_21_1, 'ward'),
('Nyarokoba', @district_21_1, 'ward'),
('Kemambo', @district_21_1, 'ward'),
('Kibasuka', @district_21_1, 'ward'),
('Binagi', @district_21_1, 'ward'),
('Turwa', @district_21_1, 'ward'),
('Bomani', @district_21_1, 'ward'),
('Nyandoto', @district_21_1, 'ward'),
('Matongo', @district_21_1, 'ward'),
('Manga', @district_21_1, 'ward'),
('Bumera', @district_21_1, 'ward'),
('Komaswa', @district_21_1, 'ward'),
('Kiore', @district_21_1, 'ward'),
('Sabasaba', @district_21_1, 'ward'),
('Nyamisangura', @district_21_1, 'ward'),
('Kentare', @district_21_1, 'ward'),
('Nyamaranga', @district_21_1, 'ward'),
('Mbogi', @district_21_1, 'ward'),
('Genyange', @district_21_1, 'ward'),
('Nyansicha', @district_21_1, 'ward'),
('Itiryo', @district_21_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Serengeti', @region_21, 'district');

SET @district_21_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kenyamonta', @district_21_2, 'ward'),
('Busawe', @district_21_2, 'ward'),
('Kisaka', @district_21_2, 'ward'),
('Kebanchabancha', @district_21_2, 'ward'),
('Ring''wani', @district_21_2, 'ward'),
('Rung''abure', @district_21_2, 'ward'),
('Machochwe', @district_21_2, 'ward'),
('Kisangura', @district_21_2, 'ward'),
('Mugumu', @district_21_2, 'ward'),
('Ikoma', @district_21_2, 'ward'),
('Natta', @district_21_2, 'ward'),
('Issenye', @district_21_2, 'ward'),
('Rigicha', @district_21_2, 'ward'),
('Nyambureti', @district_21_2, 'ward'),
('Nyamoko', @district_21_2, 'ward'),
('Manchira', @district_21_2, 'ward'),
('Kyambahi', @district_21_2, 'ward'),
('Nyamatare', @district_21_2, 'ward'),
('Majimoto', @district_21_2, 'ward'),
('Magange', @district_21_2, 'ward'),
('Nyansurura', @district_21_2, 'ward'),
('Mosongo', @district_21_2, 'ward'),
('Sedeco', @district_21_2, 'ward'),
('Mbalibali', @district_21_2, 'ward'),
('Stendi Kuu', @district_21_2, 'ward'),
('Geitasamo', @district_21_2, 'ward'),
('Morotonga', @district_21_2, 'ward'),
('Uwanja wa Ndege', @district_21_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Musoma', @region_21, 'district');

SET @district_21_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Bukumi', @district_21_3, 'ward'),
('Makojo', @district_21_3, 'ward'),
('Bwasi', @district_21_3, 'ward'),
('Bulinga', @district_21_3, 'ward'),
('Bukima', @district_21_3, 'ward'),
('Murangi', @district_21_3, 'ward'),
('Bugwema', @district_21_3, 'ward'),
('Nyamrandirira', @district_21_3, 'ward'),
('Nyambono', @district_21_3, 'ward'),
('Suguti', @district_21_3, 'ward'),
('Tegeruka', @district_21_3, 'ward'),
('Kiriba', @district_21_3, 'ward'),
('Busambara', @district_21_3, 'ward'),
('Mugango', @district_21_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Bunda', @region_21, 'district');

SET @district_21_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Nyamuswa', @district_21_4, 'ward'),
('Salama', @district_21_4, 'ward'),
('Mihingo', @district_21_4, 'ward'),
('Mugeta', @district_21_4, 'ward'),
('Hunyari', @district_21_4, 'ward'),
('Mcharo', @district_21_4, 'ward'),
('Sazira', @district_21_4, 'ward'),
('Kunzugu', @district_21_4, 'ward'),
('Bunda Mjini', @district_21_4, 'ward'),
('Guta', @district_21_4, 'ward'),
('Butimba', @district_21_4, 'ward'),
('Neruma', @district_21_4, 'ward'),
('Kibara', @district_21_4, 'ward'),
('Nansimo', @district_21_4, 'ward'),
('Kisorya', @district_21_4, 'ward'),
('Igundu', @district_21_4, 'ward'),
('Iramba', @district_21_4, 'ward'),
('Namhula', @district_21_4, 'ward'),
('Wariku', @district_21_4, 'ward'),
('Kabasa', @district_21_4, 'ward'),
('Nampindi', @district_21_4, 'ward'),
('Chitengule', @district_21_4, 'ward'),
('Kasuguti', @district_21_4, 'ward'),
('Balili', @district_21_4, 'ward'),
('Bunda Stoo', @district_21_4, 'ward'),
('Nyasura', @district_21_4, 'ward'),
('Nyamang''uta', @district_21_4, 'ward'),
('Ketare', @district_21_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Rorya', @region_21, 'district');

SET @district_21_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kigunga', @district_21_5, 'ward'),
('Kirogo', @district_21_5, 'ward'),
('Nyamtinga', @district_21_5, 'ward'),
('Nyamagaro', @district_21_5, 'ward'),
('Nyahongo', @district_21_5, 'ward'),
('Mkoma', @district_21_5, 'ward'),
('Tai', @district_21_5, 'ward'),
('Bukura', @district_21_5, 'ward'),
('Roche', @district_21_5, 'ward'),
('Kitembe', @district_21_5, 'ward'),
('Mirare', @district_21_5, 'ward'),
('Goribe', @district_21_5, 'ward'),
('Ikoma', @district_21_5, 'ward'),
('Koryo', @district_21_5, 'ward'),
('Bukwe', @district_21_5, 'ward'),
('Nyathorogo', @district_21_5, 'ward'),
('Rabour', @district_21_5, 'ward'),
('Kisumwa', @district_21_5, 'ward'),
('Komuge', @district_21_5, 'ward'),
('Nyamunga', @district_21_5, 'ward'),
('Kyang''ombe', @district_21_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Butiam', @region_21, 'district');

SET @district_21_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Bwiregi', @district_21_6, 'ward'),
('Buswahili', @district_21_6, 'ward'),
('Nyamimange', @district_21_6, 'ward'),
('Sirorisimba', @district_21_6, 'ward'),
('Buhemba', @district_21_6, 'ward'),
('Mirwa', @district_21_6, 'ward'),
('Muriaza', @district_21_6, 'ward'),
('Butiama', @district_21_6, 'ward'),
('Masaba', @district_21_6, 'ward'),
('Kyanyari', @district_21_6, 'ward'),
('Kukirango', @district_21_6, 'ward'),
('Buruma', @district_21_6, 'ward'),
('Nyakatende', @district_21_6, 'ward'),
('Etaro', @district_21_6, 'ward'),
('Nyegina', @district_21_6, 'ward'),
('Nyankanga', @district_21_6, 'ward'),
('Bisumwa', @district_21_6, 'ward'),
('Bukabwa', @district_21_6, 'ward'),
('Butuguri', @district_21_6, 'ward'),
('Busegwe', @district_21_6, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Musoma Urban', @region_21, 'district');

SET @district_21_7 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mukendo', @district_21_7, 'ward'),
('Mwigobero', @district_21_7, 'ward'),
('Iringo', @district_21_7, 'ward'),
('Kitaji', @district_21_7, 'ward'),
('Nyasho', @district_21_7, 'ward'),
('Bweri', @district_21_7, 'ward'),
('Nyakato', @district_21_7, 'ward'),
('Kigera', @district_21_7, 'ward'),
('Kamunyonge', @district_21_7, 'ward'),
('Nyamatare', @district_21_7, 'ward'),
('Mwisenge', @district_21_7, 'ward'),
('Buhare', @district_21_7, 'ward'),
('Makoko', @district_21_7, 'ward');


-- ============================================================
-- REGION: Manyara
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Manyara', NULL, 'region');

SET @region_22 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Babati', @region_22, 'district');

SET @district_22_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Magara', @district_22_1, 'ward'),
('Nkaiti', @district_22_1, 'ward'),
('Mwada', @district_22_1, 'ward'),
('Mamire', @district_22_1, 'ward'),
('Galapo', @district_22_1, 'ward'),
('Qashi', @district_22_1, 'ward'),
('Ayasanda', @district_22_1, 'ward'),
('Gidas', @district_22_1, 'ward'),
('Duru', @district_22_1, 'ward'),
('Riroda', @district_22_1, 'ward'),
('Arri', @district_22_1, 'ward'),
('Dareda', @district_22_1, 'ward'),
('Dabil', @district_22_1, 'ward'),
('Ufana', @district_22_1, 'ward'),
('Bashneti', @district_22_1, 'ward'),
('Madunga', @district_22_1, 'ward'),
('Kiru', @district_22_1, 'ward'),
('Magugu', @district_22_1, 'ward'),
('Endokise', @district_22_1, 'ward'),
('Boay', @district_22_1, 'ward'),
('Nar', @district_22_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Hanang', @region_22, 'district');

SET @district_22_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Balagidalalu', @district_22_2, 'ward'),
('Gehandu', @district_22_2, 'ward'),
('Laghanga', @district_22_2, 'ward'),
('Getanuwas', @district_22_2, 'ward'),
('Hirbadaw', @district_22_2, 'ward'),
('Bassodesh', @district_22_2, 'ward'),
('Bassotu', @district_22_2, 'ward'),
('Gendabi', @district_22_2, 'ward'),
('Mogitu', @district_22_2, 'ward'),
('Giting', @district_22_2, 'ward'),
('Masakta', @district_22_2, 'ward'),
('Masqaroda', @district_22_2, 'ward'),
('Endasak', @district_22_2, 'ward'),
('Gidahababieg', @district_22_2, 'ward'),
('Maskron', @district_22_2, 'ward'),
('Hidet', @district_22_2, 'ward'),
('Simbay', @district_22_2, 'ward'),
('Sirop', @district_22_2, 'ward'),
('Gisambalang', @district_22_2, 'ward'),
('Nangwa', @district_22_2, 'ward'),
('Katesh', @district_22_2, 'ward'),
('Ganana', @district_22_2, 'ward'),
('Dirma', @district_22_2, 'ward'),
('Lalaji', @district_22_2, 'ward'),
('Endasiwold', @district_22_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mbulu', @region_22, 'district');

SET @district_22_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Daudi', @district_22_3, 'ward'),
('Bargish', @district_22_3, 'ward'),
('Gehandu', @district_22_3, 'ward'),
('Kainam', @district_22_3, 'ward'),
('Murray', @district_22_3, 'ward'),
('Ayamaami', @district_22_3, 'ward'),
('Uhuru', @district_22_3, 'ward'),
('Tlawi', @district_22_3, 'ward'),
('Bashay', @district_22_3, 'ward'),
('Dongobesh', @district_22_3, 'ward'),
('Tumati', @district_22_3, 'ward'),
('Maretadu', @district_22_3, 'ward'),
('Maghang', @district_22_3, 'ward'),
('Haydom', @district_22_3, 'ward'),
('Yaeda Chini', @district_22_3, 'ward'),
('Masieda', @district_22_3, 'ward'),
('Marang', @district_22_3, 'ward'),
('Gunyoda', @district_22_3, 'ward'),
('Nahasey', @district_22_3, 'ward'),
('Endamilay', @district_22_3, 'ward'),
('Yaeda Ampa', @district_22_3, 'ward'),
('Masqaroda', @district_22_3, 'ward'),
('Nambisi', @district_22_3, 'ward'),
('Dinamu', @district_22_3, 'ward'),
('Ayamohe', @district_22_3, 'ward'),
('Sanu Baray', @district_22_3, 'ward'),
('Imboru', @district_22_3, 'ward'),
('Endagikot', @district_22_3, 'ward'),
('Geterer', @district_22_3, 'ward'),
('Hayderer', @district_22_3, 'ward'),
('Eshkesh', @district_22_3, 'ward'),
('Gidihim', @district_22_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Simanjiro', @region_22, 'district');

SET @district_22_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Orkesmet', @district_22_4, 'ward'),
('Loiborsiret', @district_22_4, 'ward'),
('Emboreet', @district_22_4, 'ward'),
('Terrat', @district_22_4, 'ward'),
('Oljoro  No. 5', @district_22_4, 'ward'),
('Shambarai', @district_22_4, 'ward'),
('Mererani', @district_22_4, 'ward'),
('Msitu wa Tembo', @district_22_4, 'ward'),
('Ngorika', @district_22_4, 'ward'),
('Liborsoit', @district_22_4, 'ward'),
('Ruvu Remiti', @district_22_4, 'ward'),
('Komolo', @district_22_4, 'ward'),
('Naisinyai', @district_22_4, 'ward'),
('Endiantu', @district_22_4, 'ward'),
('Endonyongijape', @district_22_4, 'ward'),
('Kitwai', @district_22_4, 'ward'),
('Naberera', @district_22_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kiteto', @region_22, 'district');

SET @district_22_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kibaya', @district_22_5, 'ward'),
('Partimbo', @district_22_5, 'ward'),
('Makame', @district_22_5, 'ward'),
('Ndedo', @district_22_5, 'ward'),
('Kijungu', @district_22_5, 'ward'),
('Lengatei', @district_22_5, 'ward'),
('Sunya', @district_22_5, 'ward'),
('Dongo', @district_22_5, 'ward'),
('Songambele', @district_22_5, 'ward'),
('Dosidosi', @district_22_5, 'ward'),
('Engusero', @district_22_5, 'ward'),
('Matui', @district_22_5, 'ward'),
('Bwagamoyo', @district_22_5, 'ward'),
('Loolera', @district_22_5, 'ward'),
('Magungu', @district_22_5, 'ward'),
('Namelock', @district_22_5, 'ward'),
('Njoro', @district_22_5, 'ward'),
('Olboroti', @district_22_5, 'ward'),
('Chapakazi', @district_22_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Babati Urban', @region_22, 'district');

SET @district_22_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Babati', @district_22_6, 'ward'),
('Mutuka', @district_22_6, 'ward'),
('Nangara', @district_22_6, 'ward'),
('Singe', @district_22_6, 'ward'),
('Bonga', @district_22_6, 'ward'),
('Bagara', @district_22_6, 'ward'),
('Sigino', @district_22_6, 'ward'),
('Maisaka', @district_22_6, 'ward');


-- ============================================================
-- REGION: Njombe
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Njombe', NULL, 'region');

SET @region_23 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Njombe Urban', @region_23, 'district');

SET @district_23_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Njombe Mjini', @district_23_1, 'ward'),
('Mjimwema', @district_23_1, 'ward'),
('Ramadhani', @district_23_1, 'ward'),
('Yakobi', @district_23_1, 'ward'),
('Kifanya', @district_23_1, 'ward'),
('Ihanga', @district_23_1, 'ward'),
('Iwungilo', @district_23_1, 'ward'),
('Luponde', @district_23_1, 'ward'),
('Matola', @district_23_1, 'ward'),
('Makowo', @district_23_1, 'ward'),
('Lugenge', @district_23_1, 'ward'),
('Uwemba', @district_23_1, 'ward'),
('Utalingolo', @district_23_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Wanging''ombe', @region_23, 'district');

SET @district_23_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Saja', @district_23_2, 'ward'),
('Kijombe', @district_23_2, 'ward'),
('Wanging''ombe', @district_23_2, 'ward'),
('Ilembula', @district_23_2, 'ward'),
('Uhambule', @district_23_2, 'ward'),
('Usuka', @district_23_2, 'ward'),
('Igwachanya', @district_23_2, 'ward'),
('Mdandu', @district_23_2, 'ward'),
('Igima', @district_23_2, 'ward'),
('Imalinyi', @district_23_2, 'ward'),
('Ulembwe', @district_23_2, 'ward'),
('Makoga', @district_23_2, 'ward'),
('Kipengere', @district_23_2, 'ward'),
('Igosi', @district_23_2, 'ward'),
('Wangama', @district_23_2, 'ward'),
('Kidugala', @district_23_2, 'ward'),
('Luduga', @district_23_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Makete', @region_23, 'district');

SET @district_23_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Lupalilo', @district_23_3, 'ward'),
('Mang''oto', @district_23_3, 'ward'),
('Iwawa', @district_23_3, 'ward'),
('Lupila', @district_23_3, 'ward'),
('Ukwama', @district_23_3, 'ward'),
('Bulongwa', @district_23_3, 'ward'),
('Kipagalo', @district_23_3, 'ward'),
('Iniho', @district_23_3, 'ward'),
('Ipelele', @district_23_3, 'ward'),
('Kigulu', @district_23_3, 'ward'),
('Matamba', @district_23_3, 'ward'),
('Mlondwe', @district_23_3, 'ward'),
('Kitulo', @district_23_3, 'ward'),
('Ikuwo', @district_23_3, 'ward'),
('Mfumbi', @district_23_3, 'ward'),
('Ipepo', @district_23_3, 'ward'),
('Mbalatse', @district_23_3, 'ward'),
('Tandala', @district_23_3, 'ward'),
('Luwumbu', @district_23_3, 'ward'),
('Isapulano', @district_23_3, 'ward'),
('Kigala', @district_23_3, 'ward'),
('Itundu', @district_23_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Njombe', @region_23, 'district');

SET @district_23_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mtwango', @district_23_4, 'ward'),
('Igongolo', @district_23_4, 'ward'),
('Kichiwa', @district_23_4, 'ward'),
('Ninga', @district_23_4, 'ward'),
('Ikuna', @district_23_4, 'ward'),
('Kidegembye', @district_23_4, 'ward'),
('Matembwe', @district_23_4, 'ward'),
('Lupembe', @district_23_4, 'ward'),
('Ikondo', @district_23_4, 'ward'),
('Mfriga', @district_23_4, 'ward'),
('Idamba', @district_23_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Ludewa', @region_23, 'district');

SET @district_23_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Lumbila', @district_23_5, 'ward'),
('Kilondo', @district_23_5, 'ward'),
('Mawengi', @district_23_5, 'ward'),
('Lupanga', @district_23_5, 'ward'),
('Mlangali', @district_23_5, 'ward'),
('Milo', @district_23_5, 'ward'),
('Lugarawa', @district_23_5, 'ward'),
('Madope', @district_23_5, 'ward'),
('Madilu', @district_23_5, 'ward'),
('Mundindi', @district_23_5, 'ward'),
('Mavanga', @district_23_5, 'ward'),
('Ibumi', @district_23_5, 'ward'),
('Nkomang''ombe', @district_23_5, 'ward'),
('Luilo', @district_23_5, 'ward'),
('Masasi', @district_23_5, 'ward'),
('Manda', @district_23_5, 'ward'),
('Iwela', @district_23_5, 'ward'),
('Lupingu', @district_23_5, 'ward'),
('Ludewa', @district_23_5, 'ward'),
('Ludende', @district_23_5, 'ward'),
('Luana', @district_23_5, 'ward'),
('Makonde', @district_23_5, 'ward'),
('Mkongobaki', @district_23_5, 'ward'),
('Lifuma', @district_23_5, 'ward'),
('Ruhuhu', @district_23_5, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Makambako Township Authority', @region_23, 'district');

SET @district_23_6 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Ubena', @district_23_6, 'ward'),
('Mjimwema', @district_23_6, 'ward'),
('Mlowa', @district_23_6, 'ward'),
('Lyamkena', @district_23_6, 'ward'),
('Mwembetogwa', @district_23_6, 'ward'),
('Mahongole', @district_23_6, 'ward'),
('Kitandililo', @district_23_6, 'ward'),
('Utengule', @district_23_6, 'ward');


-- ============================================================
-- REGION: Katavi
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Katavi', NULL, 'region');

SET @region_24 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Mpanda Urban', @region_24, 'district');

SET @district_24_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kakese', @district_24_1, 'ward'),
('Misunkumilo', @district_24_1, 'ward'),
('Shanwe', @district_24_1, 'ward'),
('Makanyagio', @district_24_1, 'ward'),
('Kashaulili', @district_24_1, 'ward'),
('Mpanda Hotel', @district_24_1, 'ward'),
('Kawajense', @district_24_1, 'ward'),
('Nsemulwa', @district_24_1, 'ward'),
('Ilembo', @district_24_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mpanda', @region_24, 'district');

SET @district_24_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mishamo', @district_24_2, 'ward'),
('Mpanda Ndogo', @district_24_2, 'ward'),
('Mwese', @district_24_2, 'ward'),
('Katuma', @district_24_2, 'ward'),
('Kabungu', @district_24_2, 'ward'),
('Sibwesa', @district_24_2, 'ward'),
('Ikola', @district_24_2, 'ward'),
('Karema', @district_24_2, 'ward'),
('Kapalamsenga', @district_24_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mlele', @region_24, 'district');

SET @district_24_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kasokola', @district_24_3, 'ward'),
('Ugala', @district_24_3, 'ward'),
('Litapunga', @district_24_3, 'ward'),
('Mtapenda', @district_24_3, 'ward'),
('Inyonga', @district_24_3, 'ward'),
('Ilunde', @district_24_3, 'ward'),
('Ilela', @district_24_3, 'ward'),
('Utende', @district_24_3, 'ward'),
('Mamba', @district_24_3, 'ward'),
('Mbede', @district_24_3, 'ward'),
('Urwira', @district_24_3, 'ward'),
('Nsimbo', @district_24_3, 'ward'),
('Magamba', @district_24_3, 'ward'),
('Sitalike', @district_24_3, 'ward'),
('Usevya', @district_24_3, 'ward'),
('Kibaoni', @district_24_3, 'ward'),
('Machimboni', @district_24_3, 'ward'),
('Kapalala', @district_24_3, 'ward'),
('Itenka', @district_24_3, 'ward'),
('Ikuba', @district_24_3, 'ward'),
('Mwamapuli', @district_24_3, 'ward'),
('Majimoto', @district_24_3, 'ward'),
('Kasansa', @district_24_3, 'ward'),
('Nsenkwa', @district_24_3, 'ward');


-- ============================================================
-- REGION: Simiyu
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Simiyu', NULL, 'region');

SET @region_25 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Bariadi', @region_25, 'district');

SET @district_25_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Nkindwabiye', @district_25_1, 'ward'),
('Mwaubinge', @district_25_1, 'ward'),
('Nkololo', @district_25_1, 'ward'),
('Mwaumatondo', @district_25_1, 'ward'),
('Madobana', @district_25_1, 'ward'),
('Nyangokolwa', @district_25_1, 'ward'),
('Somanda', @district_25_1, 'ward'),
('Bunamhala', @district_25_1, 'ward'),
('Sakwe', @district_25_1, 'ward'),
('Ngulyati', @district_25_1, 'ward'),
('Mhango', @district_25_1, 'ward'),
('Kilalo', @district_25_1, 'ward'),
('Kasoli', @district_25_1, 'ward'),
('Gambosi', @district_25_1, 'ward'),
('Guduwi', @district_25_1, 'ward'),
('Ikungulyabashashi', @district_25_1, 'ward'),
('Nyakabindi', @district_25_1, 'ward'),
('Dutwa', @district_25_1, 'ward'),
('Sapiwi', @district_25_1, 'ward'),
('Matongo', @district_25_1, 'ward'),
('Gilya', @district_25_1, 'ward'),
('Isanga', @district_25_1, 'ward'),
('Bariadi', @district_25_1, 'ward'),
('Malambo', @district_25_1, 'ward'),
('Sima', @district_25_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Itilima', @region_25, 'district');

SET @district_25_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Bumera', @district_25_2, 'ward'),
('Ikindiro', @district_25_2, 'ward'),
('Mwamtani', @district_25_2, 'ward'),
('Sagata', @district_25_2, 'ward'),
('Mwaswale', @district_25_2, 'ward'),
('Nkuyu', @district_25_2, 'ward'),
('Mhunze', @district_25_2, 'ward'),
('Migato', @district_25_2, 'ward'),
('Chinamili', @district_25_2, 'ward'),
('Ndolelezi', @district_25_2, 'ward'),
('Lagangabilili', @district_25_2, 'ward'),
('Budalabujiga', @district_25_2, 'ward'),
('Nkoma', @district_25_2, 'ward'),
('Mwalushu', @district_25_2, 'ward'),
('Mwamapalala', @district_25_2, 'ward'),
('Nyamalapa', @district_25_2, 'ward'),
('Lugulu', @district_25_2, 'ward'),
('Nhobora', @district_25_2, 'ward'),
('Zagayu', @district_25_2, 'ward'),
('Kinang''weli', @district_25_2, 'ward'),
('Mbita', @district_25_2, 'ward'),
('Sawida', @district_25_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Meatu', @region_25, 'district');

SET @district_25_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mwanhuzi', @district_25_3, 'ward'),
('Nkoma', @district_25_3, 'ward'),
('Kimali', @district_25_3, 'ward'),
('Mwamishali', @district_25_3, 'ward'),
('Itinje', @district_25_3, 'ward'),
('Kisesa', @district_25_3, 'ward'),
('Mwandoya', @district_25_3, 'ward'),
('Lingeka', @district_25_3, 'ward'),
('Sakasaka', @district_25_3, 'ward'),
('Imalaseko', @district_25_3, 'ward'),
('Mwabuzo', @district_25_3, 'ward'),
('Mwamalole', @district_25_3, 'ward'),
('Mwanjolo', @district_25_3, 'ward'),
('Mwabuma', @district_25_3, 'ward'),
('Mwabusalu', @district_25_3, 'ward'),
('Lubiga', @district_25_3, 'ward'),
('Mwamanongu', @district_25_3, 'ward'),
('Nghoboko', @district_25_3, 'ward'),
('Bukundi', @district_25_3, 'ward'),
('Mwasengela', @district_25_3, 'ward'),
('Mwamanimba', @district_25_3, 'ward'),
('Tindabuligi', @district_25_3, 'ward'),
('Mwakisandu', @district_25_3, 'ward'),
('Mwangundo', @district_25_3, 'ward'),
('Mwanyahina', @district_25_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Maswa', @region_25, 'district');

SET @district_25_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Ng''wigwa', @district_25_4, 'ward'),
('Nguliguli', @district_25_4, 'ward'),
('Ipililo', @district_25_4, 'ward'),
('Senani', @district_25_4, 'ward'),
('Mwamanenge', @district_25_4, 'ward'),
('Sukuma', @district_25_4, 'ward'),
('Mpindo', @district_25_4, 'ward'),
('Dakama', @district_25_4, 'ward'),
('Lalago', @district_25_4, 'ward'),
('Budekwa', @district_25_4, 'ward'),
('Busilili', @district_25_4, 'ward'),
('Sengwa', @district_25_4, 'ward'),
('Masela', @district_25_4, 'ward'),
('Isanga', @district_25_4, 'ward'),
('Zanzui', @district_25_4, 'ward'),
('Mwamashimba', @district_25_4, 'ward'),
('Buchambi', @district_25_4, 'ward'),
('Kadoto', @district_25_4, 'ward'),
('Shishiyu', @district_25_4, 'ward'),
('Nyabubinza', @district_25_4, 'ward'),
('Mwang''honoli', @district_25_4, 'ward'),
('Kulimi', @district_25_4, 'ward'),
('Malampaka', @district_25_4, 'ward'),
('Badi', @district_25_4, 'ward'),
('Nyalikungu', @district_25_4, 'ward'),
('Binza', @district_25_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Busega', @region_25, 'district');

SET @district_25_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Shigala', @district_25_5, 'ward'),
('Badugu', @district_25_5, 'ward'),
('Nyaluhande', @district_25_5, 'ward'),
('Kiloleli', @district_25_5, 'ward'),
('Mwamanyili', @district_25_5, 'ward'),
('Kabita', @district_25_5, 'ward'),
('Kalemela', @district_25_5, 'ward'),
('Lamadi', @district_25_5, 'ward'),
('Lutubiga', @district_25_5, 'ward'),
('Mkula', @district_25_5, 'ward'),
('Ngasamo', @district_25_5, 'ward'),
('Malili', @district_25_5, 'ward'),
('Igalukilo', @district_25_5, 'ward');


-- ============================================================
-- REGION: Geita
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Geita', NULL, 'region');

SET @region_26 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Geita', @region_26, 'district');

SET @district_26_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kagu', @district_26_1, 'ward'),
('Bugulula', @district_26_1, 'ward'),
('Senga', @district_26_1, 'ward'),
('Kakubilo', @district_26_1, 'ward'),
('Nkome', @district_26_1, 'ward'),
('Katoma', @district_26_1, 'ward'),
('Nzera', @district_26_1, 'ward'),
('Lwezera', @district_26_1, 'ward'),
('Kamhanga', @district_26_1, 'ward'),
('Bugalama', @district_26_1, 'ward'),
('Lubanga', @district_26_1, 'ward'),
('Isulwabutunde', @district_26_1, 'ward'),
('Kasamwa', @district_26_1, 'ward'),
('Bung''wangoko', @district_26_1, 'ward'),
('Bulela', @district_26_1, 'ward'),
('Ihanamilo', @district_26_1, 'ward'),
('Nyanguku', @district_26_1, 'ward'),
('Kamena', @district_26_1, 'ward'),
('Nyamalimbe', @district_26_1, 'ward'),
('Bujula', @district_26_1, 'ward'),
('Bukoli', @district_26_1, 'ward'),
('Butobela', @district_26_1, 'ward'),
('Nyarugusu', @district_26_1, 'ward'),
('Nyakamwaga', @district_26_1, 'ward'),
('Lwamgasa', @district_26_1, 'ward'),
('Kaseme', @district_26_1, 'ward'),
('Busanda', @district_26_1, 'ward'),
('Katoro', @district_26_1, 'ward'),
('Nyamigota', @district_26_1, 'ward'),
('Nyakagomba', @district_26_1, 'ward'),
('Nyachiluluma', @district_26_1, 'ward'),
('Bukondo', @district_26_1, 'ward'),
('Chigunga', @district_26_1, 'ward'),
('Mtakuja', @district_26_1, 'ward'),
('Kalangalala', @district_26_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Nyang''hwale', @region_26, 'district');

SET @district_26_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Shabaka', @district_26_2, 'ward'),
('Busolwa', @district_26_2, 'ward'),
('Kakura', @district_26_2, 'ward'),
('Nyugwa', @district_26_2, 'ward'),
('Bukwimba', @district_26_2, 'ward'),
('Kafita', @district_26_2, 'ward'),
('Kharumwa', @district_26_2, 'ward'),
('Izunya', @district_26_2, 'ward'),
('Mwingiro', @district_26_2, 'ward'),
('Nyabulanda', @district_26_2, 'ward'),
('Nyang''hwale', @district_26_2, 'ward'),
('Nyijundu', @district_26_2, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mbogwe', @region_26, 'district');

SET @district_26_3 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Nanda', @district_26_3, 'ward'),
('Ikobe', @district_26_3, 'ward'),
('Lulembela', @district_26_3, 'ward'),
('Ikunguigazi', @district_26_3, 'ward'),
('Isebya', @district_26_3, 'ward'),
('Ilolangulu', @district_26_3, 'ward'),
('Mbogwe', @district_26_3, 'ward'),
('Mgemo', @district_26_3, 'ward'),
('Ushirika', @district_26_3, 'ward'),
('Nyasato', @district_26_3, 'ward'),
('Lugunga', @district_26_3, 'ward'),
('Nyakafulu', @district_26_3, 'ward'),
('Bukandwe', @district_26_3, 'ward'),
('Ng''homolwa', @district_26_3, 'ward'),
('Masumbwe', @district_26_3, 'ward'),
('Iponya', @district_26_3, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Bukombe', @region_26, 'district');

SET @district_26_4 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Runzewe Mashariki', @district_26_4, 'ward'),
('Runzewe Magharibi', @district_26_4, 'ward'),
('Namonge', @district_26_4, 'ward'),
('Uyovu', @district_26_4, 'ward'),
('Busonzo', @district_26_4, 'ward'),
('Ng''anzo', @district_26_4, 'ward'),
('Butinzya', @district_26_4, 'ward'),
('Ushirombo', @district_26_4, 'ward'),
('Lyambamgongo', @district_26_4, 'ward'),
('Bukombe', @district_26_4, 'ward'),
('Bugelenga', @district_26_4, 'ward'),
('Iyogelo', @district_26_4, 'ward'),
('Igulwa', @district_26_4, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Chato', @region_26, 'district');

SET @district_26_5 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Muganza', @district_26_5, 'ward'),
('Bwongera', @district_26_5, 'ward'),
('Kigongo', @district_26_5, 'ward'),
('Nyamirembe', @district_26_5, 'ward'),
('Ichwankima', @district_26_5, 'ward'),
('Kachwamba', @district_26_5, 'ward'),
('Kasenga', @district_26_5, 'ward'),
('Ilemela', @district_26_5, 'ward'),
('Chato', @district_26_5, 'ward'),
('Muungano', @district_26_5, 'ward'),
('Bwina', @district_26_5, 'ward'),
('Katende', @district_26_5, 'ward'),
('Ilyamchele', @district_26_5, 'ward'),
('Bukome', @district_26_5, 'ward'),
('Buziku', @district_26_5, 'ward'),
('Nyarutembo', @district_26_5, 'ward'),
('Makurugusi', @district_26_5, 'ward'),
('Buseresere', @district_26_5, 'ward'),
('Butengorumasa', @district_26_5, 'ward'),
('Iparamasa', @district_26_5, 'ward'),
('Bwanga', @district_26_5, 'ward'),
('Bwera', @district_26_5, 'ward');


-- ============================================================
-- REGION: Kaskazini Unguja
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Kaskazini Unguja', NULL, 'region');

SET @region_27 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Kaskazini A', @region_27, 'district');

SET @district_27_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mkokotoni', @district_27_1, 'ward'),
('Mto wa Pwani', @district_27_1, 'ward'),
('Pale', @district_27_1, 'ward'),
('Kivunge', @district_27_1, 'ward'),
('Tumbatu Gomani', @district_27_1, 'ward'),
('Jongowe', @district_27_1, 'ward'),
('Mkwajuni', @district_27_1, 'ward'),
('Kibeni', @district_27_1, 'ward'),
('Muwange', @district_27_1, 'ward'),
('Pitanazako', @district_27_1, 'ward'),
('Potowa', @district_27_1, 'ward'),
('Fukuchani', @district_27_1, 'ward'),
('Kidoti', @district_27_1, 'ward'),
('Tazari', @district_27_1, 'ward'),
('Kigunda', @district_27_1, 'ward'),
('Nungwi', @district_27_1, 'ward'),
('Matemwe', @district_27_1, 'ward'),
('Kijini', @district_27_1, 'ward'),
('Pwani Mchangani', @district_27_1, 'ward'),
('Gamba', @district_27_1, 'ward'),
('Moga', @district_27_1, 'ward'),
('Chaani Masingini', @district_27_1, 'ward'),
('Mcheza Shauri', @district_27_1, 'ward'),
('Chaani Kubwa', @district_27_1, 'ward'),
('Kikobweni', @district_27_1, 'ward'),
('Bandamaji', @district_27_1, 'ward'),
('Kinyasini', @district_27_1, 'ward'),
('Kandwi', @district_27_1, 'ward'),
('Chutama', @district_27_1, 'ward'),
('Kisongoni', @district_27_1, 'ward'),
('Kilindi', @district_27_1, 'ward'),
('Kilimani', @district_27_1, 'ward'),
('Uvivini', @district_27_1, 'ward'),
('Kidombo', @district_27_1, 'ward'),
('Bwereu', @district_27_1, 'ward'),
('Kigomani', @district_27_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kaskazini B', @region_27, 'district');

SET @district_27_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Misufini', @district_27_2, 'ward'),
('Makoba', @district_27_2, 'ward'),
('Mangapwani', @district_27_2, 'ward'),
('Fujoni', @district_27_2, 'ward'),
('Kiomba Mvua', @district_27_2, 'ward'),
('Donge  Mchangani', @district_27_2, 'ward'),
('Mkadini', @district_27_2, 'ward'),
('Zingwe Zingwe', @district_27_2, 'ward'),
('Kitope', @district_27_2, 'ward'),
('Mahonda', @district_27_2, 'ward'),
('Mnyimbi', @district_27_2, 'ward'),
('Donge Mtambile', @district_27_2, 'ward'),
('Kinduni', @district_27_2, 'ward'),
('Donge Karange', @district_27_2, 'ward'),
('Donge Mbiji', @district_27_2, 'ward'),
('Donge Kipange', @district_27_2, 'ward'),
('Donge Vijibweni', @district_27_2, 'ward'),
('Upenja', @district_27_2, 'ward'),
('Kiwengwa', @district_27_2, 'ward'),
('Pangeni', @district_27_2, 'ward'),
('Kilombero', @district_27_2, 'ward'),
('Mgambo', @district_27_2, 'ward'),
('Muwanda', @district_27_2, 'ward'),
('Matetema', @district_27_2, 'ward'),
('Kidanzini', @district_27_2, 'ward'),
('Mbaleni', @district_27_2, 'ward'),
('Mafufuni', @district_27_2, 'ward'),
('Mkataleni', @district_27_2, 'ward'),
('Njia ya Mtoni', @district_27_2, 'ward');


-- ============================================================
-- REGION: Kusini Unguja
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Kusini Unguja', NULL, 'region');

SET @region_28 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Kati', @region_28, 'district');

SET @district_28_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Dunga Bweni', @district_28_1, 'ward'),
('Ubago', @district_28_1, 'ward'),
('Kidimni', @district_28_1, 'ward'),
('Machui', @district_28_1, 'ward'),
('Kiboje Muembeshauri', @district_28_1, 'ward'),
('Miwani', @district_28_1, 'ward'),
('Kiboje Mkwajuni', @district_28_1, 'ward'),
('Ghana', @district_28_1, 'ward'),
('Koani', @district_28_1, 'ward'),
('Mgeni Haji', @district_28_1, 'ward'),
('Uzini', @district_28_1, 'ward'),
('Mitakawani', @district_28_1, 'ward'),
('Tunduni', @district_28_1, 'ward'),
('Bambi', @district_28_1, 'ward'),
('Pagali', @district_28_1, 'ward'),
('Umbuji', @district_28_1, 'ward'),
('Mchangani', @district_28_1, 'ward'),
('Dunga Kiembeni', @district_28_1, 'ward'),
('Ndijani Mseweni', @district_28_1, 'ward'),
('Jendele', @district_28_1, 'ward'),
('Chwaka', @district_28_1, 'ward'),
('Marumbi', @district_28_1, 'ward'),
('Uroa', @district_28_1, 'ward'),
('Pongwe', @district_28_1, 'ward'),
('Jumbi', @district_28_1, 'ward'),
('Tunguu', @district_28_1, 'ward'),
('Binguni', @district_28_1, 'ward'),
('Cheju', @district_28_1, 'ward'),
('Bungi', @district_28_1, 'ward'),
('Unguja Ukuu Kaepwani', @district_28_1, 'ward'),
('Kikungwi', @district_28_1, 'ward'),
('Uzi', @district_28_1, 'ward'),
('Ng''ambwa', @district_28_1, 'ward'),
('Charawe', @district_28_1, 'ward'),
('Ukongoroni', @district_28_1, 'ward'),
('Michamvi', @district_28_1, 'ward'),
('Mpapa', @district_28_1, 'ward'),
('Unguja Ukuu Kaebona', @district_28_1, 'ward'),
('Ndijani Muembe Punda', @district_28_1, 'ward'),
('Tindini', @district_28_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Kusini', @region_28, 'district');

SET @district_28_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Nganani', @district_28_2, 'ward'),
('Kijini', @district_28_2, 'ward'),
('Mzuri', @district_28_2, 'ward'),
('Kajengwa', @district_28_2, 'ward'),
('Jambiani Kikadini', @district_28_2, 'ward'),
('Mtende', @district_28_2, 'ward'),
('Kibuteni', @district_28_2, 'ward'),
('Kizimkazi Dimbani', @district_28_2, 'ward'),
('Kizimkazi Mkunguni', @district_28_2, 'ward'),
('Muyuni A', @district_28_2, 'ward'),
('Muyuni B', @district_28_2, 'ward'),
('Muyuni C', @district_28_2, 'ward'),
('Pete', @district_28_2, 'ward'),
('Muungoni', @district_28_2, 'ward'),
('Paje', @district_28_2, 'ward'),
('Jambiani Kibigija', @district_28_2, 'ward'),
('Bwejuu', @district_28_2, 'ward'),
('Kitogani', @district_28_2, 'ward'),
('Kiongoni', @district_28_2, 'ward'),
('Tasani', @district_28_2, 'ward'),
('Dongwe', @district_28_2, 'ward');


-- ============================================================
-- REGION: Mjini Magharibi
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Mjini Magharibi', NULL, 'region');

SET @region_29 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Magharibi', @region_29, 'district');

SET @district_29_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Mwera', @district_29_1, 'ward'),
('Mtoni', @district_29_1, 'ward'),
('Bububu', @district_29_1, 'ward'),
('Chuini', @district_29_1, 'ward'),
('Kama', @district_29_1, 'ward'),
('Mfenesini', @district_29_1, 'ward'),
('Mwakaje', @district_29_1, 'ward'),
('Fuoni Kibondeni', @district_29_1, 'ward'),
('Kianga', @district_29_1, 'ward'),
('Dole', @district_29_1, 'ward'),
('Kizimbani', @district_29_1, 'ward'),
('Mbuzini', @district_29_1, 'ward'),
('Bumbwisudi', @district_29_1, 'ward'),
('Maungani', @district_29_1, 'ward'),
('Shakani', @district_29_1, 'ward'),
('Kiembesamaki', @district_29_1, 'ward'),
('Chukwani', @district_29_1, 'ward'),
('Fumba', @district_29_1, 'ward'),
('Bweleo', @district_29_1, 'ward'),
('Dimani', @district_29_1, 'ward'),
('Kombeni', @district_29_1, 'ward'),
('Mwanakwerekwe', @district_29_1, 'ward'),
('Mtopepo', @district_29_1, 'ward'),
('Magogoni', @district_29_1, 'ward'),
('Mtoni Kidatu', @district_29_1, 'ward'),
('Mwanyanya', @district_29_1, 'ward'),
('Fuoni Kijito Upele', @district_29_1, 'ward'),
('Tomondo', @district_29_1, 'ward'),
('Welezo', @district_29_1, 'ward'),
('Mtufaani', @district_29_1, 'ward'),
('Sharifumsa', @district_29_1, 'ward'),
('Kibweni', @district_29_1, 'ward'),
('Kihinani', @district_29_1, 'ward'),
('Mombasa', @district_29_1, 'ward'),
('Kisauni', @district_29_1, 'ward'),
('Melinne', @district_29_1, 'ward'),
('Pangawe', @district_29_1, 'ward'),
('Kinuni', @district_29_1, 'ward'),
('Nyamanzi', @district_29_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mjini', @region_29, 'district');

SET @district_29_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Shangani', @district_29_2, 'ward'),
('Mkunazini', @district_29_2, 'ward'),
('Kiponda', @district_29_2, 'ward'),
('Malindi', @district_29_2, 'ward'),
('Mchangani', @district_29_2, 'ward'),
('Mlandege', @district_29_2, 'ward'),
('Mwembeladu', @district_29_2, 'ward'),
('Gulioni', @district_29_2, 'ward'),
('Makadara', @district_29_2, 'ward'),
('Shaurimoyo', @district_29_2, 'ward'),
('Mwembe Makumbi', @district_29_2, 'ward'),
('Chumbuni', @district_29_2, 'ward'),
('Kwamtipura', @district_29_2, 'ward'),
('Kilimahewa Juu', @district_29_2, 'ward'),
('Amani', @district_29_2, 'ward'),
('Nyerere', @district_29_2, 'ward'),
('Sebleni', @district_29_2, 'ward'),
('Magomeni', @district_29_2, 'ward'),
('Mpendae', @district_29_2, 'ward'),
('Urusi', @district_29_2, 'ward'),
('Kilimani', @district_29_2, 'ward'),
('Miembeni', @district_29_2, 'ward'),
('Kikwajuni Juu', @district_29_2, 'ward'),
('Kikwajuni Bondeni', @district_29_2, 'ward'),
('Kisima Majongoo', @district_29_2, 'ward'),
('Vikokotoni', @district_29_2, 'ward'),
('Muembetanga', @district_29_2, 'ward'),
('Muembeshauri', @district_29_2, 'ward'),
('Rahaleo', @district_29_2, 'ward'),
('Kwaalimsha', @district_29_2, 'ward'),
('Mikunguni', @district_29_2, 'ward'),
('Mkele', @district_29_2, 'ward'),
('Muungano', @district_29_2, 'ward'),
('Sogea', @district_29_2, 'ward'),
('Jang''ombe', @district_29_2, 'ward'),
('Kidongo Chekundu', @district_29_2, 'ward'),
('Matarumbeta', @district_29_2, 'ward'),
('Kwahani', @district_29_2, 'ward'),
('Kwaalinatu', @district_29_2, 'ward'),
('Karakana', @district_29_2, 'ward'),
('Kilimahewa Bondeni', @district_29_2, 'ward'),
('Kwa Wazee', @district_29_2, 'ward'),
('Migombani', @district_29_2, 'ward'),
('Meya', @district_29_2, 'ward'),
('Kisiwandui', @district_29_2, 'ward');


-- ============================================================
-- REGION: Kaskazini Pemba
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Kaskazini Pemba', NULL, 'region');

SET @region_30 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Wete', @region_30, 'district');

SET @district_30_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Kipangani', @district_30_1, 'ward'),
('Mtambwe Kaskazini', @district_30_1, 'ward'),
('Fundo', @district_30_1, 'ward'),
('Mchanga Mdogo', @district_30_1, 'ward'),
('Kambini', @district_30_1, 'ward'),
('Kojani', @district_30_1, 'ward'),
('Ole', @district_30_1, 'ward'),
('Kangagani', @district_30_1, 'ward'),
('Kiuyu Minungwini', @district_30_1, 'ward'),
('Piki', @district_30_1, 'ward'),
('Kisiwani', @district_30_1, 'ward'),
('Gando', @district_30_1, 'ward'),
('Ukunjwi', @district_30_1, 'ward'),
('Pandani', @district_30_1, 'ward'),
('Shengejuu', @district_30_1, 'ward'),
('Bopwe', @district_30_1, 'ward'),
('Utaani', @district_30_1, 'ward'),
('Mtambwe Kusini', @district_30_1, 'ward'),
('Selem', @district_30_1, 'ward'),
('Kinyikani', @district_30_1, 'ward'),
('Chwale', @district_30_1, 'ward'),
('Maziwani', @district_30_1, 'ward'),
('Mpambani', @district_30_1, 'ward'),
('Mjini Ole', @district_30_1, 'ward'),
('Kiuyu Kigongoni', @district_30_1, 'ward'),
('Mzambarauni Takao', @district_30_1, 'ward'),
('Junguni', @district_30_1, 'ward'),
('Kiungoni', @district_30_1, 'ward'),
('Pembeni', @district_30_1, 'ward'),
('Kizimbani', @district_30_1, 'ward'),
('Limbani', @district_30_1, 'ward'),
('Jadida', @district_30_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Micheweni', @region_30, 'district');

SET @district_30_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Micheweni', @district_30_2, 'ward'),
('Msuka Mashariki', @district_30_2, 'ward'),
('Kinowe', @district_30_2, 'ward'),
('Tumbe Mashariki', @district_30_2, 'ward'),
('Mgogoni', @district_30_2, 'ward'),
('Shumba Viamboni', @district_30_2, 'ward'),
('Finya', @district_30_2, 'ward'),
('Konde', @district_30_2, 'ward'),
('Wingwi Mapofu', @district_30_2, 'ward'),
('Kiuyu Mbuyuni', @district_30_2, 'ward'),
('Makangale', @district_30_2, 'ward'),
('Wingwi Njuguni', @district_30_2, 'ward'),
('Shumba Mjini', @district_30_2, 'ward'),
('Majenzi', @district_30_2, 'ward'),
('Mjini Wingwi', @district_30_2, 'ward'),
('Msuka Magharibi', @district_30_2, 'ward'),
('Chimba', @district_30_2, 'ward'),
('Tumbe Magharibi', @district_30_2, 'ward'),
('Sizini', @district_30_2, 'ward'),
('Kinyasini', @district_30_2, 'ward'),
('Mihogoni', @district_30_2, 'ward'),
('Kifundi', @district_30_2, 'ward'),
('Maziwa Ng''ombe', @district_30_2, 'ward'),
('Tondooni', @district_30_2, 'ward'),
('Mtemani', @district_30_2, 'ward'),
('Wingwi Mjananza', @district_30_2, 'ward'),
('Mlindo', @district_30_2, 'ward');


-- ============================================================
-- REGION: Kusini Pemba
-- ============================================================

INSERT INTO locations (name, parent_id, type)
VALUES ('Kusini Pemba', NULL, 'region');

SET @region_31 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES ('Chake Chake', @region_31, 'district');

SET @district_31_1 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Chanjaani', @district_31_1, 'ward'),
('Wawi', @district_31_1, 'ward'),
('Pujini', @district_31_1, 'ward'),
('Ziwani', @district_31_1, 'ward'),
('Ndagoni', @district_31_1, 'ward'),
('Kwale', @district_31_1, 'ward'),
('Vitongoji', @district_31_1, 'ward'),
('Ng''ambwa', @district_31_1, 'ward'),
('Shungi', @district_31_1, 'ward'),
('Chonga', @district_31_1, 'ward'),
('Mgelema', @district_31_1, 'ward'),
('Kilindi', @district_31_1, 'ward'),
('Tibirinzi', @district_31_1, 'ward'),
('Chachani', @district_31_1, 'ward'),
('Wara', @district_31_1, 'ward'),
('Mvumoni', @district_31_1, 'ward'),
('Matale', @district_31_1, 'ward'),
('Wesha', @district_31_1, 'ward'),
('Uwandani', @district_31_1, 'ward'),
('Madungu', @district_31_1, 'ward'),
('Mgogoni', @district_31_1, 'ward'),
('Dodo', @district_31_1, 'ward'),
('Mbuzini', @district_31_1, 'ward'),
('Michungwani', @district_31_1, 'ward'),
('Kibokoni', @district_31_1, 'ward'),
('Kichungwani', @district_31_1, 'ward'),
('Msingini', @district_31_1, 'ward'),
('Mkoroshoni', @district_31_1, 'ward'),
('Mfikiwa', @district_31_1, 'ward');

INSERT INTO locations (name, parent_id, type)
VALUES ('Mkoani', @region_31, 'district');

SET @district_31_2 = LAST_INSERT_ID();

INSERT INTO locations (name, parent_id, type)
VALUES
('Ng''ombeni', @district_31_2, 'ward'),
('Makombeni', @district_31_2, 'ward'),
('Makoongwe', @district_31_2, 'ward'),
('Shidi', @district_31_2, 'ward'),
('Mkanyageni', @district_31_2, 'ward'),
('Michenzani', @district_31_2, 'ward'),
('Chokocho', @district_31_2, 'ward'),
('Kisiwa Panza', @district_31_2, 'ward'),
('Kangani', @district_31_2, 'ward'),
('Kengeja', @district_31_2, 'ward'),
('Muambe', @district_31_2, 'ward'),
('Kiwani', @district_31_2, 'ward'),
('Mtambile', @district_31_2, 'ward'),
('Mizingani', @district_31_2, 'ward'),
('Ngwachani', @district_31_2, 'ward'),
('Chambani', @district_31_2, 'ward'),
('Wambaa', @district_31_2, 'ward'),
('Mbuguani', @district_31_2, 'ward'),
('Uweleni', @district_31_2, 'ward'),
('Mtangani', @district_31_2, 'ward'),
('Ukutini', @district_31_2, 'ward'),
('Chumbageni', @district_31_2, 'ward'),
('Mbuyuni', @district_31_2, 'ward'),
('Stahabu', @district_31_2, 'ward'),
('Kuukuu', @district_31_2, 'ward'),
('Mjimbini', @district_31_2, 'ward'),
('Shamiani', @district_31_2, 'ward'),
('Jombwe', @district_31_2, 'ward'),
('Kendwa', @district_31_2, 'ward'),
('Minazini', @district_31_2, 'ward'),
('Mgagadu', @district_31_2, 'ward'),
('Mkungu', @district_31_2, 'ward'),
('Changaweni', @district_31_2, 'ward');

