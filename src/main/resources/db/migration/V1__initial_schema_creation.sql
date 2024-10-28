CREATE TABLE public.category
(
    id SERIAL NOT NULL,
    name character varying(50),
    PRIMARY KEY (id)
);

CREATE TABLE public.product
(
    id SERIAL NOT NULL,
    category_id integer NOT NULL,
    name character varying(50) NOT NULL,
    quantity integer NOT NULL,
	price numeric(16,9) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE public.product
    ADD FOREIGN KEY (category_id)
    REFERENCES public.category (id)
    NOT VALID;