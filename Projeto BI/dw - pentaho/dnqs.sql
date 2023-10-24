---Arquivo de DNQs do dw_tbank

---dim_bank
DELETE FROM public.dim_bank;
INSERT INTO public.dim_bank (sk_bank,nk_bank,nm_bank, cod_bank, etl_dt_inicio, etl_dt_fim, etl_versao) VALUES
(0,0,'N/A','N/A','1900-01-01','2199-12-31',0);

---dim_customer
DELETE FROM public.dim_customer;
INSERT INTO public.dim_customer(sk_customer,nk_customer,nm_customer,nm_city,state_abbreviation,nm_state,nm_region,etl_dt_inicio,etl_dt_fim,etl_versao)
VALUES (0,0,'N/A','N/A','--','N/A','N/A','1900-01-01','2199-12-31',0);

---dim_product
DELETE FROM public.dim_product;
INSERT INTO public.dim_product(	sk_product, nk_product, etl_dt_inicio, etl_dt_fim, etl_versao)
VALUES (0,'N/A','1900-01-01','2199-12-31',0);