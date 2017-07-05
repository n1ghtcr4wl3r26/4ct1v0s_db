CREATE TABLE activos
    (act_codrub                     VARCHAR2(10 BYTE) NOT NULL,
    act_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    act_codigo                     NUMBER(5,0) NOT NULL,
    act_codgrp                     VARCHAR2(10 BYTE) NOT NULL,
    act_codpar                     VARCHAR2(10 BYTE) NOT NULL,
    act_codofi                     VARCHAR2(10 BYTE) NOT NULL,
    act_codfun                     VARCHAR2(10 BYTE) NOT NULL,
    act_codubi                     VARCHAR2(10 BYTE) NOT NULL,
    act_codfin                     VARCHAR2(10 BYTE) NOT NULL,
    act_codpry                     VARCHAR2(10 BYTE) NOT NULL,
    act_codmot                     VARCHAR2(10 BYTE),
    act_feccompra                  DATE NOT NULL,
    act_tipcam                     NUMBER(11,6) NOT NULL,
    act_tipufv                     NUMBER(11,6) NOT NULL,
    act_umanejo                    VARCHAR2(20 BYTE),
    act_descripcion                VARCHAR2(255 BYTE) NOT NULL,
    act_desadicional               VARCHAR2(240 BYTE),
    act_accesorios                 VARCHAR2(60 BYTE),
    act_proveedor                  VARCHAR2(50 BYTE),
    act_marca                      VARCHAR2(30 BYTE),
    act_modelo                     VARCHAR2(30 BYTE),
    act_serie1                     VARCHAR2(30 BYTE),
    act_serie2                     VARCHAR2(30 BYTE),
    act_docreferencia              VARCHAR2(30 BYTE),
    act_fecreferencia              DATE,
    act_docrefotro                 VARCHAR2(60 BYTE),
    act_placa                      VARCHAR2(10 BYTE),
    act_aniofabricacion            VARCHAR2(10 BYTE),
    act_color                      VARCHAR2(30 BYTE),
    act_procedencia                VARCHAR2(30 BYTE),
    act_gobmunicipal               VARCHAR2(60 BYTE),
    act_valcobol                   NUMBER(15,2) NOT NULL,
    act_valcodol                   NUMBER(15,2) NOT NULL,
    act_valcoufv                   NUMBER(15,2) NOT NULL,
    act_fecbaja                    DATE,
    act_ordencompra                VARCHAR2(20 BYTE),
    act_numfactura                 NUMBER(12,0),
    act_numcomprobante             VARCHAR2(20 BYTE),
    act_codanterior                VARCHAR2(20 BYTE),
    act_indetiqueta                CHAR(1 BYTE),
    act_usuario                    VARCHAR2(15 BYTE) NOT NULL,
    act_fecsis                     DATE NOT NULL,
    act_estado                     CHAR(1 BYTE) NOT NULL,
    act_propiedad                  CHAR(1 BYTE),
    act_ultimo_doc                 VARCHAR2(20 BYTE),
    act_codregional                VARCHAR2(10 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE INDEX idx_act01 ON activos
  (
    act_codfin                      ASC,
    act_codregional                 ASC,
    act_codfun                      ASC,
    act_estado                      ASC,
    act_propiedad                   ASC
  )
NOPARALLEL
LOGGING
/


ALTER TABLE activos
ADD CONSTRAINT pk_activos PRIMARY KEY (act_codrub, act_codreg, act_codigo)
USING INDEX
/

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

CREATE TABLE activos_bk
    (act_codrub                     VARCHAR2(10 BYTE) NOT NULL,
    act_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    act_codigo                     NUMBER(5,0) NOT NULL,
    act_codgrp                     VARCHAR2(10 BYTE) NOT NULL,
    act_codpar                     VARCHAR2(10 BYTE) NOT NULL,
    act_codofi                     VARCHAR2(10 BYTE) NOT NULL,
    act_codfun                     VARCHAR2(10 BYTE) NOT NULL,
    act_codubi                     VARCHAR2(10 BYTE) NOT NULL,
    act_codfin                     VARCHAR2(10 BYTE) NOT NULL,
    act_codpry                     VARCHAR2(10 BYTE) NOT NULL,
    act_codmot                     VARCHAR2(10 BYTE),
    act_feccompra                  DATE NOT NULL,
    act_tipcam                     NUMBER(11,6) NOT NULL,
    act_tipufv                     NUMBER(11,6) NOT NULL,
    act_umanejo                    VARCHAR2(20 BYTE),
    act_descripcion                VARCHAR2(255 BYTE) NOT NULL,
    act_desadicional               VARCHAR2(240 BYTE),
    act_accesorios                 VARCHAR2(60 BYTE),
    act_proveedor                  VARCHAR2(50 BYTE),
    act_marca                      VARCHAR2(30 BYTE),
    act_modelo                     VARCHAR2(30 BYTE),
    act_serie1                     VARCHAR2(30 BYTE),
    act_serie2                     VARCHAR2(30 BYTE),
    act_docreferencia              VARCHAR2(30 BYTE),
    act_fecreferencia              DATE,
    act_docrefotro                 VARCHAR2(60 BYTE),
    act_placa                      VARCHAR2(10 BYTE),
    act_aniofabricacion            VARCHAR2(10 BYTE),
    act_color                      VARCHAR2(30 BYTE),
    act_procedencia                VARCHAR2(30 BYTE),
    act_gobmunicipal               VARCHAR2(30 BYTE),
    act_valcobol                   NUMBER(15,2) NOT NULL,
    act_valcodol                   NUMBER(15,2) NOT NULL,
    act_valcoufv                   NUMBER(15,2) NOT NULL,
    act_fecbaja                    DATE,
    act_ordencompra                VARCHAR2(20 BYTE),
    act_numfactura                 NUMBER(12,0),
    act_numcomprobante             VARCHAR2(20 BYTE),
    act_codanterior                VARCHAR2(20 BYTE),
    act_indetiqueta                CHAR(1 BYTE),
    act_usuario                    VARCHAR2(15 BYTE) NOT NULL,
    act_fecsis                     DATE NOT NULL,
    act_estado                     CHAR(1 BYTE) NOT NULL,
    act_propiedad                  CHAR(1 BYTE),
    act_ultimo_doc                 VARCHAR2(20 BYTE),
    act_codregional                VARCHAR2(10 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE activos_hist
    (act_codrub                     VARCHAR2(10 BYTE) NOT NULL,
    act_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    act_codigo                     NUMBER(5,0) NOT NULL,
    act_codgrp                     VARCHAR2(10 BYTE) NOT NULL,
    act_codpar                     VARCHAR2(10 BYTE) NOT NULL,
    act_codofi                     VARCHAR2(10 BYTE) NOT NULL,
    act_codfun                     VARCHAR2(10 BYTE) NOT NULL,
    act_codubi                     VARCHAR2(10 BYTE) NOT NULL,
    act_codfin                     VARCHAR2(10 BYTE) NOT NULL,
    act_codpry                     VARCHAR2(10 BYTE) NOT NULL,
    act_codmot                     VARCHAR2(10 BYTE),
    act_feccompra                  DATE NOT NULL,
    act_tipcam                     NUMBER(11,6) NOT NULL,
    act_tipufv                     NUMBER(11,6) NOT NULL,
    act_umanejo                    VARCHAR2(20 BYTE),
    act_descripcion                VARCHAR2(255 BYTE) NOT NULL,
    act_desadicional               VARCHAR2(240 BYTE),
    act_accesorios                 VARCHAR2(60 BYTE),
    act_proveedor                  VARCHAR2(50 BYTE),
    act_marca                      VARCHAR2(30 BYTE),
    act_modelo                     VARCHAR2(30 BYTE),
    act_serie1                     VARCHAR2(30 BYTE),
    act_serie2                     VARCHAR2(30 BYTE),
    act_docreferencia              VARCHAR2(30 BYTE),
    act_fecreferencia              DATE,
    act_docrefotro                 VARCHAR2(60 BYTE),
    act_placa                      VARCHAR2(10 BYTE),
    act_aniofabricacion            VARCHAR2(10 BYTE),
    act_color                      VARCHAR2(30 BYTE),
    act_procedencia                VARCHAR2(30 BYTE),
    act_gobmunicipal               VARCHAR2(30 BYTE),
    act_valcobol                   NUMBER(15,2) NOT NULL,
    act_valcodol                   NUMBER(15,2) NOT NULL,
    act_valcoufv                   NUMBER(15,2) NOT NULL,
    act_fecbaja                    DATE,
    act_ordencompra                VARCHAR2(20 BYTE),
    act_numfactura                 NUMBER(8,0),
    act_numcomprobante             VARCHAR2(20 BYTE),
    act_codanterior                VARCHAR2(20 BYTE),
    act_indetiqueta                CHAR(1 BYTE),
    act_usuario                    VARCHAR2(15 BYTE) NOT NULL,
    act_fecsis                     DATE NOT NULL,
    act_estado                     CHAR(1 BYTE) NOT NULL,
    act_codregional                VARCHAR2(10 BYTE),
    act_propiedad                  CHAR(1 BYTE),
    act_ultimo_doc                 VARCHAR2(20 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE depreciaciones
    (dep_codrub                     VARCHAR2(10 BYTE) NOT NULL,
    dep_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    dep_codigo                     NUMBER(5,0) NOT NULL,
    dep_correlmre                  NUMBER(4,0) NOT NULL,
    dep_numrevaluo                 NUMBER(4,0) NOT NULL,
    dep_numdepreciacion            NUMBER(4,0) NOT NULL,
    dep_fecha                      DATE,
    dep_anio                       VARCHAR2(4 BYTE) NOT NULL,
    dep_mes                        VARCHAR2(2 BYTE) NOT NULL,
    dep_tipcamini                  NUMBER(15,6),
    dep_tipcamfin                  NUMBER(15,6),
    dep_tipufvini                  NUMBER(15,6),
    dep_tipufvfin                  NUMBER(15,6),
    dep_factorbol                  NUMBER(15,6),
    dep_factordol                  NUMBER(15,6),
    dep_factorufv                  NUMBER(15,6),
    dep_actuvalbol                 NUMBER(15,6),
    dep_actuvaldol                 NUMBER(15,6),
    dep_actuvalufv                 NUMBER(15,6),
    dep_actufacbol                 NUMBER(15,6),
    dep_actufacdol                 NUMBER(15,6),
    dep_actufacufv                 NUMBER(15,6),
    dep_usuario                    VARCHAR2(15 BYTE),
    dep_fecsis                     DATE,
    dep_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_depreciaciones ON depreciaciones
  (
    dep_codrub                      ASC,
    dep_codreg                      ASC,
    dep_codigo                      ASC,
    dep_correlmre                   ASC,
    dep_numrevaluo                  ASC,
    dep_numdepreciacion             ASC
  )
NOPARALLEL
LOGGING
/

CREATE UNIQUE INDEX un_depreciaciones ON depreciaciones
  (
    dep_codrub                      ASC,
    dep_codreg                      ASC,
    dep_codigo                      ASC,
    dep_correlmre                   ASC,
    dep_numrevaluo                  ASC,
    dep_anio                        ASC,
    dep_mes                         ASC
  )
NOPARALLEL
LOGGING
/


CREATE TABLE det_documentos
    (ddo_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    ddo_tipdoc                     CHAR(1 BYTE) NOT NULL,
    ddo_gestion                    CHAR(4 BYTE) NOT NULL,
    ddo_numero                     NUMBER(4,0) NOT NULL,
    ddo_item                       NUMBER(4,0) NOT NULL,
    ddo_codrubactual               VARCHAR2(10 BYTE),
    ddo_codregactual               VARCHAR2(10 BYTE),
    ddo_codigo                     NUMBER(5,0),
    ddo_codmot                     VARCHAR2(10 BYTE),
    ddo_usuario                    VARCHAR2(15 BYTE),
    ddo_estado                     CHAR(1 BYTE),
    ddo_codfin                     VARCHAR2(10 BYTE) NOT NULL,
    ddo_codofiactual               VARCHAR2(10 BYTE),
    ddo_codubiactual               VARCHAR2(10 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_detdocumentos ON det_documentos
  (
    ddo_codfin                      ASC,
    ddo_codreg                      ASC,
    ddo_tipdoc                      ASC,
    ddo_gestion                     ASC,
    ddo_numero                      ASC,
    ddo_item                        ASC
  )
NOPARALLEL
LOGGING
/

CREATE INDEX idx_activos ON det_documentos
  (
    ddo_codrubactual                ASC,
    ddo_codregactual                ASC,
    ddo_codigo                      ASC
  )
NOPARALLEL
LOGGING
/

CREATE INDEX det_doc_idx01 ON det_documentos
  (
    ddo_codfin                      ASC,
    ddo_codreg                      ASC,
    ddo_tipdoc                      ASC,
    ddo_gestion                     ASC,
    ddo_numero                      ASC,
    ddo_estado                      ASC
  )
NOPARALLEL
LOGGING
/


CREATE TABLE documentos
    (doc_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    doc_tipdoc                     CHAR(1 BYTE) NOT NULL,
    doc_gestion                    CHAR(4 BYTE) NOT NULL,
    doc_numero                     NUMBER(4,0) NOT NULL,
    doc_fecha                      DATE,
    doc_codofiorigen               VARCHAR2(10 BYTE),
    doc_codfunorigen               VARCHAR2(10 BYTE),
    doc_codubiorigen               VARCHAR2(10 BYTE),
    doc_codfinorigen               VARCHAR2(10 BYTE),
    doc_codpryorigen               VARCHAR2(10 BYTE),
    doc_codregdestino              VARCHAR2(10 BYTE),
    doc_codofidestino              VARCHAR2(10 BYTE),
    doc_codfundestino              VARCHAR2(10 BYTE),
    doc_codubidestino              VARCHAR2(10 BYTE),
    doc_codfindestino              VARCHAR2(10 BYTE),
    doc_codprydestino              VARCHAR2(10 BYTE),
    doc_observacion                VARCHAR2(120 BYTE),
    doc_inconfirma                 CHAR(1 BYTE),
    doc_usuario                    VARCHAR2(15 BYTE),
    doc_fecsis                     DATE,
    doc_estado                     CHAR(1 BYTE),
    doc_codfin                     VARCHAR2(10 BYTE) )
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_documentos ON documentos
  (
    doc_codfin                      ASC,
    doc_codreg                      ASC,
    doc_tipdoc                      ASC,
    doc_gestion                     ASC,
    doc_numero                      ASC
  )
NOPARALLEL
LOGGING
/

CREATE INDEX documentos_idx01 ON documentos
  (
    doc_inconfirma                  ASC
  )
NOPARALLEL
LOGGING
/


ALTER TABLE documentos
ADD CHECK ("DOC_CODFIN" IS NOT NULL)
/

CREATE TABLE estados
    (estado                         CHAR(1 BYTE) ,
    desestado                      VARCHAR2(30 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_estados ON estados
  (
    estado                          ASC
  )
NOPARALLEL
LOGGING
/


ALTER TABLE estados
ADD CHECK ("ESTADO" IS NOT NULL)
/

CREATE TABLE financiadores
    (fin_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    fin_descripcion                VARCHAR2(50 BYTE) NOT NULL,
    fin_fecalta                    DATE,
    fin_fecmodi                    DATE,
    fin_usuario                    VARCHAR2(15 BYTE),
    fin_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_financiadores ON financiadores
  (
    fin_codigo                      ASC
  )
NOPARALLEL
LOGGING
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

CREATE TABLE financiadores_h
    (fin_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    fin_descripcion                VARCHAR2(50 BYTE) NOT NULL,
    fin_fecalta                    DATE,
    fin_fecmodi                    DATE,
    fin_usuario                    VARCHAR2(15 BYTE),
    fin_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE funcionarios
    (fun_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    fun_descripcion                VARCHAR2(50 BYTE) NOT NULL,
    fun_cargo                      VARCHAR2(50 BYTE) NOT NULL,
    fun_codofi                     VARCHAR2(10 BYTE) NOT NULL,
    fun_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    fun_fecalta                    DATE,
    fun_fecmodi                    DATE,
    fun_usuario                    VARCHAR2(15 BYTE),
    fun_estado                     CHAR(1 BYTE),
    fun_codfin                     VARCHAR2(10 BYTE),
    fun_correo                     VARCHAR2(50 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_funcionarios ON funcionarios
  (
    fun_codigo                      ASC
  )
NOPARALLEL
LOGGING
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

CREATE TABLE funcionarios_bk
    (fun_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    fun_descripcion                VARCHAR2(50 BYTE) NOT NULL,
    fun_cargo                      VARCHAR2(50 BYTE) NOT NULL,
    fun_codofi                     VARCHAR2(10 BYTE) NOT NULL,
    fun_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    fun_fecalta                    DATE,
    fun_fecmodi                    DATE,
    fun_usuario                    VARCHAR2(15 BYTE),
    fun_estado                     CHAR(1 BYTE),
    fun_codfin                     VARCHAR2(10 BYTE),
    fun_correo                     VARCHAR2(50 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE funcionarios_h
    (fun_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    fun_descripcion                VARCHAR2(50 BYTE) NOT NULL,
    fun_cargo                      VARCHAR2(50 BYTE) NOT NULL,
    fun_codofi                     VARCHAR2(10 BYTE) NOT NULL,
    fun_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    fun_fecalta                    DATE,
    fun_fecmodi                    DATE,
    fun_usuario                    VARCHAR2(15 BYTE),
    fun_estado                     CHAR(1 BYTE),
    fun_codfin                     VARCHAR2(10 BYTE),
    fun_correo                     VARCHAR2(50 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE grupos
    (grp_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    grp_descripcion                VARCHAR2(50 BYTE) NOT NULL,
    grp_codrub                     VARCHAR2(10 BYTE) NOT NULL,
    grp_fecalta                    DATE,
    grp_fecmodi                    DATE,
    grp_usuario                    VARCHAR2(15 BYTE),
    grp_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_grupos ON grupos
  (
    grp_codigo                      ASC,
    grp_codrub                      ASC
  )
NOPARALLEL
LOGGING
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

CREATE TABLE grupos_h
    (grp_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    grp_descripcion                VARCHAR2(50 BYTE) NOT NULL,
    grp_codrub                     VARCHAR2(10 BYTE) NOT NULL,
    grp_fecalta                    DATE,
    grp_fecmodi                    DATE,
    grp_usuario                    VARCHAR2(15 BYTE),
    grp_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE inventarios
    (inv_codbarra                   VARCHAR2(30 BYTE) NOT NULL,
    inv_fecha                      DATE NOT NULL,
    inv_codofi                     VARCHAR2(10 BYTE),
    inv_codfun                     VARCHAR2(10 BYTE),
    inv_estado                     CHAR(1 BYTE),
    inv_codfin                     VARCHAR2(10 BYTE),
    inv_codpry                     VARCHAR2(10 BYTE),
    inv_codreg                     VARCHAR2(10 BYTE),
    inv_hora                       VARCHAR2(30 BYTE) NOT NULL,
    inv_fun                        VARCHAR2(10 BYTE) NOT NULL,
    inv_mod                        CHAR(1 BYTE),
    inv_control                    VARCHAR2(20 BYTE) NOT NULL,
    inv_gestion                    VARCHAR2(6 BYTE) NOT NULL,
    inv_usuario                    VARCHAR2(10 BYTE),
    inv_fecha_inv                  DATE)
  NOPARALLEL
  LOGGING
/

CREATE INDEX idx_gestion ON inventarios
  (
    inv_gestion                     ASC
  )
NOPARALLEL
LOGGING
/

CREATE UNIQUE INDEX pk_inventarios ON inventarios
  (
    inv_codbarra                    ASC,
    inv_gestion                     ASC,
    inv_control                     ASC
  )
NOPARALLEL
LOGGING
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

CREATE TABLE inventarios_h
    (inv_codbarra                   VARCHAR2(30 BYTE) NOT NULL,
    inv_fecha                      DATE NOT NULL,
    inv_codofi                     VARCHAR2(10 BYTE),
    inv_codfun                     VARCHAR2(10 BYTE),
    inv_estado                     CHAR(1 BYTE),
    inv_codfin                     VARCHAR2(10 BYTE),
    inv_codpry                     VARCHAR2(10 BYTE),
    inv_codreg                     VARCHAR2(10 BYTE),
    inv_hora                       VARCHAR2(30 BYTE) NOT NULL,
    inv_fun                        VARCHAR2(10 BYTE) NOT NULL,
    inv_mod                        CHAR(1 BYTE),
    inv_control                    VARCHAR2(20 BYTE),
    inv_gestion                    VARCHAR2(6 BYTE),
    inv_usuario                    VARCHAR2(10 BYTE),
    inv_fecha_inv                  DATE)
  NOPARALLEL
  LOGGING
/

CREATE TABLE inventarios_tmp
    (inv_codbarra                   VARCHAR2(30 BYTE) NOT NULL,
    inv_fecha                      DATE NOT NULL,
    inv_codofi                     VARCHAR2(10 BYTE),
    inv_codfun                     VARCHAR2(10 BYTE),
    inv_estado                     CHAR(1 BYTE),
    inv_codfin                     VARCHAR2(10 BYTE),
    inv_codpry                     VARCHAR2(10 BYTE),
    inv_codreg                     VARCHAR2(10 BYTE),
    inv_hora                       VARCHAR2(30 BYTE) NOT NULL,
    inv_fun                        VARCHAR2(10 BYTE) NOT NULL,
    inv_mod                        CHAR(1 BYTE),
    inv_control                    VARCHAR2(20 BYTE) NOT NULL,
    inv_gestion                    VARCHAR2(6 BYTE) NOT NULL,
    inv_usuario                    VARCHAR2(10 BYTE),
    inv_fecha_inv                  DATE)
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_inventarios_tmp ON inventarios_tmp
  (
    inv_codbarra                    ASC,
    inv_gestion                     ASC,
    inv_control                     ASC
  )
NOPARALLEL
LOGGING
/


CREATE TABLE mejorasrebajas
    (mre_codrub                     VARCHAR2(10 BYTE) NOT NULL,
    mre_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    mre_codigo                     NUMBER(5,0) NOT NULL,
    mre_inmejreb                   CHAR(1 BYTE),
    mre_corel                      NUMBER(4,0) NOT NULL,
    mre_fecha                      DATE,
    mre_tipcam                     VARCHAR2(10 BYTE),
    mre_tipufv                     VARCHAR2(10 BYTE),
    mre_descripcion                VARCHAR2(120 BYTE),
    mre_desadicional               VARCHAR2(240 BYTE),
    mre_proveedor                  VARCHAR2(50 BYTE),
    mre_marca                      VARCHAR2(30 BYTE),
    mre_modelo                     VARCHAR2(30 BYTE),
    mre_serie                      VARCHAR2(30 BYTE),
    mre_docreferencia              VARCHAR2(30 BYTE),
    mre_fecreferencia              DATE,
    mre_valbol                     NUMBER(15,2),
    mre_valdol                     NUMBER(15,2),
    mre_valufv                     NUMBER(15,2),
    mre_ordencompra                VARCHAR2(20 BYTE),
    mre_numfactura                 NUMBER(8,0),
    mre_numcomprobante             VARCHAR2(20 BYTE),
    mre_usuario                    VARCHAR2(15 BYTE),
    mre_fecsis                     DATE,
    mre_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE INDEX idx_mejoras ON mejorasrebajas
  (
    mre_codrub                      ASC,
    mre_codreg                      ASC,
    mre_codigo                      ASC
  )
NOPARALLEL
LOGGING
/

CREATE UNIQUE INDEX pk_mejoras ON mejorasrebajas
  (
    mre_codrub                      ASC,
    mre_codreg                      ASC,
    mre_codigo                      ASC,
    mre_corel                       ASC
  )
NOPARALLEL
LOGGING
/


CREATE TABLE mesdepreciacion
    (gestion                        VARCHAR2(4 BYTE),
    mes                            VARCHAR2(2 BYTE),
    estado                         CHAR(1 BYTE),
    secuencia                      NUMBER)
  NOPARALLEL
  LOGGING
/

CREATE TABLE nuevos
    (act_codrub                     VARCHAR2(10 BYTE),
    act_codreg                     VARCHAR2(10 BYTE),
    act_codigo                     NUMBER(5,0),
    act_codgrp                     VARCHAR2(10 BYTE),
    act_codofi                     VARCHAR2(10 BYTE),
    act_codfun                     VARCHAR2(10 BYTE),
    act_codfin                     VARCHAR2(10 BYTE),
    act_codpry                     VARCHAR2(10 BYTE),
    act_descripcion                VARCHAR2(80 BYTE),
    act_estado                     VARCHAR2(1 BYTE),
    act_hora                       VARCHAR2(30 BYTE),
    act_fun                        VARCHAR2(10 BYTE),
    act_control                    VARCHAR2(20 BYTE),
    act_usuario                    VARCHAR2(10 BYTE),
    act_fecha                      DATE)
  NOPARALLEL
  LOGGING
/

CREATE TABLE nuevos_tmp
    (act_codrub                     VARCHAR2(10 BYTE),
    act_codreg                     VARCHAR2(10 BYTE),
    act_codigo                     NUMBER(5,0),
    act_codgrp                     VARCHAR2(10 BYTE),
    act_codofi                     VARCHAR2(10 BYTE),
    act_codfun                     VARCHAR2(10 BYTE),
    act_codfin                     VARCHAR2(10 BYTE),
    act_codpry                     VARCHAR2(10 BYTE),
    act_descripcion                VARCHAR2(80 BYTE),
    act_estado                     VARCHAR2(1 BYTE),
    act_hora                       VARCHAR2(30 BYTE),
    act_fun                        VARCHAR2(10 BYTE),
    act_control                    VARCHAR2(20 BYTE),
    act_usuario                    VARCHAR2(10 BYTE),
    act_fecha                      DATE)
  NOPARALLEL
  LOGGING
/

CREATE TABLE oficinas
    (ofi_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    ofi_descripcion                VARCHAR2(80 BYTE) NOT NULL,
    ofi_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    ofi_codubi                     VARCHAR2(10 BYTE) NOT NULL,
    ofi_fecalta                    DATE,
    ofi_fecmodi                    DATE,
    ofi_usuario                    VARCHAR2(15 BYTE),
    ofi_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_oficinas ON oficinas
  (
    ofi_codigo                      ASC,
    ofi_codreg                      ASC
  )
NOPARALLEL
LOGGING
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

CREATE TABLE oficinas_bk
    (ofi_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    ofi_descripcion                VARCHAR2(80 BYTE) NOT NULL,
    ofi_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    ofi_codubi                     VARCHAR2(10 BYTE) NOT NULL,
    ofi_fecalta                    DATE,
    ofi_fecmodi                    DATE,
    ofi_usuario                    VARCHAR2(15 BYTE),
    ofi_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE oficinas_h
    (ofi_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    ofi_descripcion                VARCHAR2(80 BYTE) NOT NULL,
    ofi_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    ofi_codubi                     VARCHAR2(10 BYTE) NOT NULL,
    ofi_fecalta                    DATE,
    ofi_fecmodi                    DATE,
    ofi_usuario                    VARCHAR2(15 BYTE),
    ofi_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE parametros
    (cte_codinstitucion             CHAR(3 BYTE),
    cte_codrubaccesorios           VARCHAR2(10 BYTE),
    cte_codrubmejoras              VARCHAR2(10 BYTE),
    cte_codrubrebajas              VARCHAR2(10 BYTE),
    cte_codrub1                    VARCHAR2(10 BYTE),
    cte_codrub2                    VARCHAR2(10 BYTE),
    cte_codrub3                    VARCHAR2(10 BYTE),
    cte_codrub4                    VARCHAR2(10 BYTE),
    cte_codrub5                    VARCHAR2(10 BYTE),
    cte_codrub6                    VARCHAR2(10 BYTE),
    cte_tipdocentrega              CHAR(1 BYTE),
    cte_tipdocdevolucion           CHAR(1 BYTE),
    cte_tipdoctransferencia        CHAR(1 BYTE),
    cte_tipdocbaja                 CHAR(1 BYTE),
    cte_gestion                    CHAR(4 BYTE) DEFAULT 2006,
    cte_tipdoctraregionales        CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

COMMENT ON COLUMN parametros.cte_codrub1 IS 'Edificios y Terrenos'
/
COMMENT ON COLUMN parametros.cte_codrub2 IS 'Vehiculos'
/
COMMENT ON COLUMN parametros.cte_codrub3 IS 'Computacion'
/
CREATE TABLE partidas
    (par_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    par_descripcion                VARCHAR2(100 BYTE) NOT NULL,
    par_fecalta                    DATE,
    par_fecmodi                    DATE,
    par_usuario                    VARCHAR2(15 BYTE),
    par_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_partidas ON partidas
  (
    par_codigo                      ASC
  )
NOPARALLEL
LOGGING
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

CREATE TABLE partidas_h
    (par_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    par_descripcion                VARCHAR2(100 BYTE) NOT NULL,
    par_fecalta                    DATE,
    par_fecmodi                    DATE,
    par_usuario                    VARCHAR2(15 BYTE),
    par_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE proyectos
    (pry_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    pry_descripcion                VARCHAR2(50 BYTE) NOT NULL,
    pry_codfin                     VARCHAR2(10 BYTE),
    pry_fecalta                    DATE,
    pry_fecmodi                    DATE,
    pry_usuario                    VARCHAR2(15 BYTE),
    pry_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_proyectos ON proyectos
  (
    pry_codigo                      ASC
  )
NOPARALLEL
LOGGING
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

CREATE TABLE proyectos_h
    (pry_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    pry_descripcion                VARCHAR2(50 BYTE) NOT NULL,
    pry_codfin                     VARCHAR2(10 BYTE),
    pry_fecalta                    DATE,
    pry_fecmodi                    DATE,
    pry_usuario                    VARCHAR2(15 BYTE),
    pry_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE prueba_revaluos
    (rev_codrub                     VARCHAR2(10 BYTE) NOT NULL,
    rev_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    rev_codigo                     NUMBER(5,0) NOT NULL,
    rev_correlmre                  NUMBER(4,0) NOT NULL,
    rev_numrevaluo                 NUMBER(4,0) NOT NULL,
    rev_fecha                      DATE,
    rev_tipcam                     NUMBER(15,6),
    rev_tipufv                     NUMBER(15,6),
    rev_valbol                     NUMBER(15,2),
    rev_valdol                     NUMBER(15,6),
    rev_valufv                     NUMBER(15,6),
    rev_depacubol                  NUMBER(15,6),
    rev_depacudol                  NUMBER(15,6),
    rev_depacuufv                  NUMBER(15,6),
    rev_vidaut                     NUMBER(4,0),
    rev_estadoactivo               CHAR(1 BYTE),
    rev_desestado                  VARCHAR2(60 BYTE),
    rev_indepreciacion             CHAR(1 BYTE),
    rev_numdocumento               VARCHAR2(20 BYTE),
    rev_usuario                    VARCHAR2(15 BYTE),
    rev_fecsis                     DATE,
    rev_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE regionales
    (reg_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    reg_descripcion                VARCHAR2(50 BYTE) NOT NULL,
    reg_codfun                     VARCHAR2(10 BYTE),
    reg_fecalta                    DATE,
    reg_fecmodi                    DATE,
    reg_usuario                    VARCHAR2(15 BYTE),
    reg_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_regionales ON regionales
  (
    reg_codigo                      ASC
  )
NOPARALLEL
LOGGING
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

CREATE TABLE regionales_h
    (reg_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    reg_descripcion                VARCHAR2(50 BYTE) NOT NULL,
    reg_codfun                     VARCHAR2(10 BYTE),
    reg_fecalta                    DATE,
    reg_fecmodi                    DATE,
    reg_usuario                    VARCHAR2(15 BYTE),
    reg_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE registro_depreciacion
    (reg_gestion                    CHAR(4 BYTE) NOT NULL,
    reg_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    reg_codrub                     VARCHAR2(10 BYTE) NOT NULL,
    reg_codini                     VARCHAR2(10 BYTE) NOT NULL,
    reg_codfin                     VARCHAR2(10 BYTE) NOT NULL,
    reg_fechadepre                 VARCHAR2(10 BYTE) NOT NULL,
    reg_usuario                    VARCHAR2(10 BYTE) NOT NULL,
    reg_fecsis                     DATE NOT NULL)
  NOPARALLEL
  LOGGING
/

CREATE TABLE revaluos
    (rev_codrub                     VARCHAR2(10 BYTE) NOT NULL,
    rev_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    rev_codigo                     NUMBER(5,0) NOT NULL,
    rev_correlmre                  NUMBER(4,0) NOT NULL,
    rev_numrevaluo                 NUMBER(4,0) NOT NULL,
    rev_fecha                      DATE,
    rev_tipcam                     NUMBER(15,6),
    rev_tipufv                     NUMBER(15,6),
    rev_valbol                     NUMBER(15,2),
    rev_valdol                     NUMBER(15,6),
    rev_valufv                     NUMBER(15,6),
    rev_depacubol                  NUMBER(15,6),
    rev_depacudol                  NUMBER(15,6),
    rev_depacuufv                  NUMBER(15,6),
    rev_vidaut                     NUMBER(4,0),
    rev_estadoactivo               CHAR(1 BYTE),
    rev_desestado                  VARCHAR2(60 BYTE),
    rev_indepreciacion             CHAR(1 BYTE),
    rev_numdocumento               VARCHAR2(20 BYTE),
    rev_usuario                    VARCHAR2(15 BYTE),
    rev_fecsis                     DATE,
    rev_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE INDEX idx_rev01 ON revaluos
  (
    rev_codrub                      ASC,
    rev_codreg                      ASC,
    rev_codigo                      ASC,
    rev_correlmre                   ASC,
    rev_numrevaluo                  ASC,
    rev_fecha                       ASC
  )
NOPARALLEL
LOGGING
/


CREATE TABLE revaluos_gestion
    (rg_gestion                     VARCHAR2(30 BYTE),
    rg_nro                         NUMBER(10,0),
    rg_dir_adm                     NUMBER(2,0),
    rg_codigo                      VARCHAR2(10 BYTE),
    rg_rubro                       VARCHAR2(50 BYTE),
    rg_cla_grupo                   VARCHAR2(200 BYTE),
    rg_desc_global                 VARCHAR2(500 BYTE),
    rg_num_comprobante             VARCHAR2(30 BYTE),
    rg_saldo_i                     NUMBER(20,10),
    rg_vida_util_m                 NUMBER(10,2),
    rg_fecha_rev                   DATE,
    rg_fecha_alta                  DATE,
    rg_fecha_baja                  DATE,
    rg_vida_util_a                 NUMBER(10,2),
    rg_tasa_depre_anual            NUMBER(20,15),
    rg_ufv_inicial                 NUMBER(6,5),
    rg_ufv_final                   NUMBER(6,5),
    rg_dif_actualiza               NUMBER(20,10),
    rg_valor_act                   NUMBER(20,10),
    rg_depre_acumulada             NUMBER(20,10),
    rg_actualiza_depre_acumulada   NUMBER(20,10),
    rg_depre_acum_act              NUMBER(20,10),
    rg_depre_gestion               NUMBER(20,10),
    rg_depre_acumulada_t           NUMBER(20,10),
    rg_valor_residual              NUMBER(20,10),
    rg_vida_util_m_res             NUMBER(10,2))
  NOPARALLEL
  LOGGING
/

CREATE TABLE rubros
    (rub_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    rub_descripcion                VARCHAR2(50 BYTE) NOT NULL,
    rub_vidaut                     NUMBER(*,0) NOT NULL,
    rub_porcen                     NUMBER(6,2) NOT NULL,
    rub_codpar                     VARCHAR2(10 BYTE) NOT NULL,
    rub_ctadep                     VARCHAR2(10 BYTE) NOT NULL,
    rub_ctadac                     VARCHAR2(10 BYTE) NOT NULL,
    rub_fecalta                    DATE,
    rub_fecmodi                    DATE,
    rub_usuario                    VARCHAR2(15 BYTE),
    rub_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_rubros ON rubros
  (
    rub_codigo                      ASC
  )
NOPARALLEL
LOGGING
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

CREATE TABLE rubros_h
    (rub_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    rub_descripcion                VARCHAR2(50 BYTE) NOT NULL,
    rub_vidaut                     NUMBER(*,0) NOT NULL,
    rub_porcen                     NUMBER(6,2) NOT NULL,
    rub_codpar                     VARCHAR2(10 BYTE) NOT NULL,
    rub_ctadep                     VARCHAR2(10 BYTE) NOT NULL,
    rub_ctadac                     VARCHAR2(10 BYTE) NOT NULL,
    rub_fecalta                    DATE,
    rub_fecmodi                    DATE,
    rub_usuario                    VARCHAR2(15 BYTE),
    rub_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE secbarras
    (bar_rubro                      VARCHAR2(10 BYTE) NOT NULL,
    bar_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    bar_numero                     NUMBER(*,0) NOT NULL)
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_secbarras ON secbarras
  (
    bar_rubro                       ASC,
    bar_codreg                      ASC
  )
NOPARALLEL
LOGGING
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

CREATE TABLE secbarras_h
    (bar_rubro                      VARCHAR2(10 BYTE) NOT NULL,
    bar_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    bar_numero                     NUMBER(*,0) NOT NULL)
  NOPARALLEL
  LOGGING
/

CREATE TABLE sectiposdoc
    (std_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    std_tipdoc                     CHAR(1 BYTE) NOT NULL,
    std_gestion                    CHAR(4 BYTE) NOT NULL,
    std_numero                     NUMBER(*,0) NOT NULL,
    std_fecalta                    DATE,
    std_fecmodi                    DATE,
    std_usuario                    VARCHAR2(15 BYTE),
    std_estado                     CHAR(1 BYTE),
    std_codfin                     VARCHAR2(10 BYTE) NOT NULL)
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_sectiposdoc ON sectiposdoc
  (
    std_codfin                      ASC,
    std_codreg                      ASC,
    std_tipdoc                      ASC,
    std_gestion                     ASC
  )
NOPARALLEL
LOGGING
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

CREATE TABLE sectiposdoc_h
    (std_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    std_tipdoc                     CHAR(1 BYTE) NOT NULL,
    std_gestion                    CHAR(4 BYTE) NOT NULL,
    std_numero                     NUMBER(*,0) NOT NULL,
    std_fecalta                    DATE,
    std_fecmodi                    DATE,
    std_usuario                    VARCHAR2(15 BYTE),
    std_estado                     CHAR(1 BYTE),
    std_codfin                     VARCHAR2(10 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE tipocambio
    (tca_fecha                      DATE NOT NULL,
    tca_tipcam                     NUMBER(15,6) NOT NULL,
    tca_tipufv                     NUMBER(15,6) NOT NULL,
    tca_fecalta                    DATE,
    tca_fecmodi                    DATE,
    tca_usuario                    VARCHAR2(15 BYTE),
    tca_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_tipocambio ON tipocambio
  (
    tca_fecha                       ASC
  )
NOPARALLEL
LOGGING
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

CREATE TABLE tipocambio_h
    (tca_fecha                      DATE NOT NULL,
    tca_tipcam                     NUMBER(15,6) NOT NULL,
    tca_tipufv                     NUMBER(15,6) NOT NULL,
    tca_fecalta                    DATE,
    tca_fecmodi                    DATE,
    tca_usuario                    VARCHAR2(15 BYTE),
    tca_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE tiposbaja
    (mot_codigo                     VARCHAR2(2 BYTE) NOT NULL,
    mot_descripcion                VARCHAR2(50 BYTE) NOT NULL,
    mot_fecalta                    DATE,
    mot_fecmodi                    DATE,
    mot_usuario                    VARCHAR2(15 BYTE),
    mot_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_tiposbaja ON tiposbaja
  (
    mot_codigo                      ASC
  )
NOPARALLEL
LOGGING
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

CREATE TABLE tiposbaja_h
    (mot_codigo                     VARCHAR2(2 BYTE) NOT NULL,
    mot_descripcion                VARCHAR2(50 BYTE) NOT NULL,
    mot_fecalta                    DATE,
    mot_fecmodi                    DATE,
    mot_usuario                    VARCHAR2(15 BYTE),
    mot_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE tiposdoc
    (tdo_codigo                     CHAR(1 BYTE) NOT NULL,
    tdo_descripcion                VARCHAR2(50 BYTE) NOT NULL,
    tdo_feccie                     DATE,
    tdo_fecalta                    DATE,
    tdo_fecmodi                    DATE,
    tdo_usuario                    VARCHAR2(15 BYTE),
    tdo_estado                     CHAR(1 BYTE),
    tdo_glosa                      VARCHAR2(1000 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_tiposdoc ON tiposdoc
  (
    tdo_codigo                      ASC
  )
NOPARALLEL
LOGGING
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

CREATE TABLE tiposdoc_h
    (tdo_codigo                     CHAR(1 BYTE) NOT NULL,
    tdo_descripcion                VARCHAR2(50 BYTE) NOT NULL,
    tdo_feccie                     DATE,
    tdo_fecalta                    DATE,
    tdo_fecmodi                    DATE,
    tdo_usuario                    VARCHAR2(15 BYTE),
    tdo_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE ubicaciones
    (ubi_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    ubi_descripcion                VARCHAR2(100 BYTE) NOT NULL,
    ubi_direccion                  VARCHAR2(50 BYTE),
    ubi_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    ubi_fecalta                    DATE,
    ubi_fecmodi                    DATE,
    ubi_usuario                    VARCHAR2(15 BYTE),
    ubi_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_ubicaciones ON ubicaciones
  (
    ubi_codigo                      ASC,
    ubi_codreg                      ASC
  )
NOPARALLEL
LOGGING
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

CREATE TABLE ubicaciones_bk
    (ubi_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    ubi_descripcion                VARCHAR2(100 BYTE) NOT NULL,
    ubi_direccion                  VARCHAR2(50 BYTE),
    ubi_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    ubi_fecalta                    DATE,
    ubi_fecmodi                    DATE,
    ubi_usuario                    VARCHAR2(15 BYTE),
    ubi_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE ubicaciones_h
    (ubi_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    ubi_descripcion                VARCHAR2(100 BYTE) NOT NULL,
    ubi_direccion                  VARCHAR2(50 BYTE),
    ubi_codreg                     VARCHAR2(10 BYTE) NOT NULL,
    ubi_fecalta                    DATE,
    ubi_fecmodi                    DATE,
    ubi_usuario                    VARCHAR2(15 BYTE),
    ubi_estado                     CHAR(1 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE TABLE usuarios
    (usu_codigo                     VARCHAR2(10 BYTE) NOT NULL,
    usu_carnet                     VARCHAR2(20 BYTE) NOT NULL,
    usu_estado                     CHAR(1 BYTE) NOT NULL,
    usu_codfun                     VARCHAR2(10 BYTE))
  NOPARALLEL
  LOGGING
/

CREATE UNIQUE INDEX pk_usuarios ON usuarios
  (
    usu_codigo                      ASC
  )
NOPARALLEL
LOGGING
/


