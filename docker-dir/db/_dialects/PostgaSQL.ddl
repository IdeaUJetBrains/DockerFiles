/*http://www.postgresql.org/docs/9.4/static/datatype.html*/
CREATE TABLE Numeric_Types_table
(
    V_SMALLINT SMALLINT,
    V_INTEGER INTEGER,
    V_BIGINT BIGINT,
    V_NUMERIC NUMERIC,
    V_REAL REAL ,
    V_DOUBLE_PRECISION DOUBLE PRECISION,

    V_SMALLSERIAL SMALLSERIAL,
    V_SERIAL SERIAL,
    V_BIGSERIAL BIGSERIAL

);
CREATE TABLE Monetary_Types_table
(
    V_MONEY MONEY
);
CREATE TABLE Character_Types_table
(
    V_CHARACTER CHARACTER,
    V_CHAR CHAR(255),
    V_VARCHAR VARCHAR(255),
    V_character_varying character varying(255),
    V_TEXT TEXT
);
CREATE TABLE Binary_Types_table
(
    V_BYTEA BYTEA

);
CREATE TABLE Date_Time_Types_table
(
    V_TIME TIME,
    V_TIME_WITH_TIME_ZONE TIME WITH TIME ZONE,
    V_TIMESTAMP TIMESTAMP,
    V_TIMESTAMP_WITH_TIME_ZONE TIMESTAMP WITH TIME ZONE,
    V_DATE DATE,
    V_INTERVAL INTERVAL

);
CREATE TABLE Boolean_Types_table
(
    V_BOOLEAN BOOLEAN

);
CREATE TABLE Geometric_Types_table
(
    V_POINT POINT,
    V_LINE LINE,
    V_LSEG LSEG,
    V_BOX BOX,
    V_PATH PATH,
    V_POLYGON POLYGON,
    V_CIRCLE CIRCLE


);
CREATE TABLE Network_Address_Types_table
(
    V_CIDR CIDR,
    V_INET INET,
    V_MACADDR MACADDR
);

CREATE TABLE Bit_String_Types_table
(
    V_BIT BIT(25),
    V_BIT_VARYING BIT VARYING(5)
);

CREATE TABLE TextSearch_Types_table
(
    V_TSVECTOR TSVECTOR,
    V_TSQUERY TSQUERY
);
CREATE TABLE UUID_XML_Types_table
(
    V_UUID UUID,
    V_XML XML
);
CREATE TABLE JSON_Types_table
(
    V_JSON JSON,
    V_JSONB JSONB
);
CREATE TABLE ARRAY_Types_table
(
    V_INTEGER_ARRAY INTEGER ARRAY[4]

);

CREATE TABLE Range_Types_table
(
    V_INT4RANGE INT4RANGE,
    V_INT8RANGE INT8RANGE,
    V_NUMRANGE NUMRANGE,
    V_TSRANGE TSRANGE,
    V_TSTZRANGE TSTZRANGE,
    V_DATERANGE DATERANGE
);

CREATE TABLE OID_Types_table
(
    V_OID OID,
    V_OIDVECTOR OIDVECTOR,
    V_REGCLASS REGCLASS,
    V_REGCONFIG REGCONFIG,
    V_REGDICTIONARY REGDICTIONARY,
    V_REGOPER REGOPER,
    V_REGOPERATOR REGOPERATOR,
    V_REGPROC REGPROC,
    V_REGPROCEDURE REGPROCEDURE,
    V_REGTYPE REGTYPE
);

CREATE TABLE LSN_Types_table
(
    V_LSN  pg_lsn

);

-- These types are from site
/*CREATE TABLE Pseudo_Types_table
(
    V_ANY ANY,
    V_anyarray  anyarray,
    V_anyelement  anyelement,
    V_anynonarray  anynonarray,
    V_anyenum  anyenum,
    V_anyrange  anyrange,
    V_cstring cstring,
    V_internal  internal,
    V_language_handler  language_handler,
    V_fdw_handler  fdw_handler,
    V_record  record,
    V_trigger  trigger,
    V_event_trigger  event_trigger,
    V_void  void,
    V_opaque  opaque

);*/


CREATE TYPE new_type AS (
    v_text            text,
    v_integer         integer,
    v_numeric         numeric
);
CREATE TABLE Composite_Types (
    V_CompositeNewType      new_type,
    V_INTEGER     INTEGER
);