-- Table: public.Employees

-- DROP TABLE IF EXISTS public."Employees";
-- CREATE SEQUENCE Employees_ID_seq;
CREATE TABLE IF NOT EXISTS public."Employees"
(
    "ID" integer NOT NULL DEFAULT nextval('Employees_ID_seq'::regclass),
    "FirstName" character varying(15) COLLATE pg_catalog."default" NOT NULL,
    "LastName" character varying(20) COLLATE pg_catalog."default" NOT NULL,
    "Role" character varying(10) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Employees_pkey" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Employees"
    OWNER to postgres;