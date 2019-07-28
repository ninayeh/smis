--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: book_lists; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE book_lists (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    title character varying,
    file character varying
);


ALTER TABLE book_lists OWNER TO deploy;

--
-- Name: book_lists_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE book_lists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE book_lists_id_seq OWNER TO deploy;

--
-- Name: book_lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE book_lists_id_seq OWNED BY book_lists.id;


--
-- Name: departments; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE departments (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE departments OWNER TO deploy;

--
-- Name: departments_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE departments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE departments_id_seq OWNER TO deploy;

--
-- Name: departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE departments_id_seq OWNED BY departments.id;


--
-- Name: laboratories; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE laboratories (
    id integer NOT NULL,
    name character varying,
    professor_name character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    department_id integer,
    avatar character varying
);


ALTER TABLE laboratories OWNER TO deploy;

--
-- Name: laboratories_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE laboratories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE laboratories_id_seq OWNER TO deploy;

--
-- Name: laboratories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE laboratories_id_seq OWNED BY laboratories.id;


--
-- Name: missions; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE missions (
    id integer NOT NULL,
    title character varying,
    end_date date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    schedule_id integer,
    start_date date,
    "check" boolean
);


ALTER TABLE missions OWNER TO deploy;

--
-- Name: missions_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE missions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE missions_id_seq OWNER TO deploy;

--
-- Name: missions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE missions_id_seq OWNED BY missions.id;


--
-- Name: note_comments; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE note_comments (
    id integer NOT NULL,
    comment text,
    user_name character varying,
    note_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE note_comments OWNER TO deploy;

--
-- Name: note_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE note_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE note_comments_id_seq OWNER TO deploy;

--
-- Name: note_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE note_comments_id_seq OWNED BY note_comments.id;


--
-- Name: notes; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE notes (
    id integer NOT NULL,
    title character varying,
    category character varying,
    content text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    final_content text,
    user_id integer,
    published boolean
);


ALTER TABLE notes OWNER TO deploy;

--
-- Name: notes_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE notes_id_seq OWNER TO deploy;

--
-- Name: notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE notes_id_seq OWNED BY notes.id;


--
-- Name: redactor_images; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE redactor_images (
    id integer NOT NULL,
    image character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE redactor_images OWNER TO deploy;

--
-- Name: redactor_images_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE redactor_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE redactor_images_id_seq OWNER TO deploy;

--
-- Name: redactor_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE redactor_images_id_seq OWNED BY redactor_images.id;


--
-- Name: resource_comments; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE resource_comments (
    id integer NOT NULL,
    comment text,
    user_name character varying,
    resource_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE resource_comments OWNER TO deploy;

--
-- Name: resource_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE resource_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE resource_comments_id_seq OWNER TO deploy;

--
-- Name: resource_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE resource_comments_id_seq OWNED BY resource_comments.id;


--
-- Name: resources; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE resources (
    id integer NOT NULL,
    title character varying,
    description text,
    url character varying,
    file character varying,
    published boolean,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE resources OWNER TO deploy;

--
-- Name: resources_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE resources_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE resources_id_seq OWNER TO deploy;

--
-- Name: resources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE resources_id_seq OWNED BY resources.id;


--
-- Name: schedules; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE schedules (
    id integer NOT NULL,
    start_date date,
    end_date date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer,
    published boolean
);


ALTER TABLE schedules OWNER TO deploy;

--
-- Name: schedules_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE schedules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE schedules_id_seq OWNER TO deploy;

--
-- Name: schedules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE schedules_id_seq OWNED BY schedules.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO deploy;

--
-- Name: shares; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE shares (
    id integer NOT NULL,
    title character varying,
    content text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE shares OWNER TO deploy;

--
-- Name: shares_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE shares_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE shares_id_seq OWNER TO deploy;

--
-- Name: shares_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE shares_id_seq OWNED BY shares.id;


--
-- Name: theses; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE theses (
    id integer NOT NULL,
    title character varying,
    content text,
    book_list character varying,
    slide character varying,
    published boolean,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    final boolean
);


ALTER TABLE theses OWNER TO deploy;

--
-- Name: theses_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE theses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE theses_id_seq OWNER TO deploy;

--
-- Name: theses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE theses_id_seq OWNED BY theses.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: deploy; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    role character varying,
    name character varying,
    department_id integer,
    laboratory_id integer,
    active boolean DEFAULT true
);


ALTER TABLE users OWNER TO deploy;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: deploy
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO deploy;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: deploy
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY book_lists ALTER COLUMN id SET DEFAULT nextval('book_lists_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY departments ALTER COLUMN id SET DEFAULT nextval('departments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY laboratories ALTER COLUMN id SET DEFAULT nextval('laboratories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY missions ALTER COLUMN id SET DEFAULT nextval('missions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY note_comments ALTER COLUMN id SET DEFAULT nextval('note_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY notes ALTER COLUMN id SET DEFAULT nextval('notes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY redactor_images ALTER COLUMN id SET DEFAULT nextval('redactor_images_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY resource_comments ALTER COLUMN id SET DEFAULT nextval('resource_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY resources ALTER COLUMN id SET DEFAULT nextval('resources_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY schedules ALTER COLUMN id SET DEFAULT nextval('schedules_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY shares ALTER COLUMN id SET DEFAULT nextval('shares_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY theses ALTER COLUMN id SET DEFAULT nextval('theses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: book_lists; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY book_lists (id, created_at, updated_at, title, file) FROM stdin;
\.


--
-- Name: book_lists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('book_lists_id_seq', 1, false);


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY departments (id, name, created_at, updated_at) FROM stdin;
1	資訊管理系(所)	2016-03-01 06:24:33.734346	2016-03-01 06:24:33.734346
2	企業管理系(所)	2016-03-01 06:24:33.740974	2016-03-01 06:24:33.740974
3	工業管理系(所)	2016-03-01 06:24:33.745503	2016-03-01 06:24:33.745503
4	管理研究所	2016-03-01 06:24:33.750141	2016-03-01 06:24:33.750141
5	管理學院MBA	2016-03-01 06:24:33.754962	2016-03-01 06:24:33.754962
6	EMBA暨管研所博士班	2016-03-01 06:24:33.759465	2016-03-01 06:24:33.759465
7	其他	2016-03-24 04:58:13.23742	2016-03-24 04:58:13.23742
\.


--
-- Name: departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('departments_id_seq', 7, true);


--
-- Data for Name: laboratories; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY laboratories (id, name, professor_name, description, created_at, updated_at, department_id, avatar) FROM stdin;
7	圖論與演算法實驗室	王有禮	<center><h3>專長及研究領域</h3><p>計算機演算法,圖論,平行處理</p><h3>近三年學生論文</h3></center><center><p>中文姓名：林建宏 <br>學年度：101 <br>學位(中)：博士 <br>論文名稱(中)：Sierpinski相關圖形的中繼數與全域強防禦聯盟問題之研究 <br>關鍵字(中)：中繼數、全域強防禦聯盟、支配集、Sierpinski圖形、延伸Sierpinski圖形、Sierpinski相關類別圖形 <br></p></center><center><hr></center><center><p>中文姓名：林秋君 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：區間圖上的外連通支配集問題 <br>關鍵字(中)：支配、外連通支配、切點、部分區間圖、區間圖 <br></p></center><center><hr></center><center><p>中文姓名：施志民 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：建構所有爆冷門個數最少之競賽圖 <br>關鍵字(中)：競賽圖、得分、得分序列、爆冷門、建構、二進位編碼 <br></p></center><center><hr></center><center><p>中文姓名：柯孟豪 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：在通式化迪布恩有向圖中之彩虹支配問題 <br>關鍵字(中)：支配、彩虹支配問題、通式化迪布恩有向圖 <br></p></center><center><hr></center><center><p>中文姓名：張舜傑 <br>學年度：104 <br>學位(中)：博士 <br>論文名稱(中)：特殊圖形的支配集與p重心問題之研究 <br>關鍵字(中)：外連通支配集、獨立支配集、支配集、連通p重心、串連並連圖形、區塊圖形、謝爾賓斯基圖形、延伸謝爾賓斯基圖形、謝爾賓斯基相關類別圖形、NP-hard <br></p></center><center><hr></center><center><p>中文姓名：張鈞翔 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：嫌惡設施物在排列圖 <br>關鍵字(中)：配置問題、嫌惡設施物、排列圖 <br></p></center><center><hr></center><center><p>中文姓名：郭俊麟 <br>學年度：101 <br>學位(中)：博士 <br>論文名稱(中)：圖形頂點的著色及支配問題之研究 <br>關鍵字(中)：著色、表著色、平面圖、集合表示、支配集 <br></p></center><center><hr></center><center><p>中文姓名：廖國鈞 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：仙人掌圖上具權重的k長度路徑之點覆蓋問題 <br>關鍵字(中)：圖論、k 長度路徑之點覆蓋問題、仙人掌圖 <br></p></center><center><hr></center>	2016-03-03 05:37:11.66468	2016-03-17 02:31:07.349782	1	ylwang.jpg
11	電腦圖學與多媒體實驗室	楊傳凱	<h3 style="text-align: center;">專長及研究領域</h3><p style="text-align: center;">多媒體系統、電腦繪圖、科學視覺化、演算法、計算幾何\r\n</p><hr><h3 style="text-align: center;"><span></span><span></span>近三年學生論文\r\n</h3><center><p>中文姓名：周智禾 <br>學年度：101 <br>學位(中)：博士 <br>論文名稱(中)：鑑別式金鑰交換機制之設計 <br>關鍵字(中)：身分基礎、公開金鑰基礎、密碼基礎、金鑰交換、鑑別性、密碼學、橢圓曲線密碼系統 <br>\r\n</p></center><center><hr></center><center><p>中文姓名：周家愷 <br>學年度：101 <br>學位(中)：博士 <br>論文名稱(中)：具隱私性考量之多媒體資料處理 <br>關鍵字(中)：具隱私性考量的、以區塊為基礎之轉換演算法、影像捲積、影像/影片檢索、容積資料呈像 <br>\r\n</p></center><center><hr></center><center><p>中文姓名：陳柏安 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：具空間關係及資料導向之三維建模研究 <br>關鍵字(中)：形狀檢索、資料驅動之三維建模、形狀合成 <br>\r\n</p></center><center><hr></center><center><p>中文姓名：賴沅壕 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：基於移動物體軌跡與外觀之影片搜尋 <br>關鍵字(中)：影片搜尋、物體追蹤、物體再識別 <br>\r\n</p></center><center><hr></center><center><p>中文姓名：黃政杰 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：基於kinect的物件模型建立 <br>關鍵字(中)：影像對齊、三維模型、深度影像 <br>\r\n</p></center><center><hr></center><center><p>中文姓名：張冠中 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：基於Google Earth之自動導航系統 <br>關鍵字(中)：Google地球、Google地圖、導航 <br>\r\n</p></center><center><hr></center><center><p>中文姓名：康翔豪 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：雷射筆人機互動系統 <br>關鍵字(中)：雷射點追蹤、物體追蹤、簡報系統 <br>\r\n</p></center><center><hr></center><center><p>中文姓名：陳昱宏 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：臉書動態之推薦系統 <br>關鍵字(中)：臉書、推薦系統、社群網路 <br>\r\n</p></center><center><hr></center><center><p>中文姓名：侯芊妤 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：3D立體點畫系統 <br>關鍵字(中)：立體視覺成像技術、點畫、視差圖 <br>\r\n</p></center><center><hr></center><center><p>中文姓名：詹亞婷 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：電腦輔助英文論文寫作系統 <br>關鍵字(中)：寫作系統、自然語言處理、英文論文 <br>\r\n</p></center><center><hr></center><center><p>中文姓名：蘇志民 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：以Storyline方式呈現資料視覺化 <br>關鍵字(中)：Storyline、資料視覺化、運動資料視覺化 <br>\r\n</p></center><center><hr></center><center><p>中文姓名：楊承翰 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：基於字幕與使用者回饋之影片推薦與回顧 <br>關鍵字(中)：光學文字辨識、關鍵影格提取、關鍵詞提取、回憶、推薦 <br>\r\n</p></center><center><hr></center><center><p>中文姓名：林孟儒 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：基於形狀特徵的三維人造物件模型正面判斷研究 <br>關鍵字(中)：三維人造物件、正面方向、形狀特徵 <br>\r\n</p></center><center><hr></center><center><p>中文姓名：黃茶玲 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：二維服裝造型設計使用樣條曲線 <br>關鍵字(中)：二維服裝、樣條、插值曲線 <br>\r\n</p></center><center><hr></center><center><p>中文姓名：張思敏 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：基於自身相似性的多比例因子影像及視訊超解析 <br>關鍵字(中)：影像超解析、視訊超解析、自我相似性、金字塔模型、混合式鏡頭 <br>\r\n</p></center><center><hr></center><center><p>中文姓名：Mochamad Nizar Palefi Ma'ady <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：時間探索二維可視化情感的的Twitter信息 <br>關鍵字(中)：可視化、微博表情、時間數據 <br>\r\n</p></center><center><hr></center>	2016-03-03 05:44:20.083493	2016-03-17 02:36:30.177722	1	ckyang.png
9	網路技術與應用實驗室	徐俊傑	<center></center><center><h3>專長及研究領域</h3><p>網際網路應用、資料探勘、文字探勘、平行與分散式處理</p><h3>近三年學生論文</h3><center><p>中文姓名：方歡毅 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：衰退性群組工作排程問題之研究 <br>關鍵字(中)：排程、單一機器、衰退性工作、群組排程、群組技術、最後完工時間 <br></p></center><center><hr></center><center><p>中文姓名：吳仲銘 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：動態串列式排程演算法之研究 <br>關鍵字(中)：任務排程、動態串列式排程演算法、動態關鍵路徑、能力 <br></p></center><center><hr></center><center><p>中文姓名：林采端 <br>學年度：102 <br>學位(中)：博士 <br>論文名稱(中)：分類式裝箱問題之研究 <br>關鍵字(中)：裝箱問題、分類限制裝箱問題、啟發式演算法、蟻族最佳化演算法 <br></p></center><center><hr></center><center><p>中文姓名：許莉莆 <br>學年度：101 <br>學位(中)：博士 <br>論文名稱(中)：車輛路徑問題之研究 <br>關鍵字(中)：路徑問題、車輛路徑問題、人工免疫系統、可回溯式門檻接受法 <br></p></center><center><hr></center><center><p>中文姓名：陳宥名 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：無線感測網路中以優先權叢集資料分散演算法之研究 <br>關鍵字(中)：無線感測網路、叢集、節省電量、網路生存時間 <br></p></center><center><hr></center><center><p>中文姓名：蔡昱廷 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：無線感測網路輔助成員能量平衡叢集法之研究 <br>關鍵字(中)：無線感測網路、叢集、輔助節點、能量平衡、路由演算法 <br></p></center><center><hr></center></center>	2016-03-03 05:40:34.71237	2016-03-17 02:42:07.880096	1	cchsu.jpg
1	策略管理資訊系統實驗室	李國光	<h3 style="text-align: center;">專長及研究領域</h3><p style="text-align: center;">知識管理、資訊系統策略規劃、組織學習、企業改造</p><h3 style="text-align: center;">近三年學生論文</h3><center><p style="text-align: center;">中文姓名：陳欣玄 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：個人靈感知識管理系統建置之研究 <br>關鍵字(中)：個人知識管理、靈感、社群分享、概念圖 <br></p></center><center><hr></center><center><p>中文姓名：陳志強 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：成功導入PLM的關鍵因素之探討 <br>關鍵字(中)：PLM、個案研究法、深入訪談法、權變因素、關鍵成功因素 <br></p></center><center><hr></center><center><p>中文姓名：劉士華 <br>學年度：101 <br>學位(中)：博士 <br>論文名稱(中)：悅趣式科技於立體幾何教學之研究 <br>關鍵字(中)：遊戲學習、平板電腦、立體幾何 <br></p></center><center><hr></center><center><p>中文姓名：劉佩如 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：以系統動力學建構大學生就業力模型之研究 <br>關鍵字(中)：系統思考、系統動力學、就業力 <br></p></center><center><hr></center><center><p>中文姓名：黃之競 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：學習成效確保系統建置之研究 <br>關鍵字(中)：學習成效確保、PDCA、評分指標、教學目標、AACSB <br></p></center><center><hr></center><center><p>中文姓名：吳東儒 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：研究生系統開發靈感管理流程建立之研究 <br>關鍵字(中)：靈感、資訊系統開發、概念圖 <br></p></center><center><hr></center><center><p>中文姓名：陳建浩 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：學習成效評估系統建置之研究 <br>關鍵字(中)：教學目標、學習成效評估、系統建置 <br></p></center><center><hr></center><center><p>中文姓名：邱垂尉 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：售後服務系統導入過程之行動研究 <br>關鍵字(中)：導入策略、組織變革、變革管理、售後服務、退貨授權 <br></p></center><center><hr></center><center><p>中文姓名：羅世雄 <br>學年度：102 <br>學位(中)：博士 <br>論文名稱(中)：應用田口方法探討影響知識轉化的關鍵因素 <br>關鍵字(中)：倫理氣候、知識轉化、信任、承諾、田口方法 <br></p></center><center><hr></center><center><p>中文姓名：蔣筱涵 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：行動人脈管理系統建置之研究 <br>關鍵字(中)：人脈管理、小世界現象、社交網路、社交網路服務、行動應用 <br></p></center><center><hr></center><center><p>中文姓名：陳慕珊 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：研究生專業能力養成輔助系統建置之研究 <br>關鍵字(中)：知識、知識盤點、知識資產、網路化學習歷程檔案 <br></p></center><center><hr></center><center><p>中文姓名：石哲政 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：概念圖融入知識管理課程教學成效影響之研究 <br>關鍵字(中)：概念圖、行動研究、知識管理 <br></p></center><center><hr></center><center><p>中文姓名：林家宏 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：知識協同建構之研究 <br>關鍵字(中)：概念圖、協作學習、社會建構主義、知識建構、德爾菲法 <br></p></center><center><hr></center><center><p>中文姓名：王世文 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：VMware伺服器虛擬化知識平台建置之研究 <br>關鍵字(中)：VMware伺服器虛擬化、知識平台、知識社群、概念圖 <br></p></center><center><hr></center><center><p>中文姓名：王振宇 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：人脈互動管理系統建置之研究 <br>關鍵字(中)：人際需求理論、社會互動理論、社會交換理論、差序格局理論 <br></p></center><center><hr></center><center><p>中文姓名：許之青 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：以使用者為中心知識管理系統導入之研究 <br>關鍵字(中)：使用者為中心、柔性管理理論、知識管理系統、知識管理導入策略 <br></p></center><center><hr></center><center><p>中文姓名：鍾政鴻 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：攝影知識平台建置之研究 <br>關鍵字(中)：知識抽象化、知識平台、概念圖 <br></p></center><center><hr></center><center><p>中文姓名：陳佑豪 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：大學生職涯分析與修業規劃系統建置之研究 <br>關鍵字(中)：職業適配度分析、語意分析、情緒分析、修課推薦、生涯發展、文字探勘、RIASEC、Holland人境適配論 <br></p></center><center><hr></center><center><p>中文姓名：高毓嬪 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：英語學習目標管理系統建置之研究 <br>關鍵字(中)：目標設定、語言學習策略、社群學習、同儕學習 <br></p></center><center><hr></center><center><p>中文姓名：陳俊淇 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：知識協同建構系統建置之研究 <br>關鍵字(中)：知識建構、協作學習、知識表徵、組織學習、知識管理 <br></p></center><center><hr></center><center><p>中文姓名：馬祖瑞 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：「愛騙人（iPaint人）」嗎？巨網資訊的創新故事 <br>關鍵字(中)：商業模式、電子商務、創新、商業模式創新、大數據 <br></p></center><center><hr></center><center><p>中文姓名：錢旭華 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：技藝競賽知識管理平台建置之研究 <br>關鍵字(中)：技藝競賽、MOODLE、概念圖、知識平台、知識管理 <br></p></center><center><hr></center><center><p>中文姓名：李青峯 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：虛擬主機雲端化與異地備援機制知識管理平台建置之研究 <br>關鍵字(中)：雲端運算、虛擬化、異地備援、概念構圖、知識管理平台 <br></p></center><center><hr></center><center><p>中文姓名：陳中基 <br>學年度：103 <br>學位(中)：博士 <br>論文名稱(中)：以拼湊為基礎的資源共同管理程序模式:以台灣DOC專案計畫為例 <br>關鍵字(中)：共同管理、商業生態系統、共同創造、資源拼湊、個案研究 <br></p></center><center><hr></center>	2016-03-01 06:24:33.794067	2016-03-17 03:07:12.837447	1	lgg.jpg
2	管理資訊系統實驗室	盧希鵬	<center><h3>專長及研究領域</h3><p>電子商務、知識管理、管理決策</p><h3>近三年學生論文</h3><center><p>中文姓名：張瑞隆 <br>學位(中)：碩士 <br>論文名稱(中)：委外管理實務關鍵成功因素 <br>關鍵字(中)：投資決策、資訊管理、專案管理 <br></p></center><center><hr></center><center><p>中文姓名：葉乃菁 <br>學位(中)：博士 <br>論文名稱(中)：Web 2.0使用者整合動機模式之探討-以愛情公寓與中文維基百科為例 <br>關鍵字(中)：享樂型網站、功利型網站、社會角色、動機理論、互動品質 <br></p></center><center><hr></center><center><p>中文姓名：田韻青 <br>學位(中)：碩士 <br>論文名稱(中)：社交模擬遊戲玩家之助人行為研究-以道德與利益之觀點探討 <br>關鍵字(中)：社交遊戲、道德、利益、遊戲機制、幫助意願 <br></p></center><center><hr></center><center><p>中文姓名：賴慶宇 <br>學位(中)：碩士 <br>論文名稱(中)：台灣與大陸第三方支付服務發展之比較 <br>關鍵字(中)：電子支付、第三方支付、履約保證、支付寶 <br></p></center><center><hr></center><center><p>中文姓名：楊宏度 <br>學位(中)：碩士 <br>論文名稱(中)：資訊外包對資訊整併時的績效-以金融業為例 <br>關鍵字(中)：金融合併、資訊系統外包、績效評估 <br></p></center><center><hr></center><center><p>中文姓名：賈梅 <br>學位(中)：碩士 <br>論文名稱(中)：An Assessment of the Emergence, Evolution, Development and Challenges of the Information Communication Technology (ICT) Sector of the Gambia <br>關鍵字(中)：None <br></p></center><center><hr></center><center><p>中文姓名：江明遠 <br>學位(中)：碩士 <br>論文名稱(中)：產業擴增的決策─以澎湖之美集團個案研究 <br>關鍵字(中)：質化研究、個案研究 <br></p></center><center><hr></center><center><p>中文姓名：徐新絜 <br>學位(中)：碩士 <br>論文名稱(中)：使用者數位閱讀行為之研究-以旅遊電子書為例 <br>關鍵字(中)：旅遊電子書、科技適配理論、娛樂動機、實用動機、社交動機、媒體豐富 <br></p></center><center><hr></center><center><p>中文姓名：范舒寓 <br>學位(中)：碩士 <br>論文名稱(中)：自組企業資源規劃 (SAP ERP)開發團隊的決策因素-以VOIT個案公司為例 <br>關鍵字(中)：資訊委外、交易成本、資源基礎、組織自主性、商業生態 <br></p></center><center><hr></center><center><p>中文姓名：王和忠 <br>學位(中)：碩士 <br>論文名稱(中)：知覺品質、知覺犧牲、知覺價值對消費者購買意願之影響-以4G LTE行動上網服務為實證 <br>關鍵字(中)：4G LTE行動上網、知覺品質、知覺犧牲、知覺價值、購買意願、支付意願 <br></p></center><center><hr></center><center><p>中文姓名：念玉鑽 <br>學位(中)：碩士 <br>論文名稱(中)：探討開放式數位學習新模式-以YouTube為模型進行建置並驗證 <br>關鍵字(中)：YouTube、線上學習、科技接受模式、同儕、愉悅感 <br></p></center><center><hr></center><center><p>中文姓名：彭永賢 <br>學位(中)：碩士 <br>論文名稱(中)：職涯選擇工作平台之探討 <br>關鍵字(中)：工作平台、連結經濟、職涯選擇、多邊平台商業模式、網絡組織 <br></p></center><center><hr></center><center><p>中文姓名：梁世武 <br>學位(中)：博士 <br>論文名稱(中)：全球數位國會發展趨勢與台灣數位國會創新策略之研究 <br>關鍵字(中)：數位國會、國會網站、電子化政府、國會創新應用 <br></p></center><center><hr></center><center><p>中文姓名：李啟龍 <br>學位(中)：博士 <br>論文名稱(中)：企業部落格平台的信任形成因素及其影響 <br>關鍵字(中)：企業部落格、信任、旅遊服務、購買意圖、性別差異、部落格行銷 <br></p></center><center><hr></center><center><p>中文姓名：江國瑅 <br>學位(中)：碩士 <br>論文名稱(中)：音樂調式影響消費者購買意願之研究-以休閒咖啡館為例 <br>關鍵字(中)：音樂調式、理性行為模式、休閒遊憩 <br></p></center><center><hr></center><center><p>中文姓名：林珊如 <br>學位(中)：碩士 <br>論文名稱(中)：產業價值活動與關係行銷於S.E.E.方法論之探討：以雄獅旅遊為例 <br>關鍵字(中)：價值活動、服務體驗工程、關係行銷、雄獅旅遊 <br></p></center><center><hr></center><center><p>中文姓名：張郁婷 <br>學位(中)：博士 <br>論文名稱(中)：社群媒體行銷使用者行為之研究 <br>關鍵字(中)：成本效益、思辨可能模式、使用者行為、社群媒體行銷、體驗創新 <br></p></center><center><hr></center><center><p>中文姓名：羅達生 <br>學位(中)：博士 <br>論文名稱(中)：服務品質創新屬性之評估模式研究 <br>關鍵字(中)：使用者體驗、新服務發展、服務設計、脈絡訪查、Kano模式、體驗行銷架構、服務品質 <br></p></center><center><hr></center><center><p>中文姓名：楊怡文 <br>學位(中)：博士 <br>論文名稱(中)：使用社群網站行為意向之研究：延伸任務科技配適至社交科技配適 <br>關鍵字(中)：社群網站、任務科技配適度、科技接受度、社會資本理論、部份最小平方法。 <br></p></center><center><hr></center><center><p>中文姓名：李岱融 <br>學位(中)：碩士 <br>論文名稱(中)：臺灣與大陸保險業電子商務應用之比較 <br>關鍵字(中)：保險業、電子商務、兩岸市場、法令、科技、服務模式 <br></p></center><center><hr></center><center><p>中文姓名：陳宇宏 <br>學位(中)：碩士 <br>論文名稱(中)：市場調查公司之營運創新模式-以展欣公司為例 <br>關鍵字(中)：雲端調查系統、調查平台、有效客戶、調查即時反應系統 <br></p></center><center><hr></center><center><p>中文姓名：林珏慧 <br>學位(中)：碩士 <br>論文名稱(中)：幸福企業快樂工程方法論之研究 <br>關鍵字(中)：幸福企業、快樂工程、幸福指數量表、企業流程 <br></p></center><center><hr></center><center><p>中文姓名：陳冠洋 <br>學位(中)：碩士 <br>論文名稱(中)：以成本效益觀點探討全通路服務之使用意願 <br>關鍵字(中)：全通路行銷、通路行銷的演進、成本效益權衡觀點、數位匯流 <br></p></center><center><hr></center><center><p>中文姓名：彭建勳 <br>學位(中)：碩士 <br>論文名稱(中)：以狩野模型、品質機能展開及全面品質管理探討線上對線下服務模式─以梅西百貨為例 <br>關鍵字(中)：開放式創新、線上對線下、服務品質、知覺價值、知覺犧牲、滿意度、狩野模型、品質機能展開、全面品質管理 <br></p></center><center><hr></center><center><p>中文姓名：楊馥安 <br>學位(中)：碩士 <br>論文名稱(中)：企業家人格特質與市場進入次序於創新策略上的差異—以蘋果公司和三星電子之智慧型行動科技產業為例 <br>關鍵字(中)：領導、創新策略、市場進入次序、智慧型手持裝置 <br></p></center><center><hr></center><center><p>中文姓名：魏貝珊 <br>學位(中)：博士 <br>論文名稱(中)：消費者網路購物決策過程之研究-以女性消費者網路購物行為為例 <br>關鍵字(中)：網路購物、決策過程、衝動購買、刺激-個體-反應理論、直覺捷思理論、名人代言、消費者評論 <br></p></center><center><hr></center></center>	2016-03-01 06:24:33.802811	2016-03-17 03:11:35.069774	1	hsipeng.jpg
3	軟體工程與管理實驗室	黃世禎	<h3 style="text-align: center;">專長及研究領域</h3><p style="text-align: center;">軟體工程、軟體專案管理、軟體度量與分析、軟體流程改善、CMMI、軟體品質管理</p><h3 style="text-align: center;">近三年學生論文</h3><center><p style="text-align: center;">中文姓名：謝廣椿 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：科技公司的經營再造與轉型 <br>關鍵字(中)：經營再造、加值型服務、學習型組織、變革管理 <br></p></center><center><hr></center><center><p>中文姓名：俞光回 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：軟體人力預估精確性提升專案 <br>關鍵字(中)：軟體人力估算、變革管理、團隊學習 <br></p></center><center><hr></center><center><p>中文姓名：巫旺儒 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：網路銀行系統重建專案 <br>關鍵字(中)：專案管理、系統轉換、資源基礎理論、軟體開發 <br></p></center><center><hr></center><center><p>中文姓名：施宇柔 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：資訊科技廠商雲端服務策略形成過程之研究 <br>關鍵字(中)：雲端運算、雲端服務、策略形成過程、多重個案研究 <br></p></center><center><hr></center><center><p>中文姓名：陳雯玲 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：事務機製造商服務能力重塑之困境與因應 <br>關鍵字(中)：資源基礎理論、服務模組化、資源整合、標竿學習 <br></p></center><center><hr></center><center><p>中文姓名：高志明 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：資料列安全性權限控管機制之研究 <br>關鍵字(中)：資料列安全性、權限控管、資料庫安全性、服務導向架構 <br></p></center><center><hr></center><center><p>中文姓名：廖秋月 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：資訊系統委外分包專案管理之困境 <br>關鍵字(中)：資訊系統委外、專案管理、關係管理、衝突、組織權責、交易成本 <br></p></center><center><hr></center><center><p>中文姓名：胡詠棠 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：醫療資訊公司解決經營困境之策略思維 <br>關鍵字(中)：資源基礎理論、商業生態系統、資源依賴、策略思維 <br></p></center><center><hr></center><center><p>中文姓名：游志平 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：零售資訊系統服務導向架構之實踐 <br>關鍵字(中)：系統整合、服務導向架構、企業服務匯流排、企業流程管理、服務導向架構治理 <br></p></center><center><hr></center><center><p>中文姓名：蘇米妮 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：以樹狀結構實作軟體流程調適準則之研究 <br>關鍵字(中)：軟體流程、軟體流程調適、流程調適準則、樹狀結構 <br></p></center><center><hr></center><center><p>中文姓名：馬純強 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：軟體開發多專案之人力資源管理 <br>關鍵字(中)：資訊系統轉換、專案管理、人力資源管理、領導 <br></p></center><center><hr></center><center><p>中文姓名：陳健發 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：軟體缺失度量指標制訂與缺失管理系統之建置 <br>關鍵字(中)：軟體品質、軟體缺失度量、軟體缺失指標、軟體缺失管理系統 <br></p></center><center><hr></center><center><p>中文姓名：陳憬嫻 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：軟體群眾外包管理機制之概念模型 <br>關鍵字(中)：群眾外包、管理機制、專案規劃、獎勵機制、評選機制、資訊分享、智慧財產管理 <br></p></center><center><hr></center><center><p>中文姓名：沈明聰 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：資訊服務商體質改造的挑戰與因應 <br>關鍵字(中)：經營再造、學習型組織、變革管理 <br></p></center><center><hr></center><center><p>中文姓名：林裕鑫 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：科技公司的組織再造與研發策略轉型 <br>關鍵字(中)：組織設計、系統思考、策略性委外 <br></p></center><center><hr></center><center><p>中文姓名：勞開廉 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：傳統專屬主機資訊系統之取代方案實作 <br>關鍵字(中)：資源基礎理論、可行性分析、專案管理、組織慣性、應用程式現代化、伺服器整併 <br></p></center><center><hr></center><center><p>中文姓名：周志旭 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：醫療資訊商善用其優勢開創新服務 <br>關鍵字(中)：掛號、主訴、候診、看診、雲端服務、競合策略、典範轉移 <br></p></center><center><hr></center><center><p>中文姓名：何政育 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：財會部門的敏捷性革新實踐 <br>關鍵字(中)：家電產業、使用者自建系統、企業流程再造、組織變革 <br></p></center><center><hr></center><center><p>中文姓名：吳淑玲 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：透過協作網絡實現組織活化與創新 <br>關鍵字(中)：網絡型組織管理、資源基礎理論、協同合作、資訊治理 <br></p></center><center><hr></center><center><p>中文姓名：林瑞豪 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：軟體技術團隊導入看板方法的原則與實踐之研究 <br>關鍵字(中)：敏捷開發、軟體開發、精實軟體開發、流程改善、看板方法、Kanban、Scrum、Agile <br></p></center><center><hr></center><center><p>中文姓名：洪信傑 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：非營利組織CHC協會轉型社會企業的經營策略 <br>關鍵字(中)：計劃行為理論、社群媒體行銷、商業模式、社會企業、非營利組織 <br></p></center><center><hr></center><center><p>中文姓名：許純茹 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：軟體缺失度量指標整合應用之研究 <br>關鍵字(中)：軟體缺失、軟體品質、軟體缺失度量、整合性軟體缺失指標 <br></p></center><center><hr></center><center><p>中文姓名：侯妏綾 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：正規化軟體開發標準作業程序與流程調適之應用 <br>關鍵字(中)：軟體流程、軟體流程調適、標準作業程序 <br></p></center><center><hr></center><center><p>中文姓名：薇妲戴妮諾 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：透過電子化政府計畫建設以民為本的政府:台灣電子化政府的實證研究 <br>關鍵字(中)：以民為本、公民參與、電子化政府、開放資料 <br></p></center><center><hr></center><center><p>中文姓名：劉勵中 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：主動風險管理之新產品開發流程-以筆記型電腦產品為例 <br>關鍵字(中)：風險優先係數、主動風險管理、SWOT分析、新產品開發、專案管理 <br></p></center><center><hr></center><center><p>中文姓名：唐金山 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：電信業者合縱連橫的競合策略 <br>關鍵字(中)：策略聯盟、聯盟決策、競合策略、資源整合 <br></p></center><center><hr></center>	2016-03-01 06:24:33.808507	2016-03-17 03:13:44.585606	1	huang.jpg
4	數位化賦能研究	周子銓	<h3 style="text-align: center;">專長及研究領域</h3><p style="text-align: center;">個案研究法：通過個案研究方法，探討企業經營的實務智慧。 </p><p style="text-align: center;">研究聚焦：數位化賦能(digital enablement)的創新商業模式(Business Models)、數位化賦能的社會創新(Social Innovations)、資訊科技管理、知識管理、社會企業個案。</p><h3 style="text-align: center;">近三年學生論文</h3><center><p>中文姓名：呂柏鋐 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：資訊教育訓練產業商業模式 - 恆逸資訊的服務思維 <br>關鍵字(中)：資源基礎理論、核心能力模組化、主動出擊的經營策略、左右開弓策略 <br></p></center><center><hr></center><center><p>中文姓名：許志榮 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：WEEKLY雜誌公司資訊系統退場 <br>關鍵字(中)：IT委外、交易成本、共識、制度、社會互動、雜誌出版 <br></p></center><center><hr></center><center><p>中文姓名：游佩蓉 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：保護獨特性資訊資源 <br>關鍵字(中)：資源基礎理論、資源依賴理論、委外關係、左右開弓 <br></p></center><center><hr></center><center><p>中文姓名：駱雲隆 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：平衡全球系統整合策略與在地回應需求間的挑戰 <br>關鍵字(中)：委外、專案管理、技術霸權、全球整合 & 在地回應 <br></p></center><center><hr></center><center><p>中文姓名：鍾淑美 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：資訊服務產業再委外之決策 <br>關鍵字(中)：委外、模組化、資源依賴理論、跨界管理 <br></p></center><center><hr></center><center><p>中文姓名：賴虹伶 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：IT主導邏輯之研究 <br>關鍵字(中)：主導邏輯、IT邏輯、組織文化、資源配置 <br></p></center><center><hr></center><center><p>中文姓名：朱啟光 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：B2C電子發票開發決策 <br>關鍵字(中)：技術導向、業務導向、習慣領域、科技、任務、體制 <br></p></center><center><hr></center><center><p>中文姓名：王詠萱 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：多重配適知識管理組織設計──以三立電視為例 <br>關鍵字(中)：組織設計、模組化、知識管理、核心能力 <br></p></center><center><hr></center><center><p>中文姓名：李祐涵 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：知識管理邏輯與結構之研究-以三立電視為例 <br>關鍵字(中)：知識管理、主導邏輯、結構化理論 <br></p></center><center><hr></center><center><p>中文姓名：張智傑 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：IT資源配置決策分析 <br>關鍵字(中)：資訊科技資產、資源配置、共識、社會互動、跨界管理 <br></p></center><center><hr></center><center><p>中文姓名：洪嘉鍵 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：宏遠電訊商業模式創新 <br>關鍵字(中)：資源基礎理論、商業模式創新、精準行銷、資源拼湊理論 <br></p></center><center><hr></center><center><p>中文姓名：殷元龍 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：社會企業之創新模式 – 以愛樂活社會企業為例 <br>關鍵字(中)：社會企業、商業生態系統理論、商業模式及複製、企業群聚綜效 <br></p></center><center><hr></center><center><p>中文姓名：Ivan Leonard Setiawan <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：Developing an Effective Electronic Commerce System for Higher Education: A Case Study of MiTT <br>關鍵字(中)：none <br></p></center><center><hr></center><center><p>中文姓名：陳福成 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：討債蛻變為溫馨理債服務 <br>關鍵字(中)：社會企業、商業模式、資源基礎、左右開弓 <br></p></center><center><hr></center><center><p>中文姓名：林建成 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：童書王國的明日之星－柏克萊文化事業的敏捷創新能力 <br>關鍵字(中)：基礎資源理論、競合策略、創業家精神、組織的創新敏捷性 <br></p></center><center><hr></center><center><p>中文姓名：梁晏瑋 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：電信服務邁向體驗經濟時代-以TWmobile公司評估導入CEM為例 <br>關鍵字(中)：客戶體驗管理、策略資訊系統規劃、跨界管理、共識、社會互動論、s服務主導邏輯、體驗經濟 <br></p></center><center><hr></center><center><p>中文姓名：李愷綺 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：糕餅老店林金生香之創新經營模式 <br>關鍵字(中)：傳統糕餅、轉型、文化創意、通路 <br></p></center><center><hr></center><center><p>中文姓名：Nichapa Panyasoponlert <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：Designing an Effective Paperless Meeting System for Higher Education - A Case Study of NTUST <br>關鍵字(中)：none <br></p></center><center><hr></center><center><p>中文姓名：陳柏如 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：創新綠色通勤－微笑單車的公私協奏曲 <br>關鍵字(中)：交通生態系統、主導邏輯、商業模式、PPP模式、YouBike、微笑單車 <br></p></center><center><hr></center><center><p>中文姓名：周承彥 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：社會資本驅動知識管理機制設計 <br>關鍵字(中)：知識分享、知識管理、社會資本 <br></p></center><center><hr></center><center><p>中文姓名：蔡淳涵 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：資訊科技與社會影響力之研究-以愛樂活為例 <br>關鍵字(中)：社會影響力、結構化理論、IT主導邏輯、社會企業 <br></p></center><center><hr></center><center><p>中文姓名：莊靜嫻 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：發展網絡式資源整合社會企業以陽光廚房為例 <br>關鍵字(中)：社區發展、商業模式、資源模組化、資源拼湊、社會企業 <br></p></center><center><hr></center><center><p>中文姓名：劉家妤 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：推動e化對原鄉部落之影響－以復興鄉為例 <br>關鍵字(中)：主導邏輯、結構化理論、原鄉e化、數位落差 <br></p></center><center><hr></center><center><p>中文姓名：陳翊宣 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：人性化資訊科技應用之研究－以長春石化為例 <br>關鍵字(中)：IT主導邏輯、資源結構、組織常規、IT創新 <br></p></center><center><hr></center><center><p>中文姓名：陳郁雯 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：設計以跨界為基礎之供應鏈管理系統─以長春石化為例 <br>關鍵字(中)：供應鏈管理、跨界管理、IT Artifacts。 <br></p></center><center><hr></center><center><p>中文姓名：黃如萍 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：翻轉中的醫療IT–以彰基醫療體系為例 <br>關鍵字(中)：資源基礎理論、價值共創、商業模式、醫療資訊管理 <br></p></center><center><hr></center><center><p>中文姓名：廖崇男 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：探索非營利組織的商業經營模式 <br>關鍵字(中)：非營利組織、商業模式、資源拼湊、網絡關係、共享價值 <br></p></center><center><hr></center><center><p>中文姓名：連佩如 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：IT對法律遵循的意涵-以奢華服務精品零售業為例 <br>關鍵字(中)：MIT 90、IT治理、資訊素養、共識 <br></p></center><center><hr></center><center><p>中文姓名： 曾申昌 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：公義 NPO 不募款的堅持 <br>關鍵字(中)：資源拼湊、價值共創、商業模式、主導邏輯 <br></p></center><center><hr></center><center><p>中文姓名：陳景陽 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：鮮乳坊社會企業的白色力量 <br>關鍵字(中)：商業模式、價值共創、通路霸權、生態重塑、鮮乳坊 <br></p></center><center><hr></center><center><p>中文姓名：簡樹理 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：數位化服務創新－百年金融的新競爭力 <br>關鍵字(中)：左右開弓、網路生態系統、服務缺口、資源基礎 <br></p></center><center><hr></center><center><p>中文姓名：余碧玉 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：遠離車馬喧囂的巧克力秘密世界 <br>關鍵字(中)：商業模式、資源基礎理論、左右開弓、價值共創 <br></p></center><center><hr></center><center><p>中文姓名：陳明正 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：攝影業的社會性發展 <br>關鍵字(中)：服務創新、左右開弓、共創價值 <br></p></center><center><hr></center><center><p>中文姓名：施文宜 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：飲一杯台灣味-微醺二林的地區平台式經營模式 <br>關鍵字(中)：地區核心能力、地區商業模式、價值共創、左右開弓、地區平台式經營 <br></p></center><center><hr></center><center><p>中文姓名：陳柏弘 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：汗得學社的能源教育創新實踐 <br>關鍵字(中)：社會機構平台、商業模式、資源拼湊、主導邏輯 <br></p></center><center><hr></center><center><p>中文姓名：郭佩宜 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：以動態能力探討組織轉型之平衡機制─以振樺電子為例 <br>關鍵字(中)：動態能力、左右開弓能力、平衡機制、轉型、持續性競爭優勢 <br></p></center><center><hr></center><center><p>中文姓名：林昆平 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：賦予兒童畫作正向的力量－兒童美術館夢想啟航 <br>關鍵字(中)：商業模式、資源拼湊、左右開弓、社會影響力、兒童美術館 <br></p></center><center><hr></center><center><p>中文姓名：黃振皓 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：組織轉型之主導邏輯轉換及跨界管理─以神基科技為例 <br>關鍵字(中)：組織轉型、主導邏輯、管理控制系統、商業生態系統、跨界管理 <br></p></center><center><hr></center><center><p>中文姓名：程文浩 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：以公益心 行公義事 - 若水國際的社會創新歷程 <br>關鍵字(中)：身障就業、社會企業、商業模式、主導邏輯、社會創新、社會影響力 <br></p></center><center><hr></center><center><p>中文姓名：徐承楓 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：與客戶共創產品價值-研發資源與客戶關係的兩難 <br>關鍵字(中)：資源基礎、客戶關係管理、左右開弓、價值共創、網路流量分析 <br></p></center><center><hr></center><center><p>中文姓名：林明毅 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：以系統思考分析電子郵件社交工程演練 <br>關鍵字(中)：科技壓力、紮根理論、系統思考、社交工程 <br></p></center><center><hr></center>	2016-03-01 06:24:33.815088	2016-03-17 03:15:54.921911	1	tcchou.jpg
6	資訊系統與創新實驗室	朱宇倩	<h3 style="text-align: center;">專長及研究領域</h3><p style="text-align: center;">資訊系統開發團隊管理、知識管理、電子商務</p><h3 style="text-align: center;">近三年學生論文</h3><p style="text-align: center;">中文姓名：何昕宸 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：探討稽核員、受稽企業特質與受稽者的態度對於企業之資訊安全管理系統效能的影響 <br>關鍵字(中)：資訊安全稽核、資訊安全管理系統效能 </p>	2016-03-01 06:24:33.826295	2016-03-17 03:19:19.546702	1	yzhu.jpg
10	高速與無線網路實驗室	賴源正	<h3 style="text-align: center;">專長及研究領域</h3><p style="text-align: center;">高速網路、無線網路、網路效能評估、網際網路應用、網路輔助教學</p><h3 style="text-align: center;">近三年學生論文</h3><center><p>中文姓名：蕭令彥 <br>英文姓名：Ling-yen Hsiao <br>學年度：101 <br>學位(中)：博士 <br>論文名稱(中)：在無線射頻標籤辨識上針對考量再辨識、捕獲效應與位元追蹤技術之反碰撞演算法 <br>關鍵字(中)：無線射頻辨識、反碰撞、標籤辨識、動態阻隔演算法、捕獲效應、位元追蹤 <br></p></center><center><hr></center><center><p>中文姓名：陳亮均 <br>英文姓名：Liang-Chun Chen <br>學年度：101 <br>學位(中)：博士 <br>論文名稱(中)：應用於行動WiMAX通訊系統之睡眠傾聽交錯排程機制 <br>關鍵字(中)：IEEE 802.16e、節能、交錯、最大未使用的時間間隔、資源排程 <br></p></center><center><hr></center><center><p>中文姓名：施証翔 <br>英文姓名：Jheng-Siang Shih <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：一個有效的RNX替代性ID應用於無線射頻辨識 <br>關鍵字(中)：替代性ID技術、防碰撞、無線射頻標籤辨識 <br></p></center><center><hr></center><center><p>中文姓名：陳彥宏 <br>英文姓名：Yen-Hung Chen <br>學年度：101 <br>學位(中)：博士 <br>論文名稱(中)：IEEE 802.16 正交分頻多工存取系統之二維頻寬分配演算法 <br>關鍵字(中)：IEEE 802.16、二維頻寬分配、正交分頻多工存取 <br></p></center><center><hr></center><center><p>中文姓名：蘇茵蓉 <br>英文姓名：Yin-Rung Su <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：於無線射頻標籤辨識系統中新穎之通道感知查詢樹演算法 <br>關鍵字(中)：無線射頻標籤辨識、標籤辨識、防碰撞、通道錯誤、干擾 <br></p></center><center><hr></center><center><p>中文姓名：蔡博宇 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：自動建構有限狀態機以量測手機程序層耗電 <br>關鍵字(中)：智慧型手機、系統呼叫、有限狀態機 <br></p></center><center><hr></center><center><p>中文姓名：黃郁珊 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：利用中央處理單元使用率的關聯性建立多核心電力量測模型 <br>關鍵字(中)：智慧型手機、多核心電力模型、資源使用率 <br></p></center><center><hr></center><center><p>中文姓名：陳韋如 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：適用於即時多媒體應用之多路徑頻寬感知排程演算法 <br>關鍵字(中)：多路徑傳輸、多媒體應用、排程演算法 <br></p></center><center><hr></center><center><p>中文姓名：黃淑容 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：於無線射頻標籤辨識系統中之行動性感知二元樹演算法 <br>關鍵字(中)：無線射頻標籤辨識、標籤辨識、防碰撞、動態式標籤 <br></p></center><center><hr></center><center><p>中文姓名：Kevin Darmawan Limantoro <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：Hierarchical Token Bucket Queuing for Quality of Services Guarantee in Multipath SDN Networks <br>關鍵字(中)：none <br></p></center><center><hr></center><center><p>中文姓名：Laila Ma'rifatul Azizah <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：Controller Placement under Case of Switch Connecting to Multiple Controllers in Software Defined Network <br>關鍵字(中)：none <br></p></center><center><hr></center><center><p>中文姓名：蔡尚德 <br>學年度：103 <br>學位(中)：博士 <br>論文名稱(中)：創意設計資源整合模式：Q版漫畫設計系統 <br>關鍵字(中)：設計資源整合模式、Q 版漫畫造型風格、設計元素分析、設計資源分享、造型產生系統 <br></p></center><center><hr></center><center><p>中文姓名：劉筱俞 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：霧端架構上之IPTV <br>關鍵字(中)：IPTV、霧端架構、頻道切換時間 <br></p></center><center><hr></center><center><p>中文姓名：彭國叡 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：於RFID中雙訊框估計捕捉效應與雜訊干擾機率 <br>關鍵字(中)：雜訊干擾、捕捉效應、雙訊框、無線射頻標籤辨識 <br></p></center><center><hr></center><center><p>中文姓名：蔡尚庭 <br>英文姓名：Shang-Ting Tsai <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：在發生洪水攻擊時保留可疑資料流的快取置換法 <br>關鍵字(中)：網路監控、資料流輸出、快取置換 <br></p></center><center><hr></center><center><p>中文姓名：林暐凱 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：封包採樣率於資料流數量之分析 <br>關鍵字(中)：資料流、封包採樣、入侵檢測系統 <br></p></center><center><hr></center><center><p>中文姓名：王偲帆 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：基於天氣之車速預測系統─使用大數據分析 <br>關鍵字(中)：Hadoop、大數據、MapReduce、決策樹、交通預測 <br></p></center><center><hr></center><center></center>	2016-03-03 05:41:16.787923	2016-03-17 02:25:12.506418	1	laiyc.jpg
12	整合數位服務實驗室	羅乃維	<h3 style="text-align: center;">專長及研究領域</h3><p style="text-align: center;">計算機演算法,圖論,平行處理</p><h3 style="text-align: center;">近三年學生論文</h3><center><p>中文姓名：范珮琪 </p></center><center><p>系所名稱(中)：資訊管理系 <br>學年度：101 <br>學位(中)：碩士 <br>關鍵字(中)：雲端運算、基礎設施即服務、能源消耗、資源管理、虛擬技術、整合技術、遷移技術、服務層級協議 <br></p></center><center><hr></center><center><p>中文姓名：蔡佳倫 <br>系所名稱(中)：資訊管理系 <br>學年度：101 <br>學位(中)：博士 <br>關鍵字(中)：智慧卡、身分鑑別機制、分散式伺服器環境、匿名性 <br></p></center><center><hr></center><center><p>中文姓名：陳筱玫 <br>系所名稱(中)：資訊管理系 <br>學年度：101 <br>學位(中)：碩士 <br>關鍵字(中)：無線射頻標籤、群組證明、EPC C1G2標籤、HF 標籤 <br></p></center><center><hr></center><center><p>中文姓名：王婕 <br>系所名稱(中)：資訊管理系 <br>學年度：101 <br>學位(中)：碩士 <br>關鍵字(中)：無線射頻識別、安全性、隱私性、醫療資訊系統 <br></p></center><center><hr></center><center><p>中文姓名：劉佩芸 <br>系所名稱(中)：資訊管理系 <br>學年度：101 <br>學位(中)：碩士 <br>關鍵字(中)：雲端運算、身分提供者、資源配置、雲端聯盟 <br></p></center><center><hr></center><center><p>中文姓名：Alexander Yohan <br>系所名稱(中)：資訊管理系 <br>學年度：102 <br>學位(中)：碩士 <br>關鍵字(中)：Danger Theory、Artificial Immune System、Privacy Protection、Social Networking Site、Facebook <br></p></center><center><hr></center><center><p>中文姓名：王逸帆 <br>系所名稱(中)：資訊管理系 <br>學年度：102 <br>學位(中)：碩士 <br>關鍵字(中)：供應管理庫商、所有權轉移、多擁有者、無線射頻標籤 <br></p></center><center><hr></center><center><p>中文姓名：劉政宗 <br>系所名稱(中)：資訊管理系 <br>學年度：102 <br>學位(中)：碩士 <br>關鍵字(中)：雲端運算、身份為基礎之加密系統、身份辨識、責任歸屬 <br></p></center><center><hr></center><center><p>中文姓名：莊哲偉 <br>系所名稱(中)：資訊管理系 <br>學年度：102 <br>學位(中)：碩士 <br>關鍵字(中)：群組秘鑰、資料完整性、雲端運算、外部資料儲存 <br></p></center><center><hr></center><center><p>中文姓名：游繼凱 <br>系所名稱(中)：資訊管理系 <br>學年度：102 <br>學位(中)：碩士 <br>關鍵字(中)：Android、螢幕鎖定、自動鎖定 <br></p></center><center><hr></center><center><p>中文姓名：陳勇君 <br>系所名稱(中)：資訊管理系 <br>學年度：102 <br>學位(中)：博士 <br>關鍵字(中)：反碰撞、標籤識別、無線射頻識別技術(RFID)、多元樹 <br></p></center><center><hr></center><center><p>中文姓名：范雋彥 <br>系所名稱(中)：資訊管理系 <br>學年度：102 <br>學位(中)：碩士 <br>關鍵字(中)：隱私、風險評估、Android、資料敏感度、行動App <br></p></center><center><hr></center><center><p>中文姓名：鄭宇辰 <br>系所名稱(中)：資訊管理系 <br>學年度：103 <br>學位(中)：碩士 <br>關鍵字(中)：群組憑證、數位簽章、電子病歷、前向安全 <br></p></center><center><hr></center><center><p>中文姓名：吳佳怡 <br>系所名稱(中)：資訊管理系 <br>學年度：103 <br>學位(中)：碩士 <br>關鍵字(中)：電子健康紀錄、長期管理電子資料、累積公證簽章、身份辨識、授權 <br></p></center><center><hr></center><center><p>中文姓名：呂紹綱 <br>系所名稱(中)：資訊管理系 <br>學年度：103 <br>學位(中)：碩士 <br>關鍵字(中)：Android、App重包裝、App完整性、App指紋 <br></p></center><center><hr></center><center><p>中文姓名：王雋凱 <br>系所名稱(中)：資訊管理系 <br>學年度：103 <br>學位(中)：碩士 <br>關鍵字(中)：主機卡模擬、近場通訊、身分鑑別、個人化服務、網路協定電視 <br></p></center><center><hr></center><center><p>中文姓名：林秉賢 <br>系所名稱(中)：資訊管理系 <br>學年度：103 <br>學位(中)：碩士 <br>關鍵字(中)：詐騙偵測、潛在語意模型、餘弦相似度 <br></p></center><center><hr></center><center><p>中文姓名：嚴貽忠 <br>系所名稱(中)：資訊管理系 <br>學年度：103 <br>學位(中)：博士 <br>關鍵字(中)：用藥錯誤、無線射頻辨識、住院病患安全、醫藥管理 <br></p></center><center><hr></center><center><p>中文姓名：曾亭媗 <br>系所名稱(中)：資訊管理系 <br>學年度：104 <br>學位(中)：碩士 <br>關鍵字(中)：網路協定電視、個人化服務、身分鑑別、行動裝置、臉部識別 <br></p></center><center><hr></center><center><p>中文姓名：鄭偉祥 <br>系所名稱(中)：資訊管理系 <br>學年度：104 <br>學位(中)：碩士 <br>關鍵字(中)：none <br></p></center><center><hr></center>	2016-03-03 05:46:11.0656	2016-03-17 02:39:55.088125	1	nwlo.jpg
13	自然人機介面實驗室	林伯慎	<h3 style="text-align: center;">專長及研究領域</h3><p style="text-align: center;">語音辨識、語言理解、人機互動、音樂檢索、人工智慧、機器學習</p><h3 style="text-align: center;">近三年學生論文</h3><center><p>中文姓名：蕭令彥 <br>學年度：101 <br>學位(中)：博士 <br>論文名稱(中)：在無線射頻標籤辨識上針對考量再辨識、捕獲效應與位元追蹤技術之反碰撞演算法 <br>關鍵字(中)：無線射頻辨識、反碰撞、標籤辨識、動態阻隔演算法、捕獲效應、位元追蹤 <br></p></center><center><hr></center><center><p>中文姓名：劉易昇 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：基於PageRank之文件分群與文件視覺化方法研究 <br>關鍵字(中)：PageRank分群、文件分群、文件視覺化 <br></p></center><center><hr></center><center><p>中文姓名：葉文智 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：應用於草稿形狀檢索之環形特徵彈性校準方法 <br>關鍵字(中)：草稿檢索、環形特徵、彈性校準 <br></p></center><center><hr></center><center><p>中文姓名：黃馨儀 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：服飾配搭風格之檢索與自動學習 <br>關鍵字(中)：影像檢索、服飾檢索、顏色特徵、紋理共生矩陣、形狀特徵、融合特徵、交互變異矩陣 <br></p></center><center><hr></center><center><p>中文姓名：富子豪 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：使用雙層濾波與GMM分群之影像抽象化方法研究 <br>關鍵字(中)：影像風格化、高斯混合模型、雙層濾波器、影像抽象化 <br></p></center><center><hr></center><center><p>中文姓名：紀至鍇 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：應用語境樣式分群於文件檢索中的查詢精煉之研究 <br>關鍵字(中)：語境樣式、語境分群、詞義分析、主題分析、查詢擴展、查詢精煉、文件檢索 <br></p></center><center><hr></center><center><p>中文姓名：邱義欽 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：文本無關之語者驗證方法研究 <br>關鍵字(中)：高斯混合模型、語者辨識、語者驗證、文本無關、類神經網路、多層次感知器 <br></p></center><center><hr></center>	2016-03-03 05:46:51.653469	2016-03-17 02:44:55.540589	1	bslin.jpg
14	資訊安全實驗室	吳宗成	<h3 style="text-align: center;">專長及研究領域</h3><p style="text-align: center;">電腦密碼學與資訊安全、資料庫設計、資料工程</p><h3 style="text-align: center;">近三年學生論文</h3><center><p>中文姓名：周智禾 <br>學年度：101 <br>學位(中)：博士 <br>論文名稱(中)：鑑別式金鑰交換機制之設計 <br>關鍵字(中)：身分基礎、公開金鑰基礎、密碼基礎、金鑰交換、鑑別性、密碼學、橢圓曲線密碼系統 <br></p></center><center><hr></center><center><p>中文姓名：王松榮 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：電腦及其週邊設備製造業之研發技術佈局與產品規劃策略 <br>關鍵字(中)：電腦與周邊設備製造業、研發佈局、產品規劃、研發階段策略、專利佈局、分佈立體圖 <br></p></center><center><hr></center><center><p>中文姓名：王世琦 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：網路取代馬路的市占率成長行銷方程式以Concord期貨公司為例 <br>關鍵字(中)：期貨、投機、避險、價格發現、網路行銷、部落格、社群網站、市占率 <br></p></center><center><hr></center><center><p>中文姓名：呂理論 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：平台式數位噴繪印刷產業之營運策略 <br>關鍵字(中)：數位UV噴繪印刷、五力分析、SWOT分析、消費者心理模式 <br></p></center><center><hr></center><center><p>中文姓名：張耀仁 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：數位相機產業困境與因應策略 <br>關鍵字(中)：數位相機、智慧型手機、SWOT分析、藍海策略 <br></p></center><center><hr></center><center><p>中文姓名：簡嘉慧 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：基於模糊簽章與時間戳記之 電子投票系統 <br>關鍵字(中)：電子投票、模糊簽章、時間戳記、可多選 <br></p></center><center><hr></center><center><p>中文姓名：王瑜君 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：具可轉移性電子支票之研究 <br>關鍵字(中)：電子支票、可轉移、對稱式金鑰加密系統、雙向鑑別、機密性、交易公平性、不可偽造性、不可否認性、防止重複消費、抵抗中間人攻擊、抵抗重送攻擊、確保轉移機制 <br></p></center><center><hr></center><center><p>中文姓名：龔萬軒 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：應用於分割式文件之多重簽章機制 <br>關鍵字(中)：自我驗證、文件切割、多重簽章、選派簽署者 <br></p></center><center><hr></center><center><p>中文姓名：陳映瑄 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：適用於行動裝置之數位內容擁有權轉移機制 <br>關鍵字(中)：行動裝置、數位版權、可轉移、單向雜湊函數、數位簽章 <br></p></center><center><hr></center><center><p>中文姓名：蔡竣宇 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：具可轉移性之行動安全推播機制 <br>關鍵字(中)：可轉移、可驗證、行動優惠券、廣播加密、變色龍雜湊函數 <br></p></center><center><hr></center><center><p>中文姓名：蔡佳倫 <br>學年度：101 <br>學位(中)：博士 <br>論文名稱(中)：基於智慧卡之匿名式身分鑑別機制 <br>關鍵字(中)：智慧卡、身分鑑別機制、分散式伺服器環境、匿名性 <br></p></center><center><hr></center><center><p>中文姓名：陳振漢 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：綜合所得稅結算網路申報系統關鍵成功因素之探討 <br>關鍵字(中)：電子申報繳稅系統、關鍵成功因素、SWOT分析、資訊系統導入 <br></p></center><center><hr></center><center><p>中文姓名：賴瓊瑤 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：基於變色龍雜湊函數之群簽密機制 <br>關鍵字(中)：群體簽章、簽密法、變色龍雜湊函數 <br></p></center><center><hr></center><center><p>中文姓名：吳哲進 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：CTO模式在LED戶外照明產業之導入應用-以個案公司為例 <br>關鍵字(中)：客製化生產、模組化設計、延遲策略、大量客製化 <br></p></center><center><hr></center><center><p>中文姓名：邱毓軒 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：基於動態載入之Android App防複製攻擊機制 <br>關鍵字(中)：行動裝置、Android、App保護、單向雜湊函數、數位簽章 <br></p></center><center><hr></center><center><p>中文姓名：余浩宇 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：基於用戶端難題之匿名漫遊鑑別機制 <br>關鍵字(中)：鑑別、漫遊、用戶端難題 <br></p></center><center><hr></center><center><p>中文姓名：何文浩 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：具轉移次數限制之App應用服務可轉移性驗證機制 <br>關鍵字(中)：行動裝置、可轉移、數位簽章、單向雜湊函數、雜湊鏈 <br></p></center><center><hr></center><center><p>中文姓名：葉崇志 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：基於動態主機配置協定之網路存取控管系統 <br>關鍵字(中)：動態主機配置協定、網路存取控管 <br></p></center><center><hr></center><center><p>中文姓名：鍾才仁 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：護理資訊系統導入ICT技術之影響-以T醫院為例 <br>關鍵字(中)：六大新興產業、智慧醫療、資通訊技術、軟體發展生命週期。 <br></p></center><center><hr></center><center><p>中文姓名：曾採芳 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：芳朵的未來--建設開發的決䇿模式 <br>關鍵字(中)：產品的差異化 <br></p></center><center><hr></center><center><p>中文姓名：陳惠芬 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：消費者對購買手工皂商品的關鍵成功因素探討－以JACAL'S佳構思創意生活品牌為例 <br>關鍵字(中)：手工皂、品牌、品牌形象、知覺價值、價格、購買意圖 <br></p></center><center><hr></center><center><p>中文姓名：王有伸 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：中小企業之產品轉型－以C公司為例 <br>關鍵字(中)：沖壓零組件、競爭優勢、轉型 <br></p></center><center><hr></center><center><p>中文姓名：夏豪迪 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：基於BAN邏輯之軟體閘道器安全性分析 <br>關鍵字(中)：BAN邏輯、基於軟體閘道器、SSL協議 <br></p></center><center><hr></center><center><p>中文姓名：莊育秀 <br>學年度：102 <br>學位(中)：博士 <br>論文名稱(中)：建立可信賴之教育體系資通安全管理系統 <br>關鍵字(中)：教育體系、臺灣學術網路（TANet）、教育體系資通安全管理系統、資安攻擊趨勢、資安事件類型、資訊安全制度、可信賴的資安模式、資安風險基礎指標、資安規劃策略「3R」要素、資安建構「4A」評估要素、PD(CA)2雙循環模式 <br></p></center><center><hr></center><center><p>中文姓名：林怡伶 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：數位鑑識實驗室認證系統導入之研究 <br>關鍵字(中)：ISO/IEC 17025、數位鑑識實驗室、認證、品質管理 <br></p></center><center><hr></center><center><p>中文姓名：呂國輝 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：企業對使用行動裝置之資訊安全管理規劃 <br>關鍵字(中)：資訊安全管理系統、行動裝置、ISO/IEC 27001、NIST SP 800-53 <br></p></center><center><hr></center><center><p>中文姓名：張裕昌 <br>學年度：103 <br>學位(中)：博士 <br>論文名稱(中)：運用資料探勘技術於電腦化適性測驗之研究 <br>關鍵字(中)：電腦化適性測驗、KNN 方法、不完整作答題目 <br></p></center><center><hr></center><center><p>中文姓名：劉賢德 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：AY生技公司之浴火重生 <br>關鍵字(中)：員工教育訓練法、服務差異化、行銷通路、長尾理論 <br></p></center><center><hr></center><center><p>中文姓名：廖燿堂 <br>學年度：103 <br>學位(中)：博士 <br>論文名稱(中)：中國國有軋輥企業創新轉型之關鍵成功因素 <br>關鍵字(中)：經營模式、創新轉型、關鍵成功因素、軋輥產業、大口徑H型鋼軋輥 <br></p></center><center><hr></center><center><p>中文姓名：吳曼甄 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：應用於 App 洩密者追蹤之動態金鑰管理機制 <br>關鍵字(中)：存取控制、共謀攻擊、金鑰管理、動態洩密者追蹤、Android、行動裝置 <br></p></center><center><hr></center><center><p>中文姓名：周詠晴 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：基於ID-based聚合簽章之App持有權移轉驗證機制 <br>關鍵字(中)：行動應用程式、行動裝置、可移轉、ID-based、雙線性配對、橢圓曲線、聚合簽章 <br></p></center><center><hr></center><center><p>中文姓名：魏儀淳 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：基於自我驗證公鑰系統之App所有權移轉驗證機制 <br>關鍵字(中)：行動裝置、可移轉、單向雜湊函數、自我驗證密碼系統 <br></p></center><center><hr></center><center><p>中文姓名：徐振寧 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：基於時間區段授權存取控制之App可移轉驗證 <br>關鍵字(中)：行動裝置、App移轉、數位簽章、雙向雜湊函數、雜湊鏈 <br></p></center><center><hr></center><center><p>中文姓名：歐佳綾 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：採用不可否認簽章抵禦App複製攻擊 <br>關鍵字(中)：App保護機制、橢圓曲線密碼系統、不可否認簽章、簽密法 <br></p></center><center><hr></center><center><p>中文姓名：吳振裕 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：電子製造業導入虛擬桌面基礎結構之關鍵成功因素探討 <br>關鍵字(中)：虛擬化、虛擬桌面基礎結構、關鍵成功因素 <br></p></center><center><hr></center><center><p>中文姓名：許緒樑 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：台灣紡織產業之企變革-以A公司為例公司為例 <br>關鍵字(中)：傳統產業、紡織業、組織變革 <br></p></center><center><hr></center><center><p>中文姓名：嚴貽忠 <br>學年度：103 <br>學位(中)：博士 <br>論文名稱(中)：基於無線射頻辨識之住院病患安全醫藥管理解決方案 <br>關鍵字(中)：用藥錯誤、無線射頻辨識、住院病患安全、醫藥管理 <br></p></center><center><hr></center>	2016-03-17 02:50:25.310848	2016-03-17 02:50:25.310848	1	tcwu.jpg
16	計量管理實驗室	陳正綱	<h3 style="text-align: center;">專長及研究領域</h3><p style="text-align: center;">作業研究、生產管理資訊系統、決策支援系統</p><h3 style="text-align: center;">近三年學生論文</h3><center><p>中文姓名：賴信延 <br>系所名稱(中)：資訊管理系 <br>學年度：101 <br>論文名稱(中)：在閉環式供應鏈中考慮政府補助與徵稅之定價與再製策略 <br>關鍵字(中)：閉環式供應鏈、Stackelberg、政府 <br></p></center><center><hr></center><center><p>中文姓名：劉馨淳 <br>系所名稱(中)：資訊管理系 <br>學年度：101 <br>論文名稱(中)：企業資源規劃系統更替所面臨的問題－以IC設計公司為例 <br>關鍵字(中)：ERP、資訊系統成功模式、企業資源規劃、風險管理、變革管理 <br></p></center><center><hr></center><center><p>中文姓名：劉景華 <br>系所名稱(中)：資訊管理系 <br>學年度：101 <br>論文名稱(中)：利用社群網站經營非營利樂團之研究-以優質樂團為例 <br>關鍵字(中)：管弦樂團、社區發展、社區管弦樂團、招募人才、經營管理 <br></p></center><center><hr></center><center><p>中文姓名：廖淑貞 <br>系所名稱(中)：資訊管理系 <br>學年度：103 <br>論文名稱(中)：TLT室內設計公司經營模式的蛻變 <br>關鍵字(中)：組織設計、模組化、協同合作、跨界管理 <br></p></center><center><hr></center><center><p>中文姓名：葉錫育 <br>系所名稱(中)：資訊管理系 <br>學年度：101 <br>論文名稱(中)：資訊部門與業務部門的衝突與整合－以C證券公司為例 <br>關鍵字(中)：證券業、衝突、整合談判、系統開發模式、組織變革 <br></p></center><center><hr></center><center><p>中文姓名：黃莉婷 <br>系所名稱(中)：資訊管理系 <br>學年度：101 <br>論文名稱(中)：網絡鑲嵌與資訊科技能力對服務創新績效之影響－以集團企業為例 <br>關鍵字(中)：網絡鑲嵌、資訊科技能力、服務創新績效、集團企業 <br></p></center><center><hr></center><center><p>中文姓名：黃婉婷 <br>系所名稱(中)：資訊管理系 <br>學年度：103 <br>論文名稱(中)：考慮新品與再製品的品質與價格競爭之閉環式供應鏈 <br>關鍵字(中)：閉環式供應鏈、回收再製、價格競爭、品質競爭 <br></p></center><center><hr></center><center><p>中文姓名：游敏建 <br>系所名稱(中)：資訊管理系 <br>學年度：103 <br>論文名稱(中)：從軟體資訊服務到軟體產品化之研究-以大型企業郵務室收發為例 <br>關鍵字(中)：資訊服務、服務創新、客戶滿意度、行動應用、巨量資料、雲端 <br></p></center><center><hr></center><center><p>中文姓名：陳菀婷 <br>系所名稱(中)：資訊管理系 <br>學年度：103 <br>論文名稱(中)：證券業組織變革之研究～以EMT證券為例 <br>關鍵字(中)：創新管理、服務設計、衝突與共識、變革管理 <br></p></center><center><hr></center><center><p>中文姓名：陳俞婷 <br>系所名稱(中)：資訊管理系 <br>學年度：102 <br>論文名稱(中)：閉環式供應鏈存貨系統之最佳再製與定價策略 <br>關鍵字(中)：閉環式供應鏈、零售商、第三方回收商、再製、存貨 <br></p></center><center><hr></center><center><p>中文姓名：陳怡穎 <br>系所名稱(中)：資訊管理系 <br>學年度：103 <br>論文名稱(中)：考慮兩個競爭零售商的閉環式供應鏈之最佳定價、品質與回收策略 <br>關鍵字(中)：再製、Stackelberg Game、閉環式供應鏈、回收、價格競爭。 <br></p></center><center><hr></center><center><p>中文姓名：陳文欽 <br>系所名稱(中)：資訊管理系 <br>學年度：102 <br>論文名稱(中)：從代工到自有品牌之分析–以A碩電腦伺服器事業部為例 <br>關鍵字(中)：自有品牌開發、SWOT法、波特五力分析模型、資源基礎理論、價值鍊分析、左右開弓、領導力理論 <br></p></center><center><hr></center><center><p>中文姓名：許麗君 <br>系所名稱(中)：資訊管理系 <br>學年度：102 <br>論文名稱(中)：資訊科技開發案產生組織衝突之個案研究-以行動電信商為例 <br>關鍵字(中)：制度、衝突與共識、委外、資源基礎管理、模組化 <br></p></center><center><hr></center><center><p>中文姓名：莊李琳 <br>系所名稱(中)：資訊管理系 <br>學年度：101 <br>論文名稱(中)：電信小額付款服務關鍵成功因素之探討-以S公司為例 <br>關鍵字(中)：電信小額付款服務、關鍵成功因素 <br></p></center><center><hr></center><center><p>中文姓名：翁慈君 <br>系所名稱(中)：資訊管理系 <br>學年度：103 <br>論文名稱(中)：政府補助與收費對具產品再製功能的閉鎖式供應鏈之研究 <br>關鍵字(中)：三層式架構、閉鎖式、再製、供應鏈、政府的政策 <br></p></center><center><hr></center><center><p>中文姓名：吳若瑩 <br>系所名稱(中)：資訊管理系 <br>學年度：102 <br>論文名稱(中)：西式速食業顧客滿意度影響因素研究-以摩斯漢堡為例 <br>關鍵字(中)：西式速食業、個案研究、顧客意見卡、顧客滿意度、產品品質、服務品質、情境因素、個人因素 <br></p></center><center><hr></center><center><p>中文姓名：余碧蓮 <br>系所名稱(中)：資訊管理系 <br>學年度：102 <br>論文名稱(中)：政府資訊業務委外關鍵成功因素之研究-以地方稅資訊系統為例 <br>關鍵字(中)：政府資訊委外、如期完成、創新服務、成功關鍵因素、專案成本合理估算、提昇軟體品質 <br></p></center><center><hr></center><center><p>中文姓名：余培芬 <br>系所名稱(中)：資訊管理系 <br>學年度：102 <br>論文名稱(中)：W銀行資訊系統專案的進退兩難 <br>關鍵字(中)：承諾續擴、作業風險管理、關鍵因素、決策、資訊化、資訊系統 <br></p></center><center><hr></center><center><p>中文姓名：甘德慈 <br>系所名稱(中)：資訊管理系 <br>學年度：102 <br>論文名稱(中)：考慮新品與再製品品質不同的閉環式供應鏈之最佳定價與再製策略 <br>關鍵字(中)：閉環式供應鏈、再製、Stackelberg game、Nash game、回收 <br></p></center><center><hr></center><center><p>中文姓名：王雅冠 <br>系所名稱(中)：資訊管理系 <br>學年度：101 <br>論文名稱(中)：資訊系統整體委外管理之效益分析-以東元電機為例 <br>關鍵字(中)：資訊系統整體委外、企業流程再造、資訊服務、服務水準 <br></p></center><center><hr></center><center><p>中文姓名：Uki Astika Mancasari <br>系所名稱(中)：資訊管理系 <br>學年度：103 <br>論文名稱(中)：A study of product quality and marketing efforts in closed-loop supply chains with remanufacturing <br>關鍵字(中)：Closed-loop Supply Chain、Remanufacturing、Manufacturer Stackelberg、Marketing Effort、Product Quality Effort <br></p></center><center><hr></center>	2016-03-17 02:55:06.825362	2016-03-17 02:55:06.825362	1	ckchen.jpg
17	系統管理實驗室	楊維寧	<h3 style="text-align: center;">專長及研究領域</h3><p style="text-align: center;">系統模擬、統計學、作業研究</p><h3 style="text-align: center;">近三年學生論文</h3><center><p style="text-align: center;">中文姓名：時維寧 <br>學年度：101 <br>學位(中)：博士 <br>論文名稱(中)：隨機網路不可靠度之評估─植基於最小割集之重點抽樣機制 <br>關鍵字(中)：電腦模擬、隨機網路、失效率、變異數縮減技術、重點抽樣法、最小割集 <br></p></center><center><hr></center><center><p>中文姓名：李雅萍 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：智慧型行動裝置應用之市場使用情況與關鍵使用族群探索 <br>關鍵字(中)：智慧型行動裝置、行動應用、創新擴散理論、跨越鴻溝 <br></p></center><center><hr></center><center><p>中文姓名：簡嘉慧 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：基於模糊簽章與時間戳記之 電子投票系統 <br>關鍵字(中)：電子投票、模糊簽章、時間戳記、可多選 <br></p></center><center><hr></center><center><p>中文姓名：王瑜君 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：具可轉移性電子支票之研究 <br>關鍵字(中)：電子支票、可轉移、對稱式金鑰加密系統、雙向鑑別、機密性、交易公平性、不可偽造性、不可否認性、防止重複消費、抵抗中間人攻擊、抵抗重送攻擊、確保轉移機制 <br></p></center><center><hr></center><center><p>中文姓名：蔡竣宇 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：具可轉移性之行動安全推播機制 <br>關鍵字(中)：可轉移、可驗證、行動優惠券、廣播加密、變色龍雜湊函數 <br></p></center><center><hr></center><center><p>中文姓名：賴瓊瑤 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：基於變色龍雜湊函數之群簽密機制 <br>關鍵字(中)：群體簽章、簽密法、變色龍雜湊函數 <br></p></center><center><hr></center><center><p>中文姓名：薛伃婷 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：系統模擬與迴歸分析於近場通訊應用系統上之研究 <br>關鍵字(中)：迴歸分析、系統模擬、效能提升 <br></p></center><center><hr></center><center><p>中文姓名：邱華敏 <br>學年度：102 <br>學位(中)：博士 <br>論文名稱(中)：候選群集搜尋法(CGS)結合K調和均值法(KHM)之研究 <br>關鍵字(中)：群集分析、K-均值法、K-調和均值法、候選群集搜尋法 <br></p></center><center><hr></center><center><p>中文姓名：賴咨廷 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：簡單貝氏分類器結合主成分分析於網路入侵偵測植基於概似機率之研究 <br>關鍵字(中)：簡單貝氏分類器、主成分分析、網路入侵偵測 <br></p></center><center><hr></center><center><p>中文姓名：蔡煒彤 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：簡單貝氏分類器結合主成分分析於網路入侵偵測植基於P值 <br>關鍵字(中)：簡單貝氏分類器、主成分分析、網路入侵偵測、P值 <br></p></center><center><hr></center><center><p>中文姓名：陳凌焜 <br>學年度：103 <br>學位(中)：博士 <br>論文名稱(中)：以服務品質認知差異的觀點塑造電信服務 <br>關鍵字(中)：電信服務、認知差異、服務品質、IT構建、組織特徵 <br></p></center><center><hr></center><center><p>中文姓名：徐振寧 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：基於時間區段授權存取控制之App可移轉驗證 <br>關鍵字(中)：行動裝置、App移轉、數位簽章、雙向雜湊函數、雜湊鏈 <br></p></center><center><hr></center><center><p>中文姓名：歐佳綾 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：採用不可否認簽章抵禦App複製攻擊 <br>關鍵字(中)：App保護機制、橢圓曲線密碼系統、不可否認簽章、簽密法 <br></p></center><center><hr></center><center><p>中文姓名：何昕宸 <br>學年度：104 <br>學位(中)：碩士 <br>論文名稱(中)：探討稽核員、受稽企業特質與受稽者的態度對於企業之資訊安全管理系統效能的影響 <br>關鍵字(中)：資訊安全稽核、資訊安全管理系統效能 <br></p></center><center><hr></center>	2016-03-17 02:59:03.067457	2016-03-17 02:59:31.672602	1	yang.jpg
18	隱私與風險管理實驗室	查士朝	<h3 style="text-align: center;">專長及研究領域</h3><p style="text-align: center;">高速網路、無線網路、網路效能評估、網際網路應用、網路輔助教學</p><h3 style="text-align: center;">近三年學生論文</h3><center><p>中文姓名：陳志重 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：一個基於角色來分析關鍵資訊存取是否滿足分工原則的方法 <br>關鍵字(中)：角色導向存取控制、角色工程、資訊資產 <br></p></center><center><hr></center><center><p>中文姓名：王婕 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：近端通訊技術對於電子發票無紙化效益研究 <br>關鍵字(中)：電子發票、近端通訊技術、使用性測試 <br></p></center><center><hr></center><center><p>中文姓名：葉心寬 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：社群網路中考量互斥因子之自動分群機制 <br>關鍵字(中)：社群網路、社群偵測、分群演算法、個人網路分析 <br></p></center><center><hr></center><center><p>中文姓名：劉乃華 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：基於資料敏感性的角色工程工具之設計與實作 <br>關鍵字(中)：角色工程、角色導向存取控制模型、資訊資產 <br></p></center><center><hr></center><center><p>中文姓名：黃士杰 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：在無法確保點對點安全時鑑別他人持有行動裝置之機制 <br>關鍵字(中)：行動應用服務、鑑別力、點對點安全 <br></p></center><center><hr></center><center><p>中文姓名：曾志騰 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：供實體交易之匿名電子發票機制 - 以台灣電子發票為例 <br>關鍵字(中)：電子發票、零知識證明、匿名性、近端通訊技術 <br></p></center><center><hr></center><center><p>中文姓名：陳冠衡 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：一個考量與既有POS系統整合之基於NFC提供電子發票的裝置 <br>關鍵字(中)：Windows Phone 8、近端通訊、電子發票、身分鑑別 <br></p></center><center><hr></center><center><p>中文姓名：蔡育軒 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：基於資料外洩路徑的Android應用程式隱私風險分析方法 <br>關鍵字(中)：Android、Android 應用程式安全、Android 應用程式資料流分析 <br></p></center><center><hr></center><center><p>中文姓名：林芳如 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：基於負面效應之資料發佈風險之評估方法 <br>關鍵字(中)：開放資料、開放政府、個人資料保護、隱私、匿名化、去識別化 <br></p></center><center><hr></center><center><p>中文姓名：鐘珮珊 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：於Android應用程式置入風險資訊之方法 <br>關鍵字(中)：Android 隱私保護、隱私權政策、智慧型手機應用程式安全 <br></p></center><center><hr></center><h3></h3>	2016-03-17 03:02:38.450257	2016-03-17 03:02:38.450257	1	csc.jpg
19	作業研究、物流、最佳化理論	洪政煌	<h3>專長及研究領域</h3><p>高速網路、無線網路、網路效能評估、網際網路應用、網路輔助教學</p><h3>近三年學生論文</h3><center><p>中文姓名：李季穎 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：應用灰預測於黃金現貨投資策略之研究 <br>關鍵字(中)：黃金現貨、灰色系統理論、投資策略 <br></p></center><center><hr></center><center><p>中文姓名：李宜儒 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：混合式電動機車共享系統最佳車輛佈署策略研究 <br>關鍵字(中)：電動機車、混合式電動機車共享系統、載具共享、充電站、電池交換站、混整數規劃、車輛佈署策略 <br></p></center><center><hr></center><center><p>中文姓名：邱華敏 <br>學年度：102 <br>學位(中)：博士 <br>論文名稱(中)：候選群集搜尋法(CGS)結合K調和均值法(KHM)之研究 <br>關鍵字(中)：群集分析、K-均值法、K-調和均值法、候選群集搜尋法 <br></p></center><center><hr></center><center><p>中文姓名：陳家慧 <br>學年度：101 <br>學位(中)：碩士 <br>論文名稱(中)：結合改良式基因演算法和蟻群演算法求解推銷員旅行問題 <br>關鍵字(中)：推銷員旅行問題、基因演算法、蟻群演算法 <br></p></center><center><hr></center><center><p>中文姓名：蔡育軒 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：基於資料外洩路徑的Android應用程式隱私風險分析方法 <br>關鍵字(中)：Android、Android 應用程式安全、Android 應用程式資料流分析 <br></p></center><center><hr></center><center><p>中文姓名：蕭丞凱 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：單一物流中心需求可分割車輛途程問題之研究 <br>關鍵字(中)：需求可分割車輛途程問題、啟發式演算法、鄰域搜尋 <br></p></center><center><hr></center><center><p>中文姓名：鐘珮珊 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：於Android應用程式置入風險資訊之方法 <br>關鍵字(中)：Android 隱私保護、隱私權政策、智慧型手機應用程式安全 <br></p></center><center><hr></center>	2016-03-17 03:04:41.792587	2016-03-17 03:04:41.792587	1	alexhung.jpg
5	電子化企業與供應鏈管理實驗室	魏小蘭	<center><h3>專長及研究領域</h3><p>供應鍊管理、企業資源規劃、生產管理、跨組織資訊系統</p><h3>近三年學生論文</h3></center><center><p>中文姓名：陳雅芳 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：企業賦權與共創行為對供應鏈敏捷性之影響 <br>關鍵字(中)：賦權、價值共創、資訊分享、持續性承諾、供應鏈敏捷性 <br></p></center><center><hr></center><center><p>中文姓名：黃文韜 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：以多重個案探討國內SOA導入效益與困境 <br>關鍵字(中)：服務導向架構、SOA治理、導入效益、多重個案研究 <br></p></center><center><hr></center><center><p>中文姓名：呂亞珊 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：以賦權觀點探討價值共創之過程與效益 <br>關鍵字(中)：賦權、價值共創、顧客參與行為、顧客公民行為、顧客價值 <br></p></center><center><hr></center><center><p>中文姓名：莊宜軒 <br>學年度：102 <br>學位(中)：碩士 <br>論文名稱(中)：服務導向資訊科技能力對企業敏捷性與企業績效之影響 <br>關鍵字(中)：服務導向架構、企業敏捷性、企業績效、服務導向資訊科技能力 <br></p></center><center><hr></center><center><p>中文姓名：Yohanan Agustinus Angkasa <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：綠色供應鏈管理整合能力與競爭優勢中合作定位之影響研究 <br>關鍵字(中)：綠色供應鏈管理、整合能力、共同定位、競爭優勢 <br></p></center><center><hr></center><center><p>中文姓名：李國泉 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：不同策略型態下IT能力和供應鏈敏捷性之影響研究 <br>關鍵字(中)：供應鏈的敏捷性、IT能力、供應鏈策略、理想配置 <br></p></center><center><hr></center><center><p>中文姓名：羅達生 <br>學年度：103 <br>學位(中)：博士 <br>論文名稱(中)：服務品質創新屬性之評估模式研究 <br>關鍵字(中)：使用者體驗、新服務發展、服務設計、脈絡訪查、Kano模式、體驗行銷架構、服務品質 <br></p></center><center><hr></center><center><p>中文姓名：許鈺欣 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：服務體驗工程與服務創新動態能力對服務創新績效之影響研究 <br>關鍵字(中)：服務體驗工程、服務創新、創新績效、企業動態能力 <br></p></center><center><hr></center><center><p>中文姓名：陳鴻儀 <br>學年度：103 <br>學位(中)：碩士 <br>論文名稱(中)：領導行為及跨團隊合作對於創新之影響─以軟體資訊業為例 <br>關鍵字(中)：轉型領導、賦權領導、跨團隊合作、雙元創新、創新績效 <br></p></center><center><hr></center>	2016-03-01 06:24:33.820653	2016-03-17 03:17:12.233713	1	hlwei.jpg
\.


--
-- Name: laboratories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('laboratories_id_seq', 19, true);


--
-- Data for Name: missions; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY missions (id, title, end_date, created_at, updated_at, schedule_id, start_date, "check") FROM stdin;
1	了解（指導教授、實驗室、系上）的期望	2015-09-10	2016-03-01 07:38:15.465323	2016-03-01 07:38:15.465323	1	2015-09-01	\N
2	確定你的研究議題	2015-09-16	2016-03-01 07:38:15.473394	2016-03-01 07:38:15.473394	1	2015-09-11	\N
3	開發一個方法或方法框架	2015-09-28	2016-03-01 07:38:15.478759	2016-03-01 07:38:15.478759	1	2015-09-17	\N
4	回顧在這個領域的文獻搜集	2015-10-10	2016-03-01 07:38:15.484072	2016-03-01 07:38:15.484072	1	2015-09-29	\N
5	建立論文討論會	2015-10-13	2016-03-01 07:38:15.488971	2016-03-01 07:38:15.488971	1	2015-10-11	\N
6	寫論文提案報告	2015-11-03	2016-03-01 07:38:15.494063	2016-03-01 07:38:15.494063	1	2015-10-14	\N
7	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2015-11-09	2016-03-01 07:38:15.4992	2016-03-01 07:38:15.4992	1	2015-11-04	\N
8	建立論文支持網路關係	2015-11-15	2016-03-01 07:38:15.504469	2016-03-01 07:38:15.504469	1	2015-11-10	\N
9	開始研究	2016-01-30	2016-03-01 07:38:15.509575	2016-03-01 07:38:15.509575	1	2015-11-16	\N
10	進行全面的文獻綜合整理	2016-02-14	2016-03-01 07:38:15.515739	2016-03-01 07:38:15.515739	1	2016-01-31	\N
11	大綱和起草章節	2016-04-12	2016-03-01 07:38:15.521071	2016-03-01 07:38:15.521071	1	2016-02-15	\N
12	注意視覺化的細節（插圖，表格，數字，圖形等	2016-04-27	2016-03-01 07:38:15.525991	2016-03-01 07:38:15.525991	1	2016-04-13	\N
13	尋求回饋，審查，重新起草，修改和文字	2016-05-12	2016-03-01 07:38:15.530803	2016-03-01 07:38:15.530803	1	2016-04-28	\N
14	撰寫論文並使其更加完善	2016-05-27	2016-03-01 07:38:15.536278	2016-03-01 07:38:15.536278	1	2016-05-13	\N
15	撰寫摘要	2016-06-02	2016-03-01 07:38:15.5415	2016-03-01 07:38:15.5415	1	2016-05-28	\N
16	口試	2016-06-14	2016-03-01 07:38:15.546481	2016-03-01 07:38:15.546481	1	2016-06-03	\N
17	完成修改	2016-06-20	2016-03-01 07:38:15.551527	2016-03-01 07:38:15.551527	1	2016-06-15	\N
18	提交論文	2016-06-30	2016-03-01 07:38:15.556265	2016-03-01 07:38:15.556265	1	2016-06-21	\N
19	了解（指導教授、實驗室、系上）的期望	2016-03-06	2016-03-03 05:03:47.079896	2016-03-03 05:03:47.079896	2	2016-03-03	\N
20	確定你的研究議題	2016-03-08	2016-03-03 05:03:47.087475	2016-03-03 05:03:47.087475	2	2016-03-07	\N
21	開發一個方法或方法框架	2016-03-13	2016-03-03 05:03:47.092767	2016-03-03 05:03:47.092767	2	2016-03-09	\N
22	回顧在這個領域的文獻搜集	2016-03-18	2016-03-03 05:03:47.097713	2016-03-03 05:03:47.097713	2	2016-03-14	\N
23	建立論文討論會	2016-03-19	2016-03-03 05:03:47.102943	2016-03-03 05:03:47.102943	2	2016-03-19	\N
24	寫論文提案報告	2016-03-27	2016-03-03 05:03:47.107909	2016-03-03 05:03:47.107909	2	2016-03-20	\N
25	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2016-03-30	2016-03-03 05:03:47.113281	2016-03-03 05:03:47.113281	2	2016-03-28	\N
26	建立論文支持網路關係	2016-04-01	2016-03-03 05:03:47.118291	2016-03-03 05:03:47.118291	2	2016-03-31	\N
27	開始研究	2016-05-01	2016-03-03 05:03:47.123214	2016-03-03 05:03:47.123214	2	2016-04-02	\N
28	進行全面的文獻綜合整理	2016-05-07	2016-03-03 05:03:47.137721	2016-03-03 05:03:47.137721	2	2016-05-02	\N
29	大綱和起草章節	2016-05-30	2016-03-03 05:03:47.146238	2016-03-03 05:03:47.146238	2	2016-05-08	\N
30	注意視覺化的細節（插圖，表格，數字，圖形等	2016-06-05	2016-03-03 05:03:47.151696	2016-03-03 05:03:47.151696	2	2016-05-31	\N
31	尋求回饋，審查，重新起草，修改和文字	2016-06-10	2016-03-03 05:03:47.157132	2016-03-03 05:03:47.157132	2	2016-06-06	\N
32	撰寫論文並使其更加完善	2016-06-16	2016-03-03 05:03:47.161951	2016-03-03 05:03:47.161951	2	2016-06-11	\N
33	撰寫摘要	2016-06-19	2016-03-03 05:03:47.167053	2016-03-03 05:03:47.167053	2	2016-06-17	\N
34	口試	2016-06-24	2016-03-03 05:03:47.171815	2016-03-03 05:03:47.171815	2	2016-06-20	\N
35	完成修改	2016-06-26	2016-03-03 05:03:47.176786	2016-03-03 05:03:47.176786	2	2016-06-25	\N
36	提交論文	2016-06-30	2016-03-03 05:03:47.181648	2016-03-03 05:03:47.181648	2	2016-06-27	\N
37	了解（指導教授、實驗室、系上）的期望	2016-03-17	2016-03-03 05:18:32.263626	2016-03-03 05:18:32.263626	3	2016-03-03	\N
38	確定你的研究議題	2016-03-26	2016-03-03 05:18:32.269914	2016-03-03 05:18:32.269914	3	2016-03-18	\N
39	開發一個方法或方法框架	2016-04-14	2016-03-03 05:18:32.275006	2016-03-03 05:18:32.275006	3	2016-03-27	\N
40	回顧在這個領域的文獻搜集	2016-05-03	2016-03-03 05:18:32.280057	2016-03-03 05:18:32.280057	3	2016-04-15	\N
41	建立論文討論會	2016-05-08	2016-03-03 05:18:32.285308	2016-03-03 05:18:32.285308	3	2016-05-04	\N
42	寫論文提案報告	2016-06-10	2016-03-03 05:18:32.290142	2016-03-03 05:18:32.290142	3	2016-05-09	\N
43	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2016-06-20	2016-03-03 05:18:32.295343	2016-03-03 05:18:32.295343	3	2016-06-11	\N
44	建立論文支持網路關係	2016-06-29	2016-03-03 05:18:32.300369	2016-03-03 05:18:32.300369	3	2016-06-21	\N
45	開始研究	2016-10-26	2016-03-03 05:18:32.305307	2016-03-03 05:18:32.305307	3	2016-06-30	\N
46	進行全面的文獻綜合整理	2016-11-18	2016-03-03 05:18:32.310301	2016-03-03 05:18:32.310301	3	2016-10-27	\N
47	大綱和起草章節	2017-02-16	2016-03-03 05:18:32.315411	2016-03-03 05:18:32.315411	3	2016-11-19	\N
48	注意視覺化的細節（插圖，表格，數字，圖形等	2017-03-12	2016-03-03 05:18:32.334231	2016-03-03 05:18:32.334231	3	2017-02-17	\N
49	尋求回饋，審查，重新起草，修改和文字	2017-04-05	2016-03-03 05:18:32.342299	2016-03-03 05:18:32.342299	3	2017-03-13	\N
50	撰寫論文並使其更加完善	2017-04-28	2016-03-03 05:18:32.348134	2016-03-03 05:18:32.348134	3	2017-04-06	\N
51	撰寫摘要	2017-05-08	2016-03-03 05:18:32.35352	2016-03-03 05:18:32.35352	3	2017-04-29	\N
52	口試	2017-05-27	2016-03-03 05:18:32.358963	2016-03-03 05:18:32.358963	3	2017-05-09	\N
53	完成修改	2017-06-05	2016-03-03 05:18:32.364039	2016-03-03 05:18:32.364039	3	2017-05-28	\N
54	提交論文	2017-06-20	2016-03-03 05:18:32.369429	2016-03-03 05:26:32.124254	3	2017-06-06	\N
56	確定你的研究議題	2016-03-26	2016-03-03 05:34:47.018078	2016-03-03 05:34:47.018078	4	2016-03-17	\N
57	開發一個方法或方法框架	2016-04-13	2016-03-03 05:34:47.023186	2016-03-03 05:34:47.023186	4	2016-03-27	\N
58	回顧在這個領域的文獻搜集	2016-05-02	2016-03-03 05:34:47.028272	2016-03-03 05:34:47.028272	4	2016-04-14	\N
59	建立論文討論會	2016-05-06	2016-03-03 05:34:47.03366	2016-03-03 05:34:47.03366	4	2016-05-03	\N
60	寫論文提案報告	2016-06-08	2016-03-03 05:34:47.039421	2016-03-03 05:34:47.039421	4	2016-05-07	\N
61	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2016-06-17	2016-03-03 05:34:47.044608	2016-03-03 05:34:47.044608	4	2016-06-09	\N
62	建立論文支持網路關係	2016-06-26	2016-03-03 05:34:47.049779	2016-03-03 05:34:47.049779	4	2016-06-18	\N
63	開始研究	2016-10-20	2016-03-03 05:34:47.055526	2016-03-03 05:34:47.055526	4	2016-06-27	\N
64	進行全面的文獻綜合整理	2016-11-12	2016-03-03 05:34:47.060601	2016-03-03 05:34:47.060601	4	2016-10-21	\N
65	大綱和起草章節	2017-02-08	2016-03-03 05:34:47.066256	2016-03-03 05:34:47.066256	4	2016-11-13	\N
66	注意視覺化的細節（插圖，表格，數字，圖形等	2017-03-03	2016-03-03 05:34:47.071563	2016-03-03 05:34:47.071563	4	2017-02-09	\N
67	尋求回饋，審查，重新起草，修改和文字	2017-03-26	2016-03-03 05:34:47.086746	2016-03-03 05:34:47.086746	4	2017-03-04	\N
68	撰寫論文並使其更加完善	2017-04-19	2016-03-03 05:34:47.093047	2016-03-03 05:34:47.093047	4	2017-03-27	\N
69	撰寫摘要	2017-04-28	2016-03-03 05:34:47.099388	2016-03-03 05:34:47.099388	4	2017-04-20	\N
70	口試	2017-05-16	2016-03-03 05:34:47.104879	2016-03-03 05:34:47.104879	4	2017-04-29	\N
71	完成修改	2017-05-26	2016-03-03 05:34:47.110383	2016-03-03 05:34:47.110383	4	2017-05-17	\N
72	提交論文	2017-06-09	2016-03-03 05:34:47.116335	2016-03-03 05:34:47.116335	4	2017-05-27	\N
55	了解（指導教授、實驗室、系上）的期望	2016-03-16	2016-03-03 05:34:47.011452	2016-03-03 05:36:17.88551	4	2016-03-03	\N
73	了解（指導教授、實驗室、系上）的期望	2016-03-17	2016-03-03 12:52:05.928753	2016-03-03 12:52:05.928753	5	2016-03-03	\N
74	確定你的研究議題	2016-03-27	2016-03-03 12:52:05.937265	2016-03-03 12:52:05.937265	5	2016-03-18	\N
75	開發一個方法或方法框架	2016-04-15	2016-03-03 12:52:05.9447	2016-03-03 12:52:05.9447	5	2016-03-28	\N
76	回顧在這個領域的文獻搜集	2016-05-04	2016-03-03 12:52:05.951554	2016-03-03 12:52:05.951554	5	2016-04-16	\N
77	建立論文討論會	2016-05-09	2016-03-03 12:52:05.958739	2016-03-03 12:52:05.958739	5	2016-05-05	\N
78	寫論文提案報告	2016-06-12	2016-03-03 12:52:05.965365	2016-03-03 12:52:05.965365	5	2016-05-10	\N
79	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2016-06-22	2016-03-03 12:52:05.971836	2016-03-03 12:52:05.971836	5	2016-06-13	\N
80	建立論文支持網路關係	2016-07-02	2016-03-03 12:52:05.977701	2016-03-03 12:52:05.977701	5	2016-06-23	\N
81	開始研究	2016-10-31	2016-03-03 12:52:05.983329	2016-03-03 12:52:05.983329	5	2016-07-03	\N
82	進行全面的文獻綜合整理	2016-11-24	2016-03-03 12:52:05.989741	2016-03-03 12:52:05.989741	5	2016-11-01	\N
83	大綱和起草章節	2017-02-24	2016-03-03 12:52:05.995302	2016-03-03 12:52:05.995302	5	2016-11-25	\N
84	注意視覺化的細節（插圖，表格，數字，圖形等	2017-03-20	2016-03-03 12:52:06.00072	2016-03-03 12:52:06.00072	5	2017-02-25	\N
85	尋求回饋，審查，重新起草，修改和文字	2017-04-13	2016-03-03 12:52:06.006961	2016-03-03 12:52:06.006961	5	2017-03-21	\N
86	撰寫論文並使其更加完善	2017-05-07	2016-03-03 12:52:06.013205	2016-03-03 12:52:06.013205	5	2017-04-14	\N
87	撰寫摘要	2017-05-17	2016-03-03 12:52:06.018923	2016-03-03 12:52:06.018923	5	2017-05-08	\N
88	口試	2017-06-05	2016-03-03 12:52:06.024707	2016-03-03 12:52:06.024707	5	2017-05-18	\N
89	完成修改	2017-06-15	2016-03-03 12:52:06.03003	2016-03-03 12:52:06.03003	5	2017-06-06	\N
90	提交論文	2017-06-30	2016-03-03 12:52:06.036002	2016-03-03 12:52:06.036002	5	2017-06-16	\N
91	了解（指導教授、實驗室、系上）的期望	2016-03-17	2016-03-04 03:25:07.224785	2016-03-04 03:25:07.224785	6	2016-03-03	\N
92	確定你的研究議題	2016-03-26	2016-03-04 03:25:07.231713	2016-03-04 03:25:07.231713	6	2016-03-18	\N
93	開發一個方法或方法框架	2016-04-14	2016-03-04 03:25:07.237249	2016-03-04 03:25:07.237249	6	2016-03-27	\N
94	回顧在這個領域的文獻搜集	2016-05-02	2016-03-04 03:25:07.242474	2016-03-04 03:25:07.242474	6	2016-04-15	\N
95	建立論文討論會	2016-05-07	2016-03-04 03:25:07.247618	2016-03-04 03:25:07.247618	6	2016-05-03	\N
96	寫論文提案報告	2016-06-09	2016-03-04 03:25:07.253059	2016-03-04 03:25:07.253059	6	2016-05-08	\N
97	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2016-06-18	2016-03-04 03:25:07.258272	2016-03-04 03:25:07.258272	6	2016-06-10	\N
98	建立論文支持網路關係	2016-06-28	2016-03-04 03:25:07.263794	2016-03-04 03:25:07.263794	6	2016-06-19	\N
99	開始研究	2016-10-23	2016-03-04 03:25:07.26907	2016-03-04 03:25:07.26907	6	2016-06-29	\N
100	進行全面的文獻綜合整理	2016-11-15	2016-03-04 03:25:07.274274	2016-03-04 03:25:07.274274	6	2016-10-24	\N
101	大綱和起草章節	2017-02-13	2016-03-04 03:25:07.279226	2016-03-04 03:25:07.279226	6	2016-11-16	\N
102	注意視覺化的細節（插圖，表格，數字，圖形等	2017-03-08	2016-03-04 03:25:07.284361	2016-03-04 03:25:07.284361	6	2017-02-14	\N
103	尋求回饋，審查，重新起草，修改和文字	2017-03-31	2016-03-04 03:25:07.289604	2016-03-04 03:25:07.289604	6	2017-03-09	\N
104	撰寫論文並使其更加完善	2017-04-24	2016-03-04 03:25:07.294658	2016-03-04 03:25:07.294658	6	2017-04-01	\N
105	撰寫摘要	2017-05-03	2016-03-04 03:25:07.299552	2016-03-04 03:25:07.299552	6	2017-04-25	\N
106	口試	2017-05-22	2016-03-04 03:25:07.306206	2016-03-04 03:25:07.306206	6	2017-05-04	\N
107	完成修改	2017-05-31	2016-03-04 03:25:07.312639	2016-03-04 03:25:07.312639	6	2017-05-23	\N
108	提交論文	2017-06-15	2016-03-04 03:25:07.317973	2016-03-04 03:25:07.317973	6	2017-06-01	\N
111	開發一個方法或方法框架	2015-09-28	2016-03-16 12:53:15.156323	2016-03-16 12:53:15.156323	7	2015-09-17	\N
112	回顧在這個領域的文獻搜集	2015-10-10	2016-03-16 12:53:15.162763	2016-03-16 12:53:15.162763	7	2015-09-29	\N
113	建立論文討論會	2015-10-13	2016-03-16 12:53:15.171378	2016-03-16 12:53:15.171378	7	2015-10-11	\N
114	寫論文提案報告	2015-11-03	2016-03-16 12:53:15.178602	2016-03-16 12:53:15.178602	7	2015-10-14	\N
115	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2015-11-09	2016-03-16 12:53:15.186198	2016-03-16 12:53:15.186198	7	2015-11-04	\N
116	建立論文支持網路關係	2015-11-15	2016-03-16 12:53:15.19784	2016-03-16 12:53:15.19784	7	2015-11-10	\N
117	開始研究	2016-01-30	2016-03-16 12:53:15.205409	2016-03-16 12:53:15.205409	7	2015-11-16	\N
118	進行全面的文獻綜合整理	2016-02-14	2016-03-16 12:53:15.211752	2016-03-16 12:53:15.211752	7	2016-01-31	\N
119	大綱和起草章節	2016-04-12	2016-03-16 12:53:15.217467	2016-03-16 12:53:15.217467	7	2016-02-15	\N
120	注意視覺化的細節（插圖，表格，數字，圖形等	2016-04-27	2016-03-16 12:53:15.223064	2016-03-16 12:53:15.223064	7	2016-04-13	\N
121	尋求回饋，審查，重新起草，修改和文字	2016-05-12	2016-03-16 12:53:15.22846	2016-03-16 12:53:15.22846	7	2016-04-28	\N
122	撰寫論文並使其更加完善	2016-05-27	2016-03-16 12:53:15.233739	2016-03-16 12:53:15.233739	7	2016-05-13	\N
123	撰寫摘要	2016-06-02	2016-03-16 12:53:15.239898	2016-03-16 12:53:15.239898	7	2016-05-28	\N
124	口試	2016-06-14	2016-03-16 12:53:15.247229	2016-03-16 12:53:15.247229	7	2016-06-03	\N
125	完成修改	2016-06-20	2016-03-16 12:53:15.255476	2016-03-16 12:53:15.255476	7	2016-06-15	\N
126	提交論文	2016-06-30	2016-03-16 12:53:15.263195	2016-03-16 12:53:15.263195	7	2016-06-21	\N
109	了解（指導教授、實驗室、系上）的期望	2015-09-10	2016-03-16 12:53:15.120273	2016-03-17 06:59:38.705664	7	2015-09-01	t
110	確定你的研究議題 - 希望以能夠幫助管理學院學生為目標	2015-09-16	2016-03-16 12:53:15.143653	2016-03-23 07:13:36.615054	7	2015-09-11	t
144	提交論文	2016-06-30	2016-03-23 07:19:15.019537	2016-03-23 07:19:15.019537	8	2016-06-11	\N
127	了解指導教授、實驗室、系上的期望 - 設計能夠幫助學生的系統	2014-10-11	2016-03-23 07:19:14.928357	2016-03-23 07:20:16.20575	8	2014-09-22	t
145	了解（指導教授、實驗室、系上）的期望	2010-10-09	2016-03-24 03:28:10.573047	2016-03-24 03:28:10.573047	9	2010-09-20	\N
146	確定你的研究議題	2010-10-22	2016-03-24 03:28:10.582525	2016-03-24 03:28:10.582525	9	2010-10-10	\N
147	開發一個方法或方法框架	2010-11-17	2016-03-24 03:28:10.588694	2016-03-24 03:28:10.588694	9	2010-10-23	\N
148	回顧在這個領域的文獻搜集	2010-12-13	2016-03-24 03:28:10.594592	2016-03-24 03:28:10.594592	9	2010-11-18	\N
149	建立論文討論會	2010-12-19	2016-03-24 03:28:10.603516	2016-03-24 03:28:10.603516	9	2010-12-14	\N
150	寫論文提案報告	2011-02-03	2016-03-24 03:28:10.609913	2016-03-24 03:28:10.609913	9	2010-12-20	\N
151	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2011-02-16	2016-03-24 03:28:10.616102	2016-03-24 03:28:10.616102	9	2011-02-04	\N
152	建立論文支持網路關係	2011-03-01	2016-03-24 03:28:10.621698	2016-03-24 03:28:10.621698	9	2011-02-17	\N
153	開始研究	2011-08-10	2016-03-24 03:28:10.62686	2016-03-24 03:28:10.62686	9	2011-03-02	\N
154	進行全面的文獻綜合整理	2011-09-11	2016-03-24 03:28:10.632037	2016-03-24 03:28:10.632037	9	2011-08-11	\N
155	大綱和起草章節	2012-01-13	2016-03-24 03:28:10.637121	2016-03-24 03:28:10.637121	9	2011-09-12	\N
156	注意視覺化的細節（插圖，表格，數字，圖形等	2012-02-14	2016-03-24 03:28:10.643146	2016-03-24 03:28:10.643146	9	2012-01-14	\N
157	尋求回饋，審查，重新起草，修改和文字	2012-03-18	2016-03-24 03:28:10.648685	2016-03-24 03:28:10.648685	9	2012-02-15	\N
158	撰寫論文並使其更加完善	2012-04-19	2016-03-24 03:28:10.654071	2016-03-24 03:28:10.654071	9	2012-03-19	\N
159	撰寫摘要	2012-05-02	2016-03-24 03:28:10.659313	2016-03-24 03:28:10.659313	9	2012-04-20	\N
160	口試	2012-05-28	2016-03-24 03:28:10.665149	2016-03-24 03:28:10.665149	9	2012-05-03	\N
161	完成修改	2012-06-10	2016-03-24 03:28:10.670756	2016-03-24 03:28:10.670756	9	2012-05-29	\N
128	研究議題：自我調節學習	2014-10-24	2016-03-23 07:19:14.93474	2016-03-24 06:55:48.852303	8	2014-10-12	t
129	研究議題：目標管理	2014-11-19	2016-03-23 07:19:14.938254	2016-03-24 06:56:04.657009	8	2014-10-25	t
130	論問題目發想：個人書櫃管理系統	2014-12-15	2016-03-23 07:19:14.942317	2016-03-24 06:57:32.177003	8	2014-11-20	t
131	系統發想	2015-03-27	2016-03-23 07:19:14.945808	2016-03-24 07:03:14.206888	8	2015-03-27	t
132	系統功能設計	2015-04-22	2016-03-23 07:19:14.948621	2016-03-24 07:00:42.418523	8	2015-04-22	t
138	論文提案報告	2015-06-24	2016-03-23 07:19:14.977462	2016-03-24 07:07:07.272656	8	2015-06-01	t
136	重新發想題目：學生論文學習策略管理系統建置之研究	2015-05-06	2016-03-23 07:19:14.964942	2016-03-24 07:04:22.227655	8	2015-04-29	t
137	學生論文學習-系統功能發想	2015-05-26	2016-03-23 07:19:14.971013	2016-03-24 07:05:54.832397	8	2015-05-06	t
141	撰寫摘要	2016-05-02	2016-03-23 07:19:14.995241	2016-05-29 15:10:19.702655	8	2016-04-20	t
139	系統給實驗室同學進行內部試用	2016-03-31	2016-03-23 07:19:14.98325	2016-05-29 15:09:28.475291	8	2016-03-24	t
143	完成修改	2016-06-30	2016-03-23 07:19:15.010418	2016-03-24 07:26:03.905213	8	2016-06-26	f
142	口試	2016-06-24	2016-03-23 07:19:15.001634	2016-03-24 07:16:13.932558	8	2016-06-11	f
162	提交論文	2012-06-30	2016-03-24 03:28:10.676415	2016-03-24 03:28:10.676415	9	2012-06-11	\N
167	建立論文討論會	2016-04-05	2016-03-24 05:29:24.90224	2016-03-24 05:29:24.90224	10	2016-04-05	\N
168	寫論文提案報告	2016-04-12	2016-03-24 05:29:24.908081	2016-03-24 05:29:24.908081	10	2016-04-06	\N
169	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2016-04-13	2016-03-24 05:29:24.914321	2016-03-24 05:29:24.914321	10	2016-04-13	\N
170	建立論文支持網路關係	2016-04-15	2016-03-24 05:29:24.920129	2016-03-24 05:29:24.920129	10	2016-04-14	\N
171	開始研究	2016-05-08	2016-03-24 05:29:24.925575	2016-03-24 05:29:24.925575	10	2016-04-16	\N
172	進行全面的文獻綜合整理	2016-05-13	2016-03-24 05:29:24.930947	2016-03-24 05:29:24.930947	10	2016-05-09	\N
173	大綱和起草章節	2016-05-30	2016-03-24 05:29:24.936329	2016-03-24 05:29:24.936329	10	2016-05-14	\N
174	注意視覺化的細節（插圖，表格，數字，圖形等	2016-06-03	2016-03-24 05:29:24.941639	2016-03-24 05:29:24.941639	10	2016-05-31	\N
175	尋求回饋，審查，重新起草，修改和文字	2016-06-08	2016-03-24 05:29:24.94713	2016-03-24 05:29:24.94713	10	2016-06-04	\N
176	撰寫論文並使其更加完善	2016-06-12	2016-03-24 05:29:24.952417	2016-03-24 05:29:24.952417	10	2016-06-09	\N
177	撰寫摘要	2016-06-14	2016-03-24 05:29:24.95765	2016-03-24 05:29:24.95765	10	2016-06-13	\N
178	口試	2016-06-18	2016-03-24 05:29:24.963755	2016-03-24 05:29:24.963755	10	2016-06-15	\N
179	完成修改	2016-06-20	2016-03-24 05:29:24.969276	2016-03-24 05:29:24.969276	10	2016-06-19	\N
180	提交論文	2016-06-23	2016-03-24 05:29:24.974426	2016-03-24 05:29:24.974426	10	2016-06-21	\N
181	提出研究架構	2015-11-11	2016-03-24 07:09:22.744787	2016-03-24 07:09:30.15122	8	2015-11-01	t
182	重新調整研究架構 - Mendelay	2015-11-18	2016-03-24 07:10:31.668718	2016-03-24 07:12:16.75755	8	2015-11-11	t
183	修改研究架構 - 研究生歷程管理平台	2015-12-30	2016-03-24 07:11:49.245378	2016-03-24 07:12:23.894048	8	2015-12-01	t
184	系統分析與設計	2016-01-21	2016-03-24 07:13:08.799004	2016-03-24 07:13:14.923771	8	2016-01-01	t
188	撰寫論文第三、四章	2016-05-31	2016-03-24 07:22:43.208754	2016-05-29 15:10:40.822717	8	2016-05-01	t
189	撰寫論文第一章	2016-02-07	2016-03-24 07:23:49.972329	2016-03-24 07:24:03.539492	8	2016-02-01	t
193	開發一個方法或方法框架	2015-10-29	2016-03-25 05:35:29.399823	2016-03-25 05:35:29.399823	11	2015-10-04	\N
194	回顧在這個領域的文獻搜集	2015-11-24	2016-03-25 05:35:29.405427	2016-03-25 05:35:29.405427	11	2015-10-30	\N
195	建立論文討論會	2015-11-30	2016-03-25 05:35:29.411033	2016-03-25 05:35:29.411033	11	2015-11-25	\N
196	寫論文提案報告	2016-01-15	2016-03-25 05:35:29.417082	2016-03-25 05:35:29.417082	11	2015-12-01	\N
197	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2016-01-28	2016-03-25 05:35:29.422798	2016-03-25 05:35:29.422798	11	2016-01-16	\N
198	建立論文支持網路關係	2016-02-10	2016-03-25 05:35:29.438957	2016-03-25 05:35:29.438957	11	2016-01-29	\N
199	開始研究	2016-07-21	2016-03-25 05:35:29.448415	2016-03-25 05:35:29.448415	11	2016-02-11	\N
200	進行全面的文獻綜合整理	2016-08-22	2016-03-25 05:35:29.45367	2016-03-25 05:35:29.45367	11	2016-07-22	\N
201	大綱和起草章節	2016-12-23	2016-03-25 05:35:29.459576	2016-03-25 05:35:29.459576	11	2016-08-23	\N
202	注意視覺化的細節（插圖，表格，數字，圖形等	2017-01-24	2016-03-25 05:35:29.46521	2016-03-25 05:35:29.46521	11	2016-12-24	\N
203	尋求回饋，審查，重新起草，修改和文字	2017-02-26	2016-03-25 05:35:29.470769	2016-03-25 05:35:29.470769	11	2017-01-25	\N
204	撰寫論文並使其更加完善	2017-03-30	2016-03-25 05:35:29.476268	2016-03-25 05:35:29.476268	11	2017-02-27	\N
205	撰寫摘要	2017-04-12	2016-03-25 05:35:29.481568	2016-03-25 05:35:29.481568	11	2017-03-31	\N
206	口試	2017-05-08	2016-03-25 05:35:29.487325	2016-03-25 05:35:29.487325	11	2017-04-13	\N
207	完成修改	2017-05-21	2016-03-25 05:35:29.492856	2016-03-25 05:35:29.492856	11	2017-05-09	\N
208	提交論文	2017-06-10	2016-03-25 05:35:29.498285	2016-03-25 05:35:29.498285	11	2017-05-22	\N
191	了解（指導教授、實驗室、系上）的期望	2015-09-20	2016-03-25 05:35:29.384536	2016-03-25 05:36:07.597947	11	2015-09-01	t
192	確定你的研究議題	2015-10-03	2016-03-25 05:35:29.393635	2016-03-25 05:36:18.036845	11	2015-09-21	t
165	開發一個方法或方法框架	2015-09-03	2016-03-24 05:29:24.890298	2016-04-12 07:39:39.91453	10	2015-03-28	t
163	了解（指導教授、實驗室、系上）的期望	2014-09-04	2016-03-24 05:29:24.876501	2016-03-30 07:12:37.697641	10	2014-02-13	t
227	了解（指導教授、實驗室、系上）的期望	2016-04-15	2016-04-14 08:37:20.103624	2016-04-14 08:38:56.710002	13	2016-04-07	t
164	確定你的研究議題	2015-03-28	2016-03-24 05:29:24.884579	2016-03-30 07:12:59.887767	10	2014-02-13	t
185	系統建置	2016-03-24	2016-03-24 07:13:36.824459	2016-03-31 06:24:06.237679	8	2016-01-21	t
209	了解（指導教授、實驗室、系上）的期望	2014-10-25	2016-04-11 02:28:28.736859	2016-04-11 02:28:28.736859	12	2014-09-01	\N
210	確定你的研究議題	2014-12-01	2016-04-11 02:28:28.75136	2016-04-11 02:28:28.75136	12	2014-10-26	\N
211	開發一個方法或方法框架	2015-02-12	2016-04-11 02:28:28.758413	2016-04-11 02:28:28.758413	12	2014-12-02	\N
212	回顧在這個領域的文獻搜集	2015-04-26	2016-04-11 02:28:28.767748	2016-04-11 02:28:28.767748	12	2015-02-13	\N
213	建立論文討論會	2015-05-14	2016-04-11 02:28:28.777285	2016-04-11 02:28:28.777285	12	2015-04-27	\N
214	寫論文提案報告	2015-09-19	2016-04-11 02:28:28.786457	2016-04-11 02:28:28.786457	12	2015-05-15	\N
215	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2015-10-25	2016-04-11 02:28:28.795357	2016-04-11 02:28:28.795357	12	2015-09-20	\N
216	建立論文支持網路關係	2015-12-01	2016-04-11 02:28:28.804469	2016-04-11 02:28:28.804469	12	2015-10-26	\N
217	開始研究	2017-03-02	2016-04-11 02:28:28.814006	2016-04-11 02:28:28.814006	12	2015-12-02	\N
218	進行全面的文獻綜合整理	2017-06-01	2016-04-11 02:28:28.823054	2016-04-11 02:28:28.823054	12	2017-03-03	\N
219	大綱和起草章節	2018-05-14	2016-04-11 02:28:28.830758	2016-04-11 02:28:28.830758	12	2017-06-02	\N
220	注意視覺化的細節（插圖，表格，數字，圖形等	2018-08-13	2016-04-11 02:28:28.837468	2016-04-11 02:28:28.837468	12	2018-05-15	\N
221	尋求回饋，審查，重新起草，修改和文字	2018-11-12	2016-04-11 02:28:28.844221	2016-04-11 02:28:28.844221	12	2018-08-14	\N
222	撰寫論文並使其更加完善	2019-02-12	2016-04-11 02:28:28.850502	2016-04-11 02:28:28.850502	12	2018-11-13	\N
223	撰寫摘要	2019-03-20	2016-04-11 02:28:28.856687	2016-04-11 02:28:28.856687	12	2019-02-13	\N
224	口試	2019-06-01	2016-04-11 02:28:28.862715	2016-04-11 02:28:28.862715	12	2019-03-21	\N
225	完成修改	2019-07-08	2016-04-11 02:28:28.868751	2016-04-11 02:28:28.868751	12	2019-06-02	\N
226	提交論文	2019-09-01	2016-04-11 02:28:28.875276	2016-04-11 02:28:28.875276	12	2019-07-09	\N
166	回顧在這個領域的文獻搜集	2015-12-11	2016-03-24 05:29:24.895903	2016-04-14 06:16:45.493551	10	2015-09-03	t
229	開發一個方法或方法框架	2016-05-02	2016-04-14 08:37:20.119028	2016-04-14 08:37:20.119028	13	2016-04-22	\N
230	回顧在這個領域的文獻搜集	2016-05-13	2016-04-14 08:37:20.125813	2016-04-14 08:37:20.125813	13	2016-05-03	\N
231	建立論文討論會	2016-05-16	2016-04-14 08:37:20.133743	2016-04-14 08:37:20.133743	13	2016-05-14	\N
232	寫論文提案報告	2016-06-05	2016-04-14 08:37:20.140241	2016-04-14 08:37:20.140241	13	2016-05-17	\N
233	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2016-06-10	2016-04-14 08:37:20.14645	2016-04-14 08:37:20.14645	13	2016-06-06	\N
234	建立論文支持網路關係	2016-06-16	2016-04-14 08:37:20.152215	2016-04-14 08:37:20.152215	13	2016-06-11	\N
235	開始研究	2016-08-25	2016-04-14 08:37:20.157773	2016-04-14 08:37:20.157773	13	2016-06-17	\N
236	進行全面的文獻綜合整理	2016-09-08	2016-04-14 08:37:20.163299	2016-04-14 08:37:20.163299	13	2016-08-26	\N
237	大綱和起草章節	2016-10-31	2016-04-14 08:37:20.169709	2016-04-14 08:37:20.169709	13	2016-09-09	\N
238	注意視覺化的細節（插圖，表格，數字，圖形等	2016-11-14	2016-04-14 08:37:20.177425	2016-04-14 08:37:20.177425	13	2016-11-01	\N
239	尋求回饋，審查，重新起草，修改和文字	2016-11-29	2016-04-14 08:37:20.18423	2016-04-14 08:37:20.18423	13	2016-11-15	\N
240	撰寫論文並使其更加完善	2016-12-13	2016-04-14 08:37:20.19143	2016-04-14 08:37:20.19143	13	2016-11-30	\N
241	撰寫摘要	2016-12-18	2016-04-14 08:37:20.197284	2016-04-14 08:37:20.197284	13	2016-12-14	\N
242	口試	2016-12-29	2016-04-14 08:37:20.203865	2016-04-14 08:37:20.203865	13	2016-12-19	\N
228	確定你的研究議題	2016-04-21	2016-04-14 08:37:20.112411	2016-04-14 08:39:03.367492	13	2016-04-16	t
187	開始訪談	2016-05-21	2016-03-24 07:21:42.747518	2016-05-29 15:09:58.596961	8	2016-05-01	t
190	撰寫論文第二章	2016-04-30	2016-03-24 07:24:48.036065	2016-05-29 15:10:04.87985	8	2016-03-28	t
186	推廣給學弟妹使用	2016-04-30	2016-03-24 07:17:55.876075	2016-05-29 15:10:11.999621	8	2016-04-01	t
243	完成修改	2017-01-04	2016-04-14 08:37:20.21236	2016-04-14 08:37:20.21236	13	2016-12-30	\N
244	提交論文	2017-01-13	2016-04-14 08:37:20.219479	2016-04-14 08:37:20.219479	13	2017-01-05	\N
245	了解（指導教授、實驗室、系上）的期望	2016-05-09	2016-05-03 02:44:05.244394	2016-05-03 02:44:05.244394	14	2016-05-02	\N
246	確定你的研究議題	2016-05-14	2016-05-03 02:44:05.256413	2016-05-03 02:44:05.256413	14	2016-05-10	\N
247	開發一個方法或方法框架	2016-05-23	2016-05-03 02:44:05.262542	2016-05-03 02:44:05.262542	14	2016-05-15	\N
248	回顧在這個領域的文獻搜集	2016-06-02	2016-05-03 02:44:05.268303	2016-05-03 02:44:05.268303	14	2016-05-24	\N
249	建立論文討論會	2016-06-05	2016-05-03 02:44:05.271977	2016-05-03 02:44:05.271977	14	2016-06-03	\N
250	寫論文提案報告	2016-06-22	2016-05-03 02:44:05.275134	2016-05-03 02:44:05.275134	14	2016-06-06	\N
251	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2016-06-26	2016-05-03 02:44:05.278426	2016-05-03 02:44:05.278426	14	2016-06-23	\N
252	建立論文支持網路關係	2016-07-01	2016-05-03 02:44:05.282538	2016-05-03 02:44:05.282538	14	2016-06-27	\N
253	開始研究	2016-08-31	2016-05-03 02:44:05.289126	2016-05-03 02:44:05.289126	14	2016-07-02	\N
254	進行全面的文獻綜合整理	2016-09-12	2016-05-03 02:44:05.295558	2016-05-03 02:44:05.295558	14	2016-09-01	\N
255	大綱和起草章節	2016-10-28	2016-05-03 02:44:05.302298	2016-05-03 02:44:05.302298	14	2016-09-13	\N
256	注意視覺化的細節（插圖，表格，數字，圖形等	2016-11-09	2016-05-03 02:44:05.308556	2016-05-03 02:44:05.308556	14	2016-10-29	\N
257	尋求回饋，審查，重新起草，修改和文字	2016-11-22	2016-05-03 02:44:05.314494	2016-05-03 02:44:05.314494	14	2016-11-10	\N
258	撰寫論文並使其更加完善	2016-12-04	2016-05-03 02:44:05.320365	2016-05-03 02:44:05.320365	14	2016-11-23	\N
259	撰寫摘要	2016-12-09	2016-05-03 02:44:05.326084	2016-05-03 02:44:05.326084	14	2016-12-05	\N
260	口試	2016-12-18	2016-05-03 02:44:05.332412	2016-05-03 02:44:05.332412	14	2016-12-10	\N
261	完成修改	2016-12-23	2016-05-03 02:44:05.33895	2016-05-03 02:44:05.33895	14	2016-12-19	\N
262	提交論文	2016-12-31	2016-05-03 02:44:05.344947	2016-05-03 02:44:05.344947	14	2016-12-24	\N
264	確定你的研究議題	2014-10-04	2016-05-09 03:49:45.471829	2016-05-09 03:49:45.471829	15	2014-09-21	\N
265	開發一個方法或方法框架	2014-10-30	2016-05-09 03:49:45.480271	2016-05-09 03:49:45.480271	15	2014-10-05	\N
266	回顧在這個領域的文獻搜集	2014-11-26	2016-05-09 03:49:45.488526	2016-05-09 03:49:45.488526	15	2014-10-31	\N
267	建立論文討論會	2014-12-02	2016-05-09 03:49:45.496209	2016-05-09 03:49:45.496209	15	2014-11-27	\N
268	寫論文提案報告	2015-01-18	2016-05-09 03:49:45.504554	2016-05-09 03:49:45.504554	15	2014-12-03	\N
269	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2015-01-31	2016-05-09 03:49:45.519504	2016-05-09 03:49:45.519504	15	2015-01-19	\N
270	建立論文支持網路關係	2015-02-13	2016-05-09 03:49:45.528535	2016-05-09 03:49:45.528535	15	2015-02-01	\N
271	開始研究	2015-07-29	2016-05-09 03:49:45.536598	2016-05-09 03:49:45.536598	15	2015-02-14	\N
272	進行全面的文獻綜合整理	2015-08-31	2016-05-09 03:49:45.54358	2016-05-09 03:49:45.54358	15	2015-07-30	\N
273	大綱和起草章節	2016-01-04	2016-05-09 03:49:45.551028	2016-05-09 03:49:45.551028	15	2015-09-01	\N
274	注意視覺化的細節（插圖，表格，數字，圖形等	2016-02-06	2016-05-09 03:49:45.558561	2016-05-09 03:49:45.558561	15	2016-01-05	\N
275	尋求回饋，審查，重新起草，修改和文字	2016-03-10	2016-05-09 03:49:45.565372	2016-05-09 03:49:45.565372	15	2016-02-07	\N
276	撰寫論文並使其更加完善	2016-04-13	2016-05-09 03:49:45.572453	2016-05-09 03:49:45.572453	15	2016-03-11	\N
277	撰寫摘要	2016-04-26	2016-05-09 03:49:45.593044	2016-05-09 03:49:45.593044	15	2016-04-14	\N
278	口試	2016-05-22	2016-05-09 03:49:45.609581	2016-05-09 03:49:45.609581	15	2016-04-27	\N
279	完成修改	2016-06-05	2016-05-09 03:49:45.692697	2016-05-09 03:49:45.692697	15	2016-05-23	\N
280	提交論文	2016-06-25	2016-05-09 03:49:45.700734	2016-05-09 03:49:45.700734	15	2016-06-06	\N
281	訪談使用者	2016-05-20	2016-05-09 03:51:35.365634	2016-05-09 03:51:35.365634	15	2016-05-10	\N
263	了解（指導教授、實驗室、系上）的期望	2014-09-20	2016-05-09 03:49:45.456228	2016-05-09 03:52:01.779988	15	2014-09-01	t
282	了解（指導教授、實驗室、系上）的期望	2016-06-01	2016-05-19 06:02:27.909595	2016-05-19 06:02:27.909595	16	2016-05-19	\N
283	確定你的研究議題	2016-06-09	2016-05-19 06:02:27.920397	2016-05-19 06:02:27.920397	16	2016-06-02	\N
284	開發一個方法或方法框架	2016-06-27	2016-05-19 06:02:27.92866	2016-05-19 06:02:27.92866	16	2016-06-10	\N
285	回顧在這個領域的文獻搜集	2016-07-14	2016-05-19 06:02:27.93654	2016-05-19 06:02:27.93654	16	2016-06-28	\N
286	建立論文討論會	2016-07-19	2016-05-19 06:02:27.943426	2016-05-19 06:02:27.943426	16	2016-07-15	\N
287	寫論文提案報告	2016-08-18	2016-05-19 06:02:27.949362	2016-05-19 06:02:27.949362	16	2016-07-20	\N
288	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2016-08-27	2016-05-19 06:02:27.954927	2016-05-19 06:02:27.954927	16	2016-08-19	\N
289	建立論文支持網路關係	2016-09-05	2016-05-19 06:02:27.958588	2016-05-19 06:02:27.958588	16	2016-08-28	\N
290	開始研究	2016-12-24	2016-05-19 06:02:27.962431	2016-05-19 06:02:27.962431	16	2016-09-06	\N
291	進行全面的文獻綜合整理	2017-01-14	2016-05-19 06:02:27.966289	2016-05-19 06:02:27.966289	16	2016-12-25	\N
292	大綱和起草章節	2017-04-08	2016-05-19 06:02:27.970581	2016-05-19 06:02:27.970581	16	2017-01-15	\N
293	注意視覺化的細節（插圖，表格，數字，圖形等	2017-04-30	2016-05-19 06:02:27.975143	2016-05-19 06:02:27.975143	16	2017-04-09	\N
294	尋求回饋，審查，重新起草，修改和文字	2017-05-21	2016-05-19 06:02:27.979685	2016-05-19 06:02:27.979685	16	2017-05-01	\N
295	撰寫論文並使其更加完善	2017-06-12	2016-05-19 06:02:27.989665	2016-05-19 06:02:27.989665	16	2017-05-22	\N
296	撰寫摘要	2017-06-21	2016-05-19 06:02:28.004955	2016-05-19 06:02:28.004955	16	2017-06-13	\N
297	口試	2017-07-09	2016-05-19 06:02:28.015279	2016-05-19 06:02:28.015279	16	2017-06-22	\N
298	完成修改	2017-07-17	2016-05-19 06:02:28.023294	2016-05-19 06:02:28.023294	16	2017-07-10	\N
299	提交論文	2017-07-31	2016-05-19 06:02:28.032606	2016-05-19 06:02:28.032606	16	2017-07-18	\N
300	了解（指導教授、實驗室、系上）的期望	2016-05-26	2016-05-19 17:22:34.155376	2016-05-19 17:22:34.155376	17	2016-05-19	\N
301	確定你的研究議題	2016-05-31	2016-05-19 17:22:34.160627	2016-05-19 17:22:34.160627	17	2016-05-27	\N
302	開發一個方法或方法框架	2016-06-11	2016-05-19 17:22:34.166508	2016-05-19 17:22:34.166508	17	2016-06-01	\N
303	回顧在這個領域的文獻搜集	2016-06-21	2016-05-19 17:22:34.170842	2016-05-19 17:22:34.170842	17	2016-06-12	\N
304	建立論文討論會	2016-06-24	2016-05-19 17:22:34.173915	2016-05-19 17:22:34.173915	17	2016-06-22	\N
305	寫論文提案報告	2016-07-12	2016-05-19 17:22:34.176901	2016-05-19 17:22:34.176901	17	2016-06-25	\N
306	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2016-07-17	2016-05-19 17:22:34.180113	2016-05-19 17:22:34.180113	17	2016-07-13	\N
307	建立論文支持網路關係	2016-07-22	2016-05-19 17:22:34.190235	2016-05-19 17:22:34.190235	17	2016-07-18	\N
308	開始研究	2016-09-25	2016-05-19 17:22:34.195195	2016-05-19 17:22:34.195195	17	2016-07-23	\N
309	進行全面的文獻綜合整理	2016-10-07	2016-05-19 17:22:34.198127	2016-05-19 17:22:34.198127	17	2016-09-26	\N
310	大綱和起草章節	2016-11-25	2016-05-19 17:22:34.20101	2016-05-19 17:22:34.20101	17	2016-10-08	\N
311	注意視覺化的細節（插圖，表格，數字，圖形等	2016-12-08	2016-05-19 17:22:34.204005	2016-05-19 17:22:34.204005	17	2016-11-26	\N
312	尋求回饋，審查，重新起草，修改和文字	2016-12-21	2016-05-19 17:22:34.206791	2016-05-19 17:22:34.206791	17	2016-12-09	\N
313	撰寫論文並使其更加完善	2017-01-03	2016-05-19 17:22:34.209792	2016-05-19 17:22:34.209792	17	2016-12-22	\N
314	撰寫摘要	2017-01-08	2016-05-19 17:22:34.212508	2016-05-19 17:22:34.212508	17	2017-01-04	\N
315	口試	2017-01-19	2016-05-19 17:22:34.215346	2016-05-19 17:22:34.215346	17	2017-01-09	\N
316	完成修改	2017-01-24	2016-05-19 17:22:34.218032	2016-05-19 17:22:34.218032	17	2017-01-20	\N
317	提交論文	2017-02-01	2016-05-19 17:22:34.221026	2016-05-19 17:22:34.221026	17	2017-01-25	\N
318	了解（指導教授、實驗室、系上）的期望	2016-06-02	2016-05-20 13:25:59.758349	2016-05-20 13:25:59.758349	18	2016-05-20	\N
319	確定你的研究議題	2016-06-10	2016-05-20 13:25:59.770739	2016-05-20 13:25:59.770739	18	2016-06-03	\N
320	開發一個方法或方法框架	2016-06-28	2016-05-20 13:25:59.777513	2016-05-20 13:25:59.777513	18	2016-06-11	\N
321	回顧在這個領域的文獻搜集	2016-07-15	2016-05-20 13:25:59.78406	2016-05-20 13:25:59.78406	18	2016-06-29	\N
322	建立論文討論會	2016-07-20	2016-05-20 13:25:59.791128	2016-05-20 13:25:59.791128	18	2016-07-16	\N
323	寫論文提案報告	2016-08-19	2016-05-20 13:25:59.797996	2016-05-20 13:25:59.797996	18	2016-07-21	\N
324	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2016-08-28	2016-05-20 13:25:59.80538	2016-05-20 13:25:59.80538	18	2016-08-20	\N
325	建立論文支持網路關係	2016-09-06	2016-05-20 13:25:59.81236	2016-05-20 13:25:59.81236	18	2016-08-29	\N
326	開始研究	2016-12-24	2016-05-20 13:25:59.818975	2016-05-20 13:25:59.818975	18	2016-09-07	\N
327	進行全面的文獻綜合整理	2017-01-15	2016-05-20 13:25:59.825679	2016-05-20 13:25:59.825679	18	2016-12-25	\N
328	大綱和起草章節	2017-04-08	2016-05-20 13:25:59.833144	2016-05-20 13:25:59.833144	18	2017-01-16	\N
329	注意視覺化的細節（插圖，表格，數字，圖形等	2017-04-30	2016-05-20 13:25:59.839535	2016-05-20 13:25:59.839535	18	2017-04-09	\N
330	尋求回饋，審查，重新起草，修改和文字	2017-05-22	2016-05-20 13:25:59.846418	2016-05-20 13:25:59.846418	18	2017-05-01	\N
331	撰寫論文並使其更加完善	2017-06-12	2016-05-20 13:25:59.853031	2016-05-20 13:25:59.853031	18	2017-05-23	\N
332	撰寫摘要	2017-06-21	2016-05-20 13:25:59.860746	2016-05-20 13:25:59.860746	18	2017-06-13	\N
333	口試	2017-07-09	2016-05-20 13:25:59.870026	2016-05-20 13:25:59.870026	18	2017-06-22	\N
334	完成修改	2017-07-17	2016-05-20 13:25:59.879571	2016-05-20 13:25:59.879571	18	2017-07-10	\N
335	提交論文	2017-07-31	2016-05-20 13:25:59.887887	2016-05-20 13:25:59.887887	18	2017-07-18	\N
336	了解（指導教授、實驗室、系上）的期望	2016-09-21	2016-05-30 01:27:02.779582	2016-05-30 01:27:02.779582	19	2016-09-01	\N
337	確定你的研究議題	2016-10-04	2016-05-30 01:27:02.786995	2016-05-30 01:27:02.786995	19	2016-09-22	\N
338	開發一個方法或方法框架	2016-10-31	2016-05-30 01:27:02.801931	2016-05-30 01:27:02.801931	19	2016-10-05	\N
339	回顧在這個領域的文獻搜集	2016-11-26	2016-05-30 01:27:02.810795	2016-05-30 01:27:02.810795	19	2016-11-01	\N
340	建立論文討論會	2016-12-03	2016-05-30 01:27:02.816608	2016-05-30 01:27:02.816608	19	2016-11-27	\N
341	寫論文提案報告	2017-01-19	2016-05-30 01:27:02.823051	2016-05-30 01:27:02.823051	19	2016-12-04	\N
342	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2017-02-01	2016-05-30 01:27:02.82949	2016-05-30 01:27:02.82949	19	2017-01-20	\N
343	建立論文支持網路關係	2017-02-14	2016-05-30 01:27:02.835438	2016-05-30 01:27:02.835438	19	2017-02-02	\N
344	開始研究	2017-07-31	2016-05-30 01:27:02.841665	2016-05-30 01:27:02.841665	19	2017-02-15	\N
345	進行全面的文獻綜合整理	2017-09-02	2016-05-30 01:27:02.847942	2016-05-30 01:27:02.847942	19	2017-08-01	\N
346	大綱和起草章節	2018-01-07	2016-05-30 01:27:02.854428	2016-05-30 01:27:02.854428	19	2017-09-03	\N
347	注意視覺化的細節（插圖，表格，數字，圖形等	2018-02-09	2016-05-30 01:27:02.860993	2016-05-30 01:27:02.860993	19	2018-01-08	\N
348	尋求回饋，審查，重新起草，修改和文字	2018-03-15	2016-05-30 01:27:02.867093	2016-05-30 01:27:02.867093	19	2018-02-10	\N
349	撰寫論文並使其更加完善	2018-04-17	2016-05-30 01:27:02.873489	2016-05-30 01:27:02.873489	19	2018-03-16	\N
350	撰寫摘要	2018-04-30	2016-05-30 01:27:02.879944	2016-05-30 01:27:02.879944	19	2018-04-18	\N
351	口試	2018-05-27	2016-05-30 01:27:02.886515	2016-05-30 01:27:02.886515	19	2018-05-01	\N
352	完成修改	2018-06-09	2016-05-30 01:27:02.892886	2016-05-30 01:27:02.892886	19	2018-05-28	\N
353	提交論文	2018-06-30	2016-05-30 01:27:02.899466	2016-05-30 01:27:02.899466	19	2018-06-10	\N
354	了解（指導教授、實驗室、系上）的期望	2016-05-30	2016-05-30 06:27:22.147316	2016-05-30 06:27:22.147316	20	2016-05-30	\N
355	確定你的研究議題	2016-05-31	2016-05-30 06:27:22.153717	2016-05-30 06:27:22.153717	20	2016-05-31	\N
356	開發一個方法或方法框架	2016-05-31	2016-05-30 06:27:22.159542	2016-05-30 06:27:22.159542	20	2016-06-01	\N
357	回顧在這個領域的文獻搜集	2016-06-01	2016-05-30 06:27:22.166055	2016-05-30 06:27:22.166055	20	2016-06-01	\N
358	建立論文討論會	2016-06-02	2016-05-30 06:27:22.173437	2016-05-30 06:27:22.173437	20	2016-06-02	\N
359	寫論文提案報告	2016-06-03	2016-05-30 06:27:22.179808	2016-05-30 06:27:22.179808	20	2016-06-03	\N
360	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2016-06-04	2016-05-30 06:27:22.185905	2016-05-30 06:27:22.185905	20	2016-06-04	\N
361	建立論文支持網路關係	2016-06-04	2016-05-30 06:27:22.191451	2016-05-30 06:27:22.191451	20	2016-06-05	\N
362	開始研究	2016-06-10	2016-05-30 06:27:22.197205	2016-05-30 06:27:22.197205	20	2016-06-05	\N
363	進行全面的文獻綜合整理	2016-06-11	2016-05-30 06:27:22.2056	2016-05-30 06:27:22.2056	20	2016-06-11	\N
364	大綱和起草章節	2016-06-15	2016-05-30 06:27:22.214291	2016-05-30 06:27:22.214291	20	2016-06-12	\N
365	注意視覺化的細節（插圖，表格，數字，圖形等	2016-06-16	2016-05-30 06:27:22.219722	2016-05-30 06:27:22.219722	20	2016-06-16	\N
366	尋求回饋，審查，重新起草，修改和文字	2016-06-17	2016-05-30 06:27:22.224977	2016-05-30 06:27:22.224977	20	2016-06-17	\N
367	撰寫論文並使其更加完善	2016-06-18	2016-05-30 06:27:22.229923	2016-05-30 06:27:22.229923	20	2016-06-18	\N
368	撰寫摘要	2016-06-19	2016-05-30 06:27:22.23523	2016-05-30 06:27:22.23523	20	2016-06-19	\N
369	口試	2016-06-19	2016-05-30 06:27:22.243704	2016-05-30 06:27:22.243704	20	2016-06-20	\N
370	完成修改	2016-06-20	2016-05-30 06:27:22.25141	2016-05-30 06:27:22.25141	20	2016-06-20	\N
371	提交論文	2016-06-21	2016-05-30 06:27:22.256538	2016-05-30 06:27:22.256538	20	2016-06-21	\N
372	了解（指導教授、實驗室、系上）的期望	2016-06-10	2016-05-30 06:27:50.717072	2016-05-30 06:27:50.717072	21	2016-05-30	\N
373	確定你的研究議題	2016-06-18	2016-05-30 06:27:50.721353	2016-05-30 06:27:50.721353	21	2016-06-11	\N
374	開發一個方法或方法框架	2016-07-03	2016-05-30 06:27:50.725867	2016-05-30 06:27:50.725867	21	2016-06-19	\N
375	回顧在這個領域的文獻搜集	2016-07-19	2016-05-30 06:27:50.729918	2016-05-30 06:27:50.729918	21	2016-07-04	\N
376	建立論文討論會	2016-07-23	2016-05-30 06:27:50.742569	2016-05-30 06:27:50.742569	21	2016-07-20	\N
377	寫論文提案報告	2016-08-19	2016-05-30 06:27:50.749648	2016-05-30 06:27:50.749648	21	2016-07-24	\N
378	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2016-08-27	2016-05-30 06:27:50.756606	2016-05-30 06:27:50.756606	21	2016-08-20	\N
379	建立論文支持網路關係	2016-09-03	2016-05-30 06:27:50.761461	2016-05-30 06:27:50.761461	21	2016-08-28	\N
380	開始研究	2016-12-09	2016-05-30 06:27:50.767667	2016-05-30 06:27:50.767667	21	2016-09-04	\N
381	進行全面的文獻綜合整理	2016-12-28	2016-05-30 06:27:50.774946	2016-05-30 06:27:50.774946	21	2016-12-10	\N
382	大綱和起草章節	2017-03-12	2016-05-30 06:27:50.779411	2016-05-30 06:27:50.779411	21	2016-12-29	\N
383	注意視覺化的細節（插圖，表格，數字，圖形等	2017-03-31	2016-05-30 06:27:50.782592	2016-05-30 06:27:50.782592	21	2017-03-13	\N
384	尋求回饋，審查，重新起草，修改和文字	2017-04-20	2016-05-30 06:27:50.785404	2016-05-30 06:27:50.785404	21	2017-04-01	\N
385	撰寫論文並使其更加完善	2017-05-09	2016-05-30 06:27:50.788017	2016-05-30 06:27:50.788017	21	2017-04-21	\N
386	撰寫摘要	2017-05-17	2016-05-30 06:27:50.790929	2016-05-30 06:27:50.790929	21	2017-05-10	\N
387	口試	2017-06-01	2016-05-30 06:27:50.793863	2016-05-30 06:27:50.793863	21	2017-05-18	\N
388	完成修改	2017-06-09	2016-05-30 06:27:50.796531	2016-05-30 06:27:50.796531	21	2017-06-02	\N
389	提交論文	2017-06-21	2016-05-30 06:27:50.799391	2016-05-30 06:27:50.799391	21	2017-06-10	\N
390	了解（指導教授、實驗室、系上）的期望	2015-10-18	2016-05-30 06:28:21.571888	2016-05-30 06:28:21.571888	22	2015-09-30	\N
391	確定你的研究議題	2015-10-31	2016-05-30 06:28:21.590888	2016-05-30 06:28:21.590888	22	2015-10-19	\N
392	開發一個方法或方法框架	2015-11-25	2016-05-30 06:28:21.608764	2016-05-30 06:28:21.608764	22	2015-11-01	\N
393	回顧在這個領域的文獻搜集	2015-12-20	2016-05-30 06:28:21.626506	2016-05-30 06:28:21.626506	22	2015-11-26	\N
394	建立論文討論會	2015-12-27	2016-05-30 06:28:21.643778	2016-05-30 06:28:21.643778	22	2015-12-21	\N
395	寫論文提案報告	2016-02-09	2016-05-30 06:28:21.656507	2016-05-30 06:28:21.656507	22	2015-12-28	\N
396	建立工作計畫 （分析瞭解你的目標，你的情況，你的工作習慣。）	2016-02-21	2016-05-30 06:28:21.671483	2016-05-30 06:28:21.671483	22	2016-02-10	\N
397	建立論文支持網路關係	2016-03-05	2016-05-30 06:28:21.679857	2016-05-30 06:28:21.679857	22	2016-02-22	\N
398	開始研究	2016-08-10	2016-05-30 06:28:21.686329	2016-05-30 06:28:21.686329	22	2016-03-06	\N
399	進行全面的文獻綜合整理	2016-09-10	2016-05-30 06:28:21.695988	2016-05-30 06:28:21.695988	22	2016-08-11	\N
400	大綱和起草章節	2017-01-08	2016-05-30 06:28:21.702498	2016-05-30 06:28:21.702498	22	2016-09-11	\N
401	注意視覺化的細節（插圖，表格，數字，圖形等	2017-02-08	2016-05-30 06:28:21.708439	2016-05-30 06:28:21.708439	22	2017-01-09	\N
402	尋求回饋，審查，重新起草，修改和文字	2017-03-12	2016-05-30 06:28:21.714253	2016-05-30 06:28:21.714253	22	2017-02-09	\N
403	撰寫論文並使其更加完善	2017-04-12	2016-05-30 06:28:21.720319	2016-05-30 06:28:21.720319	22	2017-03-13	\N
404	撰寫摘要	2017-04-25	2016-05-30 06:28:21.726877	2016-05-30 06:28:21.726877	22	2017-04-13	\N
405	口試	2017-05-20	2016-05-30 06:28:21.732968	2016-05-30 06:28:21.732968	22	2017-04-26	\N
406	完成修改	2017-06-02	2016-05-30 06:28:21.740309	2016-05-30 06:28:21.740309	22	2017-05-21	\N
407	提交論文	2017-06-21	2016-05-30 06:28:21.74809	2016-05-30 06:28:21.74809	22	2017-06-03	\N
410	3.建立論文討論會	2016-08-29	2016-08-14 12:10:07.793707	2016-08-14 14:17:27.543783	23	2016-07-04	f
411	4.(初步)回顧在這個領域的文獻搜集	2016-08-08	2016-08-14 12:10:07.807336	2016-08-14 15:15:50.231931	23	2016-07-11	t
409	2.確定你的研究議題	2016-08-01	2016-08-14 12:10:07.783341	2016-08-14 13:53:04.188731	23	2016-06-25	t
426	8.徵求個案(臺北聯合大學系統4個圖書館)同意使用館務統計資料暨接受專家問卷評估	2016-08-02	2016-08-14 13:43:18.958095	2016-08-14 14:29:46.621182	23	2016-08-02	t
408	1.了解（指導教授、實驗室、系上）的期望	2016-06-25	2016-08-14 12:10:07.767482	2016-08-14 13:29:11.718766	23	2016-06-01	t
427	11.運用Fuzzy Delphi Method建立準則(Criteria)	2016-10-31	2016-08-14 14:19:19.673796	2016-08-14 14:44:33.28292	23	2016-10-01	f
428	12.運用DEMATEL Method建構INRM	2016-11-30	2016-08-14 14:31:19.844059	2016-08-14 14:44:50.38539	23	2016-11-01	f
431	13.運用DANP Method尋找影響權重(Influential weights)	2016-12-15	2016-08-14 14:37:58.69794	2016-08-14 14:45:33.739794	23	2016-12-01	f
432	14.運用Modified VIKOR Method於績效落差改善(Performance gap Improvement)	2016-12-31	2016-08-14 14:41:02.260621	2016-08-14 14:46:03.641921	23	2016-12-16	f
433	15.論文結語與討論，撰寫摘要	2017-01-31	2016-08-14 14:47:47.941944	2016-08-14 14:54:19.155259	23	2017-01-01	f
423	※論文口試	2017-05-26	2016-08-14 12:10:07.901938	2016-08-14 14:57:01.598514	23	2017-05-22	f
424	※論文完成修改	2017-06-15	2016-08-14 12:10:07.907442	2016-08-14 14:57:16.884397	23	2017-05-27	f
425	※提交論文	2017-06-23	2016-08-14 12:10:07.913887	2016-08-14 14:57:27.510003	23	2017-06-16	f
420	16.修改論文，投稿SSCI期刊	2017-02-01	2016-08-14 12:10:07.884275	2016-08-14 14:58:10.222338	23	2017-02-01	f
415	9.建立論文支持網路關係	2016-09-12	2016-08-14 12:10:07.846442	2016-08-14 14:05:38.436181	23	2016-08-02	f
414	7.建立工作計畫(分析瞭解你的目標，你的情況，你的工作習慣)。	2016-09-12	2016-08-14 12:10:07.839953	2016-08-14 14:12:49.239394	23	2016-08-01	f
412	5.開發一個方法或方法框架	2016-08-08	2016-08-14 12:10:07.816353	2016-08-14 15:16:28.599255	23	2016-07-25	t
418	6.論文大綱	2016-08-08	2016-08-14 12:10:07.872776	2016-08-14 15:18:42.977548	23	2016-07-31	t
417	10.進行全面的文獻綜合整理，擬定初步準則(Criteria)	2016-09-30	2016-08-14 12:10:07.86087	2016-08-14 14:22:21.838089	23	2016-08-08	f
\.


--
-- Name: missions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('missions_id_seq', 433, true);


--
-- Data for Name: note_comments; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY note_comments (id, comment, user_name, note_id, created_at, updated_at) FROM stdin;
1	棒!棒!	林宜右	7	2016-03-24 05:43:19.598451	2016-03-24 05:43:56.444994
2	good	葉佳雯	5	2016-03-24 07:36:14.740503	2016-03-24 07:36:14.740503
3	<p>互動機制</p>	葉佳雯	27	2016-04-05 16:25:47.274663	2016-04-05 16:25:47.274663
5	<p>推薦以下學習資源給妳參考：</p><p>學習資源名稱：Gene Bellinger的系統思考</p><p>學習資源簡介：</p><p>Systems Thinking World was established by and for those who believe a systemic perspective provides the best foundation for creating effective approaches for dealing with challenges and shaping a better tomorrow. Our purpose is to surface systemic relationships and foster interactions intended to promote a deeper understanding of those relationships and their implications as a basis for insights and more effective action. We invite you to watch the following video to get a better sense of our current endeavors to understand relationships and their implications.</p><p>網址：</p><p><a href="http://www.systemswiki.org/index.php?title=Main_Page" target="_blank">http://www.systemswiki.org/index.php?title=Main_Page</a><br></p>	李國光	8	2016-04-07 06:27:50.828672	2016-04-07 06:27:50.828672
4	<p>老師覺得研究歷程管理提供18階段的預設值很好，如此學生才會知道研究工作為何。此外，留言板的功能從純文字修改成文字編輯器，是很棒的改善！</p>	李國光	27	2016-04-07 03:35:18.119881	2016-04-08 01:32:35.773466
7	<p>老師在系統分析與設計的課，將案例系統的文件用Cmap呈現：</p><p><a href="http://140.118.9.79/classm/classm.html">http://140.118.9.79/classm/classm.html</a><br></p>	李國光	10	2016-04-08 01:43:19.42309	2016-04-08 01:43:19.42309
8	<p>祖豪做好的App Inventor概念圖：</p><p><a href="http://140.118.9.79/ai/ai.html" target="_blank">http://140.118.9.79/ai/ai.html</a></p>	李國光	11	2016-04-08 01:45:53.695529	2016-04-08 01:45:53.695529
9	<p>做成Cmap，確實比較能呈現論文重點、脈絡，自己在論文研讀的吸收上也比較好。</p>	李國光	18	2016-04-08 02:00:14.475537	2016-04-08 02:00:14.475537
10	<p>l參考的英文論文寫作</p>  <p>⁰Ch2 文獻探討</p>  <p>⁰Ch3 個案方法</p>  <p>⁰Ch4 Proposed Model</p>  <p>⁰Ch5 Conclusion</p>  <p>以經寄信給老師要檔案了</p>	蘭佳霖	40	2016-04-21 08:16:48.874785	2016-04-21 08:16:48.874785
11	<p>讚</p>	張祖豪	55	2016-05-19 05:36:43.813766	2016-05-19 05:36:43.813766
\.


--
-- Name: note_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('note_comments_id_seq', 11, true);


--
-- Data for Name: notes; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY notes (id, title, category, content, created_at, updated_at, final_content, user_id, published) FROM stdin;
4	0302Meeting-長庚核子醫學科研究計畫	\N	<p>測試了Data-set對Asymmetry、Normal、Severe三種Templates比對的結果，得到以下結果:</p><ol><li>Normal的比對準確率為60%、誤判20%、無法判斷20%</li><li>Asymmetry比對準確率為50%、誤判20%、無法判斷30%</li><li>Severe的比對準確率為20%、誤判30%、無法判斷20%</li></ol><p>以上結果，得到結論為:</p><ol><li>考量Asymmetry可能有鏡射要素導致誤判或無法判斷，之後將測試鏡射的影響程度</li><li>目前以人工判斷結果是否準確，未來測試只計算ROI Mask內的數值，達到自動化</li><li>為增加準確度，考慮以Normal Template做巢狀檢測，檢測為非Normal後再檢測Asymmetry、Severe比對</li><li>目前已reslice的Template做比對，未來幾周將測試以原始Template做比對</li></ol><ul><li></li></ul>	2016-03-03 05:57:45.041993	2016-03-03 05:57:45.041993	<ol><li>60%準確率偏低，至少要增加到80%<span></span></li><li>斟酌時間安排，盡快寫出研究方法和結果交給長庚完成論文，參加11月的研討會</li></ol>	8	\N
6	2015-3-11 Meeting	\N	<p>主要是Demo平台的功能。</p><p>將全站的功能瀏覽一遍，以檢視有沒有問題</p>	2016-03-11 00:00:00	2016-03-23 10:19:43.952442	<p>在Demo過程中，有些功能的設計被老師challenge。</p><p>像是為什麼目前的版本是「畢業學長姐的足跡探索」，而沒有同儕的足跡？</p><p>我原本的想法是：學長姐的足跡是完整的</p><p>但老師的想法是認為：以知識管理、知識分享的角度，很難去忽略「同儕」這個關鍵。</p><p>若我選擇畢業學長姐才能進行知識分享，邏輯上會是矛盾的。除非我能提出更好的說法，證明這樣的功能設計是有理由的，不然很難叫大家信服。</p><p>另外，規劃里程碑的功能，有沒有提醒機制呢？</p><p>學習資源分享還是有錯誤的。(連結無法新增。)</p><p>註冊➔認識實驗室➔看「畢業生」</p><p style="margin-left: 20px;">                        ➔<span class="redactor-invisible-space">不能看「同儕」（要改成可以看同儕的歷程、範本與題目）</span></p><p><br></p>	1	t
1	系統分析與設計	\N	<p><span></span>個<strong>人研究歷程管理平台</strong><br>使用情境</p><p style="margin-left: 20px;" rel="margin-left: 20px;"><span></span>收到入學通知後，學生即開始他的研究生歷程，本平台透過展示每間實驗室近三年學長姐所發表的論文題目、關鍵字，幫助尚未選擇指導教授的學生能夠透過題目及關鍵字來激發其對研究室的認識以及對研究領域的初次探索。<br>註冊平台後，學生可以使用研究行事曆設定研究所各階段的目標進度及完成時間，並開始安部就班的完成研究。<br>在不同階段學生透過平台記錄閱讀論文時筆記及所閱讀過的論文清單、並在與指導教授討論(Meeting)後留下反思回饋與結論，作為研究歷程的足跡。<br>學生也可以在研究足跡參考中，參考學長姐的研究行事曆的目標設定、研究足跡以及最後及提交的論文及口試投影片作為研究參考。</p><p><span></span><br>1_系統平台介紹(各功能簡介)</p><p style="margin-left: 20px;" rel="margin-left: 20px;"><span></span>•研究室研究領域介紹：各研究室的研究領域並不相同，您可以在研究室研究領域介紹，參考各實驗室學長姐曾做過的論文主題，進而瞭解自己是否想朝這領域進行相關研究。<br>•建立您的研究歷程：進入到研究所後你是否期待自己能夠如期畢業？</p><p><span></span>2_實驗室研究領域介紹<br>•以資管系甲、乙、丙三組分類，做介紹。<br>•乙組為例：企業系統與管理研究群<br>•策略管理資訊系統實驗室<br>•數位化賦能研究<br>•軟體工程與管理實驗室<br>•管理資訊系統實驗室<br>•電子化企業與供應鏈管理實驗室<br>•資訊系統與創新實驗室<br><br>3_我的研究歷程<br>•目標：使學生能夠設定研究階段里程碑，並可以修改已建立的里程碑。<br>•前提：須為系統會員方可建立。<br><br>•4_研究足跡紀錄<br>•目標：使用時機在於鼓勵學生記錄下每次與指導教授討論問文的過程，包含討論前所閱讀的論文名稱、討論過程的筆記、與討論時使用的報告檔案<br>•前提：須為系統會員方可建立。<br><br><br>•5_研究足跡參考<br><br>•6_我的論文題目<br></p><p><span></span></p>	2016-03-03 03:04:51.699731	2016-03-17 03:19:53.207311	<p><img src="/uploads/redactor_image/image/1/2016-01-21_10.54.11.jpg" style="width: 338px; height: 600px;" width="338" height="600"></p>	1	t
7	2016-3-17 平台功能新增與修正	\N	<p>本次進度：</p><ol><li>每篇筆記都可以設定是不是要公開分享，讓其他同學在足跡參考的地方可以瀏覽到已公開的筆記，並且使用Disqus的留言機制使用者可以針對公開的文章留言</li><li>同理，論文題目發想也可以設定是否公開</li><li>研究歷程規劃新增「是否完成目標」的欄位，讓使用者勾選</li><li>在個人資料中，系統會提醒以下事件：<ol><li>目前的任務預計完成的日期</li><li>有幾篇尚未填寫反思內容的筆記</li><li>目前發想的論文題目數量</li></ol></li><li>認識研究室：目前完成資管系研究室的簡介與近三年論文</li></ol><p>後臺部分：</p><ol><li>確認所有欄位都能正常的新增、修改、刪除</li><li>後臺首頁會提醒管理者目前有多少學習資源還未審核通過</li></ol>	2016-03-17 07:20:07.043875	2016-03-23 06:44:36.243629	<ol><li>留言板部分不希望有二次登入，資料管理者可以掌握。因為留言版也是反思效應的一環。</li><li>正式測試前，各實驗室（測試）的資料都要備齊，設計部份（例如：研究室照片）。<br>我們自己研究室的學生為核心的測試，測試後的回饋應記錄。<br>問題發現後將意見區分為三階段做修改：<ol><li>正式試用一定要有的功能</li><li>口試後要修改的功能</li><li>以後學弟妹接續研究</li></ol></li><li>正式發佈邀請試用者時間：四月初</li></ol><p><img src="/uploads/redactor_image/image/3/IMAG7982.jpeg" width="422" height="422" style="width: 422px; height: 422px;"></p>	1	t
56	2016/05/20	\N	<p>codecademy:</p><p>HTML&CSS 課程完成</p><p>JavaScript 課程完成</p>	2016-05-20 00:00:00	2016-05-20 08:10:45.214566	<p>Joomla 佈景模組探索 ("主題" 模組)</p><p>JavaScript 根據codecademy Unit單元 </p><p>用<strong>概念圖</strong>整理個<strong>單元重點</strong>及<strong>困難點</strong></p><p><strong>紀錄學習者的歷程、模式、步驟、架構</strong></p><p>實驗組、對照組 比較學習效果</p>	7	t
5	2016/03/04	\N	<p>2016/02/29</p><p>運用知識地圖於數位學習教材設計之研究(2009/01/01)</p><p>淡江大學 資管系 蕭瑞祥;謝明釗 資訊管理學報 第十六卷第一期</p><p>知識地圖能使學習者更容易了解課程章節間複雜概念的連結關係，</p><p>改善過於條列式、缺乏統整性的教材設計等，因此能有效提升學習績效。</p><p>方法→以知識地圖呈現之教材對照現有網際網路相同內容之瀏覽式教材</p><p>結果→知識地圖式教材呈現方式確實能顯著提升學習成績與學習滿意度</p><p><br></p>	2016-03-09 10:18:06.081943	2016-03-18 02:18:23.99967	<p>SA開發設計論</p><p>鎖定開發程式類的專題</p><p>a.web b.App</p><p>a.Java b.C</p><p>運用知識地圖去整理作品</p><p>因:約乏資源整合系統</p><p>果:帶給專題生資源的方向</p><p>-------------------------------------</p><p>老師:</p><p>作品有影音、圖像，牽涉到表達方式</p><p>介面及運作方式，部一定要真的模擬，可以利用影片呈現</p><p>讓專題知識動態化</p><p>Novak 知識地圖的作者，理論可以引用</p><p><br></p>	7	t
9	2014-12-01 	\N	<p>論文題目的發想：個人學習書櫃管理系統</p><p>參考的論文是國立臺灣師範大學資訊教育研究所碩士論文「Moodle平台上目標導向線索對學童自我調整行為與閱讀能力之影響<span class="redactor-invisible-space">」，他在內容中提到學生學習與閱讀行為之間的影響，如何提升國小學生網路閱讀自我調整行為與閱讀理解能力。<span class="redactor-invisible-space"></span></span></p><p><span class="redactor-invisible-space"><span class="redactor-invisible-space">其中提到「自我調整的網路學習相關研究 <span class="redactor-invisible-space">」</span></span></span></p><p>考慮結合Moodle 網路學習平台於個人學習書櫃管理系統</p><p>➔模組較適合管理課程的互動，而非個人學習管理</p><p>考慮使用族群：資管系學士至博士班學生（含在職專班）</p><p>書櫃基本功能：登入登出/新增、查詢書目/</p><p>書櫃特殊功能：</p><p>自行為書建立標籤、等級</p><p>結合論文系統自動推薦可閱讀文章</p>	2014-12-01 00:00:00	2016-03-23 10:20:09.082224		1	t
10	2016/03/11	\N	<p>資訊管理學報</p><p>以概念圖方法探討網路群組學習者的知識建構 2015/0101</p><p>藉由觀察討論的過程，發掘出成員如何建構知識，以探討學習者在討論互動過程中的行為模式。</p><p>建議學除了維持學習者對議題的「階層」及「關係」的討論技巧，並鼓勵學習者對發展或練習使用概念關係連結與舉例的技巧。</p><p><span></span>網路群組學習的方式並沒有促進建構的過程。</p><p>日後研究如何提升網路學習者之學習成效。</p><p>概念圖不僅可當成一種學習評量的工具，亦可視為一種學習的策略。</p><p>教學者、學習者藉由不斷的檢討、反省檢視彼此的知識建構過程，提升自己的思考能力。</p>	2016-03-11 00:00:00	2016-03-23 12:34:32.703713	<p>整理核心論文概念圖→可視覺化顏色</p><p>展示系統分析也是知識的表現</p><p>可以試著建構自身專題當範例(個案)</p><p>ex.程式教學、概念圖呈現案例</p><p>佈署→由淺而深，由小而大 ★版本</p><p>可以用什麼方式編排呈現!!</p><p>理論、經驗、SA開發方法(生命週期)</p><p>如何對應教材?</p><p>個案對應part</p><p>希望學生有雛型系統</p>	7	t
11	2016/03/18	\N	<p>App Inventor概念圖製作</p>	2016-03-18 00:00:00	2016-03-23 12:48:44.23403	<p>App Inventor概念圖製作</p>	7	t
8	3/18 Meeting筆記	\N	<p>CmapTools呈現：企業實習與就業力及自我效能關聯性之探討-以參與「大專畢業生實習方案」的雇主與實習生為對象(待補網址)</p><p>InsightMaker模擬基底：agent based simulation<br></p><p><br></p>	2016-03-18 03:23:32	2016-06-03 03:14:12.080385	<p>將劉佩如學姊的系統放在InsightMaker上面run</p>	3	t
12	生涯發展	\N	<p><a name="_Toc330158875">Super</a>所說：「生涯是生活裡各種事件的演進方向與歷程，統合個人一生中各種職業和生活角色，由此表現出個人獨特的自我發展組型」（藍茜茹，2011），原文為「the course of events which constitutes a life; the sequence of occupationsand other life roles which combine to express one’s commitment towork in his or her total pattern of self-development」(Chen,1998)。</p>  <p>在生涯發展的歷程中，個人與社會不斷的交互影響，最後透過自我概念去居間調節，造就不同的生涯角色(吳芝儀，2000)，而在Super的發展論中，不同的生涯階段有不同的發展任務，若能夠及早掌握，對於下一階段的發展將會有所幫助；反之，在前一階段中遭遇阻礙，而導致未能完成任務，那麼很有可能會影響到該階段的正常發展(Herr & Cramer , 1992/1999)。</p>  生涯發展通常被視為與工作有關的個人成長、學習和發展歷程，學者專家對於生涯發展歷程有不同的年齡劃分方式。<p><a name="_Toc330158877"><br></a></p><p><br></p>	2012-02-16 00:00:00	2016-03-24 03:36:36.428072	<p>總體而言，大專學生的生涯發展任務主要落在探索、聚焦、選擇、準備，「探索」主要是在做自我探索與職業的探索，自我探索包括瞭解個人的興趣、人格特質、價值觀、技能等，而職業探索包含職業的工作內容與知識技能的要求、職場環境的資訊蒐集等，「聚焦」是將現實納入職業選擇的考量，衡量自己適任的工作領域，把職業選擇的範圍縮減，並透過活動進行職業試探，「選擇」是對於特定的工作或生涯領域做出承諾，並將此做為生涯發展的目標，「準備」是培養自我的能力為踏入職場預先做準備，包含知識的學習與專業技能的訓練<span class="redactor-invisible-space">。</span></p>	16	t
13	生涯未定向	\N	<p>Crites(1969)定義生涯未定向為「個體沒有選擇的能力，或將自己投入於特定的行動，以準備進入一項特定的教育或職業領域」（吳芝儀，2000），也就是個體尚未對生涯做出明確的決定，文獻中常以「生涯未定向(career undecidedness)」或「生涯不確定(career indecision)」兩個名詞指稱，高先瑩（2005）針對生涯未定向的相關名詞加以解釋，認為「undecieded」、「undecision」指的是個體尚未做成決定，而「indecisive」、「indecision」則是有猶豫不決、優柔寡斷的意思，並以此加以區分，但在多數論文中「生涯未定向」和「生涯不確定」具有相同的含義。</p><p><a name="_Toc330909884"></a><a name="_Toc330882506"></a><a name="_Toc330284553"></a><a name="_Toc330177658"></a><a name="_Toc330160742">2.2.1</a>生涯未定向的影響</p><p>Crites於1969年提出生涯未定向的定義後，學者專家延續Crites的研究以不同的觀點去探討並對此提出各種分類方法，Slaney(1988)整理1930至1980年代的文獻發現這段時間的研究以二分法的方式將生涯區分為「生涯定向(decided)」及「生涯未定向(undecided)」，且將生涯未定向視為一種人格問題或缺陷，Hornak & Gillingham(1980)更將此看作一種自我挫敗，可見生涯未定向對於個體生涯發展的重大影響(溫嬛椿，2009)。</p><p><a name="_Toc330909885"></a><a name="_Toc330882507"></a><a name="_Toc330284554"></a><a name="_Toc330177659"></a><a name="_Toc330160743">2.2.2</a>生涯未定向與已定向的區別方式 </p><p> 對於生涯未定向和已定向，學者專家的看法隨著時間的演變也有所變化，Slaney(1988)年整理1930至1980生涯未定向的相關文獻，發現此年代的學者認為生涯定向和未定向為二分法，且指出生涯未定向的人容易有焦慮、退縮、害怕成功、低自尊、學業成就差、生涯成熟度低的狀況，而Gordon(1998)年整理1977至1996年共十五篇的生涯決定的研究，發現生涯決定至生涯未決定之間是一連續體，可細分為非常確定(very decided)、確定(somewhat decided)、不穩定確定(unstable decided)、猶豫的不確定(tentatively undecided)、發展中的不確定(development undecided)、嚴重的不確定(seriously undecided)、長期的不確定(chronically indecision) (溫嬛椿，2009)，本研究採用Gordon整理後的提出的解釋，認為生涯未定向與已定向是一個連續的狀態，個體在這一個連續的狀態中不斷改變，即使做出非常確定的決策後亦有可能再次產生變動，回到猶疑的狀態。<span class="redactor-invisible-space"></span><br></p>	2012-03-01 00:00:00	2016-03-24 03:36:50.557024	<p>統合以上文獻，                                                      生涯未定向的產生因素通常為(1)個體對於自我的正確瞭解不足。(2)對於職涯環境的瞭解不足。(3)個體具有依賴性，傾向依賴他人為自己做決策。(4)尚未發展出生涯決策的技巧，導致生涯決定上的困難。(5)人格特質具有普遍性的猶豫，本研究將前四項容易造成生涯未定向的因子列為研究欲解決的問題，第五項攸關人格特質的部分，屬於「生涯猶豫」應由專業的諮商人員加以輔導，不列入研究的範圍中</p>	16	t
14	職涯輔導	\N	<p><a name="_Toc330909888"></a><a name="_Toc330882511"></a><a name="_Toc330284558"></a><a name="_Toc330177662">2.3.1</a>職涯輔導  職涯輔導是一個長時間的歷程，攸關過去、現在與未來，過去的個人經驗與先天遺傳成就現在獨一無二的自我，而當下的生涯規劃與決策又將嚴重影響未來的生涯發展，在動態的人生歷程中，個體會透過不斷認識、試探、準備與再適應，這四個階段動態的創建未來(林幸台，1990)</p><p><img src="/uploads/redactor_image/image/4/9909206-1.PNG"><span class="redactor-invisible-space"><br></span></p><p><span class="redactor-invisible-space">職涯輔導(career guidance)是六十年代後起的產物，在這之前由於職業的型態較為穩定，工作機會與選擇範圍較窄，對於職業的觀念僅於謀生工具，主張人與事的配合，也就是所謂的「職業輔導」(vocational guidance)，以職業為核心，協助個體選擇職業、準備職業、安置職業以至於就業後的發展與適應；職涯輔導(career guidance)以整體的生涯發展為主，協助個體進行自我了解、自我接受及自我發展，建立統整而適切的自我概念，並將此轉化為生涯決策與生活方式，藉由角色的行為同時滿足個人與社會的需要(林幸台，1990)<span class="redactor-invisible-space"><br></span></span></p>	2012-03-09 00:00:00	2016-03-24 03:37:08.824837	<p>本研究主要鎖定大專學生的探索階段，引導學生進行職業探索與規劃，根據報告中指出學校所提供多項職涯輔導服務中，學生最常使用的服務就是「諮詢就讀科系的可能出路」，可見學生對於目前所就讀的科系的未來職涯發展，存在許多疑問尚待釐清。學校時常透過企業參訪、畢業校友分享講座等方式，幫助學生更瞭解未來的出路，但能夠涉及的範圍較為侷限，鎖定於單一特定的公司或工作領域之上，有鑑於此，本研究將系所培育目標相關資訊納入，藉以協助學生在探求職涯方向的時候，能夠預先掌握職業與所學的關聯，並透過職業課程知識的關聯，引導進行職業準備與擬訂修課計畫。</p>	16	t
15	人格特質	\N	<p>Burger(2000)認為人格(Personality)是「源自個體內一致的行為模式與內在歷程。」人格代表一種使個人有別於他人的持久特性(Pervin,1990)，是一種穩定的特性與傾向，可以用來預測短期的行為模式，以及辨別人和人之間的差異與相似性(藍茜茹，2011)，有鑑於此，Katherine Briggs與Isabel Briggs Myers以觀察的方式去發展一套行為的分類方法，也就是麥布二氏心理類型量表(Myers-Briggs Type Indicator, MBTI)。</p>    <p><a name="_Toc330909892"></a><a name="_Toc330882515"></a><a name="_Toc330284579">2.4.1 Myers-Briggs Type Indicator</a></p>  麥布二氏心理類型量表(Myers-Briggs Type Indicator, MBTI) 由Katherine Briggs與Isabel Briggs Myers這對母女依據Jung著作《Psychological Types》中所闡述的概念編製而成，以期讓Jung的人格理論更容易於瞭解，並在生活中加以應用(楊淑晴，1999)，而Katherine Briggs並不是心理學家，她是一個敏銳的觀察家，藉由觀察人類的行為發展出一套行為的分類方法<p><br></p><p>The Keirsey Temperament Sorter是麥布二氏心理類型的延伸，已被翻譯成十八種語言，並在人格測量上廣泛運用，心理學家Keirsey將十六型人格加以歸納命名，不同類型皆有該類型的生命主題，全量表共70題 (吳芝儀，2000)，如表2-10所示。</p><p>本研究之MBTI職業人格測驗，採用柯賽人格氣質量表(The Keirsey Temperament Sorter)測驗共七十題，每項試題皆有A及B兩個選項，受測者依據個人平常表現，選擇其一符合度較高者，試題中隱含指標的判定，舉例在聚會中你通常A和很多人交談包含陌生人 B只和少數認識的人交談，此試題主要在檢測個人屬於內省式或外向式，而此這兩者是互斥的。透過測驗反覆的檢測，依據四項指標分列為八種極端類型E外向式，I內省式，S感官式，N直覺式，T思考式， F感覺式，P判斷式，J覺察式 (吳芝儀，2000)。</p>	2012-03-16 00:00:00	2016-03-24 03:38:25.397365		16	t
29	2015.12.16_Meeting	\N	<p>司徒達賢教授論壇 - 政治大學企管系講座教授【如何提升師徒制的知能傳承效果　－　2010刊載於《今周刊》】</p><p>師徒制，簡言之，即是<strong>徒弟先觀察師父怎麼做，接著在師父的指導下，慢慢開始獨立作業</strong>。</p><p>然後師父再針對徒弟的辦事方法或解決問題的思維邏輯，提出指正的意見。</p><p>淺在問題：</p><p>Ａ　師傅的知識未必豐富、正確，可能會傳授錯誤的觀念、道理或作法給徒弟</p><p>Ｂ　並非師傅都可以掌握教學、示範、指出錯誤、解說的技巧</p><p>Ｃ　師傅不見得會把自己的知識分享</p><p>解決方法：</p><p>Ａ　列為必要工作，並給予獎懲</p><p>Ｂ　高位者定期檢視</p><p>Ｃ　會教導的師傅傳授教學知識</p><p>Ｄ　以個案方式實現公開的師徒制</p><p>----------------------------------------------------------------------------------------------------------------------------------------------------------------------------</p><p>再現師徒制：OJT的混成學習設計－陳姿伶　國家文官學院　《T&D 飛訊第 172 期》</p><p>摘要：以師徒制加以闡述，重點在適合新世代職場人學習者的師徒制變形，如：</p><p><strong>\t小組師徒制：一對多，藉由師傅提問分享經驗或回櫃徒弟們的想法，激發徒弟</strong></p><p><strong>\t同儕師徒制：同事同學間的互相交流</strong></p><p><strong>\t反向師徒制：幼小者當師傅教導長者新的技術或科技等跨時代的知識</strong></p><p><strong>\t情境師徒制：短暫、立即解決問題導向</strong></p><p><strong>\t匿名師徒制：透過心理測驗找尋溝通管道，通常在網路上進行活動</strong></p><p><strong>\t主題師徒制：透過對話知識分享，針對某議題所學來促成合作學習</strong></p><p><strong>\t開放師徒制：自行絕對師傅，通常運用在資訊科技領域</strong></p><p><br></p><p>面對新世代的學徒，除了要導入網路與資訊科技加以混成運用外，學習思維上也要賦予學習者較多的自主、連結、互動、多元及開放性原則，強調「學即是用、用即是學｣，與 Emelo(2013) 倡導的「明日學習之道」不謀而合，主張學習應包含動態性、行動性、績效導向、彈性的和全球的等特性。</p>	2015-12-16 00:00:00	2016-04-07 15:27:08.546577		9	t
16	學習成就	\N	<p>「學習」是個體經由練習或經驗，使其行為或行為潛能產生永久的改變的歷程，而「成就」是個體的先天的遺傳基礎，加上後天環境的努力學習的結果，使其在某方面所表現的實際能力 (張春興，1996)，不論是先天或後天，學習成就代表的是目前其對於特定方面的能力狀況，可以解此瞭解其能力的分布情形。</p><p>張錦鶴(2002)認為「學業成就」是學習者經由一段時間的學習後，所得到的學習成果，一般以學生一學期的成績為代表。王財印(2000)整理學者專家的研究，常見的學業成就的評量指標包含(1)標準化測驗分數 (2)教師自行編製的學科成就測驗 (3)相對的學業成績。本研究採用的「學業成就」為授課教師針對學生的學習表現給予的課程等第成績，並透過瞭解學生在課程科目的能力表現情形，推薦其適合的職業工作項目。</p><p><br></p><p>特質因素論</p><p>「特質」可以經由專業的測驗去得知個人的特性，而「因素」則是成功的工作表現所需的重要特性，Parsons(1909)選擇職業首要評估自我的特質，認為每個人都應該要對自我有清楚的了解，並瞭解職業的成功需求和條件及相關因素，進一步理解自我和職業的關係，第一步驟：自我瞭解，包含態度、能力、興趣、企圖心、資源限制等；第二步驟：獲得有關工作方面的資訊，包含職業成功需求與條件、薪資、機會點、未來展望、優缺點；第三步驟：整合個人和工作領域的資訊，理解兩者之間的相互關係，特質因素論強調測驗和量表的使用，以獲取相關的資訊(Sharf,1998)。本研究以特質因素論為基礎，採用麥布二氏心理類型量表以協助學生進行自我瞭解，並與職業資訊整合，以提供學生作為職涯規畫之參考。</p>	2012-03-23 00:00:00	2016-03-24 03:39:49.284967	<p>從生涯發展的角度來看，大專學生的生涯發展任務落在探索、聚焦、選擇與準備，在這個時期透過探索活動，將自己與職業的需求加以媒合，並開始把現實環境條件納入職業選擇的考量，將職業選擇的範圍縮小進行試探，接著能夠選定特定的職業或生涯目標做出承諾，此時已從未定向邁向定向的生涯，著手進行相關準備活動，迎接未來。本研究以探索、聚焦、選擇、準備為系統規劃的開發重點，並以林幸台(1990)生涯規劃三要素：知己、知彼、抉擇與行動做為系統發展的概念架構。</p><p>而大專學生普遍遇到的生涯未定向之問題，是為本研究欲探求並引導解決的目標，從研究報告顯示超過半數的大學生認為自己是生涯未定向的，而造成生涯未定向的成因主要包含對於自我的瞭解不足、對於職業環境的瞭解不足、依賴他人為自己做決策、尚未發展出生涯決策技巧或者是人格特質具有普遍性的猶豫，本研究欲以前四項成為作為系統欲引導解決的目標，協助學生瞭解自我與環境並培養生涯決策技巧，唯第五項人格特質的部分，屬於諮商輔導的部分，不列屬於本研究的範圍。</p><p>確立研究的目標後，以職涯輔導的概念為系統建置的基礎，確立系統的發展核心概念為協助學生進行生涯發展，而非只是「人事配合」的傳統職業輔導，更強調的是透過學生的自我探求與環境瞭解多方的配合，並統整目前校園中的職涯輔導服務項目，瞭解學生對於職涯輔導的需求，其中以諮詢就讀科系的可能出路的比例為最高，顯示學生對於未來的職業發展的重視與資訊的不足，因此，本研究其以與學校系所的培育目標結合，幫助學生了解學校教育與職業的關聯。</p>	16	t
18	2016.03.25_Meeting	\N	<p><strong>將過去看過的論文《個人顧問團》重點製作成概念圖</strong>，</p><p>個人顧問團核心理論：</p><p>1.個人嚮導。</p><p style="margin-left: 20px;">過去曾支持過自己的人，但是目前沒有或只有少數的互動。雙方關係在早期比較親近，現在主要只是發揮榜樣的角色。</p><p>2.個人顧問。</p><p style="margin-left: 20px;">私生活上常跟自己互動的人，功能是抒發情緒或給予建議。</p><p>3.全方位導師。</p><p style="margin-left: 20px;">提供全面的公私生活支持，兩人關係親密且互動頻繁。</p><p>4.工作顧問。</p><p style="margin-left: 20px;">雙方互動頻繁，他們所提供的支持主要跟工作有關，大部份屬引導性質。</p><p>5.工作嚮導。</p><p style="margin-left: 20px;">雙方的互動次數有限，通常有特殊事情發生（例如，重大職場變動），需要他們幫忙時，才會有互動。</p><p>6.模範榜樣。</p><p style="margin-left: 20px;">推自己往前的重要動力，雙方關係不需要非常親密，甚至不需要是直接的，有可能雙方根本沒有關係，只是一個努力的目標。</p><p>--------------------------------------------------------------------------------------------------------------------------------------------------------------</p><p>概念圖產出：<a href="http://140.118.109.127/research/%E5%80%8B%E4%BA%BA%E9%A1%A7%E5%95%8F%E5%9C%98.html" target="_blank">個人顧問團_概念圖</a></p>	2016-03-25 00:00:00	2016-03-25 06:12:02.914345	<p>之前在讀這篇論文的時候只能抓住大方向，了解個人顧問團所需成員及腳色功能，</p><p>老師建議製作 CMAP ，確實幫助我對於這篇論文的掌握更加明確，</p><p>從中也可以找到跟我預期有關的內容文獻。</p>	9	t
19	2015.05.14	\N	<p>學生論文學習策略管理系統建置之研究</p><ol><li>自我調節學習：認知、動機、自我管理</li><li>加上電腦的輔助學習</li><li>人格特質＋自我調節學習</li><li>四種目標：工作選擇➔興趣與工作目標➔學習興趣➔精選目標<br>就種學習策略：價值、組織、詳細</li><li>個人思考風格：環境型智力、經驗型智力</li><li>組內學習：學習同伴（近側發展區）</li></ol>	2015-05-14 00:00:00	2016-03-28 03:10:13.980933	<p><img src="/uploads/redactor_image/image/5/IMAG5763.jpeg"></p>	1	t
20	2015.05.28	\N		2015-05-28 00:00:00	2016-03-28 03:17:37.487015	<ol><li>研究方法：系統開發法需要配合其他方法為複合方式</li><li>Readmine 用在專案管理。本身是用Ruby on rails 開發的</li></ol>	1	t
21	2015.06.11	\N	<ol><li>報告文獻：研究的初步。\r\n<ol><li>自我調節學習，winne 四階段</li><li>目標選定</li><li>知識管理</li><li>個人知識管理</li><li>自我學習量表</li></ol></li><li>系統架構：專案管理、論文工作管理、學習能力檢視</li></ol>	2015-06-11 00:00:00	2016-03-28 03:22:40.550471		1	t
22	2015.06.24	\N	<ol><li>系統架構<br><ol><li>首頁</li><li>研究工作：可觀看前人的（學長姐的）里程碑、研究工作安排、提醒要完成、可回頭修改、可設定其他研究工作。</li><li>閱讀筆記：留言、看別人的筆記、設標題、設公開分享、可插入連結（概念圖連結）</li><li>研究能力：自我調節學習量表、研究生能力的雷達圖</li><li>研究工具</li></ol></li><li>套裝軟體：Redmine</li></ol>	2015-06-24 00:00:00	2016-03-28 03:34:19.62254		1	t
23	2015.10.08	\N	<ol><li>系統環境設計：<ol><li>遠端主機 DigitalOcean</li><li>Nginx + Passenger</li><li>自動化部署設定</li><li>安全設定</li></ol></li><li>自我調節能力➔目標設定理論➔知識管理與分享</li><li>系統架構</li></ol>	2015-10-08 00:00:00	2016-03-28 03:46:29.875774		1	t
24	2015.11.12	\N	<ol><li>使用軟體（Mendeley + 概念圖）</li><li>測試成功模式＋深度訪談研究時間規劃</li><li>參考文獻</li></ol>	2015-11-12 00:00:00	2016-03-28 03:54:21.736229		1	t
25	2015.11.19	\N	<ol><li>整理文獻：個人KM + 自律學習、自我調節學習＋目標設定</li><li>自我調節都在四個模組裡</li></ol>	2015-11-19 00:00:00	2016-03-28 04:11:40.026438		1	t
26	系統分析與設計	\N		2016-03-30 00:00:00	2016-03-30 15:58:09.349448		2	t
17	2016-03-24 留言板功能與系統邀請計畫	\N	<ol><li>留言板部分後來改成自己實作完畢。</li><li>目前已邀請研究室的同學們開始使用，會在下週請他們回饋測試狀況</li><li>正式發佈邀請試用者時間：目前想法是邀請資管系同學進行測試。</li></ol>	2016-03-24 07:30:59	2016-03-31 06:36:49.035586	<p><img src="/uploads/redactor_image/image/6/IMAG8039.jpeg"></p>	1	t
27	2016.03.31 系統內部測試回饋、邀請信	\N	<ol><li>建立系統功能測試表</li><li>2016.03.30 內部測試回饋<br>預計調整介面：我的研究歷程直接展開不需要點選、註冊完成後顯示平台介紹連結、新增站內搜尋功能。<br>其他建議：研究歷程管理不需要給到18階段的預設值，改為給予大方向。但系統呈現方式目前還在考慮如何調整。</li><li>邀請信。</li></ol>	2016-03-31 00:00:00	2016-04-05 16:25:24.284186	<p>將留言版處從純文字更新成文字編輯器模式。</p><p>讓互動多了圖片上傳的功能</p>	1	t
30	2015.12.23_Meeting	\N	<p>師徒相似性對師徒功能影響之研究 - 以對偶層次觀點分析 (陳雅蒨-台科大企管所)　研究對象：企業界人士</p><p>以相似-吸引理論為核心，並以師徒對偶的層次做分析，認為師父和徒弟具有某些價值觀與人格特質的相似性時，對彼此的人際信任將有可能增加，且會對徒弟在師徒關係中所得到的師徒功能產生正相關。</p><p>相似吸引理論：認為兩個人在特性上的相似，例如人格特質、價值觀、興趣等共同點，會因相似而彼此吸引，相處上較為輕鬆易於溝通。</p><p>師徒關係追溯其來源出自荷馬史詩奧迪賽篇，尤里西斯外出旅遊爭戰期間將其孩子交給Mentor代為教育與照顧，兩人關係亦師亦友、情同父子師徒關係應提供三種功能分別是：職能發展、心理支持、腳色楷模人際信任是建立雙方高品質關係的重要基礎，品質越高，所呈現的合作、分享、互助才會是不求回報。</p><p><strong>Zey的師徒關係階段性：</strong></p><p><strong>　　教導</strong></p><p><strong>　　心理諮詢</strong></p><p><strong>　　調解</strong></p><p><strong>　　提拔</strong></p><p>經研究後結論：</p><p>1. 師徒間的相似性越高，有助於提高彼此的信任程度，且職涯發展功能與腳色模範功能越會被彰顯</p><p>2. 人際信任成正相關，表示信任度越高，徒弟越能感受到職涯發展、心理支持、腳色模範等功能</p><p>3. 人際信任在師徒關係中佔有重要性</p>	2015-12-23 00:00:00	2016-04-07 15:29:46.691655		9	t
31	2015.12.30_Meeting	\N	<p>Assembling Your Personal Board of Advisors　MITSloan Management Review　Yan Shen, Richard D. Cotton and Kathy E. Kram</p><p>在當今複雜的商業環境中，人們的導師不再是足夠的。</p><p>高階主管和管理人員需要一連串的導師和榜樣顧問，在決定性時刻，提供關鍵信息和支持。</p><p>許多研究證明導師在職業生涯和個人成長指導都是很重要的，但是全球流動性、多樣化的職場一個導師已經無法滿足需求，因此需要建立個人顧問委員會。</p><p>提出三個問題：</p><p style="margin-left: 20px;">如何將顧問劃分成類型腳色，供個人評估和配置成為個人顧問委員？</p><p style="margin-left: 20px;">個人顧問委員會成員必須具備怎樣的技能？如何建立人脈來適應個人的需求？</p><p style="margin-left: 20px;">如果個人發展需求與顧問發生衝突怎麼辦？</p><p>研究方法：</p><p style="margin-left: 20px;">第一次是64外籍專業人士和管理人員在新加坡和中國進行深度訪談的研究。</p><p style="margin-left: 20px;">第二個是由176職業生涯成就的演講誰被引導進入名人堂的運動和專業館的檔案研究有些知名人士或生命導師，可能已經去世，但是他們的精神仍然可以成為大家的導師榜樣？</p><p>個人顧問團的成員分成六大類型：</p><p style="margin-left: 20px;">1.個人嚮導。</p><p style="margin-left: 20px;">過去曾支持過自己的人，但是目前沒有或只有少數的互動。雙方關係在早期比較親近，現在主要只是發揮榜樣的角色。</p><p style="margin-left: 20px;">2.個人顧問。</p><p style="margin-left: 20px;">私生活上常跟自己互動的人，功能是抒發情緒或給予建議。</p><p style="margin-left: 20px;">3.全方位導師。</p><p style="margin-left: 20px;">提供全面的公私生活支持，兩人關係親密且互動頻繁。</p><p style="margin-left: 20px;">4.工作顧問。</p><p style="margin-left: 20px;">雙方互動頻繁，他們所提供的支持主要跟工作有關，大部份屬引導性質。</p><p style="margin-left: 20px;">5.工作嚮導。</p><p style="margin-left: 20px;">雙方的互動次數有限，通常有特殊事情發生（例如，重大職場變動），需要他們幫忙時，才會有互動。</p><p style="margin-left: 20px;">6.模範榜樣。</p><p style="margin-left: 20px;">推自己往前的重要動力，雙方關係不需要非常親密，甚至不需要是直接的，有可能雙方根本沒有關係，只是一個努力的目標。</p><p style="margin-left: 20px;"><br></p><p>驗證：</p><p>找經理人、高階主管、專業人士等進行調查訪問，發現有些被稱為顧問團成員的人，會隨著時間的不同而有不同的顧問腳色調查結果顯示，部分的發展支持的最佳來源是私人朋友，經理/主管，業務夥伴，非正式的導師和配偶/生活伴侶組織背景文化的發展會影響到個人顧問團的行程</p>	2015-12-30 00:00:00	2016-04-07 15:34:01.578439		9	t
33	2016/04/08	\N	<p>App Inventor2愛念圖教學  新增中級範例  (AB猜數字)</p><p>小幅修改呈現方式、附.aia供學習比對、新增註解</p>	2016-04-08 00:00:00	2016-04-08 03:33:55.507705	<p>新增班級活動報名系統簡易App教學概念圖</p><p>簡易資料庫教學</p>	7	t
34		\N		2014-03-12 00:00:00	2016-04-12 07:41:17.919113		18	\N
28	2016.04.08_Meeting_Complexity	\N	<p>複雜理論：</p><p>混沌現象：</p><p style="margin-left: 20px;"><strong>1.自組織：</strong></p><p style="margin-left: 20px;"><strong>處在隨時變動邊緣</strong>的混亂系統，<strong>在</strong><strong>穩定與動盪、可預測與不可預測之間</strong>找到平衡點。<em>（越南街頭）</em></p><p style="margin-left: 20px;">模式改變也能正常運作，發生的目的<strong>不侷限在特定目標或固定的律動上</strong>，因此可以自由調適改變。<em>(個人顧問團成員的更換與新增)</em></p><p style="margin-left: 20px;">一種<strong>由下而上</strong>的互動過程所突現的結果。<em>（再現師徒制-反向師徒制）</em></p><p style="margin-left: 20px;"><strong>2.分歧：</strong></p><p style="margin-left: 20px;">在分歧點上現有組織容易崩壞，新的組職模式伴隨而來，可在這個分歧點加入<strong>有價值的擾動</strong><em>（？）</em></p><p style="margin-left: 20px;"><strong>3.奇異吸子：</strong></p><p style="margin-left: 20px;">吸子是一個<strong>方程式的解</strong>，可以牽引進入的軌跡<em>（性向測驗、職涯導師）</em></p><p style="margin-left: 20px;"><strong>4.耗散結構：</strong><em>(舊選課系統 -&gt; 透過人格特質依照職業所需技能選課)</em></p><p style="margin-left: 20px;">只要能量流與物質流一消失，結構也隨著消失，特性：</p><p style="margin-left: 40px;">Ａ因本質上的不穩定，會週期性的進入遠離均衡狀態，使系統可能解散或無秩序</p><p style="margin-left: 40px;">Ｂ<strong>對稱破壞</strong>，在新環境下過去的方法不再適合或有利於系統，為了生存必須找出新的處理機制</p><p style="margin-left: 40px;">Ｃ實驗性的想法與新作業形式的適行</p><p style="margin-left: 40px;">Ｄ重新合成與構想的過程，結果會出現多元的新結構配置</p>	2016-04-07 00:00:00	2016-04-19 05:52:05.418958	<p>paper : 自組織 群體智慧 成功的關鍵因素是什麼</p><p>自組織的學習應搭配多篇文章 否則會被受限</p><p>分歧 ex: 傳產的環境 VS 店商平台 , 傳產如何轉型</p><p>奇異吸子 再多尋找誘因</p>	9	t
32	4/8 Meeting筆記	\N	<p>1.國立新竹教育大學教育心理與諮商學系─簡君倫碩士論文(2010年)大學生性格類型、生涯自我效能與生涯決定之相關研究(cmap概念圖)</p><p>2.十六種性格特徵表之區隔與其中涵義</p><p>3.MBTI職業性格測試：<a href="http://www.apesk.com/mbti/dati_tw.asp">http://www.apesk.com/mbti/dati_tw.asp</a></p>	2016-04-08 00:00:00	2016-05-13 02:55:38.45559	<p>1.十六種性格特徵表較難理解，且引用年代較遠，建議尋找<strong>現代性格量表</strong>量測，<strong>以易理解且準確</strong>的量測量表為尋找的依據。</p><p>2.將性格這個變數加入到論文的部分，但要尋找現代量表量測。</p><p>3.人格測量量表：http://wiki.mbalib.com/zh-tw/Category:%E4%BA%BA%E6%A0%BC%E6%B5%8B%E8%AF%95%E9%87%8F%E8%A1%A8</p>	3	t
35	目標導向理論、目標設定理論、目標管理理論定義差異	\N	<p>目標設定理論：</p><p>美國馬利蘭大學管理學兼心理學教授愛德溫·洛克(Edwin A. Locke)和休斯在研究中發現，外來的刺激（如獎勵、工作反饋、監督的壓力）都是通過目標來影響動機的。</p><p>目標能引導活動指向與目標有關的行為，使人們根據難度的大小來調整努力的程度，並影響行為的持久性。於是，在一系列科學研究的基礎上，他於1967年最先提出“目標設定理論”（Goal Setting Theory )，認為目標本身就具有激勵作用，目標能把人的需要轉變為動機，使人們的行為朝著一定的方向努力，並將自己的行為結果與既定的目標相對照，及時進行調整和修正，從而能實現目標。</p><p>這種使需要轉化為動機，再由動機支配行動以達成目標的過程就是目標激勵。目標激勵的效果受目標本身的性質和周圍變數的影響。</p><p><br></p><p>目標導向理論：</p><p>所謂學習動機目標導向指的是：學習者的學習動機因目標的性質而有所不同；因為不同的目標促使個體採取不同的動機信念與相關的行為表現，這就是目標導向(goal orientation)概念的由來；亦即類似的成就表現或者失敗，對個人而言，其背後的動機與所代表的意義可能不盡相同。</p><p>目標導向理論(goal orientation theory)又稱為目標理論(goal theory)，或稱為成就目標理論(achievement goal theory)。原來目標導向理論是發展於教育心理學中，主要用以解釋兒童在學校中學習和表現的情況。</p><p>目標導向理論的中心思想，是認為人們會整合自己的某種信念，並據此信念逐步完成個人的學習(Ames, 1992)。簡言之，學生同樣是努力向學，為的是增進知識技能，或是想獲得他人的認同與讚賞，背後可能有不同的目標驅使，不同的目標反映一個人判斷是否成功的標準，不同判斷標準會進而影響其他動機方面的信念，包括歸因、情感、實際表現和行為等。</p>	2016-04-12 07:59:16.473505	2016-04-12 07:59:16.473505		1	t
36	Meeting-	\N	<p>進度報告</p><p>題目名稱收斂為:畢業生流向調查與分析系統之研究</p>	2016-04-07 00:00:00	2016-04-14 05:55:55.099992		18	\N
37	2016/04/15	\N	<p>完成上周預計完成工作:</p><p>App Inventor2的</p><p>1.簡易php讀寫</p><p>2.簡易連接MySQL</p><p>目前概念圖已完成，App可以模擬，</p><p>剩下code下註解並截圖附註在概念圖中。</p>	2016-04-15 00:00:00	2016-04-14 16:58:34.080697	<p>之前完成的概念圖有修正錯誤</p>	7	t
38	4/15進度	\N	<p>1.大五人格測驗(2015新版):<a href="http://meetype.com/bigfive-test">http://meetype.com/bigfive-test</a></p><p>2.大學生核心就業素養之探究─簡瑋成／國立暨南國際大學教育政策與行政學系碩士班研究生 概念圖</p><p>此篇論文連結：<a href="http://study.naer.edu.tw/04search/report01.asp?DID=vol028_04_09">http://study.naer.edu.tw/04search/report01.asp?DID...</a></p>	2016-04-15 00:00:00	2016-04-15 04:12:54.548806		3	t
40	2016/04/21 Meeting	\N	<p>2016/04/20--sharing</p><p>l身為RD經理每年都會有一場給Sr. RD--如何面試新人進入該團隊的技巧sharing(主要是得確認這位新人能在內部存活良久)</p>  <p>l請來一位假裝被interview</p>  <p>l按照年資挑選被培訓的Sr. RD</p>  <p>l每位會申請調動到別的team的RD幾乎都是待3-5年以上</p>  <p>l調去別team的RD說:通常在趨勢待久了，會兩三年換個team學習，然後中午聚餐就很容易分別跟以前的同事以及現在的team member一起聚餐，所以最資深的RD可能一個禮拜飯局會很多。</p>	2016-04-21 00:00:00	2016-04-21 08:16:04.681972	<p>Building Social Network人際關係網絡</p><p>|     enabled</p><p>ˇ </p><p>Agile RD HR Deployment</p>	28	t
45	2016/05/06	\N	<p>系統開發_知識分享平台</p><p>系統開發的know-how</p><p>理論依據:</p><p>知識地圖、知識表徵、知識建構、Bohn知識成長理論</p><p>系統預計功能:\r\n</p><p>1.根據現有系統，撰寫文章，分派類別\r\n</p><p>(案例程式碼、影片)\r\n</p><p>2.系統開發→系統分析介紹</p><p>3.程式語言概觀(使用者了解程式語言)</p><p>4.程式語言間優劣比較</p><p>5.適用的語言及工具(ref 系統典範)</p><p>-----------------------------------------</p><p>內容呈現方式:</p><p>文章(類別分類、影片、code)</p><p>概念圖</p>	2016-05-06 00:00:00	2016-05-06 03:13:11.166061	<p>系統開發_知識分享平台</p><p>範圍需要收斂，以XXX為例</p><p>1.可以以系上課程上做編排，配合大學部學生的程式設計課</p><p>系統開發的範圍(循序漸進)，按照程度or語言orAPI類別or系統功能</p><p>2.以Joomla為例，概念圖表徵，驗證學生知識表徵，對於Joomla的學習效果</p><p><a href="https://www.joomla.org.tw/">https://www.joomla.org.tw/</a><br></p><p><strong>知識表徵、知識學習、分享</strong></p><p><strong>用<em>概念圖</em> 程式專業表現出來，讓學生學習效果較佳</strong></p>	7	t
42	2016/04/22	\N	<p>App Inventor2概念圖分享</p><p>1.簡易php</p><p>2.簡易php連MySQL</p>	2016-04-22 00:00:00	2016-05-02 14:19:20.777973	<p>思考系統功能</p><p>選用何種撰寫or平台開發</p>	7	t
43	1978 intrinsic 原始論文	\N	<p>從原始論文看intrinsic最初的發想與運算</p>	2016-05-01 00:00:00	2016-05-03 04:43:11.756267		10	\N
44	user input	\N	<p>利用user input，提供系統更多資訊，像是similiar reflectance等等，讓系統產生更好的intrinsic</p><p>可應用於relighting跟re - texturing</p>	2016-05-08 00:00:00	2016-05-03 04:57:06.749764	<p>應比較自動與user input優劣，自動可以做到什麼程度，有input產出得intrinsic又精準到哪，去做比較，才能</p><p>決定要用自動還是user操作</p>	10	\N
41	4/22 Meeting筆記	\N	<p>1.利用wix，約略設計系統介面</p>	2016-04-22 00:00:00	2016-05-13 02:55:55.050644	<p>1.嘗試將就業力模擬放上去網頁</p><p>2.問卷內容設計完成後可以放到網頁上</p>	3	t
46	5/6 Meeting筆記	\N	<ol><li>使用Joomla架設系統平台</li></ol>	2016-05-06 00:00:00	2016-05-13 02:56:06.301602	<p>1.嘗試在網站產出問卷</p><p>2.嘗試將就業力模擬放到網站</p>	3	t
39	2016.04.15	\N	<p>經過上次開會後，為了更了解台灣教育體制下的師徒制實行方法，這周看了一篇論文：從商業倫理探討台灣產業的師徒倫理<br>該論文出處：中央大學　哲學研究所</p><p>論文摘要提到：目前國內師徒制的相關研究，皆偏重於師徒功能、績效、工作滿意度、自我認同等的實證研究，本文嘗試從教育思想與理念出發，以商業倫理的角度，為台灣產業的師徒訓練體制，提出符合台灣產業的師徒倫理規範。<span class="redactor-invisible-space">藉由整合社會契約論的理論基礎，建構出一套具備在地適用性並且符合全球性師徒倫理規範的產業師徒倫理規範<span class="redactor-invisible-space">。</span></span></p><p><span class="redactor-invisible-space"><span class="redactor-invisible-space"></span></span></p><p>研究動機提到：目前台灣所實施的相關政策（明師高徒計畫）、德國實施技職教育的做法，並針對師徒一詞作了詳細的定義。</p><p>師徒定義：</p><ol><li>師徒制（mentoring）是由經驗豐富的任職者擔任師傅的角色，帶領著徒弟以一對一的指導方式，通過一段時間的共同實務操作，使徒弟能夠充分領會師傅所擁有的專業素養並具備獨立操作能力(高俊傑、李婧 ，2011：88)。</li><li>師徒關係是資深者、較有經驗的師父（mentor）與資淺者、經驗較少的徒弟（protégé）或同儕（peer）之間一種強烈的人際互動關係，在此過程中徒弟被保護在師父羽翼中，給予教導、支持方向、職涯規劃以及個人發展，是一種複雜而且多面向的互動關係。師徒制也是一種師父與徒弟間形成的組織成員之間一種強烈工作關係，師父在組織中是很有經驗與權力之人，他可以提供給徒弟的不同的建議、輔導，並且引導徒弟走往所需的職涯發展，有良好的師徒制不但能替組織降低教育訓練的成本，更能使資訊更有效率的流通，達成組織社會化的目的（Kram, 1985；Chao, Walz, & Gardner, 1992：轉引自李昭蓉，2012）。</li></ol><p>除此之外，本篇論文還提到許多定義，完整內容將以概念圖重新詮釋。</p>	2016-04-15 00:00:00	2016-05-16 15:48:12.58432	<p>將此篇論文重點部分製作成概念圖</p><p>以便日後找關聯性所用</p>	9	t
55	2016.05.13_Meeting	\N	<p>本次研究了開發平台工具 Wordpress</p><p>之前實習時接觸過的案例 <a href="http://wordpress.ori.com.tw">http://wordpress.ori.com.tw</a> DEMO</p><p>想藉由此免費軟體實現專家經驗分享與討論區的功能項</p><p>但是因 Wordpress 的權限設定較難更改</p><p>故尚未決定是否採用</p>	2016-05-13 00:00:00	2016-05-16 16:06:05.51949	<p>Wordpress 與 joomla 的優劣比較 ?</p><p>平台開發工具不只一種 應該多摸索</p><p>依照系統功能 挑選最適合的工具</p>	9	t
52	5/13 Meeting筆記	\N	<p>1.問卷：自我效能量表、生活壓力量表、個人就業力量表</p><p>2.網站新增學涯管理的功能</p>	2016-05-13 00:00:00	2016-05-13 03:07:41.23237	<p>1.個人就業力的題數不要刪減，因為每一份量表都有經過研究驗證，若是任意刪減可能會造成研究結果不準確。</p><p>2.自我效能、生活壓力、個人就業力三者之間的影響效度為何? 找理論去驗證這三者的關係，三者的研究方法。</p><p>3.學涯管理的功能是採用專案管理的元件，可以盡量使用此元件，例如：用行事曆(日曆)去呈現每個目標的時程，不單單只用文字呈現。</p><p>4.學涯管理的功能可以用來驗證就業力模擬的準確度，例如：越願意分享的人是否就業力模擬的結果會更好。</p><p>5.此網站可以在下學期管理學課程讓大一學生使用，來進行問卷資料的收集。</p><p>6.預計2月提早畢業，1月初進行口試，預計暑假結束後系統完成！</p>	3	t
50	研究方法 - 實驗法	\N	<p>Planned Versus Actual Betting in Sequential Gambles(Journal of Marketing Research,Vol. XLVI (June 2009), 372–383<span class="redactor-invisible-space"></span>)</p><p>Anecdotal evidence indicates that in a gambling environment,consumers may end up betting more than they had initially planned. The authors assess this phenomenon in a series of three experiments, in which people are exposed to sequential and fair gambles in a two-stage process (planned and actual bets). The results show that in the planning phase, people behave conservatively, betting on average less after an anticipated loss and the same amount after an anticipated gain. However, after experiencing an actual loss in the first gamble, people bet in a subsequent gamble significantly more than they had initially planned, whereas on average, there were no observable differences from the plan after an actual gain. The reason for such asymmetry is due in part to people’s tendency to underestimate, at the planning phase of the gamble, the impact of negative emotions in betting decisions during the actual phase of the gamble.</p>	2016-05-13 02:37:52.122359	2016-05-13 02:37:52.122359		14	f
47	文獻探討-An empirical examination of continuance intention of mobile payment services	\N	<p>  •An empi<strong></strong>rical examination of continuance intention of mobile payment services  </p><p><span class="redactor-invisible-space">Thesis\r\nAbstract：</span></p><p>•本論文主要重於讓行動支付服務商知道<em>如何在取得使用者後保留使用者持續使用行動支付服務的關鍵因素</em>。</p><p>•本研究透過ＳＥＭ方程模型來做資料分析。</p><p>•結果顯示資訊服務系統：資訊服務品質是主要影響使用者滿足與否的原因。資訊品質和服務品質影響流程，信任、流程、滿足感決定持續使用行動支付服務的意願。( System quality is the main factor affecting satisfaction. Information quality and service quality affect flow. Trust, flow and satisfaction determine continuance intention of mobile payment.）</p><p><span class="redactor-invisible-space">      </span></p><p>•結果暗示服務提供商應該服務提供需要注重<strong>服務品質</strong>、資訊服務、信任為了要讓使用者持續使用行動支付系統。</p><p>Introduciton：</p><p>•和傳統支付服務和線上支付服務最大的優勢就是<em>行動支付是無所不在的</em>。</p><p>•有了行動網路和終端使用設備（mobile networks and terminals), 使用者可以在任何地方、任何時間做交易支付的動作，這可能會是讓使用者採用行動支付主要的原因之一。</p><p>•行動終端設備也有些限制，如螢幕較小、不方便的輸入方式、慢速回應等，都可能會影響使用者使用的意願。</p><p>•若使用者對服務提供商的服務不滿意，使用者容易轉向另外一間服務廠商使用行動支付服務。<br> （競爭對手多且大、轉換成本低）</p><p>•研究目的：<br> 行動支付後期採用（Post-adoption）持續使用的意願鮮少被探討。<br> 找出保留使用者持續使用服務的意願。</p><p>          使用理論： <br> Information systems success model proposed by DeLone and McLean as the theoretical base.<br> Trust, flow and satisfaction are included as the mediators.</p><p><br></p><p><img src="/uploads/redactor_image/image/9/_____2016-05-06___10.54.40.png"></p><p><br></p><p><img src="/uploads/redactor_image/image/7/_____2016-05-06___10.33.04.png" alt="research model" style="display: block; margin: auto;"></p><p><img src="/uploads/redactor_image/image/8/_____2016-05-06___10.43.46.png" alt="Result" style="display: block; margin: auto;"></p><p>研究限制：</p><ol><li>此研究主要是在中國東部進行研究，對於中國其他以外的地方可能會有所不同研究結果。</li><li>除了本研究提出的系統品質、資訊品質、服務品質 會影響信任、使用者心流體驗、滿足感。<br>還有其他的因素未考慮進去可能會影響使用者持續使用的因素，如：易用性、轉換成本。</li><li>使用者在使用行動服務變化是動態的，因此若長期投入研究對於使用者的行為，將能有更深入的洞察。</li></ol>	2017-05-05 00:00:00	2016-05-06 03:26:43.60091	<p>根據此篇論文顯示研究結果：</p><ul><li>系統品質：對於信任感、滿足有極大的影響性，但對於使用者的心流並沒有太大的影響。</li><li>資訊品質和服務品質：會影響使用者的信任度和使用者的心流，但並不會有滿足感。</li><li>信任、流程、和滿足感 根據此研究的結果對於使用者會影響其持續使用行動支付服務的使用意願。</li></ul><p><br></p><p>資訊品質會影響使用使用者的心流體驗，和Jung et al.的研究有相同結果，其探討行動影音(MobileTV)的內容品質是否會影響使用者心流體驗。</p><p><span class="redactor-invisible-space"></span></p><p style="margin-left: 20px;" rel="margin-left: 20px;">Users need to obtain accurate, relevant and up-to-date information to conduct mobile payment.<br>（使用者需要獲得準確資訊、與使用者自身相關的資訊、最新資訊，讓使用會不斷使用行動支付。）</p><p style="margin-left: 20px;">it is relatively difficult for users to search for information on mobile internet. <br>  (使用者在使用行動裝置找尋資訊的過程可能也是困難的，若能提供相關使用者即時想知道的資訊，因為滿足使用者的需求，進而會讓使用者覺得好用。）</p><p>使用者在使用時可能會被資訊系統本身開發商的信任度、或其系統開發商的知名度影響，如：Apple Pay若進入台灣市場，且諸多商店或銀行願意向其靠攏，提供更多其資訊服務系統上的應用服務，是否會讓使用者更普遍的會接受行動支付，讓使用者覺得方便、進而轉換其消費者既定付款行為，並在使用的過程中獲得滿足感（很方便、有優惠、大家都在使用我也來試看看等因素），可從中去解析，能讓研究架構建築得更為結構及健全。<br></p><p style="margin-left: 20px;"><span></span><span class="redactor-invisible-space" style="line-height: 1.6em; background-color: initial;"> </span></p><p style="margin-left: 20px;"><br></p><p style="margin-left: 20px;"><br></p>	24	f
48	Opview起源/客戶間互動/工具與產業know-how間的平衡	\N	<img src="/uploads/redactor_image/image/10/001.png" width="329" height="277" style="width: 329px; height: 277px;"><img src="/uploads/redactor_image/image/11/002.png" width="448" height="265" style="width: 448px; height: 265px;" rel="width: 448px; height: 265px;"><img src="/uploads/redactor_image/image/12/003.png" width="353" height="323" style="width: 353px; height: 323px;"><img src="/uploads/redactor_image/image/13/004.png" width="478" height="351" style="width: 478px; height: 351px;" rel="width: 478px; height: 351px;"><img src="/uploads/redactor_image/image/14/005.png" width="421" height="241" style="width: 421px; height: 241px;">	2016-05-05 00:00:00	2016-05-12 07:00:36.575609		30	f
51	研究方法 - 質化研究	\N	<p><strong>Thinking </strong><strong>Inside the Box: Why Consumers Enjoy Constrained Creative Experience?</strong></p><p><br></p>	2016-05-07 00:00:00	2016-05-13 02:43:06.792221		14	f
49	2016/05/13	\N	<p>系統預計功能:概念圖→系統開發知識表徵</p><p>根據大學部課綱調整及課程所需</p><p>針對大學生畢業所需程式撰寫能力做規劃(<strong>程式撰寫的導覽</strong>)</p><p>XXX語言是屬物件導向、程序導向、前端、後端、or規範架構的介紹</p><p><strong>不針對撰寫技巧</strong>(而大都自學者都是透過網路資源自學、程式語言撰寫能力無邊無際)   取廣 不取深</p><p><strong>用概念圖讓使用者能夠了解程式語言的介紹(前後端、配合的SQL or API等等)</strong></p><p>(陳慕珊-研究生專業能力養成輔助系統建置之研究)<br></p><p><strong>並提供討論區(知識夥伴、知識網絡)</strong></p><p>了解程式語言的<em><strong>趨勢</strong></em>及<strong><em>驗證</em></strong></p><p>1.<strong>概念圖</strong>對程式語言做介紹具有正面效果</p><p>2<strong>.知識網絡(知識夥伴)</strong>能<strong>提升學習者學習程式語言的動力</strong>→系統特色</p><p><br></p>	2016-05-13 00:00:00	2016-05-13 03:07:26.276101	<p>先針對網頁式撰寫的語言做剖析(php、javascript、html、or JAVA...)</p><p>joomla功能探索，概念圖置入</p><p>思考語言導覽要如何呈現(文章、影片)</p><p>系統預計上線時間:2017/02</p><p>系統測試對象:老師105-2系統分析與設計 學生</p>	7	t
54	2016.05.06_Meeting	\N	<p>透過之前所看過的論文研究</p><p>將 <strong>再現師徒制</strong> 這篇論文中提到的 <strong>師徒制變形</strong> 的概念 與 <strong>個人顧問團</strong> 這篇論文中提到的 <strong>個人顧問團的成員與類型</strong> 的概念 做結合</p><p>利用 性向測驗 + 虛擬導師 當吸引元素</p><p>建構系統模型:</p><p><img src="/uploads/redactor_image/image/15/___.jpg" alt="" width="579" height="432" style="display: block; width: 579px; height: 432px; margin: auto;"></p><p><br></p><p><br></p>	2016-05-06 00:00:00	2016-05-16 16:01:13.021387	<p>何謂大抓週計畫? <a href="https://edu.taiwanbar.cc/">https://edu.taiwanbar.cc/</a></p><p>選職業的功能項 與 虛擬導師的差異性?</p><p>目標客群定位在: 大學 + 碩一 + EMBA + 博班 + ( 畢業校友?)</p><p>開發平台的工具為何?</p>	9	t
53	2016.04.22_Meeting	\N	<p>本次 meeting 主要是把 "從商業倫理探討台灣產業的師徒倫理" 此篇論文製作成概念圖</p><p>並從中找出師徒的定義與師徒制的功能</p><p>從本論文中的個案可以了解台灣師徒制的缺失與師徒制的倫理問題</p><p>概念圖連結: <a href="http://0rz.tw/aTiNl">http://0rz.tw/aTiNl</a></p><p><br></p>	2016-04-22 00:00:00	2016-05-16 15:47:20.867388	<p>製作概念圖的過能中</p><p>若該論文的內容與我們所需的元素或概念不相關 可省略</p><p>製造概念圖的重點放在研究領域的內容即可</p><p>-</p><p>開始構思系統架構與功能</p>	9	t
57	2016.05.20_Meeting	\N	<p>Joomla 安裝於 LAB電腦中</p><p>安裝過程中遇到版本不合等問題....</p><p>-</p><p>尋找適合的模板套用</p><p>使用過程中遇到控制與設定上的問題</p><p>目前還在研究中</p><p><a href="http://www.joomland.org/index.php/joomla3-x/441-wtclean-joomla-3-4-template.html">http://www.joomland.org/index.php/joomla3-x/441-wt...</a><br></p><p><a href="http://www.joomland.org/index.php/joomla3-x/439-wtapp-joomla-3-4-template.html">http://www.joomland.org/index.php/joomla3-x/439-wt...</a><span class="redactor-invisible-space"><br></span></p><p><span class="redactor-invisible-space"><a href="http://www.joomland.org/index.php/joomla3-x/408-ulmus-joomla-3-4-template.html">http://www.joomland.org/index.php/joomla3-x/408-ul...</a><span class="redactor-invisible-space"><br></span></span></p><p><span class="redactor-invisible-space"><span class="redactor-invisible-space"><a href="http://www.joomland.org/index.php/joomla3-x/314-stvela-free-joomla-3-5-template.html">http://www.joomland.org/index.php/joomla3-x/314-st...</a><span class="redactor-invisible-space"><br></span></span></span></p>	2016-05-20 00:00:00	2016-05-20 08:10:06.602086	<p>模組間的相容性, 可能導致彼此間不得互相使用</p><p>尋找社群的最佳解</p><p>書籍文章</p><p>節省開發時間與測試時間</p>	9	t
59	2016.06.03_Meeting	\N	<p>透過網路朋友分享的學習平台：udemy.com</p><p>找到 Joomla 的教學課程</p><p>此平台透過影片講解、提供小測驗<span></span></p><p><a href="https://www.udemy.com/">https://www.udemy.com/</a></p>	2016-06-03 00:00:00	2016-06-03 02:22:44.965728	<p>把教學影片看完</p><p>實作最基本的網頁內容</p><p>－</p><p>有時間再進一步看多個教學內容　比較兩著間的差異</p>	9	t
60	2016/06/03	\N	<p>預計整理概念圖</p><p>→程式邏輯思考入門</p><p style="margin-left: 20px;">1.進制</p><p style="margin-left: 20px;">2.CPU五大單元</p><p style="margin-left: 20px;">3.邏輯判斷</p><p style="margin-left: 20px;">4.等等</p><p>→概念及寫法</p><p style="margin-left: 20px;">1.單字</p><p style="margin-left: 20px;">2.組合</p><p style="margin-left: 20px;">3.格式</p><p style="margin-left: 20px;">4.符號</p><p>HTML&CSS課程重點</p><p><br></p>	2016-06-03 00:00:00	2016-06-03 03:09:15.362526	<p>老師回饋:</p><p>codecademy的HTML&CSS 概念圖教學</p><p>可以依照影音、文字、順序的邏輯安排→對照學習</p><p>鉅細靡遺比照AI2的概念圖</p>	7	t
58	5/20Meeting筆記	\N	<p>行事曆功能，但是不夠完整，例如：沒辦法將事情分開在不同的行事曆</p>	2016-05-20 00:00:00	2016-06-03 03:13:48.688131	<p>1.行事曆：跟催、通知功能</p><p>2.行事曆的活動目標要整合在同一個行事曆or分開?</p><p>3.若進階功能需要花錢，需評估</p><p>4.Joomla的書~~</p>	3	t
61	6/3Meeting筆記	\N	<p>使用問卷模組，可分頁、可驗證問題是否填寫，原本無法分頁，需自行撰寫一些客製化程式。</p>	2016-06-03 00:00:00	2016-06-03 03:13:59.301971	<p>1.學習網站：udemy</p><p>2.個人、班級、系所、院←可以做到循序漸進的系統模擬比較，但先從個人到班級的模擬</p><p>3.DB的資料存取到insightmaker的模擬，要怎麼進行轉換?</p><p>4.加入時間點的考量，例如：在學生大一、大二、大三、大四分別做一次模擬，觀察不同時間點，學生的就業力是否提升</p>	3	t
62	2016/06/24	\N	<p>給初學者看的Web程式語言導覽(網頁前後端導覽)</p><p><a href="http://asukademy.logdown.com/posts/252496-web-programming-language-for-the-beginner">http://asukademy.logdown.com/posts/252496-web--language-for-the-beginner</a><br></p><p>程式語言應用與介紹(特性、結構、環境、使用模式與應用)</p><p><a href="http://www.cs.pu.edu.tw/~bcc/982course/F7811_CH16.pdf"></a><a href="http://www.cs.pu.edu.tw/~bcc/982course/F7811_CH16.pdf">http://www.cs.pu.edu.tw/~bcc/982course/F7811_CH16.pdf</a><br></p><p>找程式語言導覽的書</p><p>HTML&CSS課程</p><p>語法的呈現</p><p><span class="redactor-invisible-space"><br></span></p><p><br></p>	2016-06-24 00:00:00	2016-06-23 18:18:45.713281		7	t
65	擬投稿期刊	\N	<p><em>The Journal of Academic Librarianship</em><span class="redactor-invisible-space"> (<strong>SSCI</strong>, 2015 <strong>Impact Factor</strong>: 1.150; <strong>ISSN</strong>: 0099-1333 ).</span></p><p><span class="redactor-invisible-space"><strong>備註</strong>：<strong>投稿須知</strong>(<a href="http://www.journals.elsevier.com/the-journal-of-academic-librarianship/">http://www.journals.elsevier.com/the-journal-of-ac...</a>)</span></p>	2016-08-01 00:00:00	2016-08-15 15:31:07.123103		29	f
67	(初步)回顧在這個領域的文獻搜集\t	\N	<p>Alemna, A. A. (1999). Library evaluation: some options for academic libraries. <i>Aslib Proceedings, 51</i>(7), 243-246.</p>  <p>Gölcük, I., & Baykasoğlu, A. (2016). An analysis of DEMATEL approaches for criteria interaction handling within ANP. <i>Expert Systems with Applications, 46</i>, 346-366.</p>  <p>Hsieh, L. F., Chin, J. B., & Wu, M. C. (2006). Performance evaluation for university electronic libraries in Taiwan. <i>Electronic Library, 24</i>(2), 212-224.</p>  <p>Joo, S., & Xie, I. (2013). Recent developments in the design, construction, and evaluation of digital libraries: Case studies. In C. Cool, & K. B. Ng (Eds.), <i>Evaluation constructs and criteria for digital libraries: A document analysis</i><i> </i>(pp. 126-140). Hersey, PA: IGI Global.</p>  <p>Kao, C., & Lin, Y.-C. (2004). Evaluation of the university libraries in Taiwan: Total measure versus ratio measure. <i>Journal of the Operational Research Society, 55</i>(12), 1256-1265.</p>  <p>Kebede, G. (1999). Performance evaluation in library and information systems of developing countries: A study of the literature. <i>Libri, 49</i>(2), 106-119.</p>  <p>Lai, C. F., Chiu, P. S., Huang, Y. M., Chen, T. S., & Huang, T. C. (2014). An evaluation model for digital libraries' user interfaces using fuzzy AHP. <i>Electronic Library, 32</i>(1), 83-95.</p>  <p>Liou, J. J. H., & Tzeng, G. H. (2012). Comments on "Multiple criteria decision making (MCDM) methods in economics: An overview". <i>Technological and Economic Development of Economy, 18</i>(4), 672-695.</p>  <p>Noh, Y. (2010). A study on developing evaluation criteria for electronic resources in evaluation indicators of libraries. <i>The Journal of Academic Librarianship, 36</i>(1), 41-52.</p>  <p>Noh, Y. (2011). Evaluationof the resource utilization efficiency of university libraries using DEA techniques and a proposal of alternative<span class="apple-converted-space"> evaluation variables. <i>Library Hi Tech, 29</i>(4), 697-724.</span></p>  <p>Saracevic, T. (2000). Digital library evaluation: Toward an evolution of concepts. <i>Library Trends, 49</i>(2), 350-369.</p>  <p>Shim, W. (2003). Applying DEA technique to library evaluation in academic research libraries. <i>Library Trends, 51</i>(3), 312-332.</p>  <p>Xie, H. I. (2006). Evaluation of digital libraries: Criteria and problems from users’ perspectives. <i>Library & Information Science Research, 28</i>(3), 433-452.</p>  <p>Xie, H. I. (2008). Users' evaluation of digital libraries (DLs): Their uses, their criteria, and their assessment. <i>Information Processing & Management, 44</i>(3), 1346-1373.</p>  <p>Zhang, Y. (2010). Developing a holistic model for digital library evaluation. <i>Journal of American Society for Information Science and Technology, 61</i>(1), 88-110.</p>	2016-08-08 00:00:00	2016-08-14 14:08:23.68136		29	f
66	論文大綱	\N	<p>摘要i</p><p>ABSTRACTii</p><p>誌謝iii</p><p>CONTENTSiv</p><p>LIST OF TABLES\tvi</p><p>LIST OF FIGURES\tvii</p><p>LIST OF ABBREVIATIONS\tviii</p><p>CHAPTER 1 INTRODUCTION\t1</p><p>1.1 BACKGROUND AND MOTIVATION\t1</p><p>1.2 RESEARCH PROBLEMS AND OBJECTIVES\t2</p><p>1.3 ORGANIZATION OF DISSERTATION\t3</p><p>CHAPTER 2 LITERATURE REVIEW\t4</p><p>2.1 ACADEMIC LIBRARY EVALUATION\t4</p><p>2.2 MULTIPLE CRITERIA DECISION MAKING (MCDM)\t4</p><p>2.3 DEVELOPING EVALUATION CRITERIA FOR ACADEMIC LIBRARIES\t4</p><p>CHAPTER 3 RESEARCH METHOD\t5</p><p>3.1 HYBRID MCDM METHODS\t5</p><p>3.2 FUZZY DELPHI METHOD\t5</p><p>3.3 DEMATEL METHOD\t5</p><p>3.4 DANP METHOD\t5</p><p>3.5 MODIFIED VIKOR METHOD\t5</p><p>CHAPTER 4 EMPIRICAL CASE FOR ACADEMIC LIBRARIES’ EVALUATION\t6</p><p>4.1 CASE DESCRIPTIONS\t6</p><p>4.2 CASE ANALYSIS AND RESULTS\t6</p><p>4.3 DISCUSSIONS AND MANAGERIAL IMPLICATIONS\t6</p><p>CHAPTER 5 CONCLUSIONS, LIMITATIONS AND REMARKS\t7</p><p>5.1 CONCLUSIONS\t7</p><p>5.2 LIMITATIONS AND REMARKS\t7</p><p>REFERENCES\t8</p><p>APPENDIX10</p><p>APPENDIX A: LIST OF ANONYMOUS EXPERTS\t10</p><p>APPENDIX B: FUZZY DELPHI QUESTIONNAIRE\t10</p><p>APPENDIX C: DANP QUESTIONNAIRE\t10</p>	2016-08-08 00:00:00	2016-08-14 14:11:28.525024		29	f
64	主要範本論文	\N	<p>Lu, I.-Y., Kuo, T., Lin, T.-S., Tzeng, G.-H., & Huang, S.-L. (2016). Multicriteria Decision Analysis to Develop Effective Sustainable Development Strategies for Enhancing Competitive Advantages- Case of the TFT-LCD Industry in Taiwan. <em>Sustainability, 8</em>(7), 646 (pages :31; Open Access).  Retrieved from <span class="redactor-invisible-space"><a href="http://www.mdpi.com/2071-1050/8/7/646">http://www.mdpi.com/2071-1050/8/7/646</a><span class="redactor-invisible-space"></span></span></p><p><span class="redactor-invisible-space"><span class="redactor-invisible-space"><strong>備註</strong>：</span></span><em>Sustainability</em><span class="redactor-invisible-space" style="line-height: 1.6em; background-color: initial;"> (<strong>SSCI</strong>, 2015<strong> Impact Factor</strong>: 1.343; <strong>ISSN</strong>: 2071-1050 )</span></p>	2016-08-01 00:00:00	2016-08-15 15:33:28.277682		29	f
\.


--
-- Name: notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('notes_id_seq', 67, true);


--
-- Data for Name: redactor_images; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY redactor_images (id, image, created_at, updated_at) FROM stdin;
1	2016-01-21_10.54.11.jpg	2016-03-10 03:47:20.114482	2016-03-10 03:47:20.114482
2	ad-lib-3.jpg	2016-03-10 06:56:13.678485	2016-03-10 06:56:13.678485
3	IMAG7982.jpeg	2016-03-23 06:28:07.983742	2016-03-23 06:28:07.983742
4	9909206-1.PNG	2016-03-24 03:35:00.148192	2016-03-24 03:35:00.148192
5	IMAG5763.jpeg	2016-03-28 03:10:04.306003	2016-03-28 03:10:04.306003
6	IMAG8039.jpeg	2016-03-31 06:35:42.698804	2016-03-31 06:35:42.698804
7	_____2016-05-06___10.33.04.png	2016-05-06 02:42:57.039095	2016-05-06 02:42:57.039095
8	_____2016-05-06___10.43.46.png	2016-05-06 02:45:34.366066	2016-05-06 02:45:34.366066
9	_____2016-05-06___10.54.40.png	2016-05-06 02:55:39.921693	2016-05-06 02:55:39.921693
10	001.png	2016-05-12 06:58:37.651182	2016-05-12 06:58:37.651182
11	002.png	2016-05-12 06:58:58.823004	2016-05-12 06:58:58.823004
12	003.png	2016-05-12 06:59:29.044694	2016-05-12 06:59:29.044694
13	004.png	2016-05-12 06:59:47.261696	2016-05-12 06:59:47.261696
14	005.png	2016-05-12 07:00:07.805487	2016-05-12 07:00:07.805487
15	___.jpg	2016-05-16 15:56:24.296267	2016-05-16 15:56:24.296267
\.


--
-- Name: redactor_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('redactor_images_id_seq', 15, true);


--
-- Data for Name: resource_comments; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY resource_comments (id, comment, user_name, resource_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: resource_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('resource_comments_id_seq', 1, true);


--
-- Data for Name: resources; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY resources (id, title, description, url, file, published, user_id, created_at, updated_at) FROM stdin;
8	複雜科學	\r\nAbout\r\nComplexity Academy is an online resource dedicated to the area of complex systems (complex systems is a new area of science). We provide a wide variety of users from students to professors to researchers and the general public with information and educational content relating to the many different domains of complex systems…	http://complexityacademy.io/	\N	t	19	2016-03-27 11:10:17.621649	2016-03-30 05:34:40.823047
9	Gene Bellinger的系統思考	Systems Thinking World was established by and for those who believe a systemic perspective provides the best foundation for creating effective approaches for dealing with challenges and shaping a better tomorrow. Our purpose is to surface systemic relationships and foster interactions intended to promote a deeper understanding of those relationships and their implications as a basis for insights and more effective action. We invite you to watch the following video to get a better sense of our current endeavors to understand relationships and their implications.	http://www.systemswiki.org/index.php?title=Main_Page	\N	t	19	2016-03-27 11:17:04.823695	2016-03-30 05:35:03.680442
6	Mendeley	匯整從圖書館館藏目錄、期刊、資料庫、網路資源等各種管道收集來的資料。 能將收集到的資料便利地搜尋與分類管理。 將書目、全文、個人閱讀筆記等各種相關檔案作串連。 也是您 PDF 全文的線上閱讀軟體，支援個人 highlight 與註記。 方便將收集的資料與他人分享，甚至可與其他 Mendeley 使用者建立文獻共享平台。 與論文撰寫結合，簡化引用與撰寫參考文獻格式的作業。\r\n	https://www.mendeley.com/	\N	t	1	2016-03-17 06:04:14.529246	2016-03-17 06:04:29.45909
4	Cmap	Cmap Tools 是一套開放原始碼（open source）軟體，可自由下載取得，完成的Cmap 檔案，還能以圖片、網頁或PDF 等檔案格式匯出，且可互動建構概念圖，讓學習者透過合作學習來學習概念教學。	http://cmap.ihmc.us/	\N	t	2	2016-03-11 08:07:41.472593	2016-03-17 07:28:08.514873
7	Insight Maker	在瀏覽器中建立模型，Insight Maker 可以讓你利用豐富的圖片和因果關係圖表達你的看法。它可以讓你把這些圖表轉為強大的仿真模型。並只要在您的瀏覽器上操作，是免費的，無需下載，只需註冊一個免費帳戶並立即開始。	https://insightmaker.com/	\N	t	1	2016-03-23 07:10:53.216887	2016-03-23 07:11:02.289507
13	系統分析與設計	以Cmap說明系統分析與設計的各項理論與技術	http://140.118.9.79/SASD/01SASD.html	\N	t	19	2016-03-30 05:56:24.538372	2016-03-30 07:08:08.585532
14	策略知識管理	李國光老師的策略知識管理教材，以Cmap呈現	http://140.118.9.79/SKMWEB/01%E7%AD%96%E7%95%A5%E7%9F%A5%E8%AD%98%E7%AE%A1%E7%90%86_%E5%B1%95%E9%96%8B.html	\N	t	19	2016-03-30 06:02:50.20561	2016-03-30 07:08:17.012055
12	管理學(Robbins，林孟彥 譯)	以Cmap將管理學(Robbins，林孟彥 譯)各章的要點呈現	http://140.118.9.79/management/01management.html	\N	t	19	2016-03-30 05:53:50.215015	2016-03-31 06:23:23.538945
15	複雜理論相關論文	以Cmap整理複雜理論相關論文。	http://140.118.9.79/complexity/complexityreview.html	\N	t	1	2016-03-31 07:40:03.577178	2016-04-05 13:44:33.940075
10	Codecademy	Codecademy是一個線上交互式網站平台，它提供免費寫程式課程，其程式語言包括例如Python、JavaScript和Ruby，也包括置標語言例如HTML和CSS。	https://www.codecademy.com/	\N	t	1	2016-03-28 06:52:29.632798	2016-04-11 04:32:31.785603
16	App Inventor2概念圖	App Inventor2概念圖教學	http://140.118.9.79/ai/ai.html	\N	t	7	2016-04-11 05:48:18.989005	2016-04-11 05:49:14.152427
18	wix─免費架設網站工具	WIX創建於2006年，總部位於以色列的特拉維夫-雅法。WIX是一個強大的免費建站工具，用戶只需拖拽便可以自助建立起一個設計精美、功能豐富的網站，WIX自上線以來已經幫助用戶建立了超過2000萬個網站。WIX現在有英語、法語、德語、日語、韓語等10種語言服務。	http://www.wix.com/	\N	f	3	2016-04-23 10:36:57.641248	2016-04-23 10:36:57.641248
17	wix─免費架設網站工具	WIX創建於2006年，總部位於以色列的特拉維夫-雅法。WIX是一個強大的免費建站工具，用戶只需拖拽便可以自助建立起一個設計精美、功能豐富的網站，WIX自上線以來已經幫助用戶建立了超過2000萬個網站。WIX現在有英語、法語、德語、日語、韓語等10種語言服務。	http://www.wix.com/	\N	t	3	2016-04-23 10:36:04.755117	2016-04-25 03:42:54.59302
19	EndNote			\N	f	1	2016-05-30 01:29:34.488111	2016-05-30 01:29:34.488111
20	Turnitin學術論文原創性比對系統	Turnitin學術論文原創性比對系統，其目的在於學術論文發表前透過此專業系統的比對即可找出是否有抄襲或引用過當情形，亦可為學生作業做先行比對過濾，有效嚇阻學生抄襲行為，提升學生作業及論文的原創性。\r\n	http://www.turnitin.com/	\N	t	29	2016-08-14 15:12:26.675239	2016-08-17 12:44:44.781603
\.


--
-- Name: resources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('resources_id_seq', 20, true);


--
-- Data for Name: schedules; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY schedules (id, start_date, end_date, created_at, updated_at, user_id, published) FROM stdin;
1	2015-09-01	2016-06-30	2016-03-01 07:38:15.427293	2016-03-01 07:38:15.427293	1	\N
2	2016-03-03	2016-06-30	2016-03-03 05:03:47.062852	2016-03-03 05:03:47.062852	2	\N
3	2016-03-03	2017-06-20	2016-03-03 05:18:32.249462	2016-03-03 05:18:32.249462	3	\N
4	2016-03-03	2017-06-09	2016-03-03 05:34:47.000196	2016-03-03 05:34:47.000196	8	\N
5	2016-03-03	2017-06-30	2016-03-03 12:52:05.906896	2016-03-03 12:52:05.906896	13	\N
6	2016-03-03	2017-06-15	2016-03-04 03:25:07.212391	2016-03-04 03:25:07.212391	14	\N
7	2015-09-01	2016-06-30	2016-03-16 12:53:15.094806	2016-03-23 07:15:15.328416	1	f
8	2014-09-22	2016-06-30	2016-03-23 07:19:14.912768	2016-03-23 07:19:14.912768	1	t
9	2010-09-20	2012-06-30	2016-03-24 03:28:10.550978	2016-03-24 03:28:10.550978	16	t
10	2016-03-24	2016-06-23	2016-03-24 05:29:24.85497	2016-03-24 05:29:24.85497	18	t
11	2015-09-01	2017-06-10	2016-03-25 05:35:29.361483	2016-03-25 05:35:29.361483	9	t
12	2014-09-01	2019-09-01	2016-04-11 02:28:28.703068	2016-04-11 02:28:28.703068	23	t
13	2016-04-07	2017-01-13	2016-04-14 08:37:20.080476	2016-04-14 08:37:20.080476	28	t
14	2016-05-02	2016-12-31	2016-05-03 02:44:05.212193	2016-05-03 02:44:05.212193	24	t
15	2014-09-01	2016-06-25	2016-05-09 03:49:45.433657	2016-05-09 03:49:45.433657	2	t
17	2016-05-19	2017-02-01	2016-05-19 17:22:34.147661	2016-05-19 17:22:34.147661	3	t
16	2016-05-19	2017-07-31	2016-05-19 06:02:27.889259	2016-05-20 13:25:50.811288	10	f
18	2016-05-20	2017-07-31	2016-05-20 13:25:59.74341	2016-05-20 13:25:59.74341	10	t
19	2016-09-01	2018-06-30	2016-05-30 01:27:02.762552	2016-05-30 01:27:02.762552	32	t
20	2016-05-30	2016-06-21	2016-05-30 06:27:22.137108	2016-05-30 06:27:44.987263	7	f
21	2016-05-30	2017-06-21	2016-05-30 06:27:50.70245	2016-05-30 06:28:01.606407	7	f
22	2015-09-30	2017-06-21	2016-05-30 06:28:21.537444	2016-05-30 06:28:21.537444	7	t
23	2016-08-14	2017-06-24	2016-08-14 12:10:07.636294	2016-08-14 12:10:07.636294	29	t
\.


--
-- Name: schedules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('schedules_id_seq', 23, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY schema_migrations (version) FROM stdin;
20151217030612
20151223085926
20160113131327
20160113132411
20160114024435
20160126080554
20160126090843
20160126095334
20160127062830
20160128035543
20160204081424
20160204082728
20160204083525
20160218053415
20160221125508
20160223061912
20160223092703
20160224033603
20160224061905
20160224090728
20160307025946
20160308033918
20160309142224
20160311084538
20160316081424
20160322033838
20160323034435
20160323081709
20160324055949
\.


--
-- Data for Name: shares; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY shares (id, title, content, created_at, updated_at) FROM stdin;
\.


--
-- Name: shares_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('shares_id_seq', 1, false);


--
-- Data for Name: theses; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY theses (id, title, content, book_list, slide, published, user_id, created_at, updated_at, final) FROM stdin;
1	擴增實境-物件選擇風格化	用手勢選擇攝影機取得的真實世界的物件，做非寫實風格化的處理，在馬上回饋到輸出設備。	\N	\N	f	8	2016-03-03 06:04:00.798695	2016-03-03 06:04:00.798695	\N
3	個人學習書櫃管理系統	考慮結合Moodle 網路學習平台於個人學習書櫃管理系統\r\n➔模組較適合管理課程的互動，而非個人學習管理\r\n➔\r\n考慮使用族群：資管系學士至博士班學生（含在職專班）\r\n書櫃基本功能：登入登出/新增、查詢書目/\r\n書櫃特殊功能：\r\n自行為書建立標籤、等級\r\n結合論文系統自動推薦可閱讀文章	\N	\N	t	1	2014-10-08 00:00:00	2016-03-23 10:15:56.834776	f
2	論文研究知識管理平台建置之研究		\N	\N	t	1	2016-03-10 06:15:44	2016-03-28 03:02:24.196784	t
5	職涯探索輔導系統建置之研究	本研究採用系統展示法，以生涯發展與職涯輔導相關文獻作為系統建構之理論基礎，協助學生進行職涯探索活動，並從活動中瞭解自我與職業之關聯，以期幫助學生在面對職涯選擇時，能夠找到自我發展的方向，本研究以林幸台(1990)知己、知彼、抉擇與行動生涯規劃三要素為系統建構之主要概念，並運用測驗工具及資訊蒐集，提供職涯探索及職業推薦之服務。\r\n\r\n\r\n系統以國立台灣科技大學管理學院學士班學生為實施對象，進行系統雛型之建構，引用柯塞人格氣質量表(The Keirsey Temperament Sorter)作為麥布二氏心理類型 (Myers-Briggs Type Indicator, MBTI)之測驗工具，透過試題瞭解受測者生活中的行為模式，並以此與職業做關聯；另外提供管理學院資訊管理系、企業管理系、工業管理系培育目標之職業清單及職業內容介紹，將職業與知識課程科目進行關聯，產生職業知識課程推薦，用以做為學生擬定修課計劃之參考；並藉由學習記錄的功能，瞭解學生對於課程科目的學習動機與學習成果。\r\n\r\n\r\n本研究的主要的研究貢獻為(1) 建構職涯探索輔導之系統雛形：運用資訊科技的特點，將輔導活動數位化、線上化，並透過系統功能的實踐引導學生探求自我與職業環境之關係，並藉由資訊系統的分析功能，引導學生進行職業規劃與選擇。(2) 建立學生與輔導人員的中介橋樑：經由系統所蒐集的相關資料作為學生與輔導人員的中介資訊，協助職涯輔導人員能夠快速掌握學生的職業性格傾向與學習狀況。(3) 彙整管理學院各系培育職業目標與課程之關係。 (4) 彙整管理學院各系培育職業目標與MBTI職業性格之關聯。\r\n\r\n\r\n關鍵字：職涯輔導、生涯發展\r\n	____.docx	\N	t	16	2012-06-25 00:00:00	2016-03-24 04:56:11.290014	t
6	英語學習目標管理系統建置之研究		\N	\N	t	17	2014-09-01 00:00:00	2016-03-24 05:03:50.175388	t
7	師徒制導向培養工作	透過師徒制的功能，快速了解工作所需的技能，讓新人快速上手	\N	\N	f	9	2015-12-23 00:00:00	2016-04-07 15:31:04.698859	f
8	績效關聯性之研究		\N	\N	\N	18	2015-04-01 00:00:00	2016-04-12 07:42:36.750295	f
9	畢業生流向調查與分析系統之研究		\N	\N	\N	18	2016-04-07 00:00:00	2016-04-12 18:55:48.189114	f
11	畢業生成效調查之系統研究		\N	\N	\N	18	2015-05-12 00:00:00	2016-04-14 05:57:48.867232	f
13	Intrinsic images	了解intrinsic image如何取得	\N	\N	f	10	2016-03-31 00:00:00	2016-05-03 04:41:44.527517	f
14	Using Hybrid Multiple Criteria Decision Making Methods for Performance Gap Improvement: Empirical Case for Academic Libraries’ Evaluation	運用混合多準則決策方法於績效落差改善：實證個案在學術圖書館之評估	\N	\N	f	29	2016-08-08 00:00:00	2016-08-14 14:09:39.986671	f
\.


--
-- Name: theses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('theses_id_seq', 14, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: deploy
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, role, name, department_id, laboratory_id, active) FROM stdin;
6	aweyhng2011@gmail.com	$2a$10$9/WRm/i3KkZXpJevKuuqyObBXnRFItyDCZh93lSo1lBWnqzm/1W6m	\N	\N	\N	2	2016-03-07 05:45:16.215587	2016-03-03 05:27:54.765917	140.118.109.10	140.118.109.10	2016-03-03 05:27:54.759009	2016-03-07 05:45:16.220748	\N	謝宗翰	1	\N	t
4	m10409102@mail.ntust.edu.tw	$2a$10$zxyjoP1Wsz4E1iytyvtuHuGFodXQGcSYb20IW2YomDR1.Xgk/4hoi	\N	\N	\N	1	2016-03-03 05:22:33.331922	2016-03-03 05:22:33.331922	140.118.9.205	140.118.9.205	2016-03-03 05:22:33.319886	2016-03-03 05:22:33.335069	\N	李岳樵	1	\N	t
5	q3866454@gmail.com	$2a$10$AiR3tnEDcD0.8o4Gg9fLO.SBT1K1bc40x6ZviiJOlzmqliEoE1/12	\N	\N	\N	1	2016-03-03 05:23:53.550539	2016-03-03 05:23:53.550539	140.118.9.177	140.118.9.177	2016-03-03 05:23:53.537888	2016-03-03 05:23:53.552305	\N	邱孟俞	1	\N	t
8	m10409105@mail.ntust.edu.tw	$2a$10$PrRStlOjMpmhZSpQ81tScukJikUXPxd6vlR5oRm0eLN/TPWXVDRre	\N	\N	\N	1	2016-03-03 05:32:26.412446	2016-03-03 05:32:26.412446	140.118.110.226	140.118.110.226	2016-03-03 05:32:26.391745	2016-03-03 05:58:26.845416	\N	劉怡欣	1	11	t
11	guopeiyipeggy@gmail.com	$2a$10$fSBQb8qJRu48VOB/OPShG.0Pq2vL0nN1ok0m.Cvicw.4An63Jtds.	\N	\N	\N	0	\N	\N	\N	\N	2016-03-03 07:20:13.438097	2016-03-03 07:20:44.665069	\N	郭佩宜	1	\N	t
12	m10309122@mail.ntust.edu.tw	$2a$10$7PdedkqAj59516h3WYtemOiYWbZ4HtF39Rm9uQZn1X38xkOM0kV9u	\N	\N	\N	1	2016-03-03 07:23:42.672867	2016-03-03 07:23:42.672867	140.118.9.202	140.118.9.202	2016-03-03 07:23:42.666048	2016-03-03 07:24:48.130917	\N	郭傳聖	1	11	t
13	u.urmpvmcj8@gmail.com	$2a$10$8FiB.pHBtCCd1wUo.3QyH.AGUyHpny6DRx97tpiIqbC0WmRkJ4JPa	\N	\N	\N	1	2016-03-03 12:50:09.126415	2016-03-03 12:50:09.126415	123.194.205.144	123.194.205.144	2016-03-03 12:50:09.112843	2016-03-03 12:50:32.215786	\N	葉怡君	1	13	t
16	m9909206@mail.ntust.edu.tw	$2a$10$EHHPFvApbCjoPC.DfGmeTO3EP4fi.t5xPCtt4BusRzJq.qae.8Z.6	\N	\N	\N	2	2016-03-24 03:15:54.425881	2016-03-24 03:14:23.201993	140.118.109.85	140.118.109.85	2016-03-24 03:14:23.188139	2016-03-24 03:16:14.560236	\N	林孟瑜	1	1	t
17	m10209210@mail.ntust.edu.tw	$2a$10$/zG/EqgxXmkKYOzGeYJAjeMMGoRbraELxKJGRz7vWlXn6hlgVZvrW	\N	\N	\N	1	2016-03-24 05:02:31.453063	2016-03-24 05:02:31.453063	140.118.109.85	140.118.109.85	2016-03-24 05:02:31.441498	2016-03-24 05:03:08.712993	\N	高毓嬪	1	1	t
23	yentailin@gmail.com	$2a$10$DRIruSgC0NRekkqRC5t6n.CJnjGPv1lAoe91IqpcMbWiplSb/ySGa	\N	\N	\N	1	2016-04-11 02:25:18.70195	2016-04-11 02:25:18.70195	211.21.158.7	211.21.158.7	2016-04-11 02:25:18.695356	2016-04-11 02:25:18.70342	\N	林延泰	1	3	t
2	m10309214@mail.ntust.edu.tw	$2a$10$0sEenx1Nu3pdvy4C5.XRG.TYpHm2RKpkvIkNFHHGIAMlVy8hQa1ka	\N	\N	\N	8	2016-05-09 03:47:52.268633	2016-03-30 15:56:56.118877	210.61.216.120	175.182.109.66	2016-03-03 03:00:17.782385	2016-05-09 03:47:52.272499	\N	葉佳雯	1	\N	f
15	s972024@gmail.com	$2a$10$wfpUN03PXW7ZiKx8NE14Ke/JeKyC0HFdaXjvhOv6FGCf.L1Uuh5dW	\N	\N	\N	1	2016-03-23 06:10:46.383081	2016-03-23 06:10:46.383081	60.251.47.197	60.251.47.197	2016-03-23 06:10:46.372289	2016-03-24 06:39:44.420008	\N	王適緣	3	\N	t
31	johnny_liu@chief.com.tw	$2a$10$sXkyjQ1A2kPpaxAQUeXXH.wg1iAGwLlAtE25F33JnDCZxLvolL1l.	\N	\N	\N	1	2016-05-16 02:58:47.613829	2016-05-16 02:58:47.613829	202.3.168.165	202.3.168.165	2016-05-16 02:58:47.605247	2016-05-16 02:58:47.615852	\N	劉耀元	6	\N	t
32	annie@gmail.com	$2a$10$JmwY4yJ/YO5JAT2.Bav0X.E.tstjncCwbpyGpWfzhfgB3JznO8pY6	\N	\N	\N	1	2016-05-30 01:25:37.226601	2016-05-30 01:25:37.226601	175.181.157.70	175.181.157.70	2016-05-30 01:25:37.206253	2016-05-30 01:25:37.231132	\N	Annie	1	\N	t
22	a0926622943@gmail.com	$2a$10$MTqPiCSmcKggEUWpMHHuYu6Rg62ijp3dEvX84EC5lbU9ooFZIPBxK	\N	\N	\N	1	2016-04-07 08:17:32.693561	2016-04-07 08:17:32.693561	110.30.93.9	110.30.93.9	2016-04-07 08:17:32.68194	2016-04-07 08:17:32.696932	\N	吳昱學	1	10	t
18	pol055005@hotmail.com	$2a$10$ZfrVIEAjfWpg45XITttqBeKSJk0TSFiwr6SnGZYw0WJFM5IlGpUjC	\N	\N	\N	5	2016-04-14 05:54:44.253108	2016-04-12 18:54:25.540428	140.118.109.143	140.118.109.143	2016-03-24 05:28:56.09088	2016-04-14 05:54:44.262341	\N	林宜右	1	1	t
25	cytnapree@gmail.com	$2a$10$XROvxB2amQITnsTr4t/pR.2m6yII/JV.wQzOV2Wd3xde7ZsddMCHW	\N	\N	\N	1	2016-04-11 05:10:10.79297	2016-04-11 05:10:10.79297	61.230.48.5	61.230.48.5	2016-04-11 05:10:10.786302	2016-04-11 05:12:25.477241	\N	陳吟慈	1	5	t
9	makai811012@gmail.com	$2a$10$yvAY80hPryVYurLMsvBOjecANuWO8DCx5gaLciVOcWi/reQ4Q37wK	\N	\N	\N	17	2016-06-03 02:14:40.701969	2016-05-20 07:32:05.88726	140.118.110.14	140.118.110.14	2016-03-03 05:41:37.199748	2016-06-03 02:14:40.705308	\N	馬浚凱	1	1	t
29	matsujui@live.com	$2a$10$ljad5XQELkXcl7cvukENQO2jnHdzPBrCvH0taz5ckmYapNKv.HXHe	\N	\N	\N	15	2016-08-18 14:28:25.333618	2016-08-15 15:28:56.347845	123.194.200.113	123.194.199.208	2016-04-21 04:43:21.448462	2016-08-18 14:28:25.348672	\N	馬祖瑞	6	1	t
21	barry.lin@tfc101.com.tw	$2a$10$/v5R7osABJYEWiX3cZcG7.7JV09WWFmgim/CXeAXTu9OekNWeGcry	\N	\N	\N	1	2016-03-31 12:29:29.768784	2016-03-31 12:29:29.768784	140.118.242.16	140.118.242.16	2016-03-31 12:29:29.757824	2016-03-31 12:29:29.77222	\N	林哲雄	6	\N	t
20	mi01041001@mail.ntust.edu.tw	$2a$10$4ZOS3w4fnDoG3zfF6zIR7OyzMvdCUwv13qwmJ3895KjeznhZAuO5.	\N	\N	\N	2	2016-03-31 12:33:15.896551	2016-03-31 12:21:03.220079	39.13.17.191	39.13.17.191	2016-03-31 12:21:03.211818	2016-03-31 12:33:15.899403	\N	KennyKao	1	\N	t
26	m10309212@mail.ntust.edu.tw	$2a$10$vsApoUoPdvQMsmAzbimrr.R6..RsZUUTXZqk2zwo6859g2yld54C2	\N	\N	\N	1	2016-04-11 06:10:26.06544	2016-04-11 06:10:26.06544	61.230.203.131	61.230.203.131	2016-04-11 06:10:26.052267	2016-04-11 06:10:26.070024	\N	陳品璇	1	5	t
24	fossil725@gmail.com	$2a$10$6eCzUiwM9Rs8ZjYSGqiiPeD4Pj4iMpTnSBasrSUFxqVCaVDlFCmDq	\N	\N	\N	4	2016-05-09 05:52:53.215287	2016-05-06 02:35:42.337723	140.118.109.191	101.15.115.199	2016-04-11 03:58:58.319242	2016-05-09 05:52:53.221689	\N	周椽家	1	2	t
27	jasonworkedu@gmail.com	$2a$10$aHJIvrhn3bWo3WzVEVe5m..afDLUPeXMIN4CbITTHBdP/wLFi4vRq	\N	\N	\N	1	2016-04-11 06:31:21.76703	2016-04-11 06:31:21.76703	140.118.145.140	140.118.145.140	2016-04-11 06:31:21.751794	2016-04-11 06:31:21.770278	\N	辜麟傑	1	1	t
1	ninayeh1211@gmail.com	$2a$10$poVr4QKgz9DMEbYFgwD.6erB6dEov9wqET0oc8yVX5KhoMxDeOWXW	\N	\N	\N	51	2016-08-21 05:46:57.226212	2016-08-17 12:41:43.913018	60.245.65.132	210.61.216.120	2016-03-01 06:24:31.262302	2016-08-21 05:46:57.232041	admin	葉佳雯	1	1	t
19	lgg@cs.ntust.edu.tw	$2a$10$XSlTMOrp3smIHaX0VlWPLOByTERiS5G.YnMF1C0Y/jmw.5Qgs0ZO2	\N	\N	\N	14	2016-05-12 03:21:41.145782	2016-04-19 08:51:17.456627	140.118.110.143	140.118.110.143	2016-03-24 08:05:52.043101	2016-05-12 03:21:41.155821	\N	李國光	1	1	t
10	m10409111@mail.ntust.edu.tw	$2a$10$IVEamqBu4NL/4R1UT.Eh0OCT9Li5bnkkhgOlGYugBtG9xDJHmZRAu	\N	\N	\N	5	2016-07-27 11:58:30.688509	2016-05-19 06:01:25.9308	140.118.9.192	140.118.9.192	2016-03-03 06:48:21.691982	2016-07-27 11:58:30.693357	\N	莊育林	1	11	t
14	chun820819@gmail.com	$2a$10$4auI2hsVZ6s.hsNb2NUKVeQNF73yDqcq712lDGMWIOw353ImzR1jm	\N	\N	\N	2	2016-05-13 02:34:01.437995	2016-03-04 03:23:08.254047	140.118.109.185	180.177.115.164	2016-03-04 03:23:08.238853	2016-05-13 02:34:01.443098	\N	陳軍君	1	6	t
28	bellezoelan@gmail.com	$2a$10$D9pKRx8u7Ge3NX6BmuKRxe4cKlE.t8SV88Tl0qtGVOz/5pG3Obl8O	\N	\N	\N	3	2016-04-21 08:13:15.700846	2016-04-21 08:03:15.909757	140.118.109.26	140.118.109.26	2016-04-14 08:35:59.428633	2016-04-21 08:13:15.706914	\N	蘭佳霖	1	4	t
3	m10409210@mail.ntust.edu.tw	$2a$10$7u/zTqne9bZqkQxrn1cYneLoTg.yCo3f1nRHikl8MvsZcmEltbIlS	\N	\N	\N	14	2016-06-03 02:12:01.465835	2016-05-19 16:19:49.210911	111.81.16.72	1.34.154.34	2016-03-03 05:16:46.154741	2016-06-03 02:12:01.472971	\N	吳妮易	1	1	t
30	yingjen16@gmail.com	$2a$10$v5F8pTekZdDtDdWSSwFGJ.GAowyIVxBnkl9UU4XGB5SuurFSn0hKq	\N	\N	\N	3	2016-05-12 06:54:33.601062	2016-05-03 04:37:49.279637	140.118.109.67	140.118.109.67	2016-04-21 08:46:57.998636	2016-05-12 06:54:33.607935	\N	YingJhen	1	4	t
7	p38166@gmail.com	$2a$10$R8154nrLoJizNeUs4wEyC.dNq3Hs6j.3DEIvyLfzHpi/I0o3t..2y	\N	\N	\N	36	2016-07-04 07:27:47.514663	2016-06-23 07:09:56.80322	61.62.220.19	140.118.235.210	2016-03-03 05:31:44.670609	2016-07-04 07:27:47.51784	\N	張祖豪	1	1	t
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: deploy
--

SELECT pg_catalog.setval('users_id_seq', 32, true);


--
-- Name: book_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY book_lists
    ADD CONSTRAINT book_lists_pkey PRIMARY KEY (id);


--
-- Name: departments_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);


--
-- Name: laboratories_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY laboratories
    ADD CONSTRAINT laboratories_pkey PRIMARY KEY (id);


--
-- Name: missions_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY missions
    ADD CONSTRAINT missions_pkey PRIMARY KEY (id);


--
-- Name: note_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY note_comments
    ADD CONSTRAINT note_comments_pkey PRIMARY KEY (id);


--
-- Name: notes_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);


--
-- Name: redactor_images_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY redactor_images
    ADD CONSTRAINT redactor_images_pkey PRIMARY KEY (id);


--
-- Name: resource_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY resource_comments
    ADD CONSTRAINT resource_comments_pkey PRIMARY KEY (id);


--
-- Name: resources_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY resources
    ADD CONSTRAINT resources_pkey PRIMARY KEY (id);


--
-- Name: schedules_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY schedules
    ADD CONSTRAINT schedules_pkey PRIMARY KEY (id);


--
-- Name: shares_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY shares
    ADD CONSTRAINT shares_pkey PRIMARY KEY (id);


--
-- Name: theses_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY theses
    ADD CONSTRAINT theses_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: deploy; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_laboratories_on_department_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_laboratories_on_department_id ON laboratories USING btree (department_id);


--
-- Name: index_missions_on_schedule_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_missions_on_schedule_id ON missions USING btree (schedule_id);


--
-- Name: index_note_comments_on_note_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_note_comments_on_note_id ON note_comments USING btree (note_id);


--
-- Name: index_notes_on_user_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_notes_on_user_id ON notes USING btree (user_id);


--
-- Name: index_resource_comments_on_resource_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_resource_comments_on_resource_id ON resource_comments USING btree (resource_id);


--
-- Name: index_resources_on_user_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_resources_on_user_id ON resources USING btree (user_id);


--
-- Name: index_schedules_on_user_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_schedules_on_user_id ON schedules USING btree (user_id);


--
-- Name: index_theses_on_user_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_theses_on_user_id ON theses USING btree (user_id);


--
-- Name: index_users_on_department_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_users_on_department_id ON users USING btree (department_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_laboratory_id; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE INDEX index_users_on_laboratory_id ON users USING btree (laboratory_id);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: deploy; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: fk_rails_250ed64e61; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY resources
    ADD CONSTRAINT fk_rails_250ed64e61 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_3c311b9086; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY note_comments
    ADD CONSTRAINT fk_rails_3c311b9086 FOREIGN KEY (note_id) REFERENCES notes(id);


--
-- Name: fk_rails_3c900465fa; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY schedules
    ADD CONSTRAINT fk_rails_3c900465fa FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_7f2323ad43; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY notes
    ADD CONSTRAINT fk_rails_7f2323ad43 FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_b3e9011a93; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY users
    ADD CONSTRAINT fk_rails_b3e9011a93 FOREIGN KEY (laboratory_id) REFERENCES laboratories(id);


--
-- Name: fk_rails_b91bdde74d; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY theses
    ADD CONSTRAINT fk_rails_b91bdde74d FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_cee8bffdf1; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY laboratories
    ADD CONSTRAINT fk_rails_cee8bffdf1 FOREIGN KEY (department_id) REFERENCES departments(id);


--
-- Name: fk_rails_e00a20a2d2; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY missions
    ADD CONSTRAINT fk_rails_e00a20a2d2 FOREIGN KEY (schedule_id) REFERENCES schedules(id);


--
-- Name: fk_rails_f2247e7de5; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY resource_comments
    ADD CONSTRAINT fk_rails_f2247e7de5 FOREIGN KEY (resource_id) REFERENCES resources(id);


--
-- Name: fk_rails_f29bf9cdf2; Type: FK CONSTRAINT; Schema: public; Owner: deploy
--

ALTER TABLE ONLY users
    ADD CONSTRAINT fk_rails_f29bf9cdf2 FOREIGN KEY (department_id) REFERENCES departments(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

