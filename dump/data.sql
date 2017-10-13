--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.4
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: cities; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE cities (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    region_id integer NOT NULL
);


ALTER TABLE cities OWNER TO root;

--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cities_id_seq OWNER TO root;

--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE cities_id_seq OWNED BY cities.id;


--
-- Name: regions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE regions (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE regions OWNER TO root;

--
-- Name: regions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE regions_id_seq OWNER TO root;

--
-- Name: regions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE regions_id_seq OWNED BY regions.id;


--
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY cities ALTER COLUMN id SET DEFAULT nextval('cities_id_seq'::regclass);


--
-- Name: regions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY regions ALTER COLUMN id SET DEFAULT nextval('regions_id_seq'::regclass);


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO cities VALUES (1, 'Александрия', 2);
INSERT INTO cities VALUES (2, 'Александровск', 3);
INSERT INTO cities VALUES (3, 'Алёшки', 4);
INSERT INTO cities VALUES (4, 'Алупка', 5);
INSERT INTO cities VALUES (5, 'Ананьев', 6);
INSERT INTO cities VALUES (6, 'Андрушёвка', 7);
INSERT INTO cities VALUES (7, 'Апостолово', 8);
INSERT INTO cities VALUES (8, 'Ахтырка', 9);
INSERT INTO cities VALUES (9, 'Балаклея', 10);
INSERT INTO cities VALUES (10, 'Бар', 11);
INSERT INTO cities VALUES (11, 'Батурин', 12);
INSERT INTO cities VALUES (12, 'Баштанка', 13);
INSERT INTO cities VALUES (13, 'Белая Церковь', 14);
INSERT INTO cities VALUES (14, 'Белз', 15);
INSERT INTO cities VALUES (15, 'Бердянск', 16);
INSERT INTO cities VALUES (16, 'Берегово', 17);
INSERT INTO cities VALUES (17, 'Бережаны', 18);
INSERT INTO cities VALUES (18, 'Березно', 19);
INSERT INTO cities VALUES (19, 'Берестечко', 20);
INSERT INTO cities VALUES (20, 'Болехов', 21);
INSERT INTO cities VALUES (21, 'Ватутино', 22);
INSERT INTO cities VALUES (22, 'Вашковцы', 23);
INSERT INTO cities VALUES (23, 'Волочиск', 24);
INSERT INTO cities VALUES (24, 'Гадяч', 25);
INSERT INTO cities VALUES (25, 'Инкерман', 26);
INSERT INTO cities VALUES (26, 'Киев', 27);
INSERT INTO cities VALUES (27, 'Авдеевка', 1);
INSERT INTO cities VALUES (28, 'Александрия', 2);
INSERT INTO cities VALUES (29, 'Александровск', 3);
INSERT INTO cities VALUES (30, 'Алёшки', 4);
INSERT INTO cities VALUES (31, 'Алмазная', 3);
INSERT INTO cities VALUES (32, 'Алупка', 5);
INSERT INTO cities VALUES (33, 'Алушта', 5);
INSERT INTO cities VALUES (34, 'Алчевск', 3);
INSERT INTO cities VALUES (35, 'Амвросиевка', 1);
INSERT INTO cities VALUES (36, 'Ананьев', 6);
INSERT INTO cities VALUES (37, 'Андрушёвка', 7);
INSERT INTO cities VALUES (38, 'Антрацит', 3);
INSERT INTO cities VALUES (39, 'Апостолово', 8);
INSERT INTO cities VALUES (40, 'Армянск', 5);
INSERT INTO cities VALUES (41, 'Артёмовск (Кипучее)', 3);
INSERT INTO cities VALUES (42, 'Арциз', 6);
INSERT INTO cities VALUES (43, 'Ахтырка', 9);
INSERT INTO cities VALUES (44, 'Балаклея', 10);
INSERT INTO cities VALUES (45, 'Балта', 6);
INSERT INTO cities VALUES (46, 'Бар', 11);
INSERT INTO cities VALUES (47, 'Барановка', 7);
INSERT INTO cities VALUES (48, 'Барвенково', 10);
INSERT INTO cities VALUES (49, 'Батурин', 12);
INSERT INTO cities VALUES (50, 'Бахмач', 12);
INSERT INTO cities VALUES (51, 'Бахмут', 1);
INSERT INTO cities VALUES (52, 'Бахчисарай', 5);
INSERT INTO cities VALUES (53, 'Баштанка', 13);
INSERT INTO cities VALUES (54, 'Белая Церковь', 14);
INSERT INTO cities VALUES (55, 'Белгород-Днестровский', 6);
INSERT INTO cities VALUES (56, 'Белз', 15);
INSERT INTO cities VALUES (57, 'Белицкое', 1);
INSERT INTO cities VALUES (58, 'Белогорск', 5);
INSERT INTO cities VALUES (59, 'Белозёрское', 1);
INSERT INTO cities VALUES (60, 'Белополье', 9);
INSERT INTO cities VALUES (61, 'Беляевка', 6);
INSERT INTO cities VALUES (62, 'Бердичев', 7);
INSERT INTO cities VALUES (63, 'Бердянск', 16);
INSERT INTO cities VALUES (64, 'Берегово', 17);
INSERT INTO cities VALUES (65, 'Бережаны', 18);
INSERT INTO cities VALUES (66, 'Березань', 14);
INSERT INTO cities VALUES (67, 'Березно', 19);
INSERT INTO cities VALUES (68, 'Березо́вка', 6);
INSERT INTO cities VALUES (69, 'Берестечко', 20);
INSERT INTO cities VALUES (70, 'Бершадь', 11);
INSERT INTO cities VALUES (71, 'Бобринец', 2);
INSERT INTO cities VALUES (72, 'Бобрка', 15);
INSERT INTO cities VALUES (73, 'Бобровица', 12);
INSERT INTO cities VALUES (74, 'Богодухов', 10);
INSERT INTO cities VALUES (75, 'Богуслав', 14);
INSERT INTO cities VALUES (76, 'Болград', 6);
INSERT INTO cities VALUES (77, 'Болехов', 21);
INSERT INTO cities VALUES (78, 'Борзна', 12);
INSERT INTO cities VALUES (79, 'Борислав', 15);
INSERT INTO cities VALUES (80, 'Борисполь', 14);
INSERT INTO cities VALUES (81, 'Борщёв', 18);
INSERT INTO cities VALUES (82, 'Боярка', 14);
INSERT INTO cities VALUES (83, 'Бровары', 14);
INSERT INTO cities VALUES (84, 'Броды', 15);
INSERT INTO cities VALUES (85, 'Брянка', 3);
INSERT INTO cities VALUES (86, 'Бурштын', 21);
INSERT INTO cities VALUES (87, 'Бурынь', 9);
INSERT INTO cities VALUES (88, 'Буск', 15);
INSERT INTO cities VALUES (89, 'Буча', 14);
INSERT INTO cities VALUES (90, 'Бучач', 18);
INSERT INTO cities VALUES (91, 'Валки', 10);
INSERT INTO cities VALUES (92, 'Вараш (Кузнецовск)', 19);
INSERT INTO cities VALUES (93, 'Васильевка', 16);
INSERT INTO cities VALUES (94, 'Васильков', 14);
INSERT INTO cities VALUES (95, 'Ватутино', 22);
INSERT INTO cities VALUES (96, 'Вахрушево', 3);
INSERT INTO cities VALUES (97, 'Вашковцы', 23);
INSERT INTO cities VALUES (98, 'Великие Мосты', 15);
INSERT INTO cities VALUES (99, 'Верхнеднепровск', 8);
INSERT INTO cities VALUES (100, 'Верховцево', 8);
INSERT INTO cities VALUES (101, 'Вижница', 23);
INSERT INTO cities VALUES (102, 'Вилково', 6);
INSERT INTO cities VALUES (103, 'Винники', 15);
INSERT INTO cities VALUES (104, 'Винница', 11);
INSERT INTO cities VALUES (105, 'Виноградов', 17);
INSERT INTO cities VALUES (106, 'Вишнёвое', 14);
INSERT INTO cities VALUES (107, 'Владимир-Волынский', 20);
INSERT INTO cities VALUES (108, 'Вознесенск', 13);
INSERT INTO cities VALUES (109, 'Волноваха', 1);
INSERT INTO cities VALUES (110, 'Волочиск', 24);
INSERT INTO cities VALUES (111, 'Волчанск', 10);
INSERT INTO cities VALUES (112, 'Вольногорск', 8);
INSERT INTO cities VALUES (113, 'Вольнянск', 16);
INSERT INTO cities VALUES (114, 'Ворожба', 9);
INSERT INTO cities VALUES (115, 'Вышгород', 14);
INSERT INTO cities VALUES (116, 'Гадяч', 25);
INSERT INTO cities VALUES (117, 'Гайворон', 2);
INSERT INTO cities VALUES (118, 'Гайсин', 11);
INSERT INTO cities VALUES (119, 'Галич', 21);
INSERT INTO cities VALUES (120, 'Геническ', 4);
INSERT INTO cities VALUES (121, 'Герца', 23);
INSERT INTO cities VALUES (122, 'Глобино', 25);
INSERT INTO cities VALUES (123, 'Глухов', 9);
INSERT INTO cities VALUES (124, 'Глиняны', 15);
INSERT INTO cities VALUES (125, 'Гнивань', 11);
INSERT INTO cities VALUES (126, 'Голая Пристань', 4);
INSERT INTO cities VALUES (127, 'Горишние Плавни', 25);
INSERT INTO cities VALUES (128, 'Горловка', 1);
INSERT INTO cities VALUES (129, 'Горное', 3);
INSERT INTO cities VALUES (130, 'Горняк', 1);
INSERT INTO cities VALUES (131, 'Городенка', 21);
INSERT INTO cities VALUES (132, 'Городище', 22);
INSERT INTO cities VALUES (133, 'Городня', 12);
INSERT INTO cities VALUES (134, 'Городок', 15);
INSERT INTO cities VALUES (135, 'Городок', 24);
INSERT INTO cities VALUES (136, 'Горохов', 20);
INSERT INTO cities VALUES (137, 'Гребёнка', 25);
INSERT INTO cities VALUES (138, 'Гуляйполе', 16);
INSERT INTO cities VALUES (139, 'Дебальцево', 1);
INSERT INTO cities VALUES (140, 'Деражня', 24);
INSERT INTO cities VALUES (141, 'Дергачи', 10);
INSERT INTO cities VALUES (142, 'Джанкой', 5);
INSERT INTO cities VALUES (143, 'Днепр', 8);
INSERT INTO cities VALUES (144, 'Днепрорудное', 16);
INSERT INTO cities VALUES (145, 'Добромиль', 15);
INSERT INTO cities VALUES (146, 'Доброполье', 1);
INSERT INTO cities VALUES (147, 'Докучаевск', 1);
INSERT INTO cities VALUES (148, 'Долина', 21);
INSERT INTO cities VALUES (149, 'Долинская', 2);
INSERT INTO cities VALUES (150, 'Донецк', 1);
INSERT INTO cities VALUES (151, 'Дрогобыч', 15);
INSERT INTO cities VALUES (152, 'Дружба', 9);
INSERT INTO cities VALUES (153, 'Дружковка', 1);
INSERT INTO cities VALUES (154, 'Дубляны', 15);
INSERT INTO cities VALUES (155, 'Дубно', 19);
INSERT INTO cities VALUES (156, 'Дубровица', 19);
INSERT INTO cities VALUES (157, 'Дунаевцы', 24);
INSERT INTO cities VALUES (158, 'Евпатория', 5);
INSERT INTO cities VALUES (159, 'Енакиево', 1);
INSERT INTO cities VALUES (160, 'Жашков', 22);
INSERT INTO cities VALUES (161, 'Ждановка', 1);
INSERT INTO cities VALUES (162, 'Железное', 1);
INSERT INTO cities VALUES (163, 'Жёлтые Воды', 8);
INSERT INTO cities VALUES (164, 'Жидачов', 15);
INSERT INTO cities VALUES (165, 'Житомир', 7);
INSERT INTO cities VALUES (166, 'Жмеринка', 11);
INSERT INTO cities VALUES (167, 'Жолква', 15);
INSERT INTO cities VALUES (168, 'Заводское', 25);
INSERT INTO cities VALUES (169, 'Залещики', 18);
INSERT INTO cities VALUES (170, 'Запорожье', 16);
INSERT INTO cities VALUES (171, 'Заставна', 23);
INSERT INTO cities VALUES (172, 'Збараж', 18);
INSERT INTO cities VALUES (173, 'Зборов', 18);
INSERT INTO cities VALUES (174, 'Звенигородка', 22);
INSERT INTO cities VALUES (175, 'Здолбунов', 19);
INSERT INTO cities VALUES (176, 'Зеленодольск', 8);
INSERT INTO cities VALUES (177, 'Зеньков', 25);
INSERT INTO cities VALUES (178, 'Зимогорье', 3);
INSERT INTO cities VALUES (179, 'Змиёв', 10);
INSERT INTO cities VALUES (180, 'Знаменка', 2);
INSERT INTO cities VALUES (181, 'Золотое', 3);
INSERT INTO cities VALUES (182, 'Золотоноша', 22);
INSERT INTO cities VALUES (183, 'Золочев', 15);
INSERT INTO cities VALUES (184, 'Зоринск', 3);
INSERT INTO cities VALUES (185, 'Зугрэс', 1);
INSERT INTO cities VALUES (186, 'Ивано-Франковск', 21);
INSERT INTO cities VALUES (187, 'Измаил', 6);
INSERT INTO cities VALUES (188, 'Изюм', 10);
INSERT INTO cities VALUES (189, 'Изяслав', 24);
INSERT INTO cities VALUES (190, 'Ильинцы', 11);
INSERT INTO cities VALUES (191, 'Инкерман', 26);
INSERT INTO cities VALUES (192, 'Ирмино', 3);
INSERT INTO cities VALUES (193, 'Ирпень', 14);
INSERT INTO cities VALUES (194, 'Иршава', 17);
INSERT INTO cities VALUES (195, 'Ичня', 12);
INSERT INTO cities VALUES (196, 'Кагарлык', 14);
INSERT INTO cities VALUES (197, 'Казатин', 11);
INSERT INTO cities VALUES (198, 'Калиновка', 11);
INSERT INTO cities VALUES (199, 'Калуш', 21);
INSERT INTO cities VALUES (200, 'Каменец-Подольский', 24);
INSERT INTO cities VALUES (201, 'Каменка', 22);
INSERT INTO cities VALUES (202, 'Каменка-Бугская', 15);
INSERT INTO cities VALUES (203, 'Каменка-Днепровская', 16);
INSERT INTO cities VALUES (204, 'Каменское', 8);
INSERT INTO cities VALUES (205, 'Камень-Каширский', 20);
INSERT INTO cities VALUES (206, 'Канев', 22);
INSERT INTO cities VALUES (207, 'Карловка', 25);
INSERT INTO cities VALUES (208, 'Каховка', 4);
INSERT INTO cities VALUES (209, 'Керчь', 5);
INSERT INTO cities VALUES (210, 'Киверцы', 20);
INSERT INTO cities VALUES (211, 'Киев', 27);
INSERT INTO cities VALUES (212, 'Килия', 6);
INSERT INTO cities VALUES (213, 'Кировск (Голубовка)', 3);
INSERT INTO cities VALUES (214, 'Кировское', 1);
INSERT INTO cities VALUES (215, 'Кицмань', 23);
INSERT INTO cities VALUES (216, 'Кобеляки', 25);
INSERT INTO cities VALUES (217, 'Ковель', 20);
INSERT INTO cities VALUES (218, 'Кодыма', 6);
INSERT INTO cities VALUES (219, 'Коломыя', 21);
INSERT INTO cities VALUES (220, 'Конотоп', 9);
INSERT INTO cities VALUES (221, 'Константиновка', 1);
INSERT INTO cities VALUES (222, 'Корец', 19);
INSERT INTO cities VALUES (223, 'Коростень', 7);
INSERT INTO cities VALUES (224, 'Коростышев', 7);
INSERT INTO cities VALUES (225, 'Корсунь-Шевченковский', 22);
INSERT INTO cities VALUES (226, 'Корюковка', 12);
INSERT INTO cities VALUES (227, 'Косов', 21);
INSERT INTO cities VALUES (228, 'Костополь', 19);
INSERT INTO cities VALUES (229, 'Краматорск', 1);
INSERT INTO cities VALUES (230, 'Красилов', 24);
INSERT INTO cities VALUES (231, 'Красноград', 10);
INSERT INTO cities VALUES (232, 'Краснодон', 3);
INSERT INTO cities VALUES (233, 'Краснопартизанск', 3);
INSERT INTO cities VALUES (234, 'Красноперекопск', 5);
INSERT INTO cities VALUES (235, 'Красный Луч (Хрустальный)', 3);
INSERT INTO cities VALUES (236, 'Кременец', 18);
INSERT INTO cities VALUES (237, 'Кременчуг', 25);
INSERT INTO cities VALUES (238, 'Кривой Рог', 8);
INSERT INTO cities VALUES (239, 'Кролевец', 9);
INSERT INTO cities VALUES (240, 'Кропивницкий', 2);
INSERT INTO cities VALUES (241, 'Купянск', 10);
INSERT INTO cities VALUES (242, 'Ладыжин', 11);
INSERT INTO cities VALUES (243, 'Лановцы', 18);
INSERT INTO cities VALUES (244, 'Лебедин', 9);
INSERT INTO cities VALUES (245, 'Лиман', 1);
INSERT INTO cities VALUES (246, 'Лисичанск', 3);
INSERT INTO cities VALUES (247, 'Лозовая', 10);
INSERT INTO cities VALUES (248, 'Лохвица', 25);
INSERT INTO cities VALUES (249, 'Лубны', 25);
INSERT INTO cities VALUES (250, 'Луганск', 3);
INSERT INTO cities VALUES (251, 'Лутугино', 3);
INSERT INTO cities VALUES (252, 'Луцк', 20);
INSERT INTO cities VALUES (253, 'Львов', 15);
INSERT INTO cities VALUES (254, 'Любомль', 20);
INSERT INTO cities VALUES (255, 'Люботин', 10);
INSERT INTO cities VALUES (256, 'Малин', 7);
INSERT INTO cities VALUES (257, 'Марганец', 8);
INSERT INTO cities VALUES (258, 'Мариуполь', 1);
INSERT INTO cities VALUES (259, 'Макеевка', 1);
INSERT INTO cities VALUES (260, 'Малая Виска', 2);
INSERT INTO cities VALUES (261, 'Мелитополь', 16);
INSERT INTO cities VALUES (262, 'Мена', 12);
INSERT INTO cities VALUES (263, 'Мерефа', 10);
INSERT INTO cities VALUES (264, 'Миргород', 25);
INSERT INTO cities VALUES (265, 'Мирноград (Димитров)', 1);
INSERT INTO cities VALUES (266, 'Мироновка', 14);
INSERT INTO cities VALUES (267, 'Миусинск', 3);
INSERT INTO cities VALUES (268, 'Могилёв-Подольский', 11);
INSERT INTO cities VALUES (269, 'Молодогвардейск', 3);
INSERT INTO cities VALUES (270, 'Молочанск', 16);
INSERT INTO cities VALUES (271, 'Монастыриска', 18);
INSERT INTO cities VALUES (272, 'Монастырище', 22);
INSERT INTO cities VALUES (273, 'Мостиска', 15);
INSERT INTO cities VALUES (274, 'Мукачево', 17);
INSERT INTO cities VALUES (275, 'Надворная', 21);
INSERT INTO cities VALUES (276, 'Николаев', 15);
INSERT INTO cities VALUES (277, 'Николаев', 13);
INSERT INTO cities VALUES (278, 'Никополь', 8);
INSERT INTO cities VALUES (279, 'Нежин', 12);
INSERT INTO cities VALUES (280, 'Немиров', 11);
INSERT INTO cities VALUES (281, 'Нетешин', 24);
INSERT INTO cities VALUES (282, 'Новая Каховка', 4);
INSERT INTO cities VALUES (283, 'Новая Одесса', 13);
INSERT INTO cities VALUES (284, 'Новый Буг', 13);
INSERT INTO cities VALUES (285, 'Новоазовск', 1);
INSERT INTO cities VALUES (286, 'Нововолынск', 20);
INSERT INTO cities VALUES (287, 'Новгород-Северский', 12);
INSERT INTO cities VALUES (288, 'Новомиргород', 2);
INSERT INTO cities VALUES (289, 'Новоград-Волынский', 7);
INSERT INTO cities VALUES (290, 'Новодружеск', 3);
INSERT INTO cities VALUES (291, 'Новоднестровск', 23);
INSERT INTO cities VALUES (292, 'Новомосковск', 8);
INSERT INTO cities VALUES (293, 'Новопсков', 3);
INSERT INTO cities VALUES (294, 'Новоселица', 23);
INSERT INTO cities VALUES (295, 'Новоукраинка', 2);
INSERT INTO cities VALUES (296, 'Новый Роздол', 15);
INSERT INTO cities VALUES (297, 'Носовка', 12);
INSERT INTO cities VALUES (298, 'Обухов', 14);
INSERT INTO cities VALUES (299, 'Овруч', 7);
INSERT INTO cities VALUES (300, 'Одесса', 6);
INSERT INTO cities VALUES (301, 'Орехов', 16);
INSERT INTO cities VALUES (302, 'Острог', 19);
INSERT INTO cities VALUES (303, 'Очаков', 13);
INSERT INTO cities VALUES (304, 'Павлоград', 8);
INSERT INTO cities VALUES (305, 'Первомайск', 3);
INSERT INTO cities VALUES (306, 'Первомайск', 13);
INSERT INTO cities VALUES (307, 'Первомайский', 10);
INSERT INTO cities VALUES (308, 'Перевальск', 3);
INSERT INTO cities VALUES (309, 'Перемышляны', 15);
INSERT INTO cities VALUES (310, 'Перечин', 17);
INSERT INTO cities VALUES (311, 'Перещепино', 8);
INSERT INTO cities VALUES (312, 'Переяслав-Хмельницкий', 14);
INSERT INTO cities VALUES (313, 'Першотравенск', 8);
INSERT INTO cities VALUES (314, 'Петровское', 3);
INSERT INTO cities VALUES (315, 'Пирятин', 25);
INSERT INTO cities VALUES (316, 'Погребище', 11);
INSERT INTO cities VALUES (317, 'Подволочиск', 18);
INSERT INTO cities VALUES (318, 'Подгайцы', 18);
INSERT INTO cities VALUES (319, 'Подгородное', 8);
INSERT INTO cities VALUES (320, 'Подольск', 6);
INSERT INTO cities VALUES (321, 'Покров', 8);
INSERT INTO cities VALUES (322, 'Покровск', 1);
INSERT INTO cities VALUES (323, 'Пологи', 16);
INSERT INTO cities VALUES (324, 'Полонное', 24);
INSERT INTO cities VALUES (325, 'Полтава', 25);
INSERT INTO cities VALUES (326, 'Попасная', 3);
INSERT INTO cities VALUES (327, 'Почаев', 18);
INSERT INTO cities VALUES (328, 'Приволье', 3);
INSERT INTO cities VALUES (329, 'Прилуки', 12);
INSERT INTO cities VALUES (330, 'Приморск', 16);
INSERT INTO cities VALUES (331, 'Припять', 14);
INSERT INTO cities VALUES (332, 'Пустомыты', 15);
INSERT INTO cities VALUES (333, 'Путивль', 9);
INSERT INTO cities VALUES (334, 'Пятихатки', 8);
INSERT INTO cities VALUES (335, 'Рава-Русская', 15);
INSERT INTO cities VALUES (336, 'Радехов', 15);
INSERT INTO cities VALUES (337, 'Радомышль', 7);
INSERT INTO cities VALUES (338, 'Радивилов', 19);
INSERT INTO cities VALUES (339, 'Раздельная', 6);
INSERT INTO cities VALUES (340, 'Рахов', 17);
INSERT INTO cities VALUES (341, 'Ржищев', 14);
INSERT INTO cities VALUES (342, 'Рогатин', 21);
INSERT INTO cities VALUES (343, 'Ровеньки', 3);
INSERT INTO cities VALUES (344, 'Ровно', 19);
INSERT INTO cities VALUES (345, 'Рожище', 20);
INSERT INTO cities VALUES (346, 'Ромны', 9);
INSERT INTO cities VALUES (347, 'Рубежное', 3);
INSERT INTO cities VALUES (348, 'Рудки', 15);
INSERT INTO cities VALUES (349, 'Саки', 5);
INSERT INTO cities VALUES (350, 'Самбор', 15);
INSERT INTO cities VALUES (351, 'Сарны', 19);
INSERT INTO cities VALUES (352, 'Свалява', 17);
INSERT INTO cities VALUES (353, 'Сватово', 3);
INSERT INTO cities VALUES (354, 'Свердловск', 3);
INSERT INTO cities VALUES (355, 'Светловодск', 2);
INSERT INTO cities VALUES (356, 'Севастополь', 26);
INSERT INTO cities VALUES (357, 'Северодонецк', 3);
INSERT INTO cities VALUES (358, 'Седнев', 12);
INSERT INTO cities VALUES (359, 'Селидово', 1);
INSERT INTO cities VALUES (360, 'Семёновка', 12);
INSERT INTO cities VALUES (361, 'Середина-Буда', 9);
INSERT INTO cities VALUES (362, 'Симферополь', 5);
INSERT INTO cities VALUES (363, 'Синельниково', 8);
INSERT INTO cities VALUES (364, 'Скадовск', 4);
INSERT INTO cities VALUES (365, 'Скалат', 18);
INSERT INTO cities VALUES (366, 'Сквира', 14);
INSERT INTO cities VALUES (367, 'Сколе', 15);
INSERT INTO cities VALUES (368, 'Славута', 24);
INSERT INTO cities VALUES (369, 'Славутич', 14);
INSERT INTO cities VALUES (370, 'Славянск', 1);
INSERT INTO cities VALUES (371, 'Смела', 22);
INSERT INTO cities VALUES (372, 'Снежное', 1);
INSERT INTO cities VALUES (373, 'Снигирёвка', 13);
INSERT INTO cities VALUES (374, 'Сновск', 12);
INSERT INTO cities VALUES (375, 'Снятын', 21);
INSERT INTO cities VALUES (376, 'Сокаль', 15);
INSERT INTO cities VALUES (377, 'Сокиряны', 23);
INSERT INTO cities VALUES (378, 'Соледар', 1);
INSERT INTO cities VALUES (379, 'Старобельск', 3);
INSERT INTO cities VALUES (380, 'Староконстантинов', 24);
INSERT INTO cities VALUES (381, 'Старый Крым', 5);
INSERT INTO cities VALUES (382, 'Старый Самбор', 15);
INSERT INTO cities VALUES (383, 'Стаханов (Кадиевка)', 3);
INSERT INTO cities VALUES (384, 'Сторожинец', 23);
INSERT INTO cities VALUES (385, 'Стрый', 15);
INSERT INTO cities VALUES (386, 'Судак', 5);
INSERT INTO cities VALUES (387, 'Сумы', 9);
INSERT INTO cities VALUES (388, 'Суходольск', 3);
INSERT INTO cities VALUES (389, 'Счастье', 3);
INSERT INTO cities VALUES (390, 'Таврийск', 4);
INSERT INTO cities VALUES (391, 'Тальное', 22);
INSERT INTO cities VALUES (392, 'Тараща', 14);
INSERT INTO cities VALUES (393, 'Татарбунары', 6);
INSERT INTO cities VALUES (394, 'Теплодар', 6);
INSERT INTO cities VALUES (395, 'Тернополь', 18);
INSERT INTO cities VALUES (396, 'Терновка', 8);
INSERT INTO cities VALUES (397, 'Тетиев', 14);
INSERT INTO cities VALUES (398, 'Тысменица', 21);
INSERT INTO cities VALUES (399, 'Тлумач', 21);
INSERT INTO cities VALUES (400, 'Теребовля', 18);
INSERT INTO cities VALUES (401, 'Тростянец', 9);
INSERT INTO cities VALUES (402, 'Трускавец', 15);
INSERT INTO cities VALUES (403, 'Токмак', 16);
INSERT INTO cities VALUES (404, 'Торез', 1);
INSERT INTO cities VALUES (405, 'Торецк', 1);
INSERT INTO cities VALUES (406, 'Тульчин', 11);
INSERT INTO cities VALUES (407, 'Тячев', 17);
INSERT INTO cities VALUES (408, 'Угледар', 1);
INSERT INTO cities VALUES (409, 'Угнев', 15);
INSERT INTO cities VALUES (410, 'Узин', 14);
INSERT INTO cities VALUES (411, 'Украинка', 14);
INSERT INTO cities VALUES (412, 'Ужгород', 17);
INSERT INTO cities VALUES (413, 'Умань', 22);
INSERT INTO cities VALUES (414, 'Устилуг', 20);
INSERT INTO cities VALUES (415, 'Фастов', 14);
INSERT INTO cities VALUES (416, 'Феодосия', 5);
INSERT INTO cities VALUES (417, 'Харцызск', 1);
INSERT INTO cities VALUES (418, 'Харьков', 10);
INSERT INTO cities VALUES (419, 'Херсон', 4);
INSERT INTO cities VALUES (420, 'Хмельник', 11);
INSERT INTO cities VALUES (421, 'Хмельницкий', 24);
INSERT INTO cities VALUES (422, 'Хорол', 25);
INSERT INTO cities VALUES (423, 'Хотин', 23);
INSERT INTO cities VALUES (424, 'Христиновка', 22);
INSERT INTO cities VALUES (425, 'Хуст', 17);
INSERT INTO cities VALUES (426, 'Хыров', 15);
INSERT INTO cities VALUES (427, 'Червоноград', 15);
INSERT INTO cities VALUES (428, 'Червонопартизанск (Вознесеновка)', 3);
INSERT INTO cities VALUES (429, 'Черноморск', 6);
INSERT INTO cities VALUES (430, 'Черкассы', 22);
INSERT INTO cities VALUES (431, 'Чернигов', 12);
INSERT INTO cities VALUES (432, 'Чернобыль', 14);
INSERT INTO cities VALUES (433, 'Черновцы', 23);
INSERT INTO cities VALUES (434, 'Чигирин', 22);
INSERT INTO cities VALUES (435, 'Чоп', 17);
INSERT INTO cities VALUES (436, 'Чортков', 18);
INSERT INTO cities VALUES (437, 'Чугуев', 10);
INSERT INTO cities VALUES (438, 'Шаргород', 11);
INSERT INTO cities VALUES (439, 'Шахтёрск', 1);
INSERT INTO cities VALUES (440, 'Шепетовка', 24);
INSERT INTO cities VALUES (441, 'Шостка', 9);
INSERT INTO cities VALUES (442, 'Шпола', 22);
INSERT INTO cities VALUES (443, 'Шумск', 18);
INSERT INTO cities VALUES (444, 'Щёлкино', 5);
INSERT INTO cities VALUES (445, 'Энергодар', 16);
INSERT INTO cities VALUES (446, 'Южное', 6);
INSERT INTO cities VALUES (447, 'Южноукраинск', 13);
INSERT INTO cities VALUES (448, 'Яворов', 15);
INSERT INTO cities VALUES (449, 'Яготин', 14);
INSERT INTO cities VALUES (450, 'Ялта', 5);
INSERT INTO cities VALUES (451, 'Ямполь', 11);
INSERT INTO cities VALUES (452, 'Яремче', 21);
INSERT INTO cities VALUES (453, 'Ясиноватая', 1);


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('cities_id_seq', 453, true);


--
-- Data for Name: regions; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO regions VALUES (1, 'Донецкая область');
INSERT INTO regions VALUES (2, 'Кировоградская область');
INSERT INTO regions VALUES (3, 'Луганская область');
INSERT INTO regions VALUES (4, 'Херсонская область');
INSERT INTO regions VALUES (5, 'Автономная Республика Крым');
INSERT INTO regions VALUES (6, 'Одесская область');
INSERT INTO regions VALUES (7, 'Житомирская область');
INSERT INTO regions VALUES (8, 'Днепропетровская область');
INSERT INTO regions VALUES (9, 'Сумская область');
INSERT INTO regions VALUES (10, 'Харьковская область');
INSERT INTO regions VALUES (11, 'Винницкая область');
INSERT INTO regions VALUES (12, 'Черниговская область');
INSERT INTO regions VALUES (13, 'Николаевская область');
INSERT INTO regions VALUES (14, 'Киевская область');
INSERT INTO regions VALUES (15, 'Львовская область');
INSERT INTO regions VALUES (16, 'Запорожская область');
INSERT INTO regions VALUES (17, 'Закарпатская область');
INSERT INTO regions VALUES (18, 'Тернопольская область');
INSERT INTO regions VALUES (19, 'Ровненская область');
INSERT INTO regions VALUES (20, 'Волынская область');
INSERT INTO regions VALUES (21, 'Ивано-Франковская область');
INSERT INTO regions VALUES (22, 'Черкасская область');
INSERT INTO regions VALUES (23, 'Черновицкая область');
INSERT INTO regions VALUES (24, 'Хмельницкая область');
INSERT INTO regions VALUES (25, 'Полтавская область');
INSERT INTO regions VALUES (26, 'город со специальным статусом Севастополь');
INSERT INTO regions VALUES (27, 'город со специальным статусом Киев');


--
-- Name: regions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('regions_id_seq', 27, true);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: regions regions_name_18e8a611_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY regions
    ADD CONSTRAINT regions_name_18e8a611_uniq UNIQUE (name);


--
-- Name: regions regions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);


--
-- Name: cities_region_id_d6037a26; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX cities_region_id_d6037a26 ON cities USING btree (region_id);


--
-- Name: regions_name_18e8a611_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX regions_name_18e8a611_like ON regions USING btree (name varchar_pattern_ops);


--
-- Name: cities cities_region_id_d6037a26_fk_regions_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY cities
    ADD CONSTRAINT cities_region_id_d6037a26_fk_regions_id FOREIGN KEY (region_id) REFERENCES regions(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

