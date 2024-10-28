--Base Categories
INSERT INTO public.category
(name)
VALUES
    ('MEAT'),
	('PRODUCE'),
	('CANNED GOODS'),
	('ALCOHOL')
;

--Base Products
INSERT INTO public.product
(name, quantity, price, category_id)
VALUES
    ('Rib Eye', 10, 180, (select id from public.category where name like '%MEAT%')),
	('New York Steak', 10, 200, (select id from public.category where name like '%MEAT%')),
	('Sirloin', 10, 150, (select id from public.category where name like '%MEAT%')),
	('Brisket', 10, 110, (select id from public.category where name like '%MEAT%')),
	('Ground Beef', 10, 100, (select id from public.category where name like '%MEAT%')),
	('Apple', 100, 5, (select id from public.category where name like '%PRODUCE%')),
	('Pear', 100, 4, (select id from public.category where name like '%PRODUCE%')),
	('Lemon', 100, 3, (select id from public.category where name like '%PRODUCE%')),
	('Tuna', 50, 25, (select id from public.category where name like '%CANNED%')),
	('Pikles', 50, 40, (select id from public.category where name like '%CANNED%')),
	('Guiness', 20, 90, (select id from public.category where name like '%ALCOHOL%')),
	('Pohjala Imperial Stout', 20, 220, (select id from public.category where name like '%ALCOHOL%')),
	('Komes Baltic Porter', 20, 210, (select id from public.category where name like '%ALCOHOL%'))
;