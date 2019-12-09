--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: address_address; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.address_address (
    id integer NOT NULL,
    street_number character varying(20) NOT NULL,
    route character varying(100) NOT NULL,
    raw character varying(200) NOT NULL,
    formatted character varying(200) NOT NULL,
    latitude double precision,
    longitude double precision,
    locality_id integer
);


ALTER TABLE public.address_address OWNER TO adminju;

--
-- Name: address_address_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.address_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_address_id_seq OWNER TO adminju;

--
-- Name: address_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.address_address_id_seq OWNED BY public.address_address.id;


--
-- Name: address_country; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.address_country (
    id integer NOT NULL,
    name character varying(40) NOT NULL,
    code character varying(2) NOT NULL
);


ALTER TABLE public.address_country OWNER TO adminju;

--
-- Name: address_country_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.address_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_country_id_seq OWNER TO adminju;

--
-- Name: address_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.address_country_id_seq OWNED BY public.address_country.id;


--
-- Name: address_locality; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.address_locality (
    id integer NOT NULL,
    name character varying(165) NOT NULL,
    postal_code character varying(10) NOT NULL,
    state_id integer NOT NULL
);


ALTER TABLE public.address_locality OWNER TO adminju;

--
-- Name: address_locality_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.address_locality_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_locality_id_seq OWNER TO adminju;

--
-- Name: address_locality_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.address_locality_id_seq OWNED BY public.address_locality.id;


--
-- Name: address_state; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.address_state (
    id integer NOT NULL,
    name character varying(165) NOT NULL,
    code character varying(3) NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.address_state OWNER TO adminju;

--
-- Name: address_state_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.address_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_state_id_seq OWNER TO adminju;

--
-- Name: address_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.address_state_id_seq OWNED BY public.address_state.id;


--
-- Name: app_action; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_action (
    general_ptr_id integer NOT NULL,
    act text NOT NULL
);


ALTER TABLE public.app_action OWNER TO adminju;

--
-- Name: app_agediscount; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_agediscount (
    rate_ptr_id integer NOT NULL
);


ALTER TABLE public.app_agediscount OWNER TO adminju;

--
-- Name: app_area; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_area (
    general_ptr_id integer NOT NULL,
    text character varying(100),
    about text
);


ALTER TABLE public.app_area OWNER TO adminju;

--
-- Name: app_area_images; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_area_images (
    id integer NOT NULL,
    area_id integer NOT NULL,
    imageproduct_id integer NOT NULL
);


ALTER TABLE public.app_area_images OWNER TO adminju;

--
-- Name: app_area_images_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.app_area_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_area_images_id_seq OWNER TO adminju;

--
-- Name: app_area_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.app_area_images_id_seq OWNED BY public.app_area_images.id;


--
-- Name: app_atec; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_atec (
    general_ptr_id integer NOT NULL,
    field_name text,
    field_cedjuri text,
    field_tel_cellular text,
    field_localisation text,
    field_tel_officina text,
    field_mail text,
    logo character varying(100),
    field_thanks text,
    field_recommandations text,
    image_1 character varying(100),
    image_2 character varying(100),
    image_3 character varying(100),
    image_4 character varying(100),
    image_5 character varying(100),
    link_1 text,
    link_2 text,
    link_3 text,
    link_4 text,
    link_5 text,
    size_1 text,
    size_2 text,
    size_3 text,
    size_4 text,
    size_5 text,
    size_logo text
);


ALTER TABLE public.app_atec OWNER TO adminju;

--
-- Name: app_attributeproduct; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_attributeproduct (
    general_ptr_id integer NOT NULL,
    text text NOT NULL
);


ALTER TABLE public.app_attributeproduct OWNER TO adminju;

--
-- Name: app_category; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_category (
    general_ptr_id integer NOT NULL,
    text character varying(100),
    image_id integer
);


ALTER TABLE public.app_category OWNER TO adminju;

--
-- Name: app_content; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_content (
    general_ptr_id integer NOT NULL,
    wp_conservation character varying(100) NOT NULL,
    wp_cultural character varying(100) NOT NULL,
    wp_cultural_text text NOT NULL,
    wp_impact character varying(100) NOT NULL,
    wp_conservation_text text NOT NULL,
    wp_ecotourism text NOT NULL,
    wp_ecotourism_btn character varying(100) NOT NULL,
    wp_where text NOT NULL,
    wp_most text NOT NULL,
    wp_how text NOT NULL,
    wp_new text NOT NULL,
    wp_latest text NOT NULL,
    wp_community text NOT NULL,
    tc_header character varying(100) NOT NULL,
    tl_header character varying(100) NOT NULL,
    about character varying(100) NOT NULL,
    btn_book character varying(100) NOT NULL,
    btn_special character varying(100) NOT NULL,
    tours character varying(100) NOT NULL,
    tours_cat character varying(100) NOT NULL,
    tours_loc character varying(100) NOT NULL,
    welcome character varying(100) NOT NULL,
    contact text NOT NULL,
    contact_infos text NOT NULL,
    donate text NOT NULL,
    support text NOT NULL,
    visit text NOT NULL,
    all_tours character varying(100) NOT NULL,
    most_pop character varying(100) NOT NULL,
    special_offer character varying(100) NOT NULL,
    btn_about character varying(100) NOT NULL,
    btn_book2 character varying(100) NOT NULL,
    wp_header1 character varying(100) NOT NULL,
    wp_header2 character varying(1000) NOT NULL,
    account character varying(100) NOT NULL,
    wp_impact_text text NOT NULL,
    tc_header_image character varying(100),
    tl_header_image character varying(100),
    contact_mail character varying(100) NOT NULL,
    contact_message character varying(100) NOT NULL,
    contact_subject character varying(100) NOT NULL,
    contact_name character varying(100) NOT NULL,
    contact_title character varying(100) NOT NULL,
    donate_img character varying(100),
    donate_link text,
    donate_title character varying(100) NOT NULL,
    donate_text text,
    about_en character varying(100),
    about_es character varying(100),
    about_fr character varying(100),
    account_en character varying(100),
    account_es character varying(100),
    account_fr character varying(100),
    all_tours_en character varying(100),
    all_tours_es character varying(100),
    all_tours_fr character varying(100),
    btn_about_en character varying(100),
    btn_about_es character varying(100),
    btn_about_fr character varying(100),
    btn_book2_en character varying(100),
    btn_book2_es character varying(100),
    btn_book2_fr character varying(100),
    btn_book_en character varying(100),
    btn_book_es character varying(100),
    btn_book_fr character varying(100),
    btn_special_en character varying(100),
    btn_special_es character varying(100),
    btn_special_fr character varying(100),
    contact_en text,
    contact_es text,
    contact_fr text,
    contact_infos_en text,
    contact_infos_es text,
    contact_infos_fr text,
    contact_mail_en character varying(100),
    contact_mail_es character varying(100),
    contact_mail_fr character varying(100),
    contact_message_en character varying(100),
    contact_message_es character varying(100),
    contact_message_fr character varying(100),
    contact_name_en character varying(100),
    contact_name_es character varying(100),
    contact_name_fr character varying(100),
    contact_subject_en character varying(100),
    contact_subject_es character varying(100),
    contact_subject_fr character varying(100),
    contact_title_en character varying(100),
    contact_title_es character varying(100),
    contact_title_fr character varying(100),
    donate_en text,
    donate_es text,
    donate_fr text,
    donate_img_en character varying(100),
    donate_img_es character varying(100),
    donate_img_fr character varying(100),
    donate_link_en text,
    donate_link_es text,
    donate_link_fr text,
    donate_text_en text,
    donate_text_es text,
    donate_text_fr text,
    donate_title_en character varying(100),
    donate_title_es character varying(100),
    donate_title_fr character varying(100),
    most_pop_en character varying(100),
    most_pop_es character varying(100),
    most_pop_fr character varying(100),
    special_offer_en character varying(100),
    special_offer_es character varying(100),
    special_offer_fr character varying(100),
    support_en text,
    support_es text,
    support_fr text,
    tc_header_en character varying(100),
    tc_header_es character varying(100),
    tc_header_fr character varying(100),
    tl_header_en character varying(100),
    tl_header_es character varying(100),
    tl_header_fr character varying(100),
    tours_cat_en character varying(100),
    tours_cat_es character varying(100),
    tours_cat_fr character varying(100),
    tours_en character varying(100),
    tours_es character varying(100),
    tours_fr character varying(100),
    tours_loc_en character varying(100),
    tours_loc_es character varying(100),
    tours_loc_fr character varying(100),
    visit_en text,
    visit_es text,
    visit_fr text,
    welcome_en character varying(100),
    welcome_es character varying(100),
    welcome_fr character varying(100),
    wp_community_en text,
    wp_community_es text,
    wp_community_fr text,
    wp_conservation_en character varying(100),
    wp_conservation_es character varying(100),
    wp_conservation_fr character varying(100),
    wp_conservation_text_en text,
    wp_conservation_text_es text,
    wp_conservation_text_fr text,
    wp_cultural_en character varying(100),
    wp_cultural_es character varying(100),
    wp_cultural_fr character varying(100),
    wp_cultural_text_en text,
    wp_cultural_text_es text,
    wp_cultural_text_fr text,
    wp_ecotourism_btn_en character varying(100),
    wp_ecotourism_btn_es character varying(100),
    wp_ecotourism_btn_fr character varying(100),
    wp_ecotourism_en text,
    wp_ecotourism_es text,
    wp_ecotourism_fr text,
    wp_header1_en character varying(100),
    wp_header1_es character varying(100),
    wp_header1_fr character varying(100),
    wp_header2_en character varying(1000),
    wp_header2_es character varying(1000),
    wp_header2_fr character varying(1000),
    wp_how_en text,
    wp_how_es text,
    wp_how_fr text,
    wp_impact_en character varying(100),
    wp_impact_es character varying(100),
    wp_impact_fr character varying(100),
    wp_impact_text_en text,
    wp_impact_text_es text,
    wp_impact_text_fr text,
    wp_latest_en text,
    wp_latest_es text,
    wp_latest_fr text,
    wp_most_en text,
    wp_most_es text,
    wp_most_fr text,
    wp_new_en text,
    wp_new_es text,
    wp_new_fr text,
    wp_where_en text,
    wp_where_es text,
    wp_where_fr text,
    field_adults character varying(100) NOT NULL,
    field_children character varying(100) NOT NULL,
    field_famname character varying(100) NOT NULL,
    field_language character varying(100) NOT NULL,
    field_language_prefered character varying(100) NOT NULL,
    field_mail character varying(100) NOT NULL,
    field_more_info character varying(100) NOT NULL,
    field_name character varying(100) NOT NULL,
    field_phone character varying(100) NOT NULL,
    reservation_text text NOT NULL,
    field_date character varying(100) NOT NULL,
    reservation_information text NOT NULL,
    mail_message_contact text NOT NULL,
    mail_message_reservation text NOT NULL,
    mail_subject_contact text NOT NULL,
    mail_subject_reservation text NOT NULL,
    mail_message_contact_en text,
    mail_message_contact_es text,
    mail_message_contact_fr text,
    mail_message_reservation_en text,
    mail_message_reservation_es text,
    mail_message_reservation_fr text,
    mail_subject_contact_en text,
    mail_subject_contact_es text,
    mail_subject_contact_fr text,
    mail_subject_reservation_en text,
    mail_subject_reservation_es text,
    mail_subject_reservation_fr text,
    not_available text NOT NULL
);


ALTER TABLE public.app_content OWNER TO adminju;

--
-- Name: app_coupon; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_coupon (
    general_ptr_id integer NOT NULL,
    numero integer NOT NULL,
    image character varying(100),
    size text
);


ALTER TABLE public.app_coupon OWNER TO adminju;

--
-- Name: app_general; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_general (
    id integer NOT NULL,
    state text NOT NULL,
    creation timestamp with time zone NOT NULL,
    last_modification timestamp with time zone NOT NULL
);


ALTER TABLE public.app_general OWNER TO adminju;

--
-- Name: app_general_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.app_general_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_general_id_seq OWNER TO adminju;

--
-- Name: app_general_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.app_general_id_seq OWNED BY public.app_general.id;


--
-- Name: app_imageproduct; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_imageproduct (
    general_ptr_id integer NOT NULL,
    alt text NOT NULL,
    image character varying(100) NOT NULL,
    size double precision NOT NULL
);


ALTER TABLE public.app_imageproduct OWNER TO adminju;

--
-- Name: app_languageperson; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_languageperson (
    general_ptr_id integer NOT NULL,
    lang character varying(100) NOT NULL
);


ALTER TABLE public.app_languageperson OWNER TO adminju;

--
-- Name: app_linereservation; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_linereservation (
    general_ptr_id integer NOT NULL,
    quantity integer NOT NULL,
    date_start timestamp with time zone NOT NULL,
    date_end timestamp with time zone NOT NULL,
    payment_guide text NOT NULL,
    client_id integer,
    guide_id integer,
    line_product_id integer,
    line_reservation_id integer,
    sell_price_id integer,
    discounted double precision,
    language_reservation_id integer,
    card_paypal boolean NOT NULL,
    eventid text,
    confirmation_of_guide boolean NOT NULL,
    line_state text NOT NULL,
    more_info_client text,
    prefered_language text
);


ALTER TABLE public.app_linereservation OWNER TO adminju;

--
-- Name: app_location; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_location (
    general_ptr_id integer NOT NULL,
    lat double precision,
    long double precision,
    name character varying(1000) NOT NULL
);


ALTER TABLE public.app_location OWNER TO adminju;

--
-- Name: app_mail; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_mail (
    general_ptr_id integer NOT NULL,
    email character varying(254) NOT NULL,
    per_id integer
);


ALTER TABLE public.app_mail OWNER TO adminju;

--
-- Name: app_menu; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_menu (
    general_ptr_id integer NOT NULL,
    rank1 boolean NOT NULL,
    rank2 boolean NOT NULL,
    rank1_text character varying(100) NOT NULL,
    rank2_text character varying(100),
    rank1_text_es character varying(100),
    rank1_text_fr character varying(100),
    rank2_text_es character varying(100),
    rank2_text_fr character varying(100),
    rank1_text_en character varying(100),
    rank2_text_en character varying(100)
);


ALTER TABLE public.app_menu OWNER TO adminju;

--
-- Name: app_news; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_news (
    general_ptr_id integer NOT NULL,
    title character varying(1000),
    sub_title character varying(1000),
    text text,
    categ_id integer,
    image_1_id integer,
    image_2_id integer,
    user_id integer,
    prod_id integer,
    discount boolean NOT NULL
);


ALTER TABLE public.app_news OWNER TO adminju;

--
-- Name: app_news_category; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_news_category (
    general_ptr_id integer NOT NULL,
    cat character varying(1000)
);


ALTER TABLE public.app_news_category OWNER TO adminju;

--
-- Name: app_note; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_note (
    general_ptr_id integer NOT NULL,
    text text,
    line_id integer,
    user_id integer
);


ALTER TABLE public.app_note OWNER TO adminju;

--
-- Name: app_paymentreservation; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_paymentreservation (
    general_ptr_id integer NOT NULL,
    price double precision,
    date timestamp with time zone NOT NULL,
    payment_reservation_id integer,
    type_payment_id integer
);


ALTER TABLE public.app_paymentreservation OWNER TO adminju;

--
-- Name: app_person; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_person (
    general_ptr_id integer NOT NULL,
    "NIN" integer,
    name character varying(100) NOT NULL,
    fam_name character varying(100),
    date_birth date,
    nationality character varying(2),
    "name_Hotel" text,
    detail_location text,
    type_id integer,
    user_id integer
);


ALTER TABLE public.app_person OWNER TO adminju;

--
-- Name: app_person_language; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_person_language (
    id integer NOT NULL,
    person_id integer NOT NULL,
    languageperson_id integer NOT NULL
);


ALTER TABLE public.app_person_language OWNER TO adminju;

--
-- Name: app_person_language_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.app_person_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_person_language_id_seq OWNER TO adminju;

--
-- Name: app_person_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.app_person_language_id_seq OWNED BY public.app_person_language.id;


--
-- Name: app_person_location; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_person_location (
    id integer NOT NULL,
    person_id integer NOT NULL,
    location_id integer NOT NULL
);


ALTER TABLE public.app_person_location OWNER TO adminju;

--
-- Name: app_person_location_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.app_person_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_person_location_id_seq OWNER TO adminju;

--
-- Name: app_person_location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.app_person_location_id_seq OWNED BY public.app_person_location.id;


--
-- Name: app_person_product; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_person_product (
    id integer NOT NULL,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.app_person_product OWNER TO adminju;

--
-- Name: app_person_product_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.app_person_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_person_product_id_seq OWNER TO adminju;

--
-- Name: app_person_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.app_person_product_id_seq OWNED BY public.app_person_product.id;


--
-- Name: app_phone; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_phone (
    general_ptr_id integer NOT NULL,
    tel character varying(128) NOT NULL,
    per_id integer
);


ALTER TABLE public.app_phone OWNER TO adminju;

--
-- Name: app_priceproduct; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_priceproduct (
    general_ptr_id integer NOT NULL,
    year integer NOT NULL,
    "net_ATEC" double precision,
    rack double precision,
    date_start_offer date NOT NULL,
    date_end_offer date NOT NULL,
    information text,
    specialoffer_percent_discount integer NOT NULL,
    price_product_id integer,
    age_discount_id integer,
    rate_discount_id integer,
    "net_AGENCIA" double precision
);


ALTER TABLE public.app_priceproduct OWNER TO adminju;

--
-- Name: app_product; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_product (
    general_ptr_id integer NOT NULL,
    type text NOT NULL,
    stock_id integer,
    description text NOT NULL,
    name character varying(1000) NOT NULL,
    ar_id integer,
    cat_id integer,
    image_id integer,
    most_popular text NOT NULL,
    text text,
    informations text,
    available_lang_id integer,
    recommandations text NOT NULL
);


ALTER TABLE public.app_product OWNER TO adminju;

--
-- Name: app_product_attribute; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_product_attribute (
    id integer NOT NULL,
    product_id integer NOT NULL,
    attributeproduct_id integer NOT NULL
);


ALTER TABLE public.app_product_attribute OWNER TO adminju;

--
-- Name: app_product_attribute_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.app_product_attribute_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_product_attribute_id_seq OWNER TO adminju;

--
-- Name: app_product_attribute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.app_product_attribute_id_seq OWNED BY public.app_product_attribute.id;


--
-- Name: app_product_location; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_product_location (
    id integer NOT NULL,
    product_id integer NOT NULL,
    location_id integer NOT NULL
);


ALTER TABLE public.app_product_location OWNER TO adminju;

--
-- Name: app_product_location_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.app_product_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_product_location_id_seq OWNER TO adminju;

--
-- Name: app_product_location_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.app_product_location_id_seq OWNED BY public.app_product_location.id;


--
-- Name: app_product_multipleimages; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_product_multipleimages (
    id integer NOT NULL,
    product_id integer NOT NULL,
    imageproduct_id integer NOT NULL
);


ALTER TABLE public.app_product_multipleimages OWNER TO adminju;

--
-- Name: app_product_multipleimages_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.app_product_multipleimages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_product_multipleimages_id_seq OWNER TO adminju;

--
-- Name: app_product_multipleimages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.app_product_multipleimages_id_seq OWNED BY public.app_product_multipleimages.id;


--
-- Name: app_rate; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_rate (
    general_ptr_id integer NOT NULL,
    text character varying(100) NOT NULL,
    percentage integer NOT NULL
);


ALTER TABLE public.app_rate OWNER TO adminju;

--
-- Name: app_ratediscount; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_ratediscount (
    rate_ptr_id integer NOT NULL,
    agency_id integer
);


ALTER TABLE public.app_ratediscount OWNER TO adminju;

--
-- Name: app_reservation; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_reservation (
    general_ptr_id integer NOT NULL,
    number_reservation integer NOT NULL,
    payment_state text NOT NULL,
    more_info text,
    total_payments double precision,
    total_to_pay double precision,
    total_costs double precision,
    user_id integer,
    tax_price_id integer,
    sub_total_to_pay double precision
);


ALTER TABLE public.app_reservation OWNER TO adminju;

--
-- Name: app_reservation_number_reservation_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.app_reservation_number_reservation_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.app_reservation_number_reservation_seq OWNER TO adminju;

--
-- Name: app_reservation_number_reservation_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.app_reservation_number_reservation_seq OWNED BY public.app_reservation.number_reservation;


--
-- Name: app_stateform; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_stateform (
    general_ptr_id integer NOT NULL,
    type character varying(100) NOT NULL
);


ALTER TABLE public.app_stateform OWNER TO adminju;

--
-- Name: app_stockproduct; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_stockproduct (
    general_ptr_id integer NOT NULL,
    nb_shop integer NOT NULL,
    nb_stock integer NOT NULL
);


ALTER TABLE public.app_stockproduct OWNER TO adminju;

--
-- Name: app_task; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_task (
    general_ptr_id integer NOT NULL,
    description text NOT NULL,
    assigned_date date NOT NULL,
    delivery_date date,
    cause text,
    assigner_auto_id integer,
    task_state_id integer,
    assigned_user_id integer
);


ALTER TABLE public.app_task OWNER TO adminju;

--
-- Name: app_tax; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_tax (
    general_ptr_id integer NOT NULL,
    text text NOT NULL,
    percentage integer NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.app_tax OWNER TO adminju;

--
-- Name: app_typepayment; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_typepayment (
    general_ptr_id integer NOT NULL,
    type character varying(100) NOT NULL
);


ALTER TABLE public.app_typepayment OWNER TO adminju;

--
-- Name: app_typeperson; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_typeperson (
    general_ptr_id integer NOT NULL,
    type character varying(100) NOT NULL
);


ALTER TABLE public.app_typeperson OWNER TO adminju;

--
-- Name: app_webpage; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.app_webpage (
    general_ptr_id integer NOT NULL,
    text boolean NOT NULL,
    new boolean NOT NULL,
    tour boolean NOT NULL,
    contact boolean NOT NULL,
    image_header character varying(100),
    text_template1 text,
    btn_text text,
    btn_text_btn character varying(100),
    btn_url character varying(1000),
    article_nb integer NOT NULL,
    tours_nb integer NOT NULL,
    menu_bar_id integer,
    news_cat_id integer,
    name character varying(100) NOT NULL,
    text_template2 text,
    news_text text,
    tours_text text,
    donate boolean NOT NULL,
    text_template3 text,
    most_pop boolean NOT NULL,
    tours_cat text,
    tour_footer boolean NOT NULL
);


ALTER TABLE public.app_webpage OWNER TO adminju;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO adminju;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO adminju;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO adminju;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO adminju;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO adminju;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO adminju;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO adminju;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO adminju;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO adminju;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO adminju;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO adminju;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO adminju;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO adminju;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO adminju;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO adminju;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO adminju;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO adminju;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO adminju;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO adminju;

--
-- Name: django_summernote_attachment; Type: TABLE; Schema: public; Owner: adminju
--

CREATE TABLE public.django_summernote_attachment (
    id integer NOT NULL,
    name character varying(255),
    file character varying(100) NOT NULL,
    uploaded timestamp with time zone NOT NULL
);


ALTER TABLE public.django_summernote_attachment OWNER TO adminju;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: adminju
--

CREATE SEQUENCE public.django_summernote_attachment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_summernote_attachment_id_seq OWNER TO adminju;

--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminju
--

ALTER SEQUENCE public.django_summernote_attachment_id_seq OWNED BY public.django_summernote_attachment.id;


--
-- Name: address_address id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.address_address ALTER COLUMN id SET DEFAULT nextval('public.address_address_id_seq'::regclass);


--
-- Name: address_country id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.address_country ALTER COLUMN id SET DEFAULT nextval('public.address_country_id_seq'::regclass);


--
-- Name: address_locality id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.address_locality ALTER COLUMN id SET DEFAULT nextval('public.address_locality_id_seq'::regclass);


--
-- Name: address_state id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.address_state ALTER COLUMN id SET DEFAULT nextval('public.address_state_id_seq'::regclass);


--
-- Name: app_area_images id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_area_images ALTER COLUMN id SET DEFAULT nextval('public.app_area_images_id_seq'::regclass);


--
-- Name: app_general id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_general ALTER COLUMN id SET DEFAULT nextval('public.app_general_id_seq'::regclass);


--
-- Name: app_person_language id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person_language ALTER COLUMN id SET DEFAULT nextval('public.app_person_language_id_seq'::regclass);


--
-- Name: app_person_location id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person_location ALTER COLUMN id SET DEFAULT nextval('public.app_person_location_id_seq'::regclass);


--
-- Name: app_person_product id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person_product ALTER COLUMN id SET DEFAULT nextval('public.app_person_product_id_seq'::regclass);


--
-- Name: app_product_attribute id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product_attribute ALTER COLUMN id SET DEFAULT nextval('public.app_product_attribute_id_seq'::regclass);


--
-- Name: app_product_location id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product_location ALTER COLUMN id SET DEFAULT nextval('public.app_product_location_id_seq'::regclass);


--
-- Name: app_product_multipleimages id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product_multipleimages ALTER COLUMN id SET DEFAULT nextval('public.app_product_multipleimages_id_seq'::regclass);


--
-- Name: app_reservation number_reservation; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_reservation ALTER COLUMN number_reservation SET DEFAULT nextval('public.app_reservation_number_reservation_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_summernote_attachment id; Type: DEFAULT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.django_summernote_attachment ALTER COLUMN id SET DEFAULT nextval('public.django_summernote_attachment_id_seq'::regclass);


--
-- Data for Name: address_address; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.address_address (id, street_number, route, raw, formatted, latitude, longitude, locality_id) FROM stdin;
\.


--
-- Data for Name: address_country; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.address_country (id, name, code) FROM stdin;
\.


--
-- Data for Name: address_locality; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.address_locality (id, name, postal_code, state_id) FROM stdin;
\.


--
-- Data for Name: address_state; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.address_state (id, name, code, country_id) FROM stdin;
\.


--
-- Data for Name: app_action; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_action (general_ptr_id, act) FROM stdin;
1	2019-11-21 21:02:44.623348+00:00 justin  modified or created element None of class General
5	2019-11-21 21:16:51.006118+00:00 justin  modified or created element None of class ImageProduct
7	2019-11-21 21:17:11.464458+00:00 justin  modified or created element None of class ImageProduct
9	2019-11-21 21:18:26.346368+00:00 justin  modified or created element None of class News_category
11	2019-11-21 21:18:35.725989+00:00 justin  modified or created element None of class News_category
13	2019-11-21 21:18:42.044249+00:00 justin  modified or created element None of class News_category
15	2019-11-21 21:18:48.470710+00:00 justin  modified or created element None of class News_category
17	2019-11-21 21:18:54.663069+00:00 justin  modified or created element None of class News_category
19	2019-11-21 21:19:48.362206+00:00 justin  modified or created element None of class AttributeProduct
21	2019-11-21 21:20:30.386376+00:00 justin  modified or created element None of class Location
23	2019-11-21 21:21:08.762264+00:00 justin  modified or created element None of class LanguagePerson
25	2019-11-21 21:21:31.690785+00:00 justin  modified or created element None of class Area
27	2019-11-21 21:22:00.399491+00:00 justin  modified or created element None of class Product
29	2019-11-21 21:22:27.946232+00:00 justin  modified or created element None of class Category
31	2019-11-21 21:22:00.436235+00:00 justin  modified or created element 28 of class Product
32	2019-11-21 21:22:38.272022+00:00 justin  modified or created element None of class News
34	2019-11-21 21:51:53.233080+00:00 justin  modified or created element None of class Menu
36	2019-11-21 21:51:53.241597+00:00 justin  modified or created element 35 of class Menu
37	2019-11-21 21:52:22.911232+00:00 justin  modified or created element 35 of class Menu
38	2019-11-21 21:56:34.261472+00:00 justin  modified or created element None of class WebPage
40	2019-11-21 21:54:04.700467+00:00 justin  modified or created element 35 of class Menu
41	2019-11-21 21:56:34.280203+00:00 justin  modified or created element 39 of class WebPage
42	2019-11-21 22:01:06.227624+00:00 justin  modified or created element None of class AgeDiscount
44	2019-11-21 22:01:17.281654+00:00 justin  modified or created element None of class AgeDiscount
46	2019-11-21 22:01:33.175958+00:00 justin  modified or created element None of class RateDiscount
48	2019-11-21 22:01:43.113887+00:00 justin  modified or created element None of class RateDiscount
50	2019-11-21 21:22:32.298670+00:00 justin  modified or created element 28 of class Product
52	2019-11-21 22:16:41.486477+00:00 justin  modified or created element None of class Menu
54	2019-11-21 21:57:20.700178+00:00 justin  modified or created element 35 of class Menu
55	2019-11-21 22:40:24.416244+00:00 justin  modified or created element None of class Menu
57	2019-11-21 22:40:24.425587+00:00 justin  modified or created element 56 of class Menu
\.


--
-- Data for Name: app_agediscount; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_agediscount (rate_ptr_id) FROM stdin;
43
45
\.


--
-- Data for Name: app_area; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_area (general_ptr_id, text, about) FROM stdin;
26	Puerto Viejo	Puerto Viejo About
\.


--
-- Data for Name: app_area_images; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_area_images (id, area_id, imageproduct_id) FROM stdin;
1	26	8
2	26	6
\.


--
-- Data for Name: app_atec; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_atec (general_ptr_id, field_name, field_cedjuri, field_tel_cellular, field_localisation, field_tel_officina, field_mail, logo, field_thanks, field_recommandations, image_1, image_2, image_3, image_4, image_5, link_1, link_2, link_3, link_4, link_5, size_1, size_2, size_3, size_4, size_5, size_logo) FROM stdin;
\.


--
-- Data for Name: app_attributeproduct; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_attributeproduct (general_ptr_id, text) FROM stdin;
20	Attribute 1
\.


--
-- Data for Name: app_category; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_category (general_ptr_id, text, image_id) FROM stdin;
30	Sports	6
\.


--
-- Data for Name: app_content; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_content (general_ptr_id, wp_conservation, wp_cultural, wp_cultural_text, wp_impact, wp_conservation_text, wp_ecotourism, wp_ecotourism_btn, wp_where, wp_most, wp_how, wp_new, wp_latest, wp_community, tc_header, tl_header, about, btn_book, btn_special, tours, tours_cat, tours_loc, welcome, contact, contact_infos, donate, support, visit, all_tours, most_pop, special_offer, btn_about, btn_book2, wp_header1, wp_header2, account, wp_impact_text, tc_header_image, tl_header_image, contact_mail, contact_message, contact_subject, contact_name, contact_title, donate_img, donate_link, donate_title, donate_text, about_en, about_es, about_fr, account_en, account_es, account_fr, all_tours_en, all_tours_es, all_tours_fr, btn_about_en, btn_about_es, btn_about_fr, btn_book2_en, btn_book2_es, btn_book2_fr, btn_book_en, btn_book_es, btn_book_fr, btn_special_en, btn_special_es, btn_special_fr, contact_en, contact_es, contact_fr, contact_infos_en, contact_infos_es, contact_infos_fr, contact_mail_en, contact_mail_es, contact_mail_fr, contact_message_en, contact_message_es, contact_message_fr, contact_name_en, contact_name_es, contact_name_fr, contact_subject_en, contact_subject_es, contact_subject_fr, contact_title_en, contact_title_es, contact_title_fr, donate_en, donate_es, donate_fr, donate_img_en, donate_img_es, donate_img_fr, donate_link_en, donate_link_es, donate_link_fr, donate_text_en, donate_text_es, donate_text_fr, donate_title_en, donate_title_es, donate_title_fr, most_pop_en, most_pop_es, most_pop_fr, special_offer_en, special_offer_es, special_offer_fr, support_en, support_es, support_fr, tc_header_en, tc_header_es, tc_header_fr, tl_header_en, tl_header_es, tl_header_fr, tours_cat_en, tours_cat_es, tours_cat_fr, tours_en, tours_es, tours_fr, tours_loc_en, tours_loc_es, tours_loc_fr, visit_en, visit_es, visit_fr, welcome_en, welcome_es, welcome_fr, wp_community_en, wp_community_es, wp_community_fr, wp_conservation_en, wp_conservation_es, wp_conservation_fr, wp_conservation_text_en, wp_conservation_text_es, wp_conservation_text_fr, wp_cultural_en, wp_cultural_es, wp_cultural_fr, wp_cultural_text_en, wp_cultural_text_es, wp_cultural_text_fr, wp_ecotourism_btn_en, wp_ecotourism_btn_es, wp_ecotourism_btn_fr, wp_ecotourism_en, wp_ecotourism_es, wp_ecotourism_fr, wp_header1_en, wp_header1_es, wp_header1_fr, wp_header2_en, wp_header2_es, wp_header2_fr, wp_how_en, wp_how_es, wp_how_fr, wp_impact_en, wp_impact_es, wp_impact_fr, wp_impact_text_en, wp_impact_text_es, wp_impact_text_fr, wp_latest_en, wp_latest_es, wp_latest_fr, wp_most_en, wp_most_es, wp_most_fr, wp_new_en, wp_new_es, wp_new_fr, wp_where_en, wp_where_es, wp_where_fr, field_adults, field_children, field_famname, field_language, field_language_prefered, field_mail, field_more_info, field_name, field_phone, reservation_text, field_date, reservation_information, mail_message_contact, mail_message_reservation, mail_subject_contact, mail_subject_reservation, mail_message_contact_en, mail_message_contact_es, mail_message_contact_fr, mail_message_reservation_en, mail_message_reservation_es, mail_message_reservation_fr, mail_subject_contact_en, mail_subject_contact_es, mail_subject_contact_fr, mail_subject_reservation_en, mail_subject_reservation_es, mail_subject_reservation_fr, not_available) FROM stdin;
2	Conservation	Cultural Awareness	Local guides teach you about the diverse cultures of Talamanca.	Positive Impact	ATEC is a strong advocate for protecting the unique ecosystem of Caribe Sur.	Let us show you Caribe Sur Ecotourism, pura vida style! Explore Puerto Viejo and surrounding areas while contributing to sustainable economic development and the expansion of social and educational opportunities for local residents. Learn about the environmental degradation in Talamanca and explore ideas for living in environmentally responsible ways, the pura vida = pure life.	Browse All Destinations	Where to start	Most Popular Tours	How do you want to explore ?	New Tours & Must See s	The latest...	Community Projects & Special Offers	Tours Categories	Tours Locations	About ATEC	Book a tour	Special Offers	Tours	Tours by Category	Tours Location	Welcome	CONTACT	Phone: +506-2750-0398 WhatsApp: +506 8706-4758 E-Mail: direccionatec@gmail.com	DONATE	SUPPORT OUR WORK	VISIT US IN PUERTO VIEJO	All Tours	Most Popular Tours	Special Offers	About ATEC	Book a tour	ATEC	Asociacion Talamanquena de Ecoturismo y Conservacion	My Account	Leaving a positive impact on you, our community, and the environment.	24092019-P9240107_tT9hm4g.jpg	24092019-P9240107_tT9hm4g_6iQhx1m.jpg	Mail	Message	Subject	Name	Contact		https://www.paypal.com/donate/?token=rPCWcTH_YwMWvZeCac59rgdB5i4SiFXhNyKwNdu1EAXyZcRr-W_NXTUT1qHJOE2cz1YABW&country.x=US&locale.x=EN_US	Donate	How you can help… Interested in supporting our grassroots effort to sustain our communities? ATEC is an active, grassroots, non-profit community organization, founded in 1990. In our first years, we received special grants, mainly from the Inter American Foundation (IAF), the World Wildlife Fund (WWF) and the NC chapter of the Sierra Club. Since then, ATEC has been self-sustaining through the services we offer and the people who tour Talamanca with us. Nevertheless, ATEC often finds itself ‘scraping pots’ and trying to make ends meet in order to finance our own operational needs such as, equipment, staff, and our service projects in the communities which support Talamanca’s traditionally sustainable, family based economy.YOUR DONATION IS GREATLY APPRECIATED!	About ATEC	About ATEC	About ATEC	My Account	My Account	My Account	All Tours	All Tours	All Tours	About ATEC	About ATEC	About ATEC	Book a tour	Book a tour	Book a tour	Book a tour	Book a tour	Book a tour	Special Offers	Special Offers	Special Offers	CONTACT	CONTACT	CONTACT	Phone: +506-2750-0398 WhatsApp: +506 8706-4758 E-Mail: direccionatec@gmail.com	Phone: +506-2750-0398 WhatsApp: +506 8706-4758 E-Mail: direccionatec@gmail.com	Phone: +506-2750-0398 WhatsApp: +506 8706-4758 E-Mail: direccionatec@gmail.com	Mail	Mail	Mail	Message	Message	Message	Name	Name	Name	Subject	Subject	Subject	Contact	Contact	Contact	DONATE	DONATE	DONATE				https://www.paypal.com/donate/?token=rPCWcTH_YwMWvZeCac59rgdB5i4SiFXhNyKwNdu1EAXyZcRr-W_NXTUT1qHJOE2cz1YABW&country.x=US&locale.x=EN_US	https://www.paypal.com/donate/?token=rPCWcTH_YwMWvZeCac59rgdB5i4SiFXhNyKwNdu1EAXyZcRr-W_NXTUT1qHJOE2cz1YABW&country.x=US&locale.x=EN_US	https://www.paypal.com/donate/?token=rPCWcTH_YwMWvZeCac59rgdB5i4SiFXhNyKwNdu1EAXyZcRr-W_NXTUT1qHJOE2cz1YABW&country.x=US&locale.x=EN_US	How you can help… Interested in supporting our grassroots effort to sustain our communities? ATEC is an active, grassroots, non-profit community organization, founded in 1990. In our first years, we received special grants, mainly from the Inter American Foundation (IAF), the World Wildlife Fund (WWF) and the NC chapter of the Sierra Club. Since then, ATEC has been self-sustaining through the services we offer and the people who tour Talamanca with us. Nevertheless, ATEC often finds itself ‘scraping pots’ and trying to make ends meet in order to finance our own operational needs such as, equipment, staff, and our service projects in the communities which support Talamanca’s traditionally sustainable, family based economy.YOUR DONATION IS GREATLY APPRECIATED!	How you can help… Interested in supporting our grassroots effort to sustain our communities? ATEC is an active, grassroots, non-profit community organization, founded in 1990. In our first years, we received special grants, mainly from the Inter American Foundation (IAF), the World Wildlife Fund (WWF) and the NC chapter of the Sierra Club. Since then, ATEC has been self-sustaining through the services we offer and the people who tour Talamanca with us. Nevertheless, ATEC often finds itself ‘scraping pots’ and trying to make ends meet in order to finance our own operational needs such as, equipment, staff, and our service projects in the communities which support Talamanca’s traditionally sustainable, family based economy.YOUR DONATION IS GREATLY APPRECIATED!	How you can help… Interested in supporting our grassroots effort to sustain our communities? ATEC is an active, grassroots, non-profit community organization, founded in 1990. In our first years, we received special grants, mainly from the Inter American Foundation (IAF), the World Wildlife Fund (WWF) and the NC chapter of the Sierra Club. Since then, ATEC has been self-sustaining through the services we offer and the people who tour Talamanca with us. Nevertheless, ATEC often finds itself ‘scraping pots’ and trying to make ends meet in order to finance our own operational needs such as, equipment, staff, and our service projects in the communities which support Talamanca’s traditionally sustainable, family based economy.YOUR DONATION IS GREATLY APPRECIATED!	Donate	Donate	Donate	Most Popular Tours	Most Popular Tours	Most Popular Tours	Special Offers	Special Offers	Special Offers	SUPPORT OUR WORK	SUPPORT OUR WORK	SUPPORT OUR WORK	Tours Categories	Tours Categories	Tours Categories	Tours Locations	Tours Locations	Tours Locations	Tours by Category	Tours by Category	Tours by Category	Tours	Tours	Tours	Tours Location	Tours Location	Tours Location	VISIT US IN PUERTO VIEJO	VISIT US IN PUERTO VIEJO	VISIT US IN PUERTO VIEJO	Welcome	Welcome	Welcome	Community Projects & Special Offers	Community Projects & Special Offers	Community Projects & Special Offers	Conservation	Conservation	Conservation	ATEC is a strong advocate for protecting the unique ecosystem of Caribe Sur.	ATEC is a strong advocate for protecting the unique ecosystem of Caribe Sur.	ATEC is a strong advocate for protecting the unique ecosystem of Caribe Sur.	Cultural Awareness	Cultural Awareness	Cultural Awareness	Local guides teach you about the diverse cultures of Talamanca.	Local guides teach you about the diverse cultures of Talamanca.	Local guides teach you about the diverse cultures of Talamanca.	Browse All Destinations	Browse All Destinations	Browse All Destinations	Let us show you Caribe Sur Ecotourism, pura vida style! Explore Puerto Viejo and surrounding areas while contributing to sustainable economic development and the expansion of social and educational opportunities for local residents. Learn about the environmental degradation in Talamanca and explore ideas for living in environmentally responsible ways, the pura vida = pure life.	Let us show you Caribe Sur Ecotourism, pura vida style! Explore Puerto Viejo and surrounding areas while contributing to sustainable economic development and the expansion of social and educational opportunities for local residents. Learn about the environmental degradation in Talamanca and explore ideas for living in environmentally responsible ways, the pura vida = pure life.	Let us show you Caribe Sur Ecotourism, pura vida style! Explore Puerto Viejo and surrounding areas while contributing to sustainable economic development and the expansion of social and educational opportunities for local residents. Learn about the environmental degradation in Talamanca and explore ideas for living in environmentally responsible ways, the pura vida = pure life.	ATEC	ATEC	ATEC	Asociacion Talamanquena de Ecoturismo y Conservacion	Asociacion Talamanquena de Ecoturismo y Conservacion	Asociacion Talamanquena de Ecoturismo y Conservacion	How do you want to explore ?	How do you want to explore ?	How do you want to explore ?	Positive Impact	Positive Impact	Positive Impact	Leaving a positive impact on you, our community, and the environment.	Leaving a positive impact on you, our community, and the environment.	Leaving a positive impact on you, our community, and the environment.	The latest...	The latest...	The latest...	Most Popular Tours	Most Popular Tours	Most Popular Tours	New Tours & Must See s	New Tours & Must See s	New Tours & Must See s	Where to start	Where to start	Where to start	Adults	Children	Family Name	Available Language	Prefered Language	Mail	More Information	Name	Phone	Thank you so much for your consideration, it will be a pleasure to deal with your reservation. We will have to contact our local guides and get back to you for confirmation.	Your wish date	Information : Children must be between 3 and 10, we will try to get a tour at you wish date and your prefered language but we have to ask the guide first, we will get to you soon by mail. Please put specific information about your children in More Information in order for us to adapt to them. Thanks !	We took the following mail into account. We will awnser you as soon as possible.	We took the following request of reservation into account. We will awnser you as soon as possible.	Mail Confirmation : ATEC Contact	Mail Confirmation : ATEC Request for reservation	We took the following mail into account. We will awnser you as soon as possible.	We took the following mail into account. We will awnser you as soon as possible.	We took the following mail into account. We will awnser you as soon as possible.	We took the following request of reservation into account. We will awnser you as soon as possible.	We took the following request of reservation into account. We will awnser you as soon as possible.	We took the following request of reservation into account. We will awnser you as soon as possible.	Mail Confirmation : ATEC Contact	Mail Confirmation : ATEC Contact	Mail Confirmation : ATEC Contact	Mail Confirmation : ATEC Request for reservation	Mail Confirmation : ATEC Request for reservation	Mail Confirmation : ATEC Request for reservation	Not available anymore...
\.


--
-- Data for Name: app_coupon; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_coupon (general_ptr_id, numero, image, size) FROM stdin;
\.


--
-- Data for Name: app_general; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_general (id, state, creation, last_modification) FROM stdin;
1	1	2019-11-21 15:02:44.661655-06	2019-11-21 15:02:44.661749-06
2	1	2019-11-21 15:02:44.623332-06	2019-11-21 15:02:44.683297-06
5	1	2019-11-21 15:16:51.012916-06	2019-11-21 15:16:51.013007-06
6	1	2019-11-21 15:16:51.006105-06	2019-11-21 15:16:51.015852-06
7	1	2019-11-21 15:17:11.468365-06	2019-11-21 15:17:11.46842-06
8	1	2019-11-21 15:17:11.464446-06	2019-11-21 15:17:11.471087-06
9	1	2019-11-21 15:18:26.346981-06	2019-11-21 15:18:26.347025-06
10	1	2019-11-21 15:18:26.346354-06	2019-11-21 15:18:26.351346-06
11	1	2019-11-21 15:18:35.726761-06	2019-11-21 15:18:35.726825-06
12	1	2019-11-21 15:18:35.725975-06	2019-11-21 15:18:35.729931-06
13	1	2019-11-21 15:18:42.044857-06	2019-11-21 15:18:42.044922-06
14	1	2019-11-21 15:18:42.044237-06	2019-11-21 15:18:42.0478-06
15	1	2019-11-21 15:18:48.47147-06	2019-11-21 15:18:48.471595-06
16	1	2019-11-21 15:18:48.470693-06	2019-11-21 15:18:48.475061-06
17	1	2019-11-21 15:18:54.663658-06	2019-11-21 15:18:54.663697-06
18	1	2019-11-21 15:18:54.663056-06	2019-11-21 15:18:54.667434-06
19	1	2019-11-21 15:19:48.362796-06	2019-11-21 15:19:48.362838-06
20	1	2019-11-21 15:19:48.362193-06	2019-11-21 15:19:48.365509-06
21	1	2019-11-21 15:20:30.387465-06	2019-11-21 15:20:30.387538-06
22	1	2019-11-21 15:20:30.386362-06	2019-11-21 15:20:30.390522-06
23	1	2019-11-21 15:21:08.762945-06	2019-11-21 15:21:08.763-06
24	1	2019-11-21 15:21:08.762249-06	2019-11-21 15:21:08.766142-06
25	1	2019-11-21 15:21:31.69585-06	2019-11-21 15:21:31.695912-06
26	1	2019-11-21 15:21:31.690772-06	2019-11-21 15:21:31.699091-06
27	1	2019-11-21 15:22:00.433747-06	2019-11-21 15:22:00.4338-06
29	1	2019-11-21 15:22:27.952328-06	2019-11-21 15:22:27.952401-06
30	1	2019-11-21 15:22:27.946219-06	2019-11-21 15:22:27.9552-06
31	1	2019-11-21 15:22:32.2965-06	2019-11-21 15:22:32.29655-06
32	1	2019-11-21 15:22:38.292728-06	2019-11-21 15:22:38.292789-06
33	1	2019-11-21 15:22:38.272006-06	2019-11-21 15:22:38.295951-06
34	1	2019-11-21 15:51:53.236155-06	2019-11-21 15:51:53.236246-06
36	1	2019-11-21 15:52:22.908215-06	2019-11-21 15:52:22.908352-06
37	1	2019-11-21 15:54:04.697995-06	2019-11-21 15:54:04.698048-06
38	1	2019-11-21 15:56:34.277548-06	2019-11-21 15:56:34.2776-06
40	1	2019-11-21 15:57:20.697737-06	2019-11-21 15:57:20.69779-06
41	1	2019-11-21 15:57:22.332506-06	2019-11-21 15:57:22.332571-06
39	1	2019-11-21 15:56:34.261458-06	2019-11-21 15:57:22.334737-06
42	1	2019-11-21 16:01:06.228456-06	2019-11-21 16:01:06.22853-06
43	1	2019-11-21 16:01:06.227611-06	2019-11-21 16:01:06.231551-06
44	1	2019-11-21 16:01:17.282461-06	2019-11-21 16:01:17.28257-06
45	1	2019-11-21 16:01:17.281641-06	2019-11-21 16:01:17.286521-06
46	1	2019-11-21 16:01:33.176914-06	2019-11-21 16:01:33.176956-06
47	1	2019-11-21 16:01:33.175946-06	2019-11-21 16:01:33.179947-06
48	1	2019-11-21 16:01:43.114865-06	2019-11-21 16:01:43.114915-06
49	1	2019-11-21 16:01:43.113874-06	2019-11-21 16:01:43.117654-06
50	1	2019-11-21 16:01:52.285705-06	2019-11-21 16:01:52.285786-06
28	1	2019-11-21 15:22:00.399477-06	2019-11-21 16:01:52.288129-06
51	1	2019-11-21 16:01:52.264398-06	2019-11-21 16:01:52.299408-06
52	1	2019-11-21 16:16:41.48843-06	2019-11-21 16:16:41.488606-06
53	1	2019-11-21 16:16:41.486463-06	2019-11-21 16:16:41.491804-06
54	1	2019-11-21 16:17:22.832788-06	2019-11-21 16:17:22.83284-06
35	1	2019-11-21 15:51:53.233065-06	2019-11-21 16:17:22.835524-06
55	1	2019-11-21 16:40:24.418708-06	2019-11-21 16:40:24.418799-06
57	1	2019-11-21 16:40:43.415002-06	2019-11-21 16:40:43.41511-06
56	1	2019-11-21 16:40:24.416229-06	2019-11-21 16:40:43.417978-06
\.


--
-- Data for Name: app_imageproduct; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_imageproduct (general_ptr_id, alt, image, size) FROM stdin;
6	Alt Image	app/static/img/24092019-P9240107_tT9hm4g_TvDBHXH_A3Cyt5P.jpg	1
8	Alt image2	app/static/img/24092019-P9240107_tT9hm4g_TvDBHXH_mACZKrW.jpg	1
\.


--
-- Data for Name: app_languageperson; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_languageperson (general_ptr_id, lang) FROM stdin;
24	ESPANOL
\.


--
-- Data for Name: app_linereservation; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_linereservation (general_ptr_id, quantity, date_start, date_end, payment_guide, client_id, guide_id, line_product_id, line_reservation_id, sell_price_id, discounted, language_reservation_id, card_paypal, eventid, confirmation_of_guide, line_state, more_info_client, prefered_language) FROM stdin;
\.


--
-- Data for Name: app_location; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_location (general_ptr_id, lat, long, name) FROM stdin;
22	0	0	Location1
\.


--
-- Data for Name: app_mail; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_mail (general_ptr_id, email, per_id) FROM stdin;
\.


--
-- Data for Name: app_menu; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_menu (general_ptr_id, rank1, rank2, rank1_text, rank2_text, rank1_text_es, rank1_text_fr, rank2_text_es, rank2_text_fr, rank1_text_en, rank2_text_en) FROM stdin;
53	t	t	Tours	Catégories de Tours	Tours	Tours	Categorias de Tours	Catégories de Tours	Tours	Tours by Category
35	f	t	Tours	Tours les Tours	Tours	Tours	Todo los Tours	Tours les Tours	Tours	All Tours
56	t	t	Tours	Tours par lieux	Tours	Tours	Toures Por Ubicacion	Tours par lieux	Tours	Tours by Location
\.


--
-- Data for Name: app_news; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_news (general_ptr_id, title, sub_title, text, categ_id, image_1_id, image_2_id, user_id, prod_id, discount) FROM stdin;
33	New Title	New Subtitle	<h1>Newt Text&nbsp;</h1><p>Summernote Field</p>	10	6	8	1	28	f
\.


--
-- Data for Name: app_news_category; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_news_category (general_ptr_id, cat) FROM stdin;
10	NEWS
12	VOLUNTEER
14	TEAM
16	SPECIAL
18	GUIDE
\.


--
-- Data for Name: app_note; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_note (general_ptr_id, text, line_id, user_id) FROM stdin;
\.


--
-- Data for Name: app_paymentreservation; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_paymentreservation (general_ptr_id, price, date, payment_reservation_id, type_payment_id) FROM stdin;
\.


--
-- Data for Name: app_person; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_person (general_ptr_id, "NIN", name, fam_name, date_birth, nationality, "name_Hotel", detail_location, type_id, user_id) FROM stdin;
\.


--
-- Data for Name: app_person_language; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_person_language (id, person_id, languageperson_id) FROM stdin;
\.


--
-- Data for Name: app_person_location; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_person_location (id, person_id, location_id) FROM stdin;
\.


--
-- Data for Name: app_person_product; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_person_product (id, person_id, product_id) FROM stdin;
\.


--
-- Data for Name: app_phone; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_phone (general_ptr_id, tel, per_id) FROM stdin;
\.


--
-- Data for Name: app_priceproduct; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_priceproduct (general_ptr_id, year, "net_ATEC", rack, date_start_offer, date_end_offer, information, specialoffer_percent_discount, price_product_id, age_discount_id, rate_discount_id, "net_AGENCIA") FROM stdin;
51	2019	0	100	2019-11-19	2020-11-19		0	28	45	47	0
\.


--
-- Data for Name: app_product; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_product (general_ptr_id, type, stock_id, description, name, ar_id, cat_id, image_id, most_popular, text, informations, available_lang_id, recommandations) FROM stdin;
28	SERVICE	\N	Product Description	Product Name	26	30	6	NORMAL	<p>Tour Text</p>	<p>Tour Information</p>	24	Recommandations : Recommandation1
\.


--
-- Data for Name: app_product_attribute; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_product_attribute (id, product_id, attributeproduct_id) FROM stdin;
1	28	20
\.


--
-- Data for Name: app_product_location; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_product_location (id, product_id, location_id) FROM stdin;
1	28	22
\.


--
-- Data for Name: app_product_multipleimages; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_product_multipleimages (id, product_id, imageproduct_id) FROM stdin;
1	28	8
2	28	6
\.


--
-- Data for Name: app_rate; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_rate (general_ptr_id, text, percentage) FROM stdin;
43	NINOS	30
45	ADULTOS	0
47	CLIENTE NORMAL	0
49	AGENCIA	0
\.


--
-- Data for Name: app_ratediscount; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_ratediscount (rate_ptr_id, agency_id) FROM stdin;
47	\N
49	\N
\.


--
-- Data for Name: app_reservation; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_reservation (general_ptr_id, number_reservation, payment_state, more_info, total_payments, total_to_pay, total_costs, user_id, tax_price_id, sub_total_to_pay) FROM stdin;
\.


--
-- Data for Name: app_stateform; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_stateform (general_ptr_id, type) FROM stdin;
\.


--
-- Data for Name: app_stockproduct; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_stockproduct (general_ptr_id, nb_shop, nb_stock) FROM stdin;
\.


--
-- Data for Name: app_task; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_task (general_ptr_id, description, assigned_date, delivery_date, cause, assigner_auto_id, task_state_id, assigned_user_id) FROM stdin;
\.


--
-- Data for Name: app_tax; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_tax (general_ptr_id, text, percentage, year) FROM stdin;
\.


--
-- Data for Name: app_typepayment; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_typepayment (general_ptr_id, type) FROM stdin;
\.


--
-- Data for Name: app_typeperson; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_typeperson (general_ptr_id, type) FROM stdin;
\.


--
-- Data for Name: app_webpage; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.app_webpage (general_ptr_id, text, new, tour, contact, image_header, text_template1, btn_text, btn_text_btn, btn_url, article_nb, tours_nb, menu_bar_id, news_cat_id, name, text_template2, news_text, tours_text, donate, text_template3, most_pop, tours_cat, tour_footer) FROM stdin;
39	t	f	t	f	24092019-P9240107_tT9hm4g_TvDBHXH_mACZKrW.jpg	<p>Text Template 1</p>		\N	\N	6	6	35	\N	All Tours	<p>Text Template 2</p>		<p>Tours Text</p>	f	Text Template 3	f		f
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add permission	4	add_permission
11	Can change permission	4	change_permission
12	Can delete permission	4	delete_permission
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add general	7	add_general
20	Can change general	7	change_general
21	Can delete general	7	delete_general
22	Can add language person	8	add_languageperson
23	Can change language person	8	change_languageperson
24	Can delete language person	8	delete_languageperson
25	Can add product	9	add_product
26	Can change product	9	change_product
27	Can delete product	9	delete_product
28	Can add location	10	add_location
29	Can change location	10	change_location
30	Can delete location	10	delete_location
31	Can add menu	11	add_menu
32	Can change menu	11	change_menu
33	Can delete menu	11	delete_menu
34	Can add coupon	12	add_coupon
35	Can change coupon	12	change_coupon
36	Can delete coupon	12	delete_coupon
37	Can add image product	13	add_imageproduct
38	Can change image product	13	change_imageproduct
39	Can delete image product	13	delete_imageproduct
40	Can add type person	14	add_typeperson
41	Can change type person	14	change_typeperson
42	Can delete type person	14	delete_typeperson
43	Can add content	15	add_content
44	Can change content	15	change_content
45	Can delete content	15	delete_content
46	Can add price product	16	add_priceproduct
47	Can change price product	16	change_priceproduct
48	Can delete price product	16	delete_priceproduct
49	Can add reservation	17	add_reservation
50	Can change reservation	17	change_reservation
51	Can delete reservation	17	delete_reservation
52	Can add category	18	add_category
53	Can change category	18	change_category
54	Can delete category	18	delete_category
55	Can add mail	19	add_mail
56	Can change mail	19	change_mail
57	Can delete mail	19	delete_mail
58	Can add news_category	20	add_news_category
59	Can change news_category	20	change_news_category
60	Can delete news_category	20	delete_news_category
61	Can add atec	21	add_atec
62	Can change atec	21	change_atec
63	Can delete atec	21	delete_atec
64	Can add note	22	add_note
65	Can change note	22	change_note
66	Can delete note	22	delete_note
67	Can add rate	23	add_rate
68	Can change rate	23	change_rate
69	Can delete rate	23	delete_rate
70	Can add tax	24	add_tax
71	Can change tax	24	change_tax
72	Can delete tax	24	delete_tax
73	Can add age discount	25	add_agediscount
74	Can change age discount	25	change_agediscount
75	Can delete age discount	25	delete_agediscount
76	Can add line reservation	26	add_linereservation
77	Can change line reservation	26	change_linereservation
78	Can delete line reservation	26	delete_linereservation
79	Can add action	27	add_action
80	Can change action	27	change_action
81	Can delete action	27	delete_action
82	Can add person	28	add_person
83	Can change person	28	change_person
84	Can delete person	28	delete_person
85	Can add web page	29	add_webpage
86	Can change web page	29	change_webpage
87	Can delete web page	29	delete_webpage
88	Can add news	30	add_news
89	Can change news	30	change_news
90	Can delete news	30	delete_news
91	Can add stock product	31	add_stockproduct
92	Can change stock product	31	change_stockproduct
93	Can delete stock product	31	delete_stockproduct
94	Can add payment reservation	32	add_paymentreservation
95	Can change payment reservation	32	change_paymentreservation
96	Can delete payment reservation	32	delete_paymentreservation
97	Can add attribute product	33	add_attributeproduct
98	Can change attribute product	33	change_attributeproduct
99	Can delete attribute product	33	delete_attributeproduct
100	Can add phone	34	add_phone
101	Can change phone	34	change_phone
102	Can delete phone	34	delete_phone
103	Can add type payment	35	add_typepayment
104	Can change type payment	35	change_typepayment
105	Can delete type payment	35	delete_typepayment
106	Can add stateform	36	add_stateform
107	Can change stateform	36	change_stateform
108	Can delete stateform	36	delete_stateform
109	Can add area	37	add_area
110	Can change area	37	change_area
111	Can delete area	37	delete_area
112	Can add task	38	add_task
113	Can change task	38	change_task
114	Can delete task	38	delete_task
115	Can add rate discount	39	add_ratediscount
116	Can change rate discount	39	change_ratediscount
117	Can delete rate discount	39	delete_ratediscount
118	Can add state	40	add_state
119	Can change state	40	change_state
120	Can delete state	40	delete_state
121	Can add country	41	add_country
122	Can change country	41	change_country
123	Can delete country	41	delete_country
124	Can add address	42	add_address
125	Can change address	42	change_address
126	Can delete address	42	delete_address
127	Can add locality	43	add_locality
128	Can change locality	43	change_locality
129	Can delete locality	43	delete_locality
130	Can add attachment	44	add_attachment
131	Can change attachment	44	change_attachment
132	Can delete attachment	44	delete_attachment
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$AkPNKcSvFY0m$fzNq78MuB46J6BUhw0ex0fx8OxbrZdcKVyV9xz22X8E=	2019-11-21 14:46:45.192999-06	t	justin			justin.sabate@gmail.com	t	t	2019-11-21 14:45:55.185783-06
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-11-21 15:02:44.715206-06	2	CONTENT object (2)	1	[{"added": {}}]	15	1
2	2019-11-21 15:16:51.022307-06	6	Alt Image	1	[{"added": {}}]	13	1
3	2019-11-21 15:17:11.480181-06	8	Alt image2	1	[{"added": {}}]	13	1
4	2019-11-21 15:18:26.358601-06	10	NEWS	1	[{"added": {}}]	20	1
5	2019-11-21 15:18:35.734325-06	12	VOLUNTEER	1	[{"added": {}}]	20	1
6	2019-11-21 15:18:42.05306-06	14	TEAM	1	[{"added": {}}]	20	1
7	2019-11-21 15:18:48.479658-06	16	SPECIAL	1	[{"added": {}}]	20	1
8	2019-11-21 15:18:54.670904-06	18	GUIDE	1	[{"added": {}}]	20	1
9	2019-11-21 15:19:48.369684-06	20	Attribute 1	1	[{"added": {}}]	33	1
10	2019-11-21 15:20:30.396018-06	22	Location10.0,0.0	1	[{"added": {}}]	10	1
11	2019-11-21 15:21:08.770339-06	24	ESPANOL	1	[{"added": {}}]	8	1
12	2019-11-21 15:21:31.739872-06	26	Puerto Viejo	1	[{"added": {}}]	37	1
13	2019-11-21 15:22:00.505503-06	28	SERVICE Product Name	1	[{"added": {}}]	9	1
14	2019-11-21 15:22:27.959658-06	30	Sports	1	[{"added": {}}]	18	1
15	2019-11-21 15:22:32.31114-06	28	SERVICE Product Name	2	[{"changed": {"fields": ["cat"]}}]	9	1
16	2019-11-21 15:22:38.307112-06	33	New Title	1	[{"added": {}}]	30	1
17	2019-11-21 15:51:53.252722-06	35	Tours	1	[{"added": {}}]	11	1
18	2019-11-21 15:52:22.917333-06	35	Tours	2	[{"changed": {"fields": ["rank1"]}}]	11	1
19	2019-11-21 15:54:04.704856-06	35	Tours	2	[{"changed": {"fields": ["rank1"]}}]	11	1
20	2019-11-21 15:56:34.294665-06	39	39	1	[{"added": {}}]	29	1
21	2019-11-21 15:57:20.705326-06	35	Tours	2	[{"changed": {"fields": ["rank1"]}}]	11	1
22	2019-11-21 15:57:22.339092-06	39	39	2	[]	29	1
23	2019-11-21 16:01:06.23912-06	43	NINOS	1	[{"added": {}}]	25	1
24	2019-11-21 16:01:17.293488-06	45	ADULTOS	1	[{"added": {}}]	25	1
25	2019-11-21 16:01:33.187278-06	47	CLIENTE NORMAL	1	[{"added": {}}]	39	1
26	2019-11-21 16:01:43.124981-06	49	AGENCIA	1	[{"added": {}}]	39	1
27	2019-11-21 16:01:52.307422-06	28	SERVICE Product Name	2	[{"added": {"name": "price product", "object": "YEAR 2019 PRICE 100.0 $"}}]	9	1
28	2019-11-21 16:16:41.499474-06	53	Tours	1	[{"added": {}}]	11	1
29	2019-11-21 16:17:22.842326-06	35	Tours	2	[{"changed": {"fields": ["rank1"]}}]	11	1
30	2019-11-21 16:40:24.432661-06	56	Tours	1	[{"added": {}}]	11	1
31	2019-11-21 16:40:43.42323-06	56	Tours	2	[{"changed": {"fields": ["rank1"]}}]	11	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	group
3	auth	user
4	auth	permission
5	contenttypes	contenttype
6	sessions	session
7	app	general
8	app	languageperson
9	app	product
10	app	location
11	app	menu
12	app	coupon
13	app	imageproduct
14	app	typeperson
15	app	content
16	app	priceproduct
17	app	reservation
18	app	category
19	app	mail
20	app	news_category
21	app	atec
22	app	note
23	app	rate
24	app	tax
25	app	agediscount
26	app	linereservation
27	app	action
28	app	person
29	app	webpage
30	app	news
31	app	stockproduct
32	app	paymentreservation
33	app	attributeproduct
34	app	phone
35	app	typepayment
36	app	stateform
37	app	area
38	app	task
39	app	ratediscount
40	address	state
41	address	country
42	address	address
43	address	locality
44	django_summernote	attachment
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	address	0001_initial	2019-11-21 14:44:06.257029-06
2	address	0002_auto_20160213_1726	2019-11-21 14:44:06.405233-06
3	contenttypes	0001_initial	2019-11-21 14:44:06.438867-06
4	auth	0001_initial	2019-11-21 14:44:06.612914-06
5	admin	0001_initial	2019-11-21 14:44:06.677997-06
6	admin	0002_logentry_remove_auto_add	2019-11-21 14:44:06.707657-06
7	app	0001_initial	2019-11-21 14:44:08.833169-06
8	app	0002_remove_priceproduct_category	2019-11-21 14:44:08.885393-06
9	app	0003_rate_agency	2019-11-21 14:44:08.959806-06
10	app	0004_auto_20190925_1306	2019-11-21 14:44:09.135365-06
11	app	0005_auto_20190926_0907	2019-11-21 14:44:09.287415-06
12	app	0006_auto_20190926_0931	2019-11-21 14:44:09.427502-06
13	app	0007_auto_20190926_0934	2019-11-21 14:44:09.834401-06
14	app	0008_auto_20190926_1026	2019-11-21 14:44:10.150963-06
15	app	0009_auto_20190926_1048	2019-11-21 14:44:10.74736-06
16	app	0010_auto_20190926_1242	2019-11-21 14:44:12.149317-06
17	app	0011_auto_20191001_1054	2019-11-21 14:44:12.494769-06
18	app	0012_linereservation_language	2019-11-21 14:44:12.590538-06
19	app	0013_auto_20191001_1103	2019-11-21 14:44:12.686425-06
20	app	0014_atec	2019-11-21 14:44:12.768896-06
21	app	0015_auto_20191002_1148	2019-11-21 14:44:12.819483-06
22	app	0016_auto_20191002_1148	2019-11-21 14:44:12.872872-06
23	app	0017_auto_20191002_1149	2019-11-21 14:44:12.92521-06
24	app	0018_auto_20191002_1152	2019-11-21 14:44:12.976549-06
25	app	0019_auto_20191002_1155	2019-11-21 14:44:13.025421-06
26	app	0020_auto_20191002_1202	2019-11-21 14:44:13.298122-06
27	app	0021_auto_20191002_1204	2019-11-21 14:44:13.74194-06
28	app	0022_auto_20191003_1053	2019-11-21 14:44:14.304977-06
29	app	0023_reservation_card_paypal	2019-11-21 14:44:14.380018-06
30	app	0024_auto_20191003_1335	2019-11-21 14:44:14.474566-06
31	app	0025_auto_20191003_1346	2019-11-21 14:44:14.881952-06
32	app	0026_auto_20191004_1044	2019-11-21 14:44:15.014756-06
33	app	0027_coupon	2019-11-21 14:44:15.101729-06
34	app	0028_coupon_size	2019-11-21 14:44:15.195261-06
35	app	0029_person_user	2019-11-21 14:44:15.305027-06
36	app	0030_auto_20191007_1456	2019-11-21 14:44:15.396924-06
37	app	0031_linereservation_eventid	2019-11-21 14:44:15.461117-06
38	app	0032_auto_20191011_1717	2019-11-21 14:44:15.519088-06
39	app	0033_auto_20191011_1718	2019-11-21 14:44:15.57695-06
40	app	0034_stateform	2019-11-21 14:44:15.661571-06
41	app	0035_auto_20191011_1749	2019-11-21 14:44:15.757357-06
42	app	0036_auto_20191011_1752	2019-11-21 14:44:15.837497-06
43	app	0037_auto_20191011_1758	2019-11-21 14:44:16.010388-06
44	app	0038_task_task_state2	2019-11-21 14:44:16.075801-06
45	app	0039_auto_20191011_1811	2019-11-21 14:44:16.29183-06
46	app	0040_auto_20191011_1812	2019-11-21 14:44:16.471527-06
47	app	0041_auto_20191014_0929	2019-11-21 14:44:16.540941-06
48	app	0042_auto_20191014_0949	2019-11-21 14:44:16.752763-06
49	app	0043_auto_20191014_0951	2019-11-21 14:44:16.936282-06
50	app	0044_note_user_auto	2019-11-21 14:44:16.995226-06
51	app	0045_auto_20191014_1109	2019-11-21 14:44:17.358266-06
52	app	0046_auto_20191014_1141	2019-11-21 14:44:17.453554-06
53	app	0047_auto_20191021_0852	2019-11-21 14:44:17.537639-06
54	app	0048_auto_20191024_1044	2019-11-21 14:44:17.936347-06
55	app	0049_auto_20191024_1052	2019-11-21 14:44:18.427692-06
56	app	0050_auto_20191024_1206	2019-11-21 14:44:18.736121-06
57	app	0051_auto_20191024_1208	2019-11-21 14:44:18.853956-06
58	app	0052_auto_20191024_1223	2019-11-21 14:44:19.081633-06
59	app	0053_auto_20191024_1225	2019-11-21 14:44:19.377062-06
60	app	0054_auto_20191024_1225	2019-11-21 14:44:19.576326-06
61	app	0055_auto_20191024_1226	2019-11-21 14:44:19.776441-06
62	app	0056_auto_20191024_1227	2019-11-21 14:44:19.969717-06
63	app	0057_auto_20191024_1235	2019-11-21 14:44:20.357781-06
64	app	0058_auto_20191024_1309	2019-11-21 14:44:20.525639-06
65	app	0059_auto_20191025_0944	2019-11-21 14:44:20.800036-06
66	app	0060_auto_20191028_0913	2019-11-21 14:44:21.379975-06
67	app	0061_news_url	2019-11-21 14:44:21.464912-06
68	app	0062_auto_20191028_1345	2019-11-21 14:44:21.607218-06
69	app	0063_auto_20191028_1423	2019-11-21 14:44:21.700311-06
70	app	0064_auto_20191028_1428	2019-11-21 14:44:21.790317-06
71	app	0065_news_prod	2019-11-21 14:44:21.87258-06
72	app	0066_auto_20191028_1537	2019-11-21 14:44:21.957681-06
73	app	0067_auto_20191028_1542	2019-11-21 14:44:22.359575-06
74	app	0068_auto_20191028_1548	2019-11-21 14:44:22.447589-06
75	app	0069_auto_20191028_1551	2019-11-21 14:44:22.670161-06
76	app	0070_auto_20191028_1553	2019-11-21 14:44:22.760342-06
77	app	0071_product_most_popular	2019-11-21 14:44:22.826462-06
78	app	0072_location_name	2019-11-21 14:44:22.896005-06
79	app	0073_product_multipleimages	2019-11-21 14:44:22.995928-06
80	app	0074_area_images	2019-11-21 14:44:23.096021-06
81	app	0075_auto_20191029_1638	2019-11-21 14:44:23.461632-06
82	app	0076_auto_20191029_1640	2019-11-21 14:44:23.522905-06
83	app	0077_auto_20191029_1700	2019-11-21 14:44:23.609904-06
84	app	0078_auto_20191029_1758	2019-11-21 14:44:23.672334-06
85	app	0079_auto_20191029_1843	2019-11-21 14:44:23.742749-06
86	app	0080_auto_20191029_1853	2019-11-21 14:44:23.862936-06
87	app	0081_category_image	2019-11-21 14:44:23.944933-06
88	app	0082_auto_20191030_0926	2019-11-21 14:44:24.261183-06
89	app	0083_news_discount	2019-11-21 14:44:24.430791-06
90	app	0084_menu_webpage	2019-11-21 14:44:24.616044-06
91	app	0085_auto_20191031_1249	2019-11-21 14:44:24.825362-06
92	app	0086_auto_20191031_1356	2019-11-21 14:44:24.893724-06
93	app	0087_webpage_name	2019-11-21 14:44:24.961628-06
94	app	0088_auto_20191031_1821	2019-11-21 14:44:25.194927-06
95	app	0089_auto_20191104_0855	2019-11-21 14:44:25.459225-06
96	app	0090_auto_20191104_0857	2019-11-21 14:44:25.64968-06
97	app	0091_auto_20191104_0859	2019-11-21 14:44:25.771599-06
98	app	0092_auto_20191104_1122	2019-11-21 14:44:25.899885-06
99	app	0093_auto_20191104_1321	2019-11-21 14:44:26.027695-06
100	app	0094_content	2019-11-21 14:44:26.138935-06
101	app	0095_webpage_donate	2019-11-21 14:44:26.213631-06
102	app	0096_auto_20191104_1643	2019-11-21 14:44:27.468043-06
103	app	0097_auto_20191104_1645	2019-11-21 14:44:27.535403-06
104	app	0098_auto_20191104_1658	2019-11-21 14:44:27.987281-06
105	app	0099_auto_20191104_1720	2019-11-21 14:44:28.117266-06
106	app	0100_auto_20191104_1725	2019-11-21 14:44:28.400744-06
107	app	0101_auto_20191104_1741	2019-11-21 14:44:28.650797-06
108	app	0102_content_account	2019-11-21 14:44:28.725242-06
109	app	0103_auto_20191104_1816	2019-11-21 14:44:28.861169-06
110	app	0104_auto_20191104_1818	2019-11-21 14:44:28.93572-06
111	app	0105_auto_20191105_0908	2019-11-21 14:44:29.073602-06
112	app	0106_auto_20191105_1148	2019-11-21 14:44:29.416096-06
113	app	0107_auto_20191105_1150	2019-11-21 14:44:29.614852-06
114	app	0108_auto_20191105_1226	2019-11-21 14:44:29.758612-06
115	app	0109_auto_20191105_1259	2019-11-21 14:44:29.902663-06
116	app	0110_auto_20191105_1358	2019-11-21 14:44:30.478621-06
117	app	0111_content_donate_text	2019-11-21 14:44:30.556011-06
118	app	0112_webpage_tour_footer	2019-11-21 14:44:30.627847-06
119	app	0113_auto_20191105_1449	2019-11-21 14:44:41.803968-06
120	app	0114_product_available_lang	2019-11-21 14:44:42.013301-06
121	app	0115_auto_20191107_1448	2019-11-21 14:44:42.126888-06
122	app	0116_auto_20191108_0951	2019-11-21 14:44:43.076741-06
123	app	0117_auto_20191108_1033	2019-11-21 14:44:43.16985-06
124	app	0118_content_reservation_text	2019-11-21 14:44:43.253802-06
125	app	0119_content_field_date	2019-11-21 14:44:43.339531-06
126	app	0120_linereservation_line_state	2019-11-21 14:44:43.428501-06
127	app	0121_content_reservation_information	2019-11-21 14:44:43.518635-06
128	app	0122_linereservation_more_info_client	2019-11-21 14:44:43.608615-06
129	app	0123_linereservation_prefered_language	2019-11-21 14:44:43.702536-06
130	app	0124_auto_20191119_1615	2019-11-21 14:44:44.111858-06
131	app	0125_auto_20191119_1624	2019-11-21 14:44:45.121133-06
132	app	0126_product_recommandations	2019-11-21 14:44:45.209175-06
133	app	0127_content_not_available	2019-11-21 14:44:45.313791-06
134	contenttypes	0002_remove_content_type_name	2019-11-21 14:44:45.448308-06
135	auth	0002_alter_permission_name_max_length	2019-11-21 14:44:45.467531-06
136	auth	0003_alter_user_email_max_length	2019-11-21 14:44:45.51635-06
137	auth	0004_alter_user_username_opts	2019-11-21 14:44:45.559274-06
138	auth	0005_alter_user_last_login_null	2019-11-21 14:44:45.596665-06
139	auth	0006_require_contenttypes_0002	2019-11-21 14:44:45.601999-06
140	auth	0007_alter_validators_add_error_messages	2019-11-21 14:44:45.644911-06
141	auth	0008_alter_user_username_max_length	2019-11-21 14:44:45.813434-06
142	auth	0009_alter_user_last_name_max_length	2019-11-21 14:44:45.852563-06
143	django_summernote	0001_initial	2019-11-21 14:44:45.87458-06
144	django_summernote	0002_update-help_text	2019-11-21 14:44:45.891634-06
145	sessions	0001_initial	2019-11-21 14:44:45.924793-06
146	app	0128_auto_20191121_1450	2019-11-21 14:50:39.755615-06
147	app	0129_auto_20191121_1515	2019-11-21 15:15:12.610968-06
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
h5bph2a1ckhtvc9mi7hkdec44h9my1su	YTBmMzdiNmVhY2UzZDZjMTY1MmZlOTk2ZDhlMWQzNzRhYWVhMGQ3Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIyNzlmZTdkMjNkYzAyNzU5ODI3Zjg3MDU4OWE4MjMxN2UyODYyYTk5In0=	2019-12-05 14:46:45.196977-06
\.


--
-- Data for Name: django_summernote_attachment; Type: TABLE DATA; Schema: public; Owner: adminju
--

COPY public.django_summernote_attachment (id, name, file, uploaded) FROM stdin;
\.


--
-- Name: address_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.address_address_id_seq', 1, false);


--
-- Name: address_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.address_country_id_seq', 1, false);


--
-- Name: address_locality_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.address_locality_id_seq', 1, false);


--
-- Name: address_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.address_state_id_seq', 1, false);


--
-- Name: app_area_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.app_area_images_id_seq', 2, true);


--
-- Name: app_general_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.app_general_id_seq', 57, true);


--
-- Name: app_person_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.app_person_language_id_seq', 1, false);


--
-- Name: app_person_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.app_person_location_id_seq', 1, false);


--
-- Name: app_person_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.app_person_product_id_seq', 1, false);


--
-- Name: app_product_attribute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.app_product_attribute_id_seq', 1, true);


--
-- Name: app_product_location_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.app_product_location_id_seq', 1, true);


--
-- Name: app_product_multipleimages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.app_product_multipleimages_id_seq', 2, true);


--
-- Name: app_reservation_number_reservation_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.app_reservation_number_reservation_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 132, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 31, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 44, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 147, true);


--
-- Name: django_summernote_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminju
--

SELECT pg_catalog.setval('public.django_summernote_attachment_id_seq', 1, false);


--
-- Name: address_address address_address_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.address_address
    ADD CONSTRAINT address_address_pkey PRIMARY KEY (id);


--
-- Name: address_country address_country_name_key; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.address_country
    ADD CONSTRAINT address_country_name_key UNIQUE (name);


--
-- Name: address_country address_country_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.address_country
    ADD CONSTRAINT address_country_pkey PRIMARY KEY (id);


--
-- Name: address_locality address_locality_name_postal_code_state_id_d1e927c2_uniq; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.address_locality
    ADD CONSTRAINT address_locality_name_postal_code_state_id_d1e927c2_uniq UNIQUE (name, postal_code, state_id);


--
-- Name: address_locality address_locality_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.address_locality
    ADD CONSTRAINT address_locality_pkey PRIMARY KEY (id);


--
-- Name: address_state address_state_name_country_id_a46a5987_uniq; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.address_state
    ADD CONSTRAINT address_state_name_country_id_a46a5987_uniq UNIQUE (name, country_id);


--
-- Name: address_state address_state_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.address_state
    ADD CONSTRAINT address_state_pkey PRIMARY KEY (id);


--
-- Name: app_action app_action_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_action
    ADD CONSTRAINT app_action_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_agediscount app_agediscount_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_agediscount
    ADD CONSTRAINT app_agediscount_pkey PRIMARY KEY (rate_ptr_id);


--
-- Name: app_area_images app_area_images_area_id_imageproduct_id_8a905379_uniq; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_area_images
    ADD CONSTRAINT app_area_images_area_id_imageproduct_id_8a905379_uniq UNIQUE (area_id, imageproduct_id);


--
-- Name: app_area_images app_area_images_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_area_images
    ADD CONSTRAINT app_area_images_pkey PRIMARY KEY (id);


--
-- Name: app_area app_area_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_area
    ADD CONSTRAINT app_area_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_atec app_atec_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_atec
    ADD CONSTRAINT app_atec_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_attributeproduct app_attributeproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_attributeproduct
    ADD CONSTRAINT app_attributeproduct_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_category app_category_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_category
    ADD CONSTRAINT app_category_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_content app_content_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_content
    ADD CONSTRAINT app_content_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_coupon app_coupon_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_coupon
    ADD CONSTRAINT app_coupon_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_general app_general_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_general
    ADD CONSTRAINT app_general_pkey PRIMARY KEY (id);


--
-- Name: app_imageproduct app_imageproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_imageproduct
    ADD CONSTRAINT app_imageproduct_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_languageperson app_languageperson_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_languageperson
    ADD CONSTRAINT app_languageperson_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_linereservation app_linereservation_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_linereservation
    ADD CONSTRAINT app_linereservation_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_location app_location_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_location
    ADD CONSTRAINT app_location_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_mail app_mail_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_mail
    ADD CONSTRAINT app_mail_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_menu app_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_menu
    ADD CONSTRAINT app_menu_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_news_category app_news_category_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_news_category
    ADD CONSTRAINT app_news_category_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_news app_news_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_news
    ADD CONSTRAINT app_news_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_note app_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_note
    ADD CONSTRAINT app_notes_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_paymentreservation app_paymentreservation_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_paymentreservation
    ADD CONSTRAINT app_paymentreservation_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_person_language app_person_language_person_id_languageperson_id_385c491a_uniq; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person_language
    ADD CONSTRAINT app_person_language_person_id_languageperson_id_385c491a_uniq UNIQUE (person_id, languageperson_id);


--
-- Name: app_person_language app_person_language_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person_language
    ADD CONSTRAINT app_person_language_pkey PRIMARY KEY (id);


--
-- Name: app_person_location app_person_location_person_id_location_id_99110cab_uniq; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person_location
    ADD CONSTRAINT app_person_location_person_id_location_id_99110cab_uniq UNIQUE (person_id, location_id);


--
-- Name: app_person_location app_person_location_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person_location
    ADD CONSTRAINT app_person_location_pkey PRIMARY KEY (id);


--
-- Name: app_person app_person_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person
    ADD CONSTRAINT app_person_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_person_product app_person_product_person_id_product_id_f3a43ff1_uniq; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person_product
    ADD CONSTRAINT app_person_product_person_id_product_id_f3a43ff1_uniq UNIQUE (person_id, product_id);


--
-- Name: app_person_product app_person_product_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person_product
    ADD CONSTRAINT app_person_product_pkey PRIMARY KEY (id);


--
-- Name: app_person app_person_user_id_key; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person
    ADD CONSTRAINT app_person_user_id_key UNIQUE (user_id);


--
-- Name: app_phone app_phone_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_phone
    ADD CONSTRAINT app_phone_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_priceproduct app_priceproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_priceproduct
    ADD CONSTRAINT app_priceproduct_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_product_attribute app_product_attribute_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product_attribute
    ADD CONSTRAINT app_product_attribute_pkey PRIMARY KEY (id);


--
-- Name: app_product_attribute app_product_attribute_product_id_attributeprod_4118931a_uniq; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product_attribute
    ADD CONSTRAINT app_product_attribute_product_id_attributeprod_4118931a_uniq UNIQUE (product_id, attributeproduct_id);


--
-- Name: app_product_location app_product_location_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product_location
    ADD CONSTRAINT app_product_location_pkey PRIMARY KEY (id);


--
-- Name: app_product_location app_product_location_product_id_location_id_bbc094ec_uniq; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product_location
    ADD CONSTRAINT app_product_location_product_id_location_id_bbc094ec_uniq UNIQUE (product_id, location_id);


--
-- Name: app_product_multipleimages app_product_multipleimag_product_id_imageproduct__cc73c32e_uniq; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product_multipleimages
    ADD CONSTRAINT app_product_multipleimag_product_id_imageproduct__cc73c32e_uniq UNIQUE (product_id, imageproduct_id);


--
-- Name: app_product_multipleimages app_product_multipleimages_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product_multipleimages
    ADD CONSTRAINT app_product_multipleimages_pkey PRIMARY KEY (id);


--
-- Name: app_product app_product_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product
    ADD CONSTRAINT app_product_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_rate app_rate_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_rate
    ADD CONSTRAINT app_rate_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_ratediscount app_ratediscount_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_ratediscount
    ADD CONSTRAINT app_ratediscount_pkey PRIMARY KEY (rate_ptr_id);


--
-- Name: app_reservation app_reservation_general_ptr_id_key; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_reservation
    ADD CONSTRAINT app_reservation_general_ptr_id_key UNIQUE (general_ptr_id);


--
-- Name: app_reservation app_reservation_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_reservation
    ADD CONSTRAINT app_reservation_pkey PRIMARY KEY (number_reservation);


--
-- Name: app_stateform app_stateform_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_stateform
    ADD CONSTRAINT app_stateform_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_stockproduct app_stockproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_stockproduct
    ADD CONSTRAINT app_stockproduct_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_task app_task_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_task
    ADD CONSTRAINT app_task_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_tax app_tax_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_tax
    ADD CONSTRAINT app_tax_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_typepayment app_typepayment_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_typepayment
    ADD CONSTRAINT app_typepayment_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_typeperson app_typeperson_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_typeperson
    ADD CONSTRAINT app_typeperson_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: app_webpage app_webpage_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_webpage
    ADD CONSTRAINT app_webpage_pkey PRIMARY KEY (general_ptr_id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_summernote_attachment django_summernote_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.django_summernote_attachment
    ADD CONSTRAINT django_summernote_attachment_pkey PRIMARY KEY (id);


--
-- Name: address_address_locality_id_5dd79609; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX address_address_locality_id_5dd79609 ON public.address_address USING btree (locality_id);


--
-- Name: address_country_name_9a4d6390_like; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX address_country_name_9a4d6390_like ON public.address_country USING btree (name varchar_pattern_ops);


--
-- Name: address_locality_state_id_8dc32b8e; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX address_locality_state_id_8dc32b8e ON public.address_locality USING btree (state_id);


--
-- Name: address_state_country_id_0a4efd43; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX address_state_country_id_0a4efd43 ON public.address_state USING btree (country_id);


--
-- Name: app_area_images_area_id_ef0a6e93; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_area_images_area_id_ef0a6e93 ON public.app_area_images USING btree (area_id);


--
-- Name: app_area_images_imageproduct_id_28451082; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_area_images_imageproduct_id_28451082 ON public.app_area_images USING btree (imageproduct_id);


--
-- Name: app_category_image_id_0874d0b9; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_category_image_id_0874d0b9 ON public.app_category USING btree (image_id);


--
-- Name: app_linereservation_client_id_e0726e4c; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_linereservation_client_id_e0726e4c ON public.app_linereservation USING btree (client_id);


--
-- Name: app_linereservation_guide_id_9663fc43; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_linereservation_guide_id_9663fc43 ON public.app_linereservation USING btree (guide_id);


--
-- Name: app_linereservation_language_id_10a72dac; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_linereservation_language_id_10a72dac ON public.app_linereservation USING btree (language_reservation_id);


--
-- Name: app_linereservation_line_product_id_5b1b0c9c; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_linereservation_line_product_id_5b1b0c9c ON public.app_linereservation USING btree (line_product_id);


--
-- Name: app_linereservation_line_reservation_id_071f5c40; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_linereservation_line_reservation_id_071f5c40 ON public.app_linereservation USING btree (line_reservation_id);


--
-- Name: app_linereservation_sell_price_id_cda84cc3; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_linereservation_sell_price_id_cda84cc3 ON public.app_linereservation USING btree (sell_price_id);


--
-- Name: app_mail_per_id_6ee9eb5e; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_mail_per_id_6ee9eb5e ON public.app_mail USING btree (per_id);


--
-- Name: app_news_categ_id_8f8663ba; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_news_categ_id_8f8663ba ON public.app_news USING btree (categ_id);


--
-- Name: app_news_image_1_id_8f8e36e2; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_news_image_1_id_8f8e36e2 ON public.app_news USING btree (image_1_id);


--
-- Name: app_news_image_2_id_9aab8037; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_news_image_2_id_9aab8037 ON public.app_news USING btree (image_2_id);


--
-- Name: app_news_prod_id_13c7fbe7; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_news_prod_id_13c7fbe7 ON public.app_news USING btree (prod_id);


--
-- Name: app_news_user_id_4866b8d3; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_news_user_id_4866b8d3 ON public.app_news USING btree (user_id);


--
-- Name: app_note_user_auto_id_cde4c702; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_note_user_auto_id_cde4c702 ON public.app_note USING btree (user_id);


--
-- Name: app_notes_line_id_c5728f3d; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_notes_line_id_c5728f3d ON public.app_note USING btree (line_id);


--
-- Name: app_paymentreservation_payment_reservation_id_1ce83ddb; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_paymentreservation_payment_reservation_id_1ce83ddb ON public.app_paymentreservation USING btree (payment_reservation_id);


--
-- Name: app_paymentreservation_type_payment_id_36200a0e; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_paymentreservation_type_payment_id_36200a0e ON public.app_paymentreservation USING btree (type_payment_id);


--
-- Name: app_person_language_languageperson_id_5e944da5; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_person_language_languageperson_id_5e944da5 ON public.app_person_language USING btree (languageperson_id);


--
-- Name: app_person_language_person_id_99efd837; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_person_language_person_id_99efd837 ON public.app_person_language USING btree (person_id);


--
-- Name: app_person_location_location_id_47df0fe8; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_person_location_location_id_47df0fe8 ON public.app_person_location USING btree (location_id);


--
-- Name: app_person_location_person_id_44380dd8; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_person_location_person_id_44380dd8 ON public.app_person_location USING btree (person_id);


--
-- Name: app_person_product_person_id_ba77d233; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_person_product_person_id_ba77d233 ON public.app_person_product USING btree (person_id);


--
-- Name: app_person_product_product_id_58342400; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_person_product_product_id_58342400 ON public.app_person_product USING btree (product_id);


--
-- Name: app_person_type_id_f04b3d14; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_person_type_id_f04b3d14 ON public.app_person USING btree (type_id);


--
-- Name: app_phone_per_id_634d628f; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_phone_per_id_634d628f ON public.app_phone USING btree (per_id);


--
-- Name: app_priceproduct_age_discount_id_3cace968; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_priceproduct_age_discount_id_3cace968 ON public.app_priceproduct USING btree (age_discount_id);


--
-- Name: app_priceproduct_price_product_id_4acf7890; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_priceproduct_price_product_id_4acf7890 ON public.app_priceproduct USING btree (price_product_id);


--
-- Name: app_priceproduct_rate_discount_id_e6c06c11; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_priceproduct_rate_discount_id_e6c06c11 ON public.app_priceproduct USING btree (rate_discount_id);


--
-- Name: app_product_ar_id_5109e938; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_product_ar_id_5109e938 ON public.app_product USING btree (ar_id);


--
-- Name: app_product_attribute_attributeproduct_id_eac8ad7f; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_product_attribute_attributeproduct_id_eac8ad7f ON public.app_product_attribute USING btree (attributeproduct_id);


--
-- Name: app_product_attribute_product_id_5ac539e8; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_product_attribute_product_id_5ac539e8 ON public.app_product_attribute USING btree (product_id);


--
-- Name: app_product_available_lang_id_c925c057; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_product_available_lang_id_c925c057 ON public.app_product USING btree (available_lang_id);


--
-- Name: app_product_cat_id_9673a255; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_product_cat_id_9673a255 ON public.app_product USING btree (cat_id);


--
-- Name: app_product_image_id_57cbe465; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_product_image_id_57cbe465 ON public.app_product USING btree (image_id);


--
-- Name: app_product_location_location_id_4398d559; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_product_location_location_id_4398d559 ON public.app_product_location USING btree (location_id);


--
-- Name: app_product_location_product_id_b39f7272; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_product_location_product_id_b39f7272 ON public.app_product_location USING btree (product_id);


--
-- Name: app_product_multipleimages_imageproduct_id_768decff; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_product_multipleimages_imageproduct_id_768decff ON public.app_product_multipleimages USING btree (imageproduct_id);


--
-- Name: app_product_multipleimages_product_id_2a6703c2; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_product_multipleimages_product_id_2a6703c2 ON public.app_product_multipleimages USING btree (product_id);


--
-- Name: app_product_stock_id_e3d9d37f; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_product_stock_id_e3d9d37f ON public.app_product USING btree (stock_id);


--
-- Name: app_ratediscount_agency_id_8b81c0e0; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_ratediscount_agency_id_8b81c0e0 ON public.app_ratediscount USING btree (agency_id);


--
-- Name: app_reservation_tax_price_id_8d6a96fa; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_reservation_tax_price_id_8d6a96fa ON public.app_reservation USING btree (tax_price_id);


--
-- Name: app_reservation_user_id_f556cd2c; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_reservation_user_id_f556cd2c ON public.app_reservation USING btree (user_id);


--
-- Name: app_task_assigned_user_id_a8e49740; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_task_assigned_user_id_a8e49740 ON public.app_task USING btree (assigned_user_id);


--
-- Name: app_task_assigner_auto_id_21a5d6f6; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_task_assigner_auto_id_21a5d6f6 ON public.app_task USING btree (assigner_auto_id);


--
-- Name: app_task_task_state_id_09cc09a5; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_task_task_state_id_09cc09a5 ON public.app_task USING btree (task_state_id);


--
-- Name: app_webpage_menu_bar_id_86eeb2b7; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_webpage_menu_bar_id_86eeb2b7 ON public.app_webpage USING btree (menu_bar_id);


--
-- Name: app_webpage_news_cat_id_7a4dbe78; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX app_webpage_news_cat_id_7a4dbe78 ON public.app_webpage USING btree (news_cat_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: adminju
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: address_address address_address_locality_id_5dd79609_fk_address_locality_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.address_address
    ADD CONSTRAINT address_address_locality_id_5dd79609_fk_address_locality_id FOREIGN KEY (locality_id) REFERENCES public.address_locality(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: address_locality address_locality_state_id_8dc32b8e_fk_address_state_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.address_locality
    ADD CONSTRAINT address_locality_state_id_8dc32b8e_fk_address_state_id FOREIGN KEY (state_id) REFERENCES public.address_state(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: address_state address_state_country_id_0a4efd43_fk_address_country_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.address_state
    ADD CONSTRAINT address_state_country_id_0a4efd43_fk_address_country_id FOREIGN KEY (country_id) REFERENCES public.address_country(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_action app_action_general_ptr_id_d046652d_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_action
    ADD CONSTRAINT app_action_general_ptr_id_d046652d_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_agediscount app_agediscount_rate_ptr_id_9f79e51e_fk_app_rate_general_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_agediscount
    ADD CONSTRAINT app_agediscount_rate_ptr_id_9f79e51e_fk_app_rate_general_ptr_id FOREIGN KEY (rate_ptr_id) REFERENCES public.app_rate(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_area app_area_general_ptr_id_d1d17b85_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_area
    ADD CONSTRAINT app_area_general_ptr_id_d1d17b85_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_area_images app_area_images_area_id_ef0a6e93_fk_app_area_general_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_area_images
    ADD CONSTRAINT app_area_images_area_id_ef0a6e93_fk_app_area_general_ptr_id FOREIGN KEY (area_id) REFERENCES public.app_area(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_area_images app_area_images_imageproduct_id_28451082_fk_app_image; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_area_images
    ADD CONSTRAINT app_area_images_imageproduct_id_28451082_fk_app_image FOREIGN KEY (imageproduct_id) REFERENCES public.app_imageproduct(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_atec app_atec_general_ptr_id_6b72876b_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_atec
    ADD CONSTRAINT app_atec_general_ptr_id_6b72876b_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_attributeproduct app_attributeproduct_general_ptr_id_95558bbb_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_attributeproduct
    ADD CONSTRAINT app_attributeproduct_general_ptr_id_95558bbb_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_category app_category_general_ptr_id_f4d9ffb3_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_category
    ADD CONSTRAINT app_category_general_ptr_id_f4d9ffb3_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_category app_category_image_id_0874d0b9_fk_app_image; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_category
    ADD CONSTRAINT app_category_image_id_0874d0b9_fk_app_image FOREIGN KEY (image_id) REFERENCES public.app_imageproduct(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_content app_content_general_ptr_id_6fd35779_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_content
    ADD CONSTRAINT app_content_general_ptr_id_6fd35779_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_coupon app_coupon_general_ptr_id_8fa3d1fc_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_coupon
    ADD CONSTRAINT app_coupon_general_ptr_id_8fa3d1fc_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_imageproduct app_imageproduct_general_ptr_id_d1cc92a8_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_imageproduct
    ADD CONSTRAINT app_imageproduct_general_ptr_id_d1cc92a8_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_languageperson app_languageperson_general_ptr_id_53ac43f6_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_languageperson
    ADD CONSTRAINT app_languageperson_general_ptr_id_53ac43f6_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_linereservation app_linereservation_client_id_e0726e4c_fk_app_perso; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_linereservation
    ADD CONSTRAINT app_linereservation_client_id_e0726e4c_fk_app_perso FOREIGN KEY (client_id) REFERENCES public.app_person(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_linereservation app_linereservation_general_ptr_id_bdfec41d_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_linereservation
    ADD CONSTRAINT app_linereservation_general_ptr_id_bdfec41d_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_linereservation app_linereservation_guide_id_9663fc43_fk_app_perso; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_linereservation
    ADD CONSTRAINT app_linereservation_guide_id_9663fc43_fk_app_perso FOREIGN KEY (guide_id) REFERENCES public.app_person(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_linereservation app_linereservation_language_reservation_3f855cd8_fk_app_langu; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_linereservation
    ADD CONSTRAINT app_linereservation_language_reservation_3f855cd8_fk_app_langu FOREIGN KEY (language_reservation_id) REFERENCES public.app_languageperson(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_linereservation app_linereservation_line_product_id_5b1b0c9c_fk_app_produ; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_linereservation
    ADD CONSTRAINT app_linereservation_line_product_id_5b1b0c9c_fk_app_produ FOREIGN KEY (line_product_id) REFERENCES public.app_product(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_linereservation app_linereservation_line_reservation_id_071f5c40_fk_app_reser; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_linereservation
    ADD CONSTRAINT app_linereservation_line_reservation_id_071f5c40_fk_app_reser FOREIGN KEY (line_reservation_id) REFERENCES public.app_reservation(number_reservation) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_linereservation app_linereservation_sell_price_id_cda84cc3_fk_app_price; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_linereservation
    ADD CONSTRAINT app_linereservation_sell_price_id_cda84cc3_fk_app_price FOREIGN KEY (sell_price_id) REFERENCES public.app_priceproduct(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_location app_location_general_ptr_id_c60ccb42_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_location
    ADD CONSTRAINT app_location_general_ptr_id_c60ccb42_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_mail app_mail_general_ptr_id_fe8877a5_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_mail
    ADD CONSTRAINT app_mail_general_ptr_id_fe8877a5_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_mail app_mail_per_id_6ee9eb5e_fk_app_person_general_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_mail
    ADD CONSTRAINT app_mail_per_id_6ee9eb5e_fk_app_person_general_ptr_id FOREIGN KEY (per_id) REFERENCES public.app_person(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_menu app_menu_general_ptr_id_b6b0f0dd_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_menu
    ADD CONSTRAINT app_menu_general_ptr_id_b6b0f0dd_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_news app_news_categ_id_8f8663ba_fk_app_news_category_general_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_news
    ADD CONSTRAINT app_news_categ_id_8f8663ba_fk_app_news_category_general_ptr_id FOREIGN KEY (categ_id) REFERENCES public.app_news_category(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_news_category app_news_category_general_ptr_id_ec6bec26_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_news_category
    ADD CONSTRAINT app_news_category_general_ptr_id_ec6bec26_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_news app_news_general_ptr_id_87156f0c_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_news
    ADD CONSTRAINT app_news_general_ptr_id_87156f0c_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_news app_news_image_1_id_8f8e36e2_fk_app_imageproduct_general_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_news
    ADD CONSTRAINT app_news_image_1_id_8f8e36e2_fk_app_imageproduct_general_ptr_id FOREIGN KEY (image_1_id) REFERENCES public.app_imageproduct(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_news app_news_image_2_id_9aab8037_fk_app_imageproduct_general_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_news
    ADD CONSTRAINT app_news_image_2_id_9aab8037_fk_app_imageproduct_general_ptr_id FOREIGN KEY (image_2_id) REFERENCES public.app_imageproduct(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_news app_news_prod_id_13c7fbe7_fk_app_product_general_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_news
    ADD CONSTRAINT app_news_prod_id_13c7fbe7_fk_app_product_general_ptr_id FOREIGN KEY (prod_id) REFERENCES public.app_product(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_news app_news_user_id_4866b8d3_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_news
    ADD CONSTRAINT app_news_user_id_4866b8d3_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_note app_note_user_id_603ec18c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_note
    ADD CONSTRAINT app_note_user_id_603ec18c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_note app_notes_general_ptr_id_fdae6ba8_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_note
    ADD CONSTRAINT app_notes_general_ptr_id_fdae6ba8_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_note app_notes_line_id_c5728f3d_fk_app_liner; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_note
    ADD CONSTRAINT app_notes_line_id_c5728f3d_fk_app_liner FOREIGN KEY (line_id) REFERENCES public.app_linereservation(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_paymentreservation app_paymentreservati_general_ptr_id_c7451d12_fk_app_gener; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_paymentreservation
    ADD CONSTRAINT app_paymentreservati_general_ptr_id_c7451d12_fk_app_gener FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_paymentreservation app_paymentreservati_payment_reservation__1ce83ddb_fk_app_reser; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_paymentreservation
    ADD CONSTRAINT app_paymentreservati_payment_reservation__1ce83ddb_fk_app_reser FOREIGN KEY (payment_reservation_id) REFERENCES public.app_reservation(number_reservation) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_paymentreservation app_paymentreservati_type_payment_id_36200a0e_fk_app_typep; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_paymentreservation
    ADD CONSTRAINT app_paymentreservati_type_payment_id_36200a0e_fk_app_typep FOREIGN KEY (type_payment_id) REFERENCES public.app_typepayment(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_person app_person_general_ptr_id_7950330d_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person
    ADD CONSTRAINT app_person_general_ptr_id_7950330d_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_person_language app_person_language_languageperson_id_5e944da5_fk_app_langu; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person_language
    ADD CONSTRAINT app_person_language_languageperson_id_5e944da5_fk_app_langu FOREIGN KEY (languageperson_id) REFERENCES public.app_languageperson(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_person_language app_person_language_person_id_99efd837_fk_app_perso; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person_language
    ADD CONSTRAINT app_person_language_person_id_99efd837_fk_app_perso FOREIGN KEY (person_id) REFERENCES public.app_person(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_person_location app_person_location_location_id_47df0fe8_fk_app_locat; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person_location
    ADD CONSTRAINT app_person_location_location_id_47df0fe8_fk_app_locat FOREIGN KEY (location_id) REFERENCES public.app_location(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_person_location app_person_location_person_id_44380dd8_fk_app_perso; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person_location
    ADD CONSTRAINT app_person_location_person_id_44380dd8_fk_app_perso FOREIGN KEY (person_id) REFERENCES public.app_person(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_person_product app_person_product_person_id_ba77d233_fk_app_perso; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person_product
    ADD CONSTRAINT app_person_product_person_id_ba77d233_fk_app_perso FOREIGN KEY (person_id) REFERENCES public.app_person(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_person_product app_person_product_product_id_58342400_fk_app_produ; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person_product
    ADD CONSTRAINT app_person_product_product_id_58342400_fk_app_produ FOREIGN KEY (product_id) REFERENCES public.app_product(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_person app_person_type_id_f04b3d14_fk_app_typeperson_general_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person
    ADD CONSTRAINT app_person_type_id_f04b3d14_fk_app_typeperson_general_ptr_id FOREIGN KEY (type_id) REFERENCES public.app_typeperson(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_person app_person_user_id_da0a2bd8_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_person
    ADD CONSTRAINT app_person_user_id_da0a2bd8_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_phone app_phone_general_ptr_id_ac47e05e_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_phone
    ADD CONSTRAINT app_phone_general_ptr_id_ac47e05e_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_phone app_phone_per_id_634d628f_fk_app_person_general_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_phone
    ADD CONSTRAINT app_phone_per_id_634d628f_fk_app_person_general_ptr_id FOREIGN KEY (per_id) REFERENCES public.app_person(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_priceproduct app_priceproduct_age_discount_id_3cace968_fk_app_agedi; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_priceproduct
    ADD CONSTRAINT app_priceproduct_age_discount_id_3cace968_fk_app_agedi FOREIGN KEY (age_discount_id) REFERENCES public.app_agediscount(rate_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_priceproduct app_priceproduct_general_ptr_id_c9461af3_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_priceproduct
    ADD CONSTRAINT app_priceproduct_general_ptr_id_c9461af3_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_priceproduct app_priceproduct_price_product_id_4acf7890_fk_app_produ; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_priceproduct
    ADD CONSTRAINT app_priceproduct_price_product_id_4acf7890_fk_app_produ FOREIGN KEY (price_product_id) REFERENCES public.app_product(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_priceproduct app_priceproduct_rate_discount_id_e6c06c11_fk_app_rated; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_priceproduct
    ADD CONSTRAINT app_priceproduct_rate_discount_id_e6c06c11_fk_app_rated FOREIGN KEY (rate_discount_id) REFERENCES public.app_ratediscount(rate_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_product app_product_ar_id_5109e938_fk_app_area_general_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product
    ADD CONSTRAINT app_product_ar_id_5109e938_fk_app_area_general_ptr_id FOREIGN KEY (ar_id) REFERENCES public.app_area(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_product_attribute app_product_attribut_attributeproduct_id_eac8ad7f_fk_app_attri; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product_attribute
    ADD CONSTRAINT app_product_attribut_attributeproduct_id_eac8ad7f_fk_app_attri FOREIGN KEY (attributeproduct_id) REFERENCES public.app_attributeproduct(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_product_attribute app_product_attribut_product_id_5ac539e8_fk_app_produ; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product_attribute
    ADD CONSTRAINT app_product_attribut_product_id_5ac539e8_fk_app_produ FOREIGN KEY (product_id) REFERENCES public.app_product(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_product app_product_available_lang_id_c925c057_fk_app_langu; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product
    ADD CONSTRAINT app_product_available_lang_id_c925c057_fk_app_langu FOREIGN KEY (available_lang_id) REFERENCES public.app_languageperson(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_product app_product_cat_id_9673a255_fk_app_category_general_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product
    ADD CONSTRAINT app_product_cat_id_9673a255_fk_app_category_general_ptr_id FOREIGN KEY (cat_id) REFERENCES public.app_category(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_product app_product_general_ptr_id_63088f4d_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product
    ADD CONSTRAINT app_product_general_ptr_id_63088f4d_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_product app_product_image_id_57cbe465_fk_app_image; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product
    ADD CONSTRAINT app_product_image_id_57cbe465_fk_app_image FOREIGN KEY (image_id) REFERENCES public.app_imageproduct(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_product_location app_product_location_location_id_4398d559_fk_app_locat; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product_location
    ADD CONSTRAINT app_product_location_location_id_4398d559_fk_app_locat FOREIGN KEY (location_id) REFERENCES public.app_location(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_product_location app_product_location_product_id_b39f7272_fk_app_produ; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product_location
    ADD CONSTRAINT app_product_location_product_id_b39f7272_fk_app_produ FOREIGN KEY (product_id) REFERENCES public.app_product(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_product_multipleimages app_product_multiple_imageproduct_id_768decff_fk_app_image; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product_multipleimages
    ADD CONSTRAINT app_product_multiple_imageproduct_id_768decff_fk_app_image FOREIGN KEY (imageproduct_id) REFERENCES public.app_imageproduct(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_product_multipleimages app_product_multiple_product_id_2a6703c2_fk_app_produ; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product_multipleimages
    ADD CONSTRAINT app_product_multiple_product_id_2a6703c2_fk_app_produ FOREIGN KEY (product_id) REFERENCES public.app_product(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_product app_product_stock_id_e3d9d37f_fk_app_stock; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_product
    ADD CONSTRAINT app_product_stock_id_e3d9d37f_fk_app_stock FOREIGN KEY (stock_id) REFERENCES public.app_stockproduct(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_rate app_rate_general_ptr_id_c40326e8_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_rate
    ADD CONSTRAINT app_rate_general_ptr_id_c40326e8_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_ratediscount app_ratediscount_agency_id_8b81c0e0_fk_app_perso; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_ratediscount
    ADD CONSTRAINT app_ratediscount_agency_id_8b81c0e0_fk_app_perso FOREIGN KEY (agency_id) REFERENCES public.app_person(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_ratediscount app_ratediscount_rate_ptr_id_53334470_fk_app_rate_; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_ratediscount
    ADD CONSTRAINT app_ratediscount_rate_ptr_id_53334470_fk_app_rate_ FOREIGN KEY (rate_ptr_id) REFERENCES public.app_rate(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_reservation app_reservation_general_ptr_id_269e0866_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_reservation
    ADD CONSTRAINT app_reservation_general_ptr_id_269e0866_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_reservation app_reservation_tax_price_id_8d6a96fa_fk_app_tax_general_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_reservation
    ADD CONSTRAINT app_reservation_tax_price_id_8d6a96fa_fk_app_tax_general_ptr_id FOREIGN KEY (tax_price_id) REFERENCES public.app_tax(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_reservation app_reservation_user_id_f556cd2c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_reservation
    ADD CONSTRAINT app_reservation_user_id_f556cd2c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_stateform app_stateform_general_ptr_id_3a5052cc_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_stateform
    ADD CONSTRAINT app_stateform_general_ptr_id_3a5052cc_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_stockproduct app_stockproduct_general_ptr_id_bf066f71_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_stockproduct
    ADD CONSTRAINT app_stockproduct_general_ptr_id_bf066f71_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_task app_task_assigned_user_id_a8e49740_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_task
    ADD CONSTRAINT app_task_assigned_user_id_a8e49740_fk_auth_user_id FOREIGN KEY (assigned_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_task app_task_assigner_auto_id_21a5d6f6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_task
    ADD CONSTRAINT app_task_assigner_auto_id_21a5d6f6_fk_auth_user_id FOREIGN KEY (assigner_auto_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_task app_task_general_ptr_id_ca376a12_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_task
    ADD CONSTRAINT app_task_general_ptr_id_ca376a12_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_task app_task_task_state_id_09cc09a5_fk_app_stateform_general_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_task
    ADD CONSTRAINT app_task_task_state_id_09cc09a5_fk_app_stateform_general_ptr_id FOREIGN KEY (task_state_id) REFERENCES public.app_stateform(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_tax app_tax_general_ptr_id_2341c008_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_tax
    ADD CONSTRAINT app_tax_general_ptr_id_2341c008_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_typepayment app_typepayment_general_ptr_id_2c679e33_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_typepayment
    ADD CONSTRAINT app_typepayment_general_ptr_id_2c679e33_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_typeperson app_typeperson_general_ptr_id_7aeac7fe_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_typeperson
    ADD CONSTRAINT app_typeperson_general_ptr_id_7aeac7fe_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_webpage app_webpage_general_ptr_id_7f768d3a_fk_app_general_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_webpage
    ADD CONSTRAINT app_webpage_general_ptr_id_7f768d3a_fk_app_general_id FOREIGN KEY (general_ptr_id) REFERENCES public.app_general(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_webpage app_webpage_menu_bar_id_86eeb2b7_fk_app_menu_general_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_webpage
    ADD CONSTRAINT app_webpage_menu_bar_id_86eeb2b7_fk_app_menu_general_ptr_id FOREIGN KEY (menu_bar_id) REFERENCES public.app_menu(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: app_webpage app_webpage_news_cat_id_7a4dbe78_fk_app_news_; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.app_webpage
    ADD CONSTRAINT app_webpage_news_cat_id_7a4dbe78_fk_app_news_ FOREIGN KEY (news_cat_id) REFERENCES public.app_news_category(general_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: adminju
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

