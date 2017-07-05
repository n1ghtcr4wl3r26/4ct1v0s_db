CREATE OR REPLACE TRIGGER trg_activos
 AFTER
  UPDATE
 ON activos
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
insert into activos_hist
     values (:old.act_codrub, :old.act_codreg, :old.act_codigo, :old.act_codgrp, :old.act_codpar,
             :old.act_codofi, :old.act_codfun, :old.act_codubi, :old.act_codfin, :old.act_codpry,
             :old.act_codmot, :old.act_feccompra, :old.act_tipcam, :old.act_tipufv, :old.act_umanejo,
             :old.act_descripcion, :old.act_desadicional, :old.act_accesorios, :old.act_proveedor,
             :old.act_marca, :old.act_modelo, :old.act_serie1, :old.act_serie2, :old.act_docreferencia,
             :old.act_fecreferencia, :old.act_docrefotro, :old.act_placa,
             :old.act_aniofabricacion, :old.act_color, :old.act_procedencia,
             :old.act_gobmunicipal, :old.act_valcobol, :old.act_valcodol, :old.act_valcoufv,
             :old.act_fecbaja, :old.act_ordencompra, :old.act_numfactura, :old.act_numcomprobante,
             :old.act_codanterior, :old.act_indetiqueta, :old.act_usuario, :old.act_fecsis,
             :old.act_estado, :old.act_codregional, :old.act_propiedad, :old.act_ultimo_doc);
END;
/

CREATE OR REPLACE TRIGGER trg_financiadores
 AFTER
  UPDATE
 ON financiadores
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
insert into financiadores_h values (:old.fin_codigo, :old.fin_descripcion, :old.fin_fecalta, :old.fin_fecmodi,
       :old.fin_usuario, :old.fin_estado);
end;
/

CREATE OR REPLACE TRIGGER trg_funcionarios
 AFTER
  UPDATE
 ON funcionarios
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
   insert into funcionarios_h values (:old.fun_codigo, :old.fun_descripcion, :old.fun_cargo, :old.fun_codofi,
   :old.fun_codreg, :old.fun_fecalta, :old.fun_fecmodi, :old.fun_usuario, :old.fun_estado,:old.fun_codfin, :old.fun_correo);
end;
/

CREATE OR REPLACE TRIGGER trg_grupos
 AFTER
  UPDATE
 ON grupos
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
   insert into grupos_h values (:old.grp_codigo, :old.grp_descripcion, :old.grp_codrub, :old.grp_fecalta,
       :old.grp_fecmodi, :old.grp_usuario, :old.grp_estado);
end;
/

CREATE OR REPLACE TRIGGER trg_inventarios
 AFTER
  UPDATE
 ON inventarios
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
   INSERT INTO inventarios_h
        VALUES (:OLD.inv_codbarra, :OLD.inv_fecha, :OLD.inv_codofi,
                :OLD.inv_codfun, :OLD.inv_estado, :OLD.inv_codfin,
                :OLD.inv_codpry, :OLD.inv_codreg, :OLD.inv_hora,
                :OLD.inv_fun, :OLD.inv_mod, :OLD.inv_control,
                :OLD.inv_gestion, :OLD.inv_usuario, :OLD.inv_fecha_inv);
END;
/

CREATE OR REPLACE TRIGGER trg_oficinas
 AFTER
  UPDATE
 ON oficinas
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
   insert into oficinas_h values (:old.ofi_codigo, :old.ofi_descripcion, :old.ofi_codreg, :old.ofi_codubi,
   :old.ofi_fecalta,:old.ofi_fecmodi, :old.ofi_usuario, :old.ofi_estado);
end;
/

CREATE OR REPLACE TRIGGER trg_partidas
 AFTER
  UPDATE
 ON partidas
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
       insert into partidas_h values (:old.par_codigo, :old.par_descripcion, :old.par_fecalta, :old.par_fecmodi,
       :old.par_usuario, :old.par_estado);
end;
/

CREATE OR REPLACE TRIGGER trg_proyectos
 AFTER
  UPDATE
 ON proyectos
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
       insert into proyectos_h values (:old.pry_codigo, :old.pry_descripcion, :old.pry_codfin, :old.pry_fecalta,
       :old.pry_fecmodi, :old.pry_usuario, :old.pry_estado);
end;
/

CREATE OR REPLACE TRIGGER trg_regionales
 AFTER
  UPDATE
 ON regionales
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
       insert into regionales_h values (:old.reg_codigo, :old.reg_descripcion, :old.reg_codfun, :old.reg_fecalta,
       :old.reg_fecmodi, :old.reg_usuario, :old.reg_estado);
end;
/

CREATE OR REPLACE TRIGGER trg_rubros
 AFTER
  UPDATE
 ON rubros
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
       insert into rubros_h values (:old.rub_codigo, :old.rub_descripcion, :old.rub_vidaut, :old.rub_porcen,
       :old.rub_codpar,:old.rub_ctadep, :old.rub_ctadac, :old.rub_fecalta, :old.rub_fecmodi, :old.rub_usuario,
       :old.rub_estado);
end;
/

CREATE OR REPLACE TRIGGER trg_secbarras
 AFTER
  UPDATE
 ON secbarras
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
    insert into secbarras_h values (:old.bar_rubro, :old.bar_codreg, :old.bar_numero);
end;
/

CREATE OR REPLACE TRIGGER trg_sectiposdoc
 AFTER
  UPDATE
 ON sectiposdoc
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
       insert into sectiposdoc_h values (:old.std_codreg, :old.std_tipdoc, :old.std_gestion, :old.std_numero,
       :old.std_fecalta, :old.std_fecmodi, :old.std_usuario, :old.std_estado,:old.std_codfin);
end;
/

CREATE OR REPLACE TRIGGER trg_tipocambio
 AFTER
  UPDATE
 ON tipocambio
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
       insert into tipocambio_h values (:old.tca_fecha, :old.tca_tipcam, :old.tca_tipufv, :old.tca_fecalta,
       :old.tca_fecmodi, :old.tca_usuario, :old.tca_estado);
end;
/

CREATE OR REPLACE TRIGGER trg_tiposbaja
 AFTER
  UPDATE
 ON tiposbaja
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
       insert into tiposbaja_h values (:old.mot_codigo, :old.mot_descripcion, :old.mot_fecalta, :old.mot_fecmodi,
       :old.mot_usuario, :old.mot_estado);
end;
/

CREATE OR REPLACE TRIGGER trg_tiposdoc
 AFTER
  UPDATE
 ON tiposdoc
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
   insert into tiposdoc_h values (:old.tdo_codigo, :old.tdo_descripcion, :old.tdo_feccie, :old.tdo_fecalta,
       :old.tdo_fecmodi, :old.tdo_usuario, :old.tdo_estado);
end;
/

CREATE OR REPLACE TRIGGER trg_ubicaciones
 AFTER
  UPDATE
 ON ubicaciones
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
begin
   insert into ubicaciones_h values (:old.ubi_codigo, :old.ubi_descripcion, :old.ubi_direccion, :old.ubi_codreg,
       :old.ubi_fecalta, :old.ubi_fecmodi, :old.ubi_usuario, :old.ubi_estado);
end;
/

