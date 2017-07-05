CREATE OR REPLACE VIEW unrattab (
   cur_cod,
   eea_dov,
   eea_eov,
   cur_ref,
   rat_exc,
   lst_ope,
   ser_sta )
AS
select "CUR_COD","EEA_DOV","EEA_EOV","CUR_REF","RAT_EXC","LST_OPE","SER_STA" from unrattab@unicd.dwserver
            where cur_cod='UFV' and lst_ope='U'
/
