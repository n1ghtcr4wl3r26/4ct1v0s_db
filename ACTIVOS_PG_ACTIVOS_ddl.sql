CREATE OR REPLACE 
PACKAGE pg_activos
IS
    --
    -- To modify this template, edit file PKGSPEC.TXT in TEMPLATE
    -- directory of SQL Navigator
    --
    -- Purpose: Briefly explain the functionality of the package
    --
    -- MODIFICATION HISTORY
    -- Person      Date    Comments
    -- ---------   ------  ------------------------------------------
    -- Enter package declarations as shown below
    TYPE cursortype IS REF CURSOR;

    PROCEDURE insertarrevaluos (vrev_codrub           IN     VARCHAR2,
                                vrev_codreg           IN     VARCHAR2,
                                vrev_codigo           IN     NUMBER,
                                vrev_numrevaluo       IN     NUMBER,
                                vrev_fecha            IN     VARCHAR2,
                                vrev_tipcam           IN     NUMBER,
                                vrev_tipufv           IN     NUMBER,
                                vrev_valbol           IN     NUMBER,
                                vrev_valdol           IN     NUMBER,
                                vrev_valufv           IN     NUMBER,
                                vrev_depacubol        IN     NUMBER,
                                vrev_depacudol        IN     NUMBER,
                                vrev_depacuufv        IN     NUMBER,
                                vrev_vidaut           IN     NUMBER,
                                vrev_estadoactivo     IN     VARCHAR2,
                                vrev_desestado        IN     VARCHAR2,
                                vrev_indepreciacion   IN     VARCHAR2,
                                vrev_numdocumento     IN     VARCHAR2,
                                vrev_usuario          IN     VARCHAR2,
                                vestado               IN     NUMBER,
                                vres                     OUT NUMBER,
                                vmsg                     OUT VARCHAR2);

    PROCEDURE insertarmejorasrebajas (vmre_codrub           IN     VARCHAR2,
                                      vmre_codreg           IN     VARCHAR2,
                                      vmre_codigo           IN     NUMBER,
                                      vmre_inmejreb         IN     VARCHAR2,
                                      vmre_corel            IN     NUMBER,
                                      vmre_fecha            IN     VARCHAR2,
                                      vmre_tipcam           IN     NUMBER,
                                      vmre_tipufv           IN     NUMBER,
                                      vmre_descripcion      IN     VARCHAR2,
                                      vmre_desadicional     IN     VARCHAR2,
                                      vmre_proveedor        IN     VARCHAR2,
                                      vmre_marca            IN     VARCHAR2,
                                      vmre_modelo           IN     VARCHAR2,
                                      vmre_serie            IN     VARCHAR2,
                                      vmre_docreferencia    IN     VARCHAR2,
                                      vmre_fecreferencia    IN     VARCHAR2,
                                      vmre_valbol           IN     NUMBER,
                                      vmre_valdol           IN     NUMBER,
                                      vmre_valufv           IN     NUMBER,
                                      vmre_ordencompra      IN     VARCHAR2,
                                      vmre_numfactura       IN     NUMBER,
                                      vmre_numcomprobante   IN     VARCHAR2,
                                      vrev_fecha            IN     VARCHAR2,
                                      vrev_vidaut           IN     NUMBER,
                                      vrev_estadoactivo     IN     VARCHAR2,
                                      vrev_desestado        IN     VARCHAR2,
                                      vrev_numdocumento     IN     VARCHAR2,
                                      vmre_usuario          IN     VARCHAR2,
                                      vestado               IN     NUMBER,
                                      vres                     OUT NUMBER,
                                      vmsg                     OUT VARCHAR2);

    PROCEDURE insertardocumentos (vdoc_codreg          IN     VARCHAR2,
                                  vdoc_tipdoc          IN     VARCHAR2,
                                  vdoc_numero          IN     NUMBER,
                                  vdoc_fecha           IN     VARCHAR2,
                                  vdoc_codofiorigen    IN     VARCHAR2,
                                  vdoc_codfunorigen    IN     VARCHAR2,
                                  vdoc_codubiorigen    IN     VARCHAR2,
                                  vdoc_codfinorigen    IN     VARCHAR2,
                                  vdoc_codpryorigen    IN     VARCHAR2,
                                  vdoc_codregdestino   IN     VARCHAR2,
                                  vdoc_codofidestino   IN     VARCHAR2,
                                  vdoc_codfundestino   IN     VARCHAR2,
                                  vdoc_codubidestino   IN     VARCHAR2,
                                  vdoc_codfindestino   IN     VARCHAR2,
                                  vdoc_codprydestino   IN     VARCHAR2,
                                  vdoc_observacion     IN     VARCHAR2,
                                  vdoc_inconfirma      IN     VARCHAR2,
                                  vdoc_usuario         IN     VARCHAR2,
                                  vestado              IN     NUMBER,
                                  vdoc_codfin          IN     VARCHAR2,
                                  vdoc_devolucion      IN     NUMBER,
                                  vres                    OUT NUMBER,
                                  vmsg                    OUT VARCHAR2);

    PROCEDURE insertardetdocumentos (vddo_codfin         IN     VARCHAR2,
                                     vddo_codreg         IN     VARCHAR2,
                                     vddo_tipdoc         IN     VARCHAR2,
                                     vddo_numero         IN     NUMBER,
                                     vddo_fecha          IN     VARCHAR2,
                                     vddo_codfunorigen   IN     VARCHAR2,
                                     vddo_item           IN     NUMBER,
                                     vddo_codrubactual   IN     VARCHAR2,
                                     vddo_codregactual   IN     VARCHAR2,
                                     vddo_codigoact      IN     NUMBER,
                                     vddo_codmot         IN     VARCHAR2,
                                     vddo_usuario        IN     VARCHAR2,
                                     vddo_codofiactual   IN     VARCHAR2,
                                     vddo_codubiactual   IN     VARCHAR2,
                                     vestado             IN     NUMBER,
                                     vres                   OUT NUMBER,
                                     vmsg                   OUT VARCHAR2);

    PROCEDURE confirmardocumentos (vddo_codfin    IN     VARCHAR2,
                                   vddo_codreg    IN     VARCHAR2,
                                   vddo_tipdoc    IN     VARCHAR2,
                                   vddo_numero    IN     NUMBER,
                                   vddo_usuario   IN     VARCHAR2,
                                   vestado        IN     NUMBER,
                                   vres              OUT NUMBER,
                                   vmsg              OUT VARCHAR2);

    FUNCTION listardocumentos (vdoc_codreg   IN VARCHAR2,
                               vdoc_tipdoc   IN VARCHAR2,
                               vdoc_numero   IN NUMBER)
        RETURN cursortype;

    PROCEDURE insertaractivos (vact_codrub            IN     VARCHAR2,
                               vact_codreg            IN     VARCHAR2,
                               vact_codigo            IN     NUMBER,
                               vact_codgrp            IN     VARCHAR2,
                               vact_codpar            IN     VARCHAR2,
                               vact_codofi            IN     VARCHAR2,
                               vact_codfun            IN     VARCHAR2,
                               vact_codubi            IN     VARCHAR2,
                               vact_codfin            IN     VARCHAR2,
                               vact_codpry            IN     VARCHAR2,
                               vact_codmot            IN     VARCHAR2,
                               vact_feccompra         IN     VARCHAR2,
                               vact_tipcam            IN     NUMBER,
                               vact_tipufv            IN     NUMBER,
                               vact_umanejo           IN     VARCHAR2,
                               vact_descripcion       IN     VARCHAR2,
                               vact_desadicional      IN     VARCHAR2,
                               vact_accesorios        IN     VARCHAR2,
                               vact_proveedor         IN     VARCHAR2,
                               vact_marca             IN     VARCHAR2,
                               vact_modelo            IN     VARCHAR2,
                               vact_serie1            IN     VARCHAR2,
                               vact_serie2            IN     VARCHAR2,
                               vact_docreferencia     IN     VARCHAR2,
                               vact_fecreferencia     IN     VARCHAR2,
                               vact_docrefotro        IN     VARCHAR2,
                               vact_placa             IN     VARCHAR2,
                               vact_aniofabricacion   IN     VARCHAR2,
                               vact_color             IN     VARCHAR2,
                               vact_procedencia       IN     VARCHAR2,
                               vact_gobmunicipal      IN     VARCHAR2,
                               vact_valcobol          IN     NUMBER,
                               vact_valcodol          IN     NUMBER,
                               vact_valcoufv          IN     NUMBER,
                               vact_fecbaja           IN     VARCHAR2,
                               vact_ordencompra       IN     VARCHAR2,
                               vact_numfactura        IN     VARCHAR2,
                               vact_numcomprobante    IN     VARCHAR2,
                               vact_codanterior       IN     VARCHAR2,
                               vact_indetiqueta       IN     VARCHAR2,
                               vrev_fecha             IN     VARCHAR2,
                               vrev_vidaut            IN     NUMBER,
                               vrev_estadoactivo      IN     VARCHAR2,
                               vrev_desestado         IN     VARCHAR2,
                               vrev_indepreciacion    IN     VARCHAR2,
                               vrev_numdocumento      IN     VARCHAR2,
                               vact_usuario           IN     VARCHAR2,
                               vestado                IN     NUMBER,
                               vres                      OUT NUMBER,
                               vmsg                      OUT VARCHAR2);

    FUNCTION listaractivos (vact_codrub   IN VARCHAR2,
                            vact_codreg   IN VARCHAR2,
                            vact_codigo   IN NUMBER)
        RETURN cursortype;

    FUNCTION listaractivos2 (vact_codfin         IN VARCHAR2,
                             vact_codreg         IN VARCHAR2,
                             vact_tipdoc         IN VARCHAR2,
                             vact_numero         IN NUMBER,
                             vact_codfunorigen   IN VARCHAR2,
                             vact_fecha          IN VARCHAR2,
                             vact_rubcod         IN VARCHAR2,
                             vact_inicod         IN NUMBER,
                             vact_fincod         IN NUMBER)
        RETURN cursortype;

    FUNCTION listaractivos3 (vact_codrub   IN VARCHAR2,
                             vact_codreg   IN VARCHAR2,
                             vact_descri   IN VARCHAR2,
                             vact_codgrp   IN VARCHAR2,
                             vact_codfin   IN VARCHAR2,
                             vestado       IN NUMBER)
        RETURN cursortype;

    FUNCTION listarmejorasrebajas3 (vact_codrub   IN VARCHAR2,
                                    vact_codreg   IN VARCHAR2,
                                    vact_descri   IN VARCHAR2,
                                    vparametro    IN NUMBER)
        RETURN cursortype;

    FUNCTION listarmejorasrebajas4 (vact_codrub   IN VARCHAR2,
                                    vact_codreg   IN VARCHAR2,
                                    vact_descri   IN VARCHAR2,
                                    vparametro    IN NUMBER)
        RETURN cursortype;

    FUNCTION listaractivos4 (vact_codrub   IN VARCHAR2,
                             vact_codreg   IN VARCHAR2,
                             vact_descri   IN VARCHAR2,
                             vact_codgrp   IN VARCHAR2,
                             vact_codfin   IN VARCHAR2,
                             vestado       IN NUMBER)
        RETURN cursortype;

    PROCEDURE insertarfinanciadores (vfin_codigo        IN     VARCHAR2,
                                     vfin_descripcion   IN     VARCHAR2,
                                     vfin_usuario       IN     VARCHAR2,
                                     vestado            IN     NUMBER,
                                     vres                  OUT NUMBER,
                                     vmsg                  OUT VARCHAR2);

    FUNCTION listarfinanciadores
        RETURN cursortype;

    FUNCTION listardetdocumentos (vdoc_codfin   IN VARCHAR2,
                                  vdoc_codreg   IN VARCHAR2,
                                  vdoc_tipdoc   IN VARCHAR2,
                                  vdoc_numero   IN NUMBER)
        RETURN cursortype;

    FUNCTION listardetdocumentos2 (vdoc_codfin   IN VARCHAR2,
                                   vdoc_codreg   IN VARCHAR2,
                                   vdoc_tipdoc   IN VARCHAR2,
                                   vdoc_numero   IN NUMBER)
        RETURN cursortype;

    PROCEDURE insertarfuncionarios (vfun_codigo        IN     VARCHAR2,
                                    vfun_descripcion   IN     VARCHAR2,
                                    vfun_cargo         IN     VARCHAR2,
                                    vfun_codofi        IN     VARCHAR2,
                                    vfun_codreg        IN     VARCHAR2,
                                    vfun_usuario       IN     VARCHAR2,
                                    vfun_codfin        IN     VARCHAR2,
                                    vfun_correo        IN     VARCHAR2,
                                    vfun_estado        IN     VARCHAR2,
                                    vestado            IN     NUMBER,
                                    vres                  OUT NUMBER,
                                    vmsg                  OUT VARCHAR2);

    FUNCTION listarfuncionarios (vcod_reg IN VARCHAR2)
        RETURN cursortype;

    FUNCTION listarfuncionariosf (vcod_reg IN VARCHAR2, vcod_fin IN VARCHAR2)
        RETURN cursortype;

    FUNCTION listarfuncionariosfa (vcod_reg   IN VARCHAR2,
                                   vcod_fin   IN VARCHAR2)
        RETURN cursortype;

    FUNCTION listarfuncionariosa (vcod_reg IN VARCHAR2, vcod_fin IN VARCHAR2)
        RETURN cursortype;

    FUNCTION obtener_correo (vcod_fun IN VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION listarfuncionarios2 (vcod_reg IN VARCHAR2, vaux IN VARCHAR2)
        RETURN cursortype;

    FUNCTION listarfuncionarios3 (vcod_reg   IN VARCHAR2,
                                  vcod_fin   IN VARCHAR2,
                                  vaux       IN VARCHAR2)
        RETURN cursortype;

    FUNCTION listarfuncionarios4 (vcod_reg IN VARCHAR2)
        RETURN cursortype;

    FUNCTION listarfuncionariosr (vcod_reg IN VARCHAR2, vcod_fin IN VARCHAR2)
        RETURN cursortype;

    FUNCTION listarfuncionariosr1 (vcod_reg   IN VARCHAR2,
                                   vcod_fin   IN VARCHAR2)
        RETURN cursortype;

    FUNCTION listarfuncionariosr2 (vcod_reg   IN VARCHAR2,
                                   vcod_fin   IN VARCHAR2)
        RETURN cursortype;

    PROCEDURE insertargrupos (vgrp_codigo        IN     VARCHAR2,
                              vgrp_descripcion   IN     VARCHAR2,
                              vgrp_codrub        IN     VARCHAR2,
                              vgrp_usuario       IN     VARCHAR2,
                              vgrp_estado        IN     VARCHAR2,
                              vestado            IN     NUMBER,
                              vres                  OUT NUMBER,
                              vmsg                  OUT VARCHAR2);

    FUNCTION listargrupos (par IN NUMBER, vcod_rub IN VARCHAR2)
        RETURN cursortype;

    PROCEDURE insertaroficinas (vofi_codigo        IN     VARCHAR2,
                                vofi_descripcion   IN     VARCHAR2,
                                vofi_codreg        IN     VARCHAR2,
                                vofi_codubi        IN     VARCHAR2,
                                vofi_usuario       IN     VARCHAR2,
                                vestado            IN     NUMBER,
                                vres                  OUT NUMBER,
                                vmsg                  OUT VARCHAR2);

    FUNCTION listaroficinas (vcod_reg IN VARCHAR2)
        RETURN cursortype;

    FUNCTION listaroficinas1 (vcod_reg IN VARCHAR2)
        RETURN cursortype;

    FUNCTION listaroficinas2 (vcod_reg IN VARCHAR2, vofi_codigo IN VARCHAR2)
        RETURN cursortype;

    PROCEDURE insertarpartidas (vpar_codigo        IN     VARCHAR2,
                                vpar_descripcion   IN     VARCHAR2,
                                vpar_usuario       IN     VARCHAR2,
                                vestado            IN     NUMBER,
                                vres                  OUT NUMBER,
                                vmsg                  OUT VARCHAR2);

    FUNCTION listarpartidas
        RETURN cursortype;

    PROCEDURE insertarproyectos (vpry_codigo        IN     VARCHAR2,
                                 vpry_descripcion   IN     VARCHAR2,
                                 vpry_codfin        IN     VARCHAR2,
                                 vpry_usuario       IN     VARCHAR2,
                                 vestado            IN     NUMBER,
                                 vres                  OUT NUMBER,
                                 vmsg                  OUT VARCHAR2);

    FUNCTION listarproyectos
        RETURN cursortype;

    FUNCTION listarproyectos2
        RETURN cursortype;

    PROCEDURE insertarregionales (vreg_codigo        IN     VARCHAR2,
                                  vreg_descripcion   IN     VARCHAR2,
                                  vreg_codfun        IN     VARCHAR2,
                                  vreg_usuario       IN     VARCHAR2,
                                  vestado            IN     NUMBER,
                                  vres                  OUT NUMBER,
                                  vmsg                  OUT VARCHAR2);

    PROCEDURE insertarusuarios (vusu_codigo   IN     VARCHAR2,
                                vusu_carnet   IN     VARCHAR2,
                                vusu_codfun   IN     VARCHAR2,
                                vestado       IN     NUMBER,
                                vres             OUT NUMBER,
                                vmsg             OUT VARCHAR2);

    FUNCTION listarregionales
        RETURN cursortype;

    FUNCTION listarusuarios
        RETURN cursortype;

    FUNCTION listarregionales_01
        RETURN cursortype;

    PROCEDURE insertarrubros (vrub_codigo        IN     VARCHAR2,
                              vrub_descripcion   IN     VARCHAR2,
                              vrub_vidaut        IN     NUMBER,
                              vrub_porcen        IN     NUMBER,
                              vrub_codpar        IN     VARCHAR2,
                              vrub_ctadep        IN     VARCHAR2,
                              vrub_ctadac        IN     VARCHAR2,
                              vrub_usuario       IN     VARCHAR2,
                              vestado            IN     NUMBER,
                              vres                  OUT NUMBER,
                              vmsg                  OUT VARCHAR2);

    FUNCTION listarrubros
        RETURN cursortype;

    FUNCTION listarrubrosp
        RETURN cursortype;

    PROCEDURE insertarsecbarras (vbar_rubro    IN     VARCHAR2,
                                 vbar_codreg   IN     VARCHAR2,
                                 vbar_numero   IN     NUMBER,
                                 vestado       IN     NUMBER,
                                 vres             OUT NUMBER,
                                 vmsg             OUT VARCHAR2);

    FUNCTION listarsecbarras (vcod_reg IN VARCHAR2)
        RETURN cursortype;

    PROCEDURE insertarsectiposdoc (vstd_codfin    IN     VARCHAR2,
                                   vstd_codreg    IN     VARCHAR2,
                                   vstd_tipdoc    IN     VARCHAR2,
                                   vstd_numero    IN     NUMBER,
                                   vstd_usuario   IN     VARCHAR2,
                                   vestado        IN     NUMBER,
                                   vres              OUT NUMBER,
                                   vmsg              OUT VARCHAR2);

    FUNCTION listarsectiposdoc (vcod_fin IN VARCHAR2, vcod_reg IN VARCHAR2)
        RETURN cursortype;

    PROCEDURE insertartipocambio (vtca_fecha     IN     VARCHAR2,
                                  vtca_tipcam    IN     NUMBER,
                                  vtca_tipufv    IN     NUMBER,
                                  vtca_usuario   IN     VARCHAR2,
                                  vestado        IN     NUMBER,
                                  vres              OUT NUMBER,
                                  vmsg              OUT VARCHAR2);

    FUNCTION listartipocambio (vestado IN NUMBER)
        RETURN cursortype;

    PROCEDURE insertartiposbaja (vmot_codigo        IN     VARCHAR2,
                                 vmot_descripcion   IN     VARCHAR2,
                                 vmot_usuario       IN     VARCHAR2,
                                 vestado            IN     NUMBER,
                                 vres                  OUT NUMBER,
                                 vmsg                  OUT VARCHAR2);

    FUNCTION listartiposbaja
        RETURN cursortype;

    PROCEDURE insertartiposdoc (vtdo_codigo        IN     VARCHAR2,
                                vtdo_descripcion   IN     VARCHAR2,
                                vtdo_feccie        IN     VARCHAR2,
                                vtdo_usuario       IN     VARCHAR2,
                                vestado            IN     NUMBER,
                                vres                  OUT NUMBER,
                                vmsg                  OUT VARCHAR2);

    PROCEDURE maximotiposdoc (vtpo_codfin   IN     VARCHAR2,
                              vtpo_codreg   IN     VARCHAR2,
                              vtpo_tipdoc   IN     VARCHAR2,
                              num              OUT NUMBER);

    PROCEDURE feccierretiposdoc (vtpo_tipdoc IN VARCHAR2, num OUT VARCHAR2);

    PROCEDURE maximosecbarras (vtpo_codrub   IN     VARCHAR2,
                               vtpo_codreg   IN     VARCHAR2,
                               num              OUT NUMBER);

    PROCEDURE maximomejoras (vtpo_codrub   IN     VARCHAR2,
                             vtpo_codreg   IN     VARCHAR2,
                             vtpo_codigo   IN     NUMBER,
                             num              OUT NUMBER);

    FUNCTION existeactivo (vtpo_codrub   IN VARCHAR2,
                           vtpo_codreg   IN VARCHAR2,
                           vtpo_codigo   IN NUMBER)
        RETURN BOOLEAN;

    PROCEDURE maximorevaluos (vtpo_codrub   IN     VARCHAR2,
                              vtpo_codreg   IN     VARCHAR2,
                              vtpo_codigo   IN     NUMBER,
                              vtpo_correl   IN     NUMBER,
                              num              OUT NUMBER);

    PROCEDURE maximafecharevaluos (vtpo_codrub   IN     VARCHAR2,
                                   vtpo_codreg   IN     VARCHAR2,
                                   vtpo_codigo   IN     NUMBER,
                                   vtpo_correl   IN     NUMBER,
                                   vtpo_numrel   IN     NUMBER,
                                   fecha            OUT VARCHAR2);

    PROCEDURE descripcionrubro (vtpo_codrub           IN     VARCHAR2,
                                vtpo_rubdescripcion      OUT VARCHAR2);

    PROCEDURE partidarubro (vtpo_codrub           IN     VARCHAR2,
                            vtpo_rubdescripcion      OUT VARCHAR2);

    PROCEDURE vidautilrubro (vtpo_codrub     IN     VARCHAR2,
                             vtpo_vidautil      OUT NUMBER);

    PROCEDURE descripcionpartida (vtpo_codrub           IN     VARCHAR2,
                                  vtpo_pardescripcion      OUT VARCHAR2);

    PROCEDURE descripcionactivo (vact_codfin         IN     VARCHAR2,
                                 vact_codreg         IN     VARCHAR2,
                                 vact_tipdoc         IN     VARCHAR2,
                                 vact_numero         IN     NUMBER,
                                 vact_codfunorigen   IN     VARCHAR2,
                                 vact_fecha          IN     VARCHAR2,
                                 vact_rubcod         IN     VARCHAR2,
                                 vact_codigo         IN     NUMBER,
                                 vact_desactivo         OUT VARCHAR2);

    PROCEDURE nombrecargo (vdoc_codfun IN VARCHAR2, vdoc_nombre OUT VARCHAR2);

    PROCEDURE nombrefuncionario (vdoc_codfun   IN     VARCHAR2,
                                 vdoc_nombre      OUT VARCHAR2);

    PROCEDURE nombreoficina (vdoc_codofi   IN     VARCHAR2,
                             vcodreg       IN     VARCHAR2,
                             vdoc_nombre      OUT VARCHAR2);

    PROCEDURE nombregrupo (vcodrub       IN     VARCHAR2,
                           vcodgrp       IN     VARCHAR2,
                           vdoc_nombre      OUT VARCHAR2);

    PROCEDURE nombreubicacion (vcodreg       IN     VARCHAR2,
                               vcodubi       IN     VARCHAR2,
                               vdoc_nombre      OUT VARCHAR2);

    PROCEDURE nombreproyecto (vcodpry IN VARCHAR2, vdoc_nombre OUT VARCHAR2);

    PROCEDURE nombrefinanciador (vcodfin       IN     VARCHAR2,
                                 vdoc_nombre      OUT VARCHAR2);

    PROCEDURE nombretipobaja (vcodmot IN VARCHAR2, vddo_nombre OUT VARCHAR2);

    PROCEDURE descripcionregional (vtpo_codreg           IN     VARCHAR2,
                                   vtpo_regdescripcion      OUT VARCHAR2);

    PROCEDURE descripcionfinanciador (vtpo_codfin           IN     VARCHAR2,
                                      vtpo_findescripcion      OUT VARCHAR2);

    PROCEDURE maximodetdocumentos (vtpo_codfin   IN     VARCHAR2,
                                   vtpo_codreg   IN     VARCHAR2,
                                   vtpo_tipdoc   IN     VARCHAR2,
                                   vtpo_numero   IN     NUMBER,
                                   num              OUT NUMBER);

    PROCEDURE funcionarioactivos (vtpo_codreg   IN     VARCHAR2,
                                  vtpo_codfin   IN     VARCHAR2,
                                  codfun           OUT VARCHAR2);

    PROCEDURE oficinafuncionarioactivos (vtpo_codfun   IN     VARCHAR2,
                                         codofi           OUT VARCHAR2);

    FUNCTION listartiposdoc (vpar      IN NUMBER,
                             vcodfin   IN VARCHAR2,
                             vcodreg   IN VARCHAR2)
        RETURN cursortype;

    FUNCTION listaractas (conf          IN NUMBER,
                          vcodfin       IN VARCHAR2,
                          vcodreg       IN VARCHAR2,
                          vtipdoc       IN VARCHAR2,
                          vinicio       IN NUMBER,
                          vfin          IN NUMBER,
                          vopcion       IN NUMBER,
                          confirmados   IN VARCHAR2,
                          vgestionant   IN VARCHAR2)
        RETURN cursortype;

    FUNCTION listaractas2 (conf          IN NUMBER,
                           vcodfin       IN VARCHAR2,
                           vcodreg       IN VARCHAR2,
                           vtipdoc       IN VARCHAR2,
                           vinicio       IN NUMBER,
                           vfin          IN NUMBER,
                           vopcion       IN NUMBER,
                           confirmados   IN VARCHAR2,
                           vgestionant   IN VARCHAR2)
        RETURN cursortype;

    PROCEDURE insertarubicaciones (vubi_codigo        IN     VARCHAR2,
                                   vubi_descripcion   IN     VARCHAR2,
                                   vubi_direccion     IN     VARCHAR2,
                                   vubi_codreg        IN     VARCHAR2,
                                   vubi_usuario       IN     VARCHAR2,
                                   vestado            IN     NUMBER,
                                   vres                  OUT NUMBER,
                                   vmsg                  OUT VARCHAR2);

    FUNCTION listarubicaciones (vcod_reg IN VARCHAR2)
        RETURN cursortype;

    FUNCTION listarmejorasrebajas (vmre_codrub   IN VARCHAR2,
                                   vmre_codreg   IN VARCHAR2,
                                   vmre_codigo   IN NUMBER,
                                   vmre_corel    IN NUMBER)
        RETURN cursortype;

    FUNCTION listarrevaluos (vrev_codrub       IN VARCHAR2,
                             vrev_codreg       IN VARCHAR2,
                             vrev_codigo       IN NUMBER,
                             vrev_numrevaluo   IN NUMBER)
        RETURN cursortype;

    FUNCTION listarrevaluos3 (vact_codrub   IN VARCHAR2,
                              vact_codreg   IN VARCHAR2,
                              vact_descri   IN VARCHAR2,
                              vact_codgrp   IN VARCHAR2,
                              vparametro    IN NUMBER)
        RETURN cursortype;

    FUNCTION listarrevaluos4 (vact_codrub   IN VARCHAR2,
                              vact_codreg   IN VARCHAR2,
                              vact_descri   IN VARCHAR2,
                              vact_codgrp   IN VARCHAR2,
                              vparametro    IN NUMBER)
        RETURN cursortype;

    PROCEDURE depreciacion (ddep_fecha       IN     CHAR,
                            vdep_tipcamini   IN     NUMBER,
                            vdep_tipcamfin   IN     NUMBER,
                            vdep_tipufvini   IN     NUMBER,
                            vdep_tipufvfin   IN     NUMBER,
                            vdep_usuario     IN     VARCHAR2,
                            vestado          IN     NUMBER,
                            vdep_codrub      IN     VARCHAR2,
                            vdep_codreg      IN     VARCHAR2,
                            vdep_codini      IN     VARCHAR2,
                            vdep_codfin      IN     VARCHAR2,
                            vres                OUT NUMBER,
                            vmsg                OUT VARCHAR2);

    PROCEDURE depreciaciontotal (vdep_fecha     IN     VARCHAR2,
                                 vdep_usuario   IN     VARCHAR2,
                                 vestado        IN     NUMBER,
                                 vdep_codrub    IN     VARCHAR2,
                                 vdep_codreg    IN     VARCHAR2,
                                 vdep_codini    IN     VARCHAR2,
                                 vdep_codfin    IN     VARCHAR2,
                                 vres              OUT NUMBER,
                                 vmsg              OUT VARCHAR2);

    FUNCTION reportedepreciacion (vcod_reg   IN VARCHAR2,
                                  vcod_rub   IN VARCHAR2,
                                  vcod_ini   IN VARCHAR2,
                                  vcod_fin   IN VARCHAR2)
        RETURN cursortype;

    FUNCTION reportedepreciacion_d
        RETURN cursortype;

    FUNCTION reporteactivos (condicion1   IN VARCHAR2,
                             condicion2   IN VARCHAR2,
                             flag         IN NUMBER,
                             vregional    IN VARCHAR2)
        RETURN cursortype;

    FUNCTION listarparametros
        RETURN cursortype;

    PROCEDURE insertarinventarios (vinv_codbarra   IN     VARCHAR2,
                                   vinv_fecha      IN     VARCHAR2,
                                   vinv_codofi     IN     VARCHAR2,
                                   vinv_codfun     IN     VARCHAR2,
                                   vinv_codubi     IN     VARCHAR2,
                                   vinv_codfin     IN     VARCHAR2,
                                   vinv_codpry     IN     VARCHAR2,
                                   vinv_codreg     IN     VARCHAR2,
                                   vinv_estado     IN     VARCHAR2,
                                   vpar_usuario    IN     VARCHAR2,
                                   vestado         IN     NUMBER,
                                   vinv_mod        IN     VARCHAR2,
                                   vres               OUT NUMBER,
                                   vmsg               OUT VARCHAR2);

    PROCEDURE generarinventarios (vcodreg     IN     VARCHAR2,
                                  vcodfin     IN     VARCHAR2,
                                  vusuario    IN     VARCHAR2,
                                  vtipoacta   IN     VARCHAR2,
                                  vres           OUT NUMBER,
                                  vmsg           OUT VARCHAR2);

    FUNCTION gestion
        RETURN CHAR;

    FUNCTION gestiond
        RETURN CHAR;

    FUNCTION mesgestion
        RETURN cursortype;

    FUNCTION listarestados
        RETURN cursortype;

    FUNCTION listarinventarios (vcodreg IN VARCHAR2)
        RETURN cursortype;

    PROCEDURE insertarparametros (vcte_codinstitucion        IN     VARCHAR2,
                                  vcte_codrubaccesorios      IN     VARCHAR2,
                                  vcte_codrubmejoras         IN     VARCHAR2,
                                  vcte_codrubrebajas         IN     VARCHAR2,
                                  vcte_codrub1               IN     VARCHAR2,
                                  vcte_codrub2               IN     VARCHAR2,
                                  vcte_codrub3               IN     VARCHAR2,
                                  vcte_codrub4               IN     VARCHAR2,
                                  vcte_codrub5               IN     VARCHAR2,
                                  vcte_codrub6               IN     VARCHAR2,
                                  vcte_tipdocentrega         IN     VARCHAR2,
                                  vcte_tipdocdevolucion      IN     VARCHAR2,
                                  vcte_tipdoctransferencia   IN     VARCHAR2,
                                  vcte_tipdocbaja            IN     VARCHAR2,
                                  vcte_tipdoctraregionales   IN     VARCHAR2,
                                  vcte_gestion               IN     VARCHAR2,
                                  vestado                    IN     NUMBER,
                                  vres                          OUT NUMBER,
                                  vmsg                          OUT VARCHAR2);

    FUNCTION bajar_tablas (vcod_reg IN VARCHAR2, vcod_fin IN VARCHAR2)
        RETURN NUMBER;

    PROCEDURE subir_tablas (vcodbarra   IN     VARCHAR2,
                            vfecha      IN     VARCHAR2,
                            vcodofi     IN     VARCHAR2,
                            vcodfun     IN     VARCHAR2,
                            vestado     IN     VARCHAR2,
                            vcodfin     IN     VARCHAR2,
                            vcodpry     IN     VARCHAR2,
                            vcodreg     IN     VARCHAR2,
                            vhora       IN     VARCHAR2,
                            vfun        IN     VARCHAR2,
                            vusuario    IN     VARCHAR2,
                            vmod        IN     VARCHAR2,
                            vcontrol    IN     VARCHAR2,
                            vres           OUT NUMBER,
                            vmsg           OUT VARCHAR2);

    PROCEDURE subir_tablas2 (vcodrub        IN     VARCHAR2,
                             vcodreg        IN     VARCHAR2,
                             vcodigo        IN     NUMBER,
                             vcodgrp        IN     VARCHAR2,
                             vcodofi        IN     VARCHAR2,
                             vcodfun        IN     VARCHAR2,
                             vcodfin        IN     VARCHAR2,
                             vcodpry        IN     VARCHAR2,
                             vdescripcion   IN     VARCHAR2,
                             vestado        IN     VARCHAR2,
                             vhora          IN     VARCHAR2,
                             vfun           IN     VARCHAR2,
                             vcontrol       IN     VARCHAR2,
                             vusuario       IN     VARCHAR2,
                             vres              OUT NUMBER,
                             vmsg              OUT VARCHAR2);

    PROCEDURE validar (vflag       IN     VARCHAR2,
                       vusuario    IN     VARCHAR2,
                       vcontrol1   IN     VARCHAR2,
                       vcontrol2   IN     VARCHAR2,
                       vres           OUT NUMBER,
                       vmsg           OUT VARCHAR2);

    FUNCTION validadepreciacion (vcte_gestion IN VARCHAR2)
        RETURN BOOLEAN;

    FUNCTION validacambioges (vcte_gesactas IN VARCHAR2)
        RETURN BOOLEAN;

    PROCEDURE actualizaufv (vcte_anio      IN     VARCHAR2,
                            vcte_usuario   IN     VARCHAR2,
                            vres              OUT NUMBER,
                            vmsg              OUT VARCHAR2);
END;                                                           -- Package spec
/

CREATE OR REPLACE 
PACKAGE BODY pg_activos
/* Formatted on 20-feb.-2017 17:12:03 (QP5 v5.126) */
IS
    xgestion   NUMBER := gestion ();

    PROCEDURE insertarrevaluos (vrev_codrub           IN     VARCHAR2,
                                vrev_codreg           IN     VARCHAR2,
                                vrev_codigo           IN     NUMBER,
                                vrev_numrevaluo       IN     NUMBER,
                                vrev_fecha            IN     VARCHAR2,
                                vrev_tipcam           IN     NUMBER,
                                vrev_tipufv           IN     NUMBER,
                                vrev_valbol           IN     NUMBER,
                                vrev_valdol           IN     NUMBER,
                                vrev_valufv           IN     NUMBER,
                                vrev_depacubol        IN     NUMBER,
                                vrev_depacudol        IN     NUMBER,
                                vrev_depacuufv        IN     NUMBER,
                                vrev_vidaut           IN     NUMBER,
                                vrev_estadoactivo     IN     VARCHAR2,
                                vrev_desestado        IN     VARCHAR2,
                                vrev_indepreciacion   IN     VARCHAR2,
                                vrev_numdocumento     IN     VARCHAR2,
                                vrev_usuario          IN     VARCHAR2,
                                vestado               IN     NUMBER,
                                vres                     OUT NUMBER,
                                vmsg                     OUT VARCHAR2)
    IS
        xnumrevaluo   NUMBER;
        xtipcam       NUMBER;
        xtipufv       NUMBER;
    BEGIN
        vmsg := '';

        SELECT   MAX (rev_numrevaluo) + 1
          INTO   xnumrevaluo
          FROM   revaluos
         WHERE       rev_codrub = vrev_codrub
                 AND rev_codreg = vrev_codreg
                 AND rev_codigo = vrev_codigo;

        SELECT   tca_tipcam, tca_tipufv
          INTO   xtipcam, xtipufv
          FROM   tipocambio
         WHERE   tca_fecha = TO_DATE (vrev_fecha, 'dd/mm/yyyy');

        IF vestado = 1
        THEN
            INSERT INTO revaluos
              VALUES   (vrev_codrub,
                        vrev_codreg,
                        vrev_codigo,
                        0,
                        xnumrevaluo,
                        TO_DATE (vrev_fecha, 'dd/mm/yyyy'),
                        xtipcam,
                        xtipufv,
                        vrev_valbol,
                        vrev_valbol / xtipcam,
                        vrev_valbol / xtipufv,
                        vrev_depacubol,
                        vrev_depacubol / xtipcam,
                        vrev_depacubol / xtipufv,
                        vrev_vidaut,
                        vrev_estadoactivo,
                        vrev_desestado,
                        'S',
                        vrev_numdocumento,
                        vrev_usuario,
                        SYSDATE,
                        'A');

            UPDATE   revaluos
               SET   rev_fecsis = TO_DATE (vrev_fecha, 'dd/mm/yyyy')
             WHERE       rev_codrub = vrev_codrub
                     AND rev_codreg = vrev_codreg
                     AND rev_codigo = vrev_codigo
                     AND rev_correlmre = 0
                     AND rev_numrevaluo = xnumrevaluo - 1;

            /*
            UPDATE depreciaciones
               SET dep_estado = 'B'
             WHERE dep_codrub = vrev_codrub
               AND dep_codreg = vrev_codreg
               AND dep_codigo = vrev_codigo
               AND dep_estado = 'A';
            */
            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 2
        THEN
            UPDATE   revaluos
               SET   rev_fecha = TO_DATE (vrev_fecha, 'dd/mm/yyyy'),
                     rev_tipcam = xtipcam,
                     rev_tipufv = xtipufv,
                     rev_valbol = vrev_valbol,
                     rev_valdol = vrev_valbol / xtipcam,
                     rev_valufv = vrev_valbol / xtipufv,
                     rev_depacubol = vrev_depacubol,
                     rev_depacudol = vrev_depacubol / xtipcam,
                     rev_depacuufv = vrev_depacubol / xtipufv,
                     rev_vidaut = vrev_vidaut,
                     rev_estadoactivo = vrev_estadoactivo,
                     rev_desestado = vrev_desestado,
                     rev_numdocumento = vrev_numdocumento
             WHERE       rev_codrub = vrev_codrub
                     AND rev_codreg = vrev_codreg
                     AND rev_codigo = vrev_codigo
                     AND rev_correlmre = 0
                     AND rev_numrevaluo = vrev_numrevaluo;

            UPDATE   revaluos
               SET   rev_fecsis = TO_DATE (vrev_fecha, 'dd/mm/yyyy')
             WHERE       rev_codrub = vrev_codrub
                     AND rev_codreg = vrev_codreg
                     AND rev_codigo = vrev_codigo
                     AND rev_correlmre = 0
                     AND rev_numrevaluo = vrev_numrevaluo - 1;

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 3
        THEN
            UPDATE   revaluos
               SET   rev_estado = 'B'
             WHERE       rev_codrub = vrev_codrub
                     AND rev_codreg = vrev_codreg
                     AND rev_codigo = vrev_codigo
                     AND rev_correlmre = 0
                     AND rev_numrevaluo = vrev_numrevaluo;

            COMMIT;
            vres := '0';
            vmsg := '0';
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            vres := '-1';
            vmsg := 'No existe tipo de cambio para la fecha de revaluo';
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe el Revaluo';
        WHEN OTHERS
        THEN
            vres := '1';
            vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
    END;

    PROCEDURE insertarmejorasrebajas (vmre_codrub           IN     VARCHAR2,
                                      vmre_codreg           IN     VARCHAR2,
                                      vmre_codigo           IN     NUMBER,
                                      vmre_inmejreb         IN     VARCHAR2,
                                      vmre_corel            IN     NUMBER,
                                      vmre_fecha            IN     VARCHAR2,
                                      vmre_tipcam           IN     NUMBER,
                                      vmre_tipufv           IN     NUMBER,
                                      vmre_descripcion      IN     VARCHAR2,
                                      vmre_desadicional     IN     VARCHAR2,
                                      vmre_proveedor        IN     VARCHAR2,
                                      vmre_marca            IN     VARCHAR2,
                                      vmre_modelo           IN     VARCHAR2,
                                      vmre_serie            IN     VARCHAR2,
                                      vmre_docreferencia    IN     VARCHAR2,
                                      vmre_fecreferencia    IN     VARCHAR2,
                                      vmre_valbol           IN     NUMBER,
                                      vmre_valdol           IN     NUMBER,
                                      vmre_valufv           IN     NUMBER,
                                      vmre_ordencompra      IN     VARCHAR2,
                                      vmre_numfactura       IN     NUMBER,
                                      vmre_numcomprobante   IN     VARCHAR2,
                                      vrev_fecha            IN     VARCHAR2,
                                      vrev_vidaut           IN     NUMBER,
                                      vrev_estadoactivo     IN     VARCHAR2,
                                      vrev_desestado        IN     VARCHAR2,
                                      vrev_numdocumento     IN     VARCHAR2,
                                      vmre_usuario          IN     VARCHAR2,
                                      vestado               IN     NUMBER,
                                      vres                     OUT NUMBER,
                                      vmsg                     OUT VARCHAR2)
    IS
        vcuotas          NUMBER;
        vvidaut          NUMBER;
        vrev_vidaut2     NUMBER;
        vmaxnumrevaluo   NUMBER;
    BEGIN
        vmsg := '';

        IF vestado = 1
        THEN
            SELECT   COUNT ( * )
              INTO   vcuotas
              FROM   depreciaciones
             WHERE       dep_codrub = vmre_codrub
                     AND dep_codreg = vmre_codreg
                     AND dep_codigo = vmre_codigo
                     AND dep_estado = 'A';

            SELECT   MAX (rev_numrevaluo)
              INTO   vmaxnumrevaluo
              FROM   revaluos
             WHERE       rev_codrub = vmre_codrub
                     AND rev_codreg = vmre_codreg
                     AND rev_codigo = vmre_codigo
                     AND rev_estado = 'A';

            SELECT   rev_vidaut
              INTO   vvidaut
              FROM   revaluos
             WHERE       rev_codrub = vmre_codrub
                     AND rev_codreg = vmre_codreg
                     AND rev_codigo = vmre_codigo
                     AND rev_correlmre = 0
                     AND rev_estado = 'A'
                     AND rev_numrevaluo = vmaxnumrevaluo;

            vrev_vidaut2 := vvidaut - vcuotas;

            INSERT INTO mejorasrebajas
              VALUES   (vmre_codrub,
                        vmre_codreg,
                        vmre_codigo,
                        'M',
                        vmre_corel,
                        TO_DATE (vmre_fecha, 'dd/mm/yyyy'),
                        vmre_tipcam,
                        vmre_tipufv,
                        vmre_descripcion,
                        vmre_desadicional,
                        vmre_proveedor,
                        vmre_marca,
                        vmre_modelo,
                        vmre_serie,
                        vmre_docreferencia,
                        TO_DATE (vmre_fecreferencia, 'dd/mm/yyyy'),
                        vmre_valbol,
                        vmre_valbol / vmre_tipcam,
                        vmre_valbol / vmre_tipufv,
                        vmre_ordencompra,
                        vmre_numfactura,
                        vmre_numcomprobante,
                        vmre_usuario,
                        SYSDATE,
                        'A');

            INSERT INTO revaluos
              VALUES   (vmre_codrub,
                        vmre_codreg,
                        vmre_codigo,
                        vmre_corel,
                        vmaxnumrevaluo,
                        TO_DATE (vrev_fecha, 'dd/mm/yyyy'),
                        vmre_tipcam,
                        vmre_tipufv,
                        vmre_valbol,
                        vmre_valbol / vmre_tipcam,
                        vmre_valbol / vmre_tipufv,
                        0,
                        0,
                        0,
                        vrev_vidaut2,
                        vrev_estadoactivo,
                        vrev_desestado,
                        'S',
                        vrev_numdocumento,
                        vmre_usuario,
                        SYSDATE,
                        'A');

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 2
        THEN
            UPDATE   mejorasrebajas
               SET   mre_fecha = TO_DATE (vmre_fecha, 'dd/mm/yyyy'),
                     mre_tipcam = vmre_tipcam,
                     mre_tipufv = vmre_tipufv,
                     mre_descripcion = vmre_descripcion,
                     mre_desadicional = vmre_desadicional,
                     mre_proveedor = vmre_proveedor,
                     mre_marca = vmre_marca,
                     mre_modelo = vmre_modelo,
                     mre_serie = vmre_serie,
                     mre_docreferencia = vmre_docreferencia,
                     mre_fecreferencia =
                         TO_DATE (vmre_fecreferencia, 'dd/mm/yyyy'),
                     mre_valbol = vmre_valbol,
                     mre_valdol = vmre_valdol,
                     mre_valufv = vmre_valufv,
                     mre_ordencompra = vmre_ordencompra,
                     mre_numfactura = vmre_numfactura,
                     mre_numcomprobante = vmre_numcomprobante
             WHERE       mre_codrub = vmre_codrub
                     AND mre_codreg = vmre_codreg
                     AND mre_codigo = vmre_codigo
                     AND mre_inmejreb = 'M'
                     AND mre_corel = vmre_corel;

            UPDATE   revaluos
               SET   rev_fecha = TO_DATE (vrev_fecha, 'dd/mm/yyyy'),
                     rev_vidaut = vrev_vidaut,
                     rev_estadoactivo = vrev_estadoactivo,
                     rev_desestado = vrev_desestado,
                     rev_numdocumento = vrev_numdocumento,
                     rev_tipcam = vmre_tipcam,
                     rev_tipufv = vmre_tipufv,
                     rev_valbol = vmre_valbol,
                     rev_valdol = vmre_valbol / vmre_tipcam,
                     rev_valufv = vmre_valbol / vmre_tipufv
             WHERE       rev_codrub = vmre_codrub
                     AND rev_codreg = vmre_codreg
                     AND rev_codigo = vmre_codigo
                     AND rev_correlmre = vmre_corel
                     AND rev_numrevaluo = 0;

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 3
        THEN
            UPDATE   mejorasrebajas
               SET   mre_estado = 'B'
             WHERE       mre_codrub = vmre_codrub
                     AND mre_codreg = vmre_codreg
                     AND mre_codigo = vmre_codigo
                     AND mre_inmejreb = 'M'
                     AND mre_corel = vmre_corel;

            UPDATE   revaluos
               SET   rev_estado = 'B'
             WHERE       rev_codrub = vmre_codrub
                     AND rev_codreg = vmre_codreg
                     AND rev_codigo = vmre_codigo
                     AND rev_correlmre = vmre_corel
                     AND rev_numrevaluo = 0;

            COMMIT;
            vres := '0';
            vmsg := '0';
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe la Mejora Rebaja';
        WHEN OTHERS
        THEN
            vres := '1';
            vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
    END;

    PROCEDURE insertardetdocumentos (vddo_codfin         IN     VARCHAR2,
                                     vddo_codreg         IN     VARCHAR2,
                                     vddo_tipdoc         IN     VARCHAR2,
                                     vddo_numero         IN     NUMBER,
                                     vddo_fecha          IN     VARCHAR2,
                                     vddo_codfunorigen   IN     VARCHAR2,
                                     vddo_item           IN     NUMBER,
                                     vddo_codrubactual   IN     VARCHAR2,
                                     vddo_codregactual   IN     VARCHAR2,
                                     vddo_codigoact      IN     NUMBER,
                                     vddo_codmot         IN     VARCHAR2,
                                     vddo_usuario        IN     VARCHAR2,
                                     vddo_codofiactual   IN     VARCHAR2,
                                     vddo_codubiactual   IN     VARCHAR2,
                                     vestado             IN     NUMBER,
                                     vres                   OUT NUMBER,
                                     vmsg                   OUT VARCHAR2)
    IS
        vddo_codrub     VARCHAR2 (10);
        vddo_codreg2    VARCHAR2 (10);
        vddo_codigo     NUMBER;
        vddo_item2      NUMBER;
        vcant           NUMBER;
        vcanta          NUMBER;
        vvar            CHAR (1);
        vcodregactual   VARCHAR2 (10);
        vcodofiactual   VARCHAR2 (10);
        vcodubiactual   VARCHAR2 (10);
    BEGIN
        vvar := '-';
        vres := '0';
        vmsg := '';
        vcanta := 0;
        vddo_codrub := SUBSTR (vddo_codrubactual, 1, 2);
        vddo_codreg2 := SUBSTR (vddo_codrubactual, 3, 2);
        vddo_codigo := TO_NUMBER (SUBSTR (vddo_codrubactual, 5, 5));
        vcodofiactual := vddo_codofiactual;
        vcodubiactual := vddo_codubiactual;

        /* --- O --- */
        IF vestado < 4
        THEN
            SELECT   doc_codregdestino
              INTO   vcodregactual
              FROM   documentos
             WHERE       doc_codfin = vddo_codfin
                     AND doc_codreg = vddo_codreg
                     AND doc_tipdoc = vddo_tipdoc
                     AND doc_gestion = xgestion
                     AND doc_numero = vddo_numero;

            IF vestado = 1 OR vestado = 2
            THEN
                IF vcodofiactual IS NULL
                THEN
                    SELECT   doc_codofidestino
                      INTO   vcodofiactual
                      FROM   documentos
                     WHERE       doc_codfin = vddo_codfin
                             AND doc_codreg = vddo_codreg
                             AND doc_tipdoc = vddo_tipdoc
                             AND doc_gestion = xgestion
                             AND doc_numero = vddo_numero;
                END IF;

                IF (vcodregactual IS NOT NULL AND vcodofiactual IS NOT NULL)
                THEN
                    SELECT   ofi_codubi
                      INTO   vcodubiactual
                      FROM   oficinas
                     WHERE   ofi_codreg = vcodregactual
                             AND ofi_codigo = vcodofiactual;
                END IF;

                SELECT   NVL (MAX (ddo_item), 0) + 1
                  INTO   vddo_item2
                  FROM   det_documentos
                 WHERE       ddo_codfin = vddo_codfin
                         AND ddo_codreg = vddo_codreg
                         AND ddo_tipdoc = vddo_tipdoc
                         AND ddo_gestion = xgestion
                         AND ddo_numero = vddo_numero;

                SELECT   COUNT ( * )
                  INTO   vcant
                  FROM   det_documentos
                 WHERE       ddo_codfin = vddo_codfin
                         AND ddo_codreg = vddo_codreg
                         AND ddo_tipdoc = vddo_tipdoc
                         AND ddo_gestion = xgestion
                         AND ddo_numero = vddo_numero
                         AND ddo_codrubactual = vddo_codrub
                         AND ddo_codregactual = vddo_codreg2
                         AND ddo_codigo = vddo_codigo
                         AND ddo_estado = 'A';

                IF vcant <= 0
                THEN
                    INSERT INTO det_documentos
                      VALUES   (vddo_codreg,
                                vddo_tipdoc,
                                xgestion,
                                vddo_numero,
                                vddo_item2,
                                vddo_codrub,
                                vddo_codreg2,
                                vddo_codigo,
                                vddo_codmot,
                                vddo_usuario,
                                'A',
                                vddo_codfin,
                                vcodofiactual,
                                vcodubiactual);

                    COMMIT;
                    vres := '0';
                    vmsg := '0';
                ELSE
                    vres := '-1';
                    vmsg := 'Ya existe el Detalle del Acta';
                END IF;
            ELSIF vestado = 3
            THEN
                UPDATE   det_documentos
                   SET   ddo_estado = 'B'
                 WHERE       ddo_codfin = vddo_codfin
                         AND ddo_codreg = vddo_codreg
                         AND ddo_tipdoc = vddo_tipdoc
                         AND ddo_gestion = xgestion
                         AND ddo_numero = vddo_numero
                         AND ddo_item = vddo_item;

                COMMIT;
                vres := '0';
                vmsg := '0';
            END IF;
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe el Detalle del Acta';
        WHEN OTHERS
        THEN
            vres := '1';
            vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
    END;

    PROCEDURE confirmardocumentos (vddo_codfin    IN     VARCHAR2,
                                   vddo_codreg    IN     VARCHAR2,
                                   vddo_tipdoc    IN     VARCHAR2,
                                   vddo_numero    IN     NUMBER,
                                   vddo_usuario   IN     VARCHAR2,
                                   vestado        IN     NUMBER,
                                   vres              OUT NUMBER,
                                   vmsg              OUT VARCHAR2)
    /* 08/08/2008 DGemio */
    IS
        vd_fecha     VARCHAR2 (10);
        vd_usuario   VARCHAR2 (15);
        vdestado     NUMBER;
        vd_codrub    VARCHAR2 (10);
        vd_codreg    VARCHAR2 (10);
        vd_codini    VARCHAR2 (10);
        vd_codfin    VARCHAR2 (10);
        vdres        NUMBER;
        vdmsg        VARCHAR2 (255);

        /* 08/08/2008 DGemio */
        CURSOR cr
        IS
            SELECT      documentos.doc_tipdoc
                     || '-'
                     || documentos.doc_numero
                     || '/'
                     || documentos.doc_gestion
                         doc_numero,
                     ddo_codrubactual,
                     ddo_codregactual,
                     ddo_codigo,
                     ddo_codmot,
                     doc_fecha,
                     doc_codofiorigen,
                     doc_codfunorigen,
                     doc_codubiorigen,
                     doc_codregdestino,
                     doc_codofidestino,
                     doc_codfundestino,
                     doc_codubidestino,
                     ddo_codofiactual,
                     ddo_codubiactual,
                     doc_codfindestino
              FROM   det_documentos, documentos
             WHERE       ddo_codfin = vddo_codfin
                     AND ddo_codreg = vddo_codreg
                     AND ddo_tipdoc = vddo_tipdoc
                     AND ddo_gestion = xgestion
                     AND ddo_numero = vddo_numero
                     AND doc_codfin = ddo_codfin
                     AND doc_codreg = ddo_codreg
                     AND doc_tipdoc = ddo_tipdoc
                     AND doc_gestion = ddo_gestion
                     AND doc_numero = ddo_numero
                     AND ddo_estado = 'A';
    BEGIN
        vmsg := '';

        FOR cur IN cr
        LOOP
            IF vddo_tipdoc = 'E'
            THEN
                UPDATE   activos
                   SET   act_codofi = cur.ddo_codofiactual,
                         act_codfun = cur.doc_codfundestino,
                         act_codubi = cur.ddo_codubiactual,
                         act_codregional = cur.doc_codregdestino,
                         act_usuario = vddo_usuario,
                         act_propiedad = 'S',
                         act_fecsis = SYSDATE,
                         act_ultimo_doc = cur.doc_numero
                 WHERE       act_codrub = cur.ddo_codrubactual
                         AND act_codreg = cur.ddo_codregactual
                         AND act_codigo = cur.ddo_codigo;
            ELSIF vddo_tipdoc = 'D'
            THEN
                UPDATE   activos
                   SET   act_codofi = cur.doc_codofidestino,
                         act_codfun = cur.doc_codfundestino,
                         act_codubi = cur.doc_codubidestino,
                         act_codregional = cur.doc_codregdestino,
                         act_usuario = vddo_usuario,
                         act_propiedad = 'N',
                         act_fecsis = SYSDATE,
                         act_ultimo_doc = cur.doc_numero
                 WHERE       act_codrub = cur.ddo_codrubactual
                         AND act_codreg = cur.ddo_codregactual
                         AND act_codigo = cur.ddo_codigo;
            ELSIF vddo_tipdoc = 'T'
            THEN
                UPDATE   activos
                   SET   act_codofi = cur.ddo_codofiactual,
                         act_codfun = cur.doc_codfundestino,
                         act_codubi = cur.ddo_codubiactual,
                         act_codregional = cur.doc_codregdestino,
                         act_usuario = vddo_usuario,
                         act_propiedad = 'S',
                         act_fecsis = SYSDATE,
                         act_ultimo_doc = cur.doc_numero
                 WHERE       act_codrub = cur.ddo_codrubactual
                         AND act_codreg = cur.ddo_codregactual
                         AND act_codigo = cur.ddo_codigo;
            ELSIF vddo_tipdoc = 'U'
            THEN
                UPDATE   activos
                   SET   act_codofi = cur.doc_codofidestino,
                         act_codfun = cur.doc_codfundestino,
                         act_codubi = cur.doc_codubidestino,
                         act_codregional = cur.doc_codregdestino,
                         act_usuario = vddo_usuario,
                         act_propiedad = 'N',
                         act_fecsis = SYSDATE,
                         act_ultimo_doc = cur.doc_numero
                 WHERE       act_codrub = cur.ddo_codrubactual
                         AND act_codreg = cur.ddo_codregactual
                         AND act_codigo = cur.ddo_codigo;
            ELSIF vddo_tipdoc = 'V'
            THEN
                UPDATE   activos
                   SET   act_codofi = cur.doc_codofidestino,
                         act_codfun = cur.doc_codfundestino,
                         act_codubi = cur.doc_codubidestino,
                         act_codfin = cur.doc_codfindestino,
                         act_codregional = cur.doc_codregdestino,
                         act_usuario = vddo_usuario,
                         act_propiedad = 'N',
                         act_fecsis = SYSDATE,
                         act_ultimo_doc = cur.doc_numero
                 WHERE       act_codrub = cur.ddo_codrubactual
                         AND act_codreg = cur.ddo_codregactual
                         AND act_codigo = cur.ddo_codigo;
            ELSIF vddo_tipdoc = 'B'
            THEN
                UPDATE   activos
                   SET   act_codmot = cur.ddo_codmot,
                         act_fecbaja = cur.doc_fecha,
                         act_propiedad = 'N',
                         act_estado = 'B',
                         act_ultimo_doc = cur.doc_numero
                 WHERE       act_codrub = cur.ddo_codrubactual
                         AND act_codreg = cur.ddo_codregactual
                         AND act_codigo = cur.ddo_codigo;

                COMMIT;
                /* 08/08/2008 DGemio */
                /*vd_fecha := '31/12/' || TO_CHAR(cur.doc_fecha, 'YYYY'); */
                vd_fecha := LAST_DAY (TO_DATE (cur.doc_fecha, 'dd/mm/yyyy'));
                vd_usuario := vddo_usuario;
                vdestado := 1;
                vd_codrub := cur.ddo_codrubactual;
                vd_codreg := cur.ddo_codregactual;
                vd_codini := cur.ddo_codigo;
                vd_codfin := cur.ddo_codigo;
                vdres := '0';
                vdmsg := '0';

                depreciaciontotal (vd_fecha,
                                   vd_usuario,
                                   vdestado,
                                   vd_codrub,
                                   vd_codreg,
                                   vd_codini,
                                   vd_codfin,
                                   vdres,
                                   vdmsg);
            /* 08/08/2008 DGemio */
            END IF;
        END LOOP;

        UPDATE   documentos
           SET   doc_inconfirma = 'S'
         WHERE       doc_codfin = vddo_codfin
                 AND doc_codreg = vddo_codreg
                 AND doc_tipdoc = vddo_tipdoc
                 AND doc_gestion = xgestion
                 AND doc_numero = vddo_numero;

        COMMIT;
        vres := '0';
        vmsg := '0';
    EXCEPTION
        WHEN OTHERS
        THEN
            vres := '1';
            vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
    END;

    PROCEDURE insertardocumentos (vdoc_codreg          IN     VARCHAR2,
                                  vdoc_tipdoc          IN     VARCHAR2,
                                  vdoc_numero          IN     NUMBER,
                                  vdoc_fecha           IN     VARCHAR2,
                                  vdoc_codofiorigen    IN     VARCHAR2,
                                  vdoc_codfunorigen    IN     VARCHAR2,
                                  vdoc_codubiorigen    IN     VARCHAR2,
                                  vdoc_codfinorigen    IN     VARCHAR2,
                                  vdoc_codpryorigen    IN     VARCHAR2,
                                  vdoc_codregdestino   IN     VARCHAR2,
                                  vdoc_codofidestino   IN     VARCHAR2,
                                  vdoc_codfundestino   IN     VARCHAR2,
                                  vdoc_codubidestino   IN     VARCHAR2,
                                  vdoc_codfindestino   IN     VARCHAR2,
                                  vdoc_codprydestino   IN     VARCHAR2,
                                  vdoc_observacion     IN     VARCHAR2,
                                  vdoc_inconfirma      IN     VARCHAR2,
                                  vdoc_usuario         IN     VARCHAR2,
                                  vestado              IN     NUMBER,
                                  vdoc_codfin          IN     VARCHAR2,
                                  vdoc_devolucion      IN     NUMBER,
                                  vres                    OUT NUMBER,
                                  vmsg                    OUT VARCHAR2)
    IS
        vfeccierre           DATE;
        xdoc_codregorigen    VARCHAR2 (10);
        xdoc_codofiorigen    VARCHAR2 (10);
        xdoc_codubiorigen    VARCHAR2 (10);
        xdoc_codregdestino   VARCHAR2 (10);
        xdoc_codofidestino   VARCHAR2 (10);
        xdoc_codubidestino   VARCHAR2 (10);
        xdoc_codfindestino   VARCHAR2 (10);
        vdescripcion         VARCHAR2 (80);
        vddo_item2           NUMBER;
        cantidad             NUMBER;

        CURSOR cr
        IS
            SELECT   act_codrub, act_codreg, act_codigo
              FROM   activos, revaluos, grupos
             WHERE       act_codfin = vdoc_codfin
                     AND act_codregional = vdoc_codreg
                     AND act_codfun = vdoc_codfunorigen
                     AND act_estado = 'A'
                     AND act_propiedad = 'S'
                     AND rev_fecha <= TO_DATE (vdoc_fecha, 'dd/mm/yyyy')
                     AND TRUNC (act_fecsis) <=
                            TO_DATE (vdoc_fecha, 'dd/mm/yyyy')
                     AND act_codgrp = grp_codigo
                     AND act_codrub = grp_codrub
                     AND rev_codrub = act_codrub
                     AND rev_codreg = act_codreg
                     AND rev_codigo = act_codigo
                     AND rev_correlmre = 0
                     AND rev_numrevaluo = 0
                     AND (act_codrub, act_codreg, act_codigo, act_codfin) NOT IN
                                (SELECT   ddo_codrubactual,
                                          ddo_codregactual,
                                          ddo_codigo,
                                          ddo_codfin
                                   FROM   documentos, det_documentos
                                  WHERE       ddo_codfin = doc_codfin
                                          AND ddo_codreg = doc_codreg
                                          AND ddo_tipdoc = doc_tipdoc
                                          AND ddo_gestion = doc_gestion
                                          AND ddo_numero = doc_numero
                                          AND ddo_estado = 'A'
                                          AND doc_inconfirma = 'N');

        CURSOR cr1
        IS
            SELECT   ddo_codfin,
                     ddo_codreg,
                     ddo_tipdoc,
                     ddo_gestion,
                     ddo_numero,
                     ddo_item,
                     ddo_codrubactual,
                     ddo_codregactual,
                     ddo_codigo,
                     doc_codfunorigen,
                     act_codfun
              FROM   det_documentos, documentos, activos
             WHERE       ddo_codfin = vdoc_codfin
                     AND ddo_codreg = vdoc_codreg
                     AND (ddo_tipdoc = 'D' OR ddo_tipdoc = 'T')
                     AND ddo_gestion = xgestion
                     AND ddo_numero = vdoc_numero
                     AND doc_codfin = ddo_codfin
                     AND doc_codreg = ddo_codreg
                     AND doc_tipdoc = ddo_tipdoc
                     AND doc_gestion = ddo_gestion
                     AND doc_numero = ddo_numero
                     AND act_codrub = ddo_codrubactual
                     AND act_codreg = ddo_codregactual
                     AND act_codigo = ddo_codigo
                     AND act_estado = 'A'
                     AND doc_inconfirma = 'N';

        CURSOR cr2
        IS
            SELECT   ddo_codrubactual, ddo_codregactual, ddo_codigo
              FROM   det_documentos, documentos, activos
             WHERE       ddo_codfin = vdoc_codfin
                     AND ddo_codreg = vdoc_codreg
                     AND ddo_tipdoc = 'D'
                     AND ddo_gestion = xgestion
                     AND ddo_numero = vdoc_devolucion
                     AND doc_codfin = ddo_codfin
                     AND doc_codreg = ddo_codreg
                     AND doc_tipdoc = ddo_tipdoc
                     AND doc_gestion = ddo_gestion
                     AND doc_numero = ddo_numero
                     AND act_codrub = ddo_codrubactual
                     AND act_codreg = ddo_codregactual
                     AND act_codigo = ddo_codigo
                     AND act_estado = 'A'
                     AND act_codfun = doc_codfundestino
                     AND doc_inconfirma = 'S'
                     AND ddo_estado = 'A';
    BEGIN
        vmsg := '';

        IF vestado = 1 OR vestado = 10 OR vestado = 11
        THEN
            /*ORIGEN*/
            SELECT   fun_codofi, fun_codreg
              INTO   xdoc_codofiorigen, xdoc_codregorigen
              FROM   funcionarios
             WHERE   fun_codigo = vdoc_codfunorigen;

            SELECT   ofi_codubi
              INTO   xdoc_codubiorigen
              FROM   oficinas
             WHERE   ofi_codigo = xdoc_codofiorigen
                     AND ofi_codreg = xdoc_codregorigen;

            /*DESTINO*/
            BEGIN
                SELECT   fun_codofi, fun_codreg, fun_codfin
                  INTO   xdoc_codofidestino,
                         xdoc_codregdestino,
                         xdoc_codfindestino
                  FROM   funcionarios
                 WHERE   fun_codigo = vdoc_codfundestino;

                /*SELECT fun_codofi
                  INTO xdoc_codofidestino
                  FROM funcionarios
                 WHERE fun_codigo = vdoc_codfundestino;*/
                SELECT   ofi_codubi
                  INTO   xdoc_codubidestino
                  FROM   oficinas
                 WHERE   ofi_codigo = xdoc_codofidestino
                         AND ofi_codreg = xdoc_codregdestino;
            EXCEPTION
                WHEN OTHERS
                THEN
                    NULL;
            END;

            IF vdoc_tipdoc IN ('D', 'T')
            THEN
                SELECT   COUNT (1)
                  INTO   cantidad
                  FROM   activos, revaluos, grupos
                 WHERE       act_codfin = vdoc_codfin
                         AND act_codregional = vdoc_codreg
                         AND act_codfun = vdoc_codfunorigen
                         AND act_estado = 'A'
                         AND act_propiedad = 'S'
                         AND rev_fecha <= TO_DATE (vdoc_fecha, 'dd/mm/yyyy')
                         AND TRUNC (act_fecsis) <=
                                TO_DATE (vdoc_fecha, 'dd/mm/yyyy')
                         AND act_codgrp = grp_codigo
                         AND act_codrub = grp_codrub
                         AND rev_codrub = act_codrub
                         AND rev_codreg = act_codreg
                         AND rev_codigo = act_codigo
                         AND rev_correlmre = 0
                         AND rev_numrevaluo = 0
                         AND (act_codrub, act_codreg, act_codigo, act_codfin) NOT IN
                                    (SELECT   ddo_codrubactual,
                                              ddo_codregactual,
                                              ddo_codigo,
                                              ddo_codfin
                                       FROM   documentos, det_documentos
                                      WHERE       ddo_codfin = doc_codfin
                                              AND ddo_codreg = doc_codreg
                                              AND ddo_tipdoc = doc_tipdoc
                                              AND ddo_gestion = doc_gestion
                                              AND ddo_numero = doc_numero
                                              AND ddo_estado = 'A'
                                              AND doc_inconfirma = 'N');
            ELSE
                /*SELECT COUNT (1)
                  INTO cantidad
                  FROM activos, revaluos, grupos
                 WHERE act_codfin = vdoc_codfin
                   AND act_codregional = vdoc_codreg
                   AND act_codfun = vdoc_codfunorigen
                   AND act_estado = 'A'
                   AND act_propiedad = 'N'
                   AND rev_fecha <= TO_DATE (vdoc_fecha, 'dd/mm/yyyy')
                   AND TRUNC (act_fecsis) <= TO_DATE (vdoc_fecha, 'dd/mm/yyyy')
                   AND act_codgrp = grp_codigo
                   AND act_codrub = grp_codrub
                   AND rev_codrub = act_codrub
                   AND rev_codreg = act_codreg
                   AND rev_codigo = act_codigo
                   AND rev_correlmre = 0
                   AND rev_numrevaluo = 0
                   AND (act_codrub, act_codreg, act_codigo, act_codfin) NOT IN (
                          SELECT ddo_codrubactual, ddo_codregactual, ddo_codigo,
                                 ddo_codfin
                            FROM documentos, det_documentos
                           WHERE ddo_codfin = doc_codfin
                             AND ddo_codreg = doc_codreg
                             AND ddo_tipdoc = doc_tipdoc
                             AND ddo_gestion = doc_gestion
                             AND ddo_numero = doc_numero
                             AND ddo_estado = 'A'
                             AND doc_inconfirma = 'N');*/
                cantidad := 1;
            END IF;

            IF cantidad = 0
            THEN
                SELECT   fun_descripcion
                  INTO   vdescripcion
                  FROM   funcionarios
                 WHERE   fun_codigo = vdoc_codfunorigen;

                vres := -1;
                vmsg :=
                    'No Existen activos Para el funcionario(Rev.Fecha Confirmacion) '
                    || vdescripcion;
            ELSE
                INSERT INTO documentos
                  VALUES   (xdoc_codregorigen,
                            vdoc_tipdoc,
                            xgestion,
                            vdoc_numero,
                            TO_DATE (vdoc_fecha, 'dd/mm/yyyy'),
                            xdoc_codofiorigen,
                            vdoc_codfunorigen,
                            xdoc_codubiorigen,
                            vdoc_codfinorigen,
                            vdoc_codpryorigen,
                            xdoc_codregdestino,
                            xdoc_codofidestino,
                            vdoc_codfundestino,
                            xdoc_codubidestino,
                            xdoc_codfindestino,
                            vdoc_codprydestino,
                            vdoc_observacion,
                            'N',
                            vdoc_usuario,
                            SYSDATE,
                            'A',
                            vdoc_codfin);

                UPDATE   sectiposdoc
                   SET   std_numero = vdoc_numero
                 WHERE       std_codfin = vdoc_codfin
                         AND std_codreg = vdoc_codreg
                         AND std_tipdoc = vdoc_tipdoc
                         AND std_gestion = xgestion;

                vddo_item2 := 999;

                IF vestado = 10 OR vestado = 11
                THEN
                    vddo_item2 := 1;

                    FOR cur IN cr
                    LOOP
                        INSERT INTO det_documentos
                          VALUES   (xdoc_codregorigen,
                                    vdoc_tipdoc,
                                    xgestion,
                                    vdoc_numero,
                                    vddo_item2,
                                    cur.act_codrub,
                                    cur.act_codreg,
                                    cur.act_codigo,
                                    NULL,
                                    vdoc_usuario,
                                    'A',
                                    vdoc_codfin,
                                    xdoc_codofidestino,
                                    xdoc_codubidestino);

                        vddo_item2 := vddo_item2 + 1;
                    END LOOP;
                END IF;

                IF (vdoc_devolucion IS NOT NULL AND vdoc_devolucion != 0)
                   AND vdoc_tipdoc = 'E'
                THEN
                    vddo_item2 := 1;

                    FOR cur2 IN cr2
                    LOOP
                        INSERT INTO det_documentos
                          VALUES   (xdoc_codregorigen,
                                    vdoc_tipdoc,
                                    xgestion,
                                    vdoc_numero,
                                    vddo_item2,
                                    cur2.ddo_codrubactual,
                                    cur2.ddo_codregactual,
                                    cur2.ddo_codigo,
                                    NULL,
                                    vdoc_usuario,
                                    'A',
                                    vdoc_codfin,
                                    xdoc_codofidestino,
                                    xdoc_codubidestino);

                        vddo_item2 := vddo_item2 + 1;
                    END LOOP;
                END IF;

                IF vddo_item2 = 1
                THEN
                    vres := -1;
                    vmsg := 'No Existen activos a Traspasar o Entregar';
                ELSE
                    vres := 0;
                    vmsg := '0';
                    COMMIT;
                END IF;
            END IF;
        ELSIF vestado = 2
        THEN
            /*ORIGEN*/
            SELECT   fun_codofi, fun_codreg
              INTO   xdoc_codofiorigen, xdoc_codregorigen
              FROM   funcionarios
             WHERE   fun_codigo = vdoc_codfunorigen;

            SELECT   ofi_codubi
              INTO   xdoc_codubiorigen
              FROM   oficinas
             WHERE   ofi_codigo = xdoc_codofiorigen
                     AND ofi_codreg = xdoc_codregorigen;

            /*DESTINO*/
            BEGIN
                SELECT   fun_codofi, fun_codreg, fun_codfin
                  INTO   xdoc_codofidestino,
                         xdoc_codregdestino,
                         xdoc_codfindestino
                  FROM   funcionarios
                 WHERE   fun_codigo = vdoc_codfundestino;

                /*SELECT fun_codofi
                  INTO xdoc_codofidestino
                  FROM funcionarios
                 WHERE fun_codigo = vdoc_codfundestino;*/
                SELECT   ofi_codubi
                  INTO   xdoc_codubidestino
                  FROM   oficinas
                 WHERE   ofi_codigo = xdoc_codofidestino
                         AND ofi_codreg = xdoc_codregdestino;
            EXCEPTION
                WHEN OTHERS
                THEN
                    NULL;
            END;

            UPDATE   documentos
               SET   doc_fecha = TO_DATE (vdoc_fecha, 'dd/mm/yyyy'),
                     doc_codofiorigen = xdoc_codofiorigen,
                     doc_codfunorigen = vdoc_codfunorigen,
                     doc_codubiorigen = xdoc_codubiorigen,
                     doc_codfinorigen = vdoc_codfinorigen,
                     doc_codpryorigen = vdoc_codpryorigen,
                     doc_codregdestino = xdoc_codregdestino,
                     doc_codofidestino = xdoc_codofidestino,
                     doc_codfundestino = vdoc_codfundestino,
                     doc_codubidestino = xdoc_codubidestino,
                     doc_codfindestino = xdoc_codfindestino,
                     doc_codprydestino = vdoc_codprydestino,
                     doc_observacion = vdoc_observacion
             WHERE       doc_codfin = vdoc_codfin
                     AND doc_codreg = vdoc_codreg
                     AND doc_tipdoc = vdoc_tipdoc
                     AND doc_gestion = xgestion
                     AND doc_numero = vdoc_numero;

            FOR cur IN cr1
            LOOP
                IF cur.doc_codfunorigen <> cur.act_codfun
                THEN
                    DELETE FROM   det_documentos
                          WHERE       ddo_codfin = cur.ddo_codfin
                                  AND ddo_codreg = cur.ddo_codreg
                                  AND ddo_tipdoc = cur.ddo_tipdoc
                                  AND ddo_gestion = cur.ddo_gestion
                                  AND ddo_numero = cur.ddo_numero
                                  AND ddo_item = cur.ddo_item;
                END IF;
            END LOOP;

            COMMIT;
            vres := 0;
            vmsg := '0';
        ELSIF vestado = 3
        THEN
            UPDATE   documentos
               SET   doc_estado = 'B'
             WHERE       doc_codfin = vdoc_codfin
                     AND doc_codreg = vdoc_codreg
                     AND doc_tipdoc = vdoc_tipdoc
                     AND doc_gestion = xgestion
                     AND doc_numero = vdoc_numero;

            UPDATE   det_documentos
               SET   ddo_estado = 'B'
             WHERE       ddo_codfin = vdoc_codfin
                     AND ddo_codreg = vdoc_codreg
                     AND ddo_tipdoc = vdoc_tipdoc
                     AND ddo_gestion = xgestion
                     AND ddo_numero = vdoc_numero;

            COMMIT;
            vres := 0;
            vmsg := '0';
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := -1;
            vmsg := 'Ya existe el Documento';
        WHEN OTHERS
        THEN
            vres := 1;
            vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
    END;

    PROCEDURE insertaractivos (vact_codrub            IN     VARCHAR2,
                               vact_codreg            IN     VARCHAR2,
                               vact_codigo            IN     NUMBER,
                               vact_codgrp            IN     VARCHAR2,
                               vact_codpar            IN     VARCHAR2,
                               vact_codofi            IN     VARCHAR2,
                               vact_codfun            IN     VARCHAR2,
                               vact_codubi            IN     VARCHAR2,
                               vact_codfin            IN     VARCHAR2,
                               vact_codpry            IN     VARCHAR2,
                               vact_codmot            IN     VARCHAR2,
                               vact_feccompra         IN     VARCHAR2,
                               vact_tipcam            IN     NUMBER,
                               vact_tipufv            IN     NUMBER,
                               vact_umanejo           IN     VARCHAR2,
                               vact_descripcion       IN     VARCHAR2,
                               vact_desadicional      IN     VARCHAR2,
                               vact_accesorios        IN     VARCHAR2,
                               vact_proveedor         IN     VARCHAR2,
                               vact_marca             IN     VARCHAR2,
                               vact_modelo            IN     VARCHAR2,
                               vact_serie1            IN     VARCHAR2,
                               vact_serie2            IN     VARCHAR2,
                               vact_docreferencia     IN     VARCHAR2,
                               vact_fecreferencia     IN     VARCHAR2,
                               vact_docrefotro        IN     VARCHAR2,
                               vact_placa             IN     VARCHAR2,
                               vact_aniofabricacion   IN     VARCHAR2,
                               vact_color             IN     VARCHAR2,
                               vact_procedencia       IN     VARCHAR2,
                               vact_gobmunicipal      IN     VARCHAR2,
                               vact_valcobol          IN     NUMBER,
                               vact_valcodol          IN     NUMBER,
                               vact_valcoufv          IN     NUMBER,
                               vact_fecbaja           IN     VARCHAR2,
                               vact_ordencompra       IN     VARCHAR2,
                               vact_numfactura        IN     VARCHAR2,
                               vact_numcomprobante    IN     VARCHAR2,
                               vact_codanterior       IN     VARCHAR2,
                               vact_indetiqueta       IN     VARCHAR2,
                               vrev_fecha             IN     VARCHAR2,
                               vrev_vidaut            IN     NUMBER,
                               vrev_estadoactivo      IN     VARCHAR2,
                               vrev_desestado         IN     VARCHAR2,
                               vrev_indepreciacion    IN     VARCHAR2,
                               vrev_numdocumento      IN     VARCHAR2,
                               vact_usuario           IN     VARCHAR2,
                               vestado                IN     NUMBER,
                               vres                      OUT NUMBER,
                               vmsg                      OUT VARCHAR2)
    IS
        xvidaut   NUMBER;
        xtipcam   NUMBER;
        xtipufv   NUMBER;
        val       NUMBER;
    BEGIN
        vmsg := '';

        SELECT   tca_tipcam, tca_tipufv
          INTO   xtipcam, xtipufv
          FROM   tipocambio
         WHERE   tca_fecha = TO_DATE (vact_feccompra, 'dd/mm/yyyy');

        IF vestado = 1
        THEN
            IF (LENGTH (vact_serie1) > 0 OR vact_serie1 = 'S/S')
               OR NOT (   vact_codrub = '04'
                       OR vact_codrub = '07'
                       --OR vact_codrub = '08'
                       OR vact_codrub = '09'
                       OR vact_codrub = '10'
                       OR vact_codrub = '11')
            THEN
                SELECT   COUNT (1)
                  INTO   val
                  FROM   activos a
                 WHERE       a.act_codrub = vact_codrub
                         AND NOT act_serie1 IS NULL
                         AND act_serie1 = vact_serie1
                         AND (   act_codrub = '04'
                              OR act_codrub = '07'
                              --OR act_codrub = '08'
                              OR act_codrub = '09'
                              OR act_codrub = '10'
                              OR act_codrub = '11');

                IF val = 0 OR vact_serie1 = 'S/S'
                THEN
                    INSERT INTO activos
                      VALUES   (vact_codrub,
                                vact_codreg,
                                vact_codigo,
                                vact_codgrp,
                                vact_codpar,
                                vact_codofi,
                                vact_codfun,
                                vact_codubi,
                                vact_codfin,
                                vact_codpry,
                                vact_codmot,
                                TO_DATE (vact_feccompra, 'dd/mm/yyyy'),
                                xtipcam,
                                xtipufv,
                                vact_umanejo,
                                vact_descripcion,
                                vact_desadicional,
                                vact_accesorios,
                                vact_proveedor,
                                vact_marca,
                                vact_modelo,
                                vact_serie1,
                                vact_serie2,
                                vact_docreferencia,
                                TO_DATE (vact_fecreferencia, 'dd/mm/yyyy'),
                                vact_docrefotro,
                                vact_placa,
                                vact_aniofabricacion,
                                vact_color,
                                vact_procedencia,
                                vact_gobmunicipal,
                                vact_valcobol,
                                vact_valcobol / xtipcam,
                                vact_valcobol / xtipufv,
                                TO_DATE (vact_fecbaja, 'dd/mm/yyyy'),
                                vact_ordencompra,
                                vact_numfactura,
                                vact_numcomprobante,
                                vact_codanterior,
                                'S',
                                vact_usuario,
                                TO_DATE (vrev_fecha, 'dd/mm/yyyy'),
                                'A',
                                'N',
                                NULL,
                                vact_codreg);

                    IF vact_codrub = '01'
                    THEN
                        xvidaut := 999;
                    ELSE
                        xvidaut := vrev_vidaut;
                    END IF;

                    INSERT INTO revaluos
                      VALUES   (vact_codrub,
                                vact_codreg,
                                vact_codigo,
                                0,
                                0,
                                TO_DATE (vrev_fecha, 'dd/mm/yyyy'),
                                xtipcam,
                                xtipufv,
                                vact_valcobol,
                                vact_valcobol / xtipcam,
                                vact_valcobol / xtipufv,
                                0,
                                0,
                                0,
                                xvidaut,
                                vrev_estadoactivo,
                                vrev_desestado,
                                'S',
                                vrev_numdocumento,
                                vact_usuario,
                                SYSDATE,
                                'A');

                    UPDATE   secbarras
                       SET   bar_numero = vact_codigo
                     WHERE   bar_rubro = vact_codrub
                             AND bar_codreg = vact_codreg;

                    COMMIT;
                    vres := '0';
                    vmsg := '0';
                ELSE
                    /*if val>0 then
                        vmsg := '2';
                    else
                        vmsg := '0';
                    end if;*/
                    vres := '1';
                    vmsg :=
                        'El n&uacute;mero de serie ' || vact_serie1
                        || ' se encuentra repetido, no se pudo registrar el activo, si el mismo no tiene serie se debe colocar S/S';
                --vmsg := '2';vact_codrub
                END IF;
            ELSE
                vres := '1';
                vmsg :=
                    'El n&uacute;mero de serie no puede ser vac&iacute;o, si el mismo no tiene serie se debe colocar S/S';
            END IF;
        ELSIF vestado = 2
        THEN
            IF (LENGTH (vact_serie1) > 0 OR vact_serie1 = 'S/S') OR NOT (vact_codrub='04'
                or vact_codrub='07'
                --or vact_codrub='08'
                or vact_codrub='09'
                or vact_codrub='10'
                or vact_codrub='11')
            THEN
                SELECT   COUNT (1)
                  INTO   val
                  FROM   activos a
                 WHERE       a.act_codrub = vact_codrub
                         AND NOT act_serie1 IS NULL
                         AND act_serie1 = vact_serie1
                         AND NOT (act_codrub, act_codreg, act_codigo) IN
                                         (SELECT   vact_codrub,
                                                   vact_codreg,
                                                   vact_codigo
                                            FROM   DUAL)
                         AND (   act_codrub = '04'
                              OR act_codrub = '07'
                              --OR act_codrub = '08'
                              OR act_codrub = '09'
                              OR act_codrub = '10'
                              OR act_codrub = '11');

                IF val = 0 OR vact_serie1 = 'S/S'
                THEN
                    UPDATE   activos
                       SET   act_feccompra =
                                 TO_DATE (vact_feccompra, 'dd/mm/yyyy'),
                             act_codgrp = vact_codgrp,
                             act_codpry = vact_codpry,
                             act_tipcam = xtipcam,
                             act_tipufv = xtipufv,
                             act_umanejo = vact_umanejo,
                             act_descripcion = vact_descripcion,
                             act_desadicional = vact_desadicional,
                             act_accesorios = vact_accesorios,
                             act_proveedor = vact_proveedor,
                             act_marca = vact_marca,
                             act_modelo = vact_modelo,
                             act_serie1 = vact_serie1,
                             act_serie2 = vact_serie2,
                             act_docreferencia = vact_docreferencia,
                             act_fecreferencia =
                                 TO_DATE (vact_fecreferencia, 'dd/mm/yyyy'),
                             act_docrefotro = vact_docrefotro,
                             act_placa = vact_placa,
                             act_aniofabricacion = vact_aniofabricacion,
                             act_color = vact_color,
                             act_procedencia = vact_procedencia,
                             act_gobmunicipal = vact_gobmunicipal,
                             act_valcobol = vact_valcobol,
                             act_valcodol = vact_valcodol,
                             act_valcoufv = vact_valcoufv,
                             act_fecbaja =
                                 TO_DATE (vact_fecbaja, 'dd/mm/yyyy'),
                             act_ordencompra = vact_ordencompra,
                             act_numfactura = vact_numfactura,
                             act_numcomprobante = vact_numcomprobante,
                             act_codanterior = vact_codanterior,
                             act_fecsis = TO_DATE (vrev_fecha, 'dd/mm/yyyy')
                     WHERE       act_codrub = vact_codrub
                             AND act_codreg = vact_codreg
                             AND act_codigo = vact_codigo;

                    UPDATE   revaluos
                       SET   rev_fecha = TO_DATE (vrev_fecha, 'dd/mm/yyyy'),
                             rev_vidaut = vrev_vidaut,
                             rev_estadoactivo = vrev_estadoactivo,
                             rev_desestado = vrev_desestado,
                             rev_numdocumento = vrev_numdocumento,
                             rev_tipcam = xtipcam,
                             rev_tipufv = xtipufv,
                             rev_valbol = vact_valcobol,
                             rev_valdol = vact_valcobol / xtipcam,
                             rev_valufv = vact_valcobol / xtipufv
                     WHERE       rev_codrub = vact_codrub
                             AND rev_codreg = vact_codreg
                             AND rev_codigo = vact_codigo
                             AND rev_correlmre = 0
                             AND rev_numrevaluo = 0;

                    COMMIT;
                    vres := '0';
                    vmsg := '0';
                ELSE
                    vres := '1';
                    vmsg :=
                        'El n&uacute;mero de serie ' || vact_serie1
                        || ' se encuentra repetido, no se pudo modificar el activo, si el mismo no tiene serie se debe colocar S/S';
                END IF;
            ELSE
                vres := '1';
                vmsg :=
                    'El n&uacute;mero de serie no puede ser vac&iacute;o, si el mismo no tiene serie se debe colocar S/S';
            END IF;
        ELSIF vestado = 3
        THEN
            UPDATE   activos
               SET   act_estado = 'B'
             WHERE       act_codrub = vact_codrub
                     AND act_codreg = vact_codreg
                     AND act_codigo = vact_codigo;

            UPDATE   revaluos
               SET   rev_estado = 'B'
             WHERE       rev_codrub = vact_codrub
                     AND rev_codreg = vact_codreg
                     AND rev_codigo = vact_codigo;

            UPDATE   mejorasrebajas
               SET   mre_estado = 'B'
             WHERE       mre_codrub = vact_codrub
                     AND mre_codreg = vact_codreg
                     AND mre_codigo = vact_codigo;

            COMMIT;
            vres := '0';
            vmsg := '0';
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            vres := '-1';
            vmsg := 'No existe tipo de cambio para la fecha de compra';
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe el Activo';
        WHEN OTHERS
        THEN
            vres := '1';
            vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
    END;

    PROCEDURE insertarfinanciadores (vfin_codigo        IN     VARCHAR2,
                                     vfin_descripcion   IN     VARCHAR2,
                                     vfin_usuario       IN     VARCHAR2,
                                     vestado            IN     NUMBER,
                                     vres                  OUT NUMBER,
                                     vmsg                  OUT VARCHAR2)
    IS
        ccant   NUMBER;
    BEGIN
        IF vestado = 1
        THEN                                             /*Insertar Registro*/
            INSERT INTO financiadores (fin_codigo,
                                       fin_descripcion,
                                       fin_fecalta,
                                       fin_usuario,
                                       fin_estado)
              VALUES   (vfin_codigo,
                        vfin_descripcion,
                        SYSDATE,
                        vfin_usuario,
                        'A');

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 2
        THEN                                            /*Modificar Registro*/
            UPDATE   financiadores
               SET   fin_descripcion = vfin_descripcion,
                     fin_fecmodi = SYSDATE
             WHERE   fin_codigo = vfin_codigo;

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 3
        THEN
            ccant := 0;

            SELECT   COUNT (1)
              INTO   ccant
              FROM   (  SELECT   act_codrub, act_codreg, act_codigo
                          FROM   activos
                         WHERE   act_codfin = vfin_codigo AND act_estado = 'A'
                      GROUP BY   act_codrub, act_codreg, act_codigo);

            /*Eliminar Registro*/
            IF ccant = 0
            THEN
                UPDATE   financiadores
                   SET   fin_estado = 'B', fin_fecmodi = SYSDATE
                 WHERE   fin_codigo = vfin_codigo;

                COMMIT;
                vres := '0';
                vmsg := '0';
            ELSE
                vres := '-1';
                vmsg :=
                    'El Financiador tiene bienes asignados y NO puede ser ELIMINADO';
            END IF;
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe el Financiador';
        WHEN OTHERS
        THEN
            vres := '1';

            IF SQLCODE = -2292
            THEN
                vmsg :=
                    'Restriccion de integridad : No se puede eliminar el Financiador';
            ELSE
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    FUNCTION listardetdocumentos (vdoc_codfin   IN VARCHAR2,
                                  vdoc_codreg   IN VARCHAR2,
                                  vdoc_tipdoc   IN VARCHAR2,
                                  vdoc_numero   IN NUMBER)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        IF vdoc_tipdoc = 'B'
        THEN
            OPEN cr FOR
                  SELECT   ddo_codfin,
                           ddo_codreg,
                           ddo_tipdoc,
                           ddo_numero,
                           ddo_item,
                              ddo_codrubactual
                           || '-'
                           || ddo_codregactual
                           || '-'
                           || TO_CHAR (ddo_codigo, '00000')
                           || ' '
                           || grp_descripcion,
                           mot_descripcion,
                           act_descripcion
                    FROM   det_documentos,
                           activos,
                           tiposbaja,
                           grupos
                   WHERE       ddo_codfin = vdoc_codfin
                           AND ddo_codreg = vdoc_codreg
                           AND ddo_tipdoc = vdoc_tipdoc
                           AND ddo_gestion = xgestion
                           AND ddo_numero = vdoc_numero
                           AND ddo_estado = 'A'
                           AND ddo_codrubactual = act_codrub
                           AND ddo_codregactual = act_codreg
                           AND ddo_codigo = act_codigo
                           AND mot_codigo = ddo_codmot
                           AND grp_codigo = act_codgrp
                           AND grp_codrub = act_codrub
                ORDER BY   ddo_item;
        ELSE
            OPEN cr FOR
                  SELECT   ddo_codfin,
                           ddo_codreg,
                           ddo_tipdoc,
                           ddo_numero,
                           ddo_item,
                              ddo_codrubactual
                           || '-'
                           || ddo_codregactual
                           || '-'
                           || TO_CHAR (ddo_codigo, '00000')
                           || ' '
                           || grp_descripcion,
                           ofi_descripcion,
                           act_descripcion
                    FROM   det_documentos,
                           documentos,
                           activos,
                           grupos,
                           oficinas
                   WHERE       ddo_codfin = vdoc_codfin
                           AND ddo_codreg = vdoc_codreg
                           AND ddo_tipdoc = vdoc_tipdoc
                           AND ddo_gestion = xgestion
                           AND ddo_numero = vdoc_numero
                           AND ddo_estado = 'A'
                           AND ddo_codfin = doc_codfin
                           AND ddo_codreg = doc_codreg
                           AND ddo_tipdoc = doc_tipdoc
                           AND ddo_gestion = doc_gestion
                           AND ddo_numero = doc_numero
                           AND ddo_codrubactual = act_codrub
                           AND ddo_codregactual = act_codreg
                           AND ddo_codigo = act_codigo
                           AND grp_codigo = act_codgrp
                           AND grp_codrub = act_codrub
                           AND ofi_codigo = ddo_codofiactual
                           AND ofi_codreg = doc_codregdestino
                ORDER BY   ddo_item;
        END IF;

        RETURN cr;
    END;

    FUNCTION listardetdocumentos2 (vdoc_codfin   IN VARCHAR2,
                                   vdoc_codreg   IN VARCHAR2,
                                   vdoc_tipdoc   IN VARCHAR2,
                                   vdoc_numero   IN NUMBER)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        IF vdoc_tipdoc = 'B'
        THEN
            OPEN cr FOR
                  SELECT   ddo_codfin,
                           ddo_codreg,
                           ddo_tipdoc,
                           ddo_numero,
                           ddo_item,
                              ddo_codrubactual
                           || '-'
                           || ddo_codregactual
                           || '-'
                           || ddo_codigo,
                           mot_descripcion,
                           grp_descripcion || ' : ' || act_descripcion
                               act_descripcion,
                           act_codanterior,
                           desestado
                    FROM   det_documentos,
                           activos,
                           tiposbaja,
                           revaluos,
                           estados,
                           grupos
                   WHERE       ddo_codfin = vdoc_codfin
                           AND ddo_codreg = vdoc_codreg
                           AND ddo_tipdoc = vdoc_tipdoc
                           AND ddo_gestion = xgestion
                           AND ddo_numero = vdoc_numero
                           AND ddo_estado = 'A'
                           AND ddo_codrubactual = act_codrub
                           AND ddo_codregactual = act_codreg
                           AND ddo_codigo = act_codigo
                           AND mot_codigo = ddo_codmot
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_correlmre = 0
                           AND rev_numrevaluo = 0
                           AND rev_estadoactivo = estado
                           AND act_codgrp = grp_codigo
                           AND act_codrub = grp_codrub
                ORDER BY   ddo_item;
        ELSE
            OPEN cr FOR
                  SELECT   ddo_codfin,
                           ddo_codreg,
                           ddo_tipdoc,
                           ddo_numero,
                           ddo_item,
                              ddo_codrubactual
                           || '-'
                           || ddo_codregactual
                           || '-'
                           || ddo_codigo,
                           NULL,
                           grp_descripcion || ' : ' || act_descripcion
                               act_descripcion,
                           act_codanterior,
                           desestado
                    FROM   det_documentos,
                           activos,
                           revaluos,
                           estados,
                           grupos
                   WHERE       ddo_codfin = vdoc_codfin
                           AND ddo_codreg = vdoc_codreg
                           AND ddo_tipdoc = vdoc_tipdoc
                           AND ddo_gestion = xgestion
                           AND ddo_numero = vdoc_numero
                           AND ddo_estado = 'A'
                           AND ddo_codrubactual = act_codrub
                           AND ddo_codregactual = act_codreg
                           AND ddo_codigo = act_codigo
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_correlmre = 0
                           AND rev_numrevaluo = 0
                           AND rev_estadoactivo = estado
                           AND act_codgrp = grp_codigo
                           AND act_codrub = grp_codrub
                ORDER BY   ddo_item;
        END IF;

        RETURN cr;
    END;

    FUNCTION listarfinanciadores
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   fin_codigo, fin_descripcion
                FROM   financiadores
               WHERE   fin_estado = 'A'
            ORDER BY   fin_codigo;

        RETURN cr;
    END;

    PROCEDURE insertarfuncionarios (vfun_codigo        IN     VARCHAR2,
                                    vfun_descripcion   IN     VARCHAR2,
                                    vfun_cargo         IN     VARCHAR2,
                                    vfun_codofi        IN     VARCHAR2,
                                    vfun_codreg        IN     VARCHAR2,
                                    vfun_usuario       IN     VARCHAR2,
                                    vfun_codfin        IN     VARCHAR2,
                                    vfun_correo        IN     VARCHAR2,
                                    vfun_estado        IN     VARCHAR2,
                                    vestado            IN     NUMBER,
                                    vres                  OUT NUMBER,
                                    vmsg                  OUT VARCHAR2)
    IS
        ccant        NUMBER;
        ccant1       NUMBER;
        cfuncodreg   VARCHAR2 (10);
    BEGIN
        IF vestado = 1
        THEN                                             /*Insertar Registro*/
            INSERT INTO funcionarios (fun_codigo,
                                      fun_descripcion,
                                      fun_cargo,
                                      fun_codofi,
                                      fun_codreg,
                                      fun_fecalta,
                                      fun_usuario,
                                      fun_estado,
                                      fun_codfin,
                                      fun_correo)
              VALUES   (vfun_codigo,
                        vfun_descripcion,
                        vfun_cargo,
                        vfun_codofi,
                        vfun_codreg,
                        SYSDATE,
                        vfun_usuario,
                        'A',
                        vfun_codfin,
                        vfun_correo);

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 2
        THEN                                            /*Modificar Registro*/
            ccant := 0;
            ccant1 := 0;

            SELECT   fun_codreg
              INTO   cfuncodreg
              FROM   funcionarios
             WHERE   fun_codigo = vfun_codigo;

            SELECT   COUNT (1)
              INTO   ccant1
              FROM   (  SELECT   ofi_codigo
                          FROM   oficinas
                         WHERE       ofi_codigo = vfun_codofi
                                 AND ofi_codreg = vfun_codreg
                                 AND ofi_estado = 'A'
                      GROUP BY   ofi_codigo);

            IF vfun_codreg <> cfuncodreg
            THEN
                SELECT   COUNT (1)
                  INTO   ccant
                  FROM   (  SELECT   act_codrub, act_codreg, act_codigo
                              FROM   activos, funcionarios
                             WHERE       act_codfun = fun_codigo
                                     AND act_estado = 'A'
                                     AND fun_estado = 'A'
                                     AND act_codfun = vfun_codigo
                          GROUP BY   act_codrub, act_codreg, act_codigo);
            END IF;

            IF ccant = 0 AND ccant1 > 0
            THEN
                UPDATE   funcionarios
                   SET   fun_descripcion = vfun_descripcion,
                         fun_cargo = vfun_cargo,
                         fun_codreg = vfun_codreg,
                         fun_codofi = vfun_codofi,
                         fun_codfin = vfun_codfin,
                         fun_correo = vfun_correo,
                         fun_estado = vfun_estado,
                         fun_fecmodi = SYSDATE
                 WHERE   fun_codigo = vfun_codigo;

                COMMIT;
                vres := '0';
                vmsg := '0';
            ELSE
                IF ccant1 = 0
                THEN
                    vres := '-1';
                    vmsg := 'La Oficina No Corresponde a la Regional Destino';
                ELSE
                    vres := '-1';
                    vmsg :=
                        'El Funcionario tiene bienes asignados en la Regional Origen';
                END IF;
            END IF;
        ELSIF vestado = 3
        THEN                                             /*Eliminar Registro*/
            UPDATE   funcionarios
               SET   fun_estado = 'B', fun_fecmodi = SYSDATE
             WHERE   fun_codigo = vfun_codigo;

            COMMIT;
            vres := '0';
            vmsg := '0';
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe el Funcionario';
        WHEN OTHERS
        THEN
            vres := '1';

            IF SQLCODE = -2292
            THEN
                vmsg :=
                    'Restriccion de integridad : No se puede eliminar el Funcionario';
            ELSE
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    FUNCTION listarfuncionarios (vcod_reg IN VARCHAR2)
        RETURN cursortype
    IS
        cr       cursortype;
        v_cant   NUMBER;
    BEGIN
        SELECT   COUNT (1)
          INTO   v_cant
          FROM   funcionarios, oficinas, regionales
         WHERE       fun_codofi = ofi_codigo
                 AND fun_codreg = ofi_codreg
                 AND fun_codreg = reg_codigo
                 AND fun_codreg = vcod_reg;

        IF v_cant > 0
        THEN
            OPEN cr FOR
                  SELECT   fun_codigo,
                           fun_descripcion,
                           fun_cargo,
                           fun_codofi,
                           ofi_descripcion,
                           fun_codreg,
                           reg_descripcion,
                           fun_correo,
                           fun_codfin,
                           fin_descripcion,
                           fun_estado
                    FROM   funcionarios,
                           oficinas,
                           regionales,
                           financiadores
                   WHERE       fun_codofi = ofi_codigo
                           AND fun_codreg = ofi_codreg
                           AND fun_codreg = reg_codigo
                           AND fun_codreg = vcod_reg
                           AND fun_codfin = fin_codigo
                ORDER BY   fun_descripcion;
        /*ELSE
           OPEN cr FOR
              SELECT   fun_codigo, fun_descripcion, fun_cargo, fun_codofi,
                       ofi_descripcion, fun_codreg, reg_descripcion,
                       fun_correo
                  FROM funcionarios, oficinas, regionales
                 WHERE fun_estado = 'A'
                   AND fun_codofi = ofi_codigo
                   AND fun_codreg = ofi_codreg
                   AND fun_codreg = reg_codigo
                   AND fun_codigo = reg_codfun
                   AND reg_codigo = '01'
              ORDER BY fun_descripcion;*/
        END IF;

        RETURN cr;
    END;

    FUNCTION listarfuncionariosf (vcod_reg IN VARCHAR2, vcod_fin IN VARCHAR2)
        RETURN cursortype
    IS
        cr       cursortype;
        v_cant   NUMBER;
    BEGIN
        SELECT   COUNT (1)
          INTO   v_cant
          FROM   funcionarios, oficinas, regionales
         WHERE       fun_codofi = ofi_codigo
                 AND fun_codreg = ofi_codreg
                 AND fun_codreg = reg_codigo
                 AND fun_codreg = vcod_reg
                 AND fun_codfin = vcod_fin;

        IF v_cant > 0
        THEN
            OPEN cr FOR
                  SELECT   fun_codigo,
                           fun_descripcion,
                           fun_cargo,
                           fun_codofi,
                           ofi_descripcion,
                           fun_codreg,
                           reg_descripcion,
                           fun_correo,
                           fun_codfin,
                           fin_descripcion,
                           fun_estado
                    FROM   funcionarios,
                           oficinas,
                           regionales,
                           financiadores
                   WHERE       fun_codofi = ofi_codigo
                           AND fun_codreg = ofi_codreg
                           AND fun_codreg = reg_codigo
                           AND fun_codreg = vcod_reg
                           AND fun_codfin = fin_codigo
                           AND fun_codfin = vcod_fin
                ORDER BY   fun_descripcion;
        END IF;

        RETURN cr;
    END;

    FUNCTION listarfuncionariosfa (vcod_reg   IN VARCHAR2,
                                   vcod_fin   IN VARCHAR2)
        RETURN cursortype
    IS
        cr       cursortype;
        v_cant   NUMBER;
    BEGIN
        SELECT   COUNT (1)
          INTO   v_cant
          FROM   funcionarios, oficinas, regionales
         WHERE       fun_codofi = ofi_codigo
                 AND fun_codreg = ofi_codreg
                 AND fun_codreg = reg_codigo
                 AND fun_codreg = vcod_reg
                 AND fun_codfin = vcod_fin
                 AND fun_estado = 'A';

        IF v_cant > 0
        THEN
            OPEN cr FOR
                  SELECT   fun_codigo,
                           fun_descripcion,
                           fun_cargo,
                           fun_codofi,
                           ofi_descripcion,
                           fun_codreg,
                           reg_descripcion,
                           fun_correo,
                           fun_codfin,
                           fin_descripcion,
                           fun_estado
                    FROM   funcionarios,
                           oficinas,
                           regionales,
                           financiadores
                   WHERE       fun_codofi = ofi_codigo
                           AND fun_codreg = ofi_codreg
                           AND fun_codreg = reg_codigo
                           AND fun_codreg = vcod_reg
                           AND fun_codfin = fin_codigo
                           AND fun_codfin = vcod_fin
                           AND fun_estado = 'A'
                ORDER BY   fun_descripcion;
        END IF;

        RETURN cr;
    END;

    FUNCTION listarfuncionariosa (vcod_reg IN VARCHAR2, vcod_fin IN VARCHAR2)
        RETURN cursortype
    IS
        cr       cursortype;
        v_cant   NUMBER;
    BEGIN
        IF vcod_fin = '01'
        THEN
            SELECT   COUNT (1)
              INTO   v_cant
              FROM   funcionarios, oficinas, regionales
             WHERE       fun_codofi = ofi_codigo
                     AND fun_codreg = ofi_codreg
                     AND fun_codreg = reg_codigo
                     AND fun_codreg = vcod_reg
                     AND fun_estado = 'A'
                     AND fun_codfin < '02'
                     AND fun_codigo < '99900';

            IF v_cant > 0
            THEN
                OPEN cr FOR
                      SELECT   fun_codigo,
                               fun_descripcion,
                               fun_cargo,
                               fun_codofi,
                               ofi_descripcion,
                               fun_codreg,
                               reg_descripcion,
                               fun_correo,
                               fun_codfin,
                               fun_estado
                        FROM   funcionarios, oficinas, regionales
                       WHERE       fun_codofi = ofi_codigo
                               AND fun_codreg = ofi_codreg
                               AND fun_codreg = reg_codigo
                               AND fun_codreg = vcod_reg
                               AND fun_estado = 'A'
                               AND fun_codfin < '02'
                               AND fun_codigo < '99900'
                    ORDER BY   fun_descripcion;
            END IF;
        ELSE
            SELECT   COUNT (1)
              INTO   v_cant
              FROM   funcionarios, oficinas, regionales
             WHERE       fun_codofi = ofi_codigo
                     AND fun_codreg = ofi_codreg
                     AND fun_codreg = reg_codigo
                     AND fun_codreg = vcod_reg
                     AND fun_estado = 'A'
                     AND fun_codfin = vcod_fin
                     AND fun_codigo < '99900';

            IF v_cant > 0
            THEN
                OPEN cr FOR
                      SELECT   fun_codigo,
                               fun_descripcion,
                               fun_cargo,
                               fun_codofi,
                               ofi_descripcion,
                               fun_codreg,
                               reg_descripcion,
                               fun_correo,
                               fun_codfin,
                               fun_estado
                        FROM   funcionarios, oficinas, regionales
                       WHERE       fun_codofi = ofi_codigo
                               AND fun_codreg = ofi_codreg
                               AND fun_codreg = reg_codigo
                               AND fun_codreg = vcod_reg
                               AND fun_estado = 'A'
                               AND fun_codfin = vcod_fin
                               AND fun_codigo < '99900'
                    ORDER BY   fun_descripcion;
            END IF;
        END IF;

        RETURN cr;
    END;

    FUNCTION listarfuncionarios2 (vcod_reg IN VARCHAR2, vaux IN VARCHAR2)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        IF vaux = '00'
        THEN
            OPEN cr FOR
                  SELECT   fun_codigo,
                           fun_descripcion,
                           fun_cargo,
                           fun_codofi,
                           ofi_descripcion,
                           fun_codreg,
                           reg_descripcion
                    FROM   funcionarios, oficinas, regionales
                   WHERE       fun_estado = 'A'
                           AND fun_codofi = ofi_codigo
                           AND fun_codreg = ofi_codreg
                           AND fun_codreg = reg_codigo
                ORDER BY   fun_descripcion;
        ELSE
            OPEN cr FOR
                  SELECT   fun_codigo,
                           fun_descripcion,
                           fun_cargo,
                           fun_codofi,
                           ofi_descripcion,
                           fun_codreg,
                           reg_descripcion
                    FROM   funcionarios, oficinas, regionales
                   WHERE       fun_estado = 'A'
                           AND fun_codofi = ofi_codigo
                           AND fun_codreg = ofi_codreg
                           AND fun_codreg = reg_codigo
                           AND fun_codreg = vcod_reg
                ORDER BY   fun_descripcion;
        END IF;

        RETURN cr;
    END;

    FUNCTION listarfuncionarios3 (vcod_reg   IN VARCHAR2,
                                  vcod_fin   IN VARCHAR2,
                                  vaux       IN VARCHAR2)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        IF vaux = '00'
        THEN
            OPEN cr FOR
                  SELECT   fun_codigo,
                           fun_descripcion,
                           fun_cargo,
                           fun_codofi,
                           ofi_descripcion,
                           fun_codreg,
                           reg_descripcion
                    FROM   funcionarios, oficinas, regionales
                   WHERE       fun_estado = 'A'
                           AND fun_codofi = ofi_codigo
                           AND fun_codreg = ofi_codreg
                           AND fun_codreg = reg_codigo
                           AND 0 <
                                  (SELECT   COUNT (1)
                                     FROM   activos
                                    WHERE       act_codfin = vcod_fin
                                            AND act_codregional = vcod_reg
                                            AND act_codfun = fun_codigo
                                            AND act_estado = 'A'
                                            AND act_propiedad = 'S')
                ORDER BY   fun_descripcion;
        ELSE
            OPEN cr FOR
                  SELECT   fun_codigo,
                           fun_descripcion,
                           fun_cargo,
                           fun_codofi,
                           ofi_descripcion,
                           fun_codreg,
                           reg_descripcion
                    FROM   funcionarios, oficinas, regionales
                   WHERE       fun_estado = 'A'
                           AND fun_codofi = ofi_codigo
                           AND fun_codreg = ofi_codreg
                           AND fun_codreg = reg_codigo
                           AND fun_codreg = vcod_reg
                           AND 0 <
                                  (SELECT   COUNT (1)
                                     FROM   activos
                                    WHERE       act_codfin = vcod_fin
                                            AND act_codregional = vcod_reg
                                            AND act_codfun = fun_codigo
                                            AND act_estado = 'A'
                                            AND act_propiedad = 'S')
                ORDER BY   fun_descripcion;
        END IF;

        RETURN cr;
    END;

    FUNCTION listarfuncionarios4 (vcod_reg IN VARCHAR2)
        RETURN cursortype
    IS
        cr       cursortype;
        v_cant   NUMBER;
    BEGIN
        OPEN cr FOR
              SELECT   fun_codigo,
                       fun_descripcion,
                       fun_cargo,
                       fun_codofi,
                       ofi_descripcion,
                       fun_codreg,
                       reg_descripcion,
                       fun_correo,
                       fun_estado
                FROM   funcionarios, oficinas, regionales
               WHERE       fun_estado = 'A'
                       AND fun_codofi = ofi_codigo
                       AND fun_codreg = ofi_codreg
                       AND fun_codreg = reg_codigo
                       AND fun_codreg = vcod_reg
                       AND LENGTH (fun_codigo) = 5
            ORDER BY   fun_descripcion;

        RETURN cr;
    END;

    FUNCTION listarfuncionariosr (vcod_reg IN VARCHAR2, vcod_fin IN VARCHAR2)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   fun_codigo,
                       fun_descripcion,
                       fun_cargo,
                       fun_codofi,
                       ofi_descripcion,
                       fun_codreg,
                       reg_descripcion
                FROM   funcionarios, oficinas, regionales
               WHERE       fun_codigo >= '99900'
                       AND fun_estado = 'A'
                       AND fun_codreg = vcod_reg
                       AND fun_codfin = vcod_fin
                       AND fun_codofi = ofi_codigo
                       AND fun_codreg = ofi_codreg
                       AND fun_codreg = reg_codigo
            /*  AND fun_codigo IN (
                             SELECT reg_codfun
                               FROM regionales
                              WHERE reg_estado = 'A'
                                    AND reg_codfun IS NOT NULL) */
            ORDER BY   fun_descripcion;

        RETURN cr;
    END;

    FUNCTION listarfuncionariosr1 (vcod_reg   IN VARCHAR2,
                                   vcod_fin   IN VARCHAR2)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   fun_codigo,
                       fun_descripcion,
                       fun_cargo,
                       fun_codofi,
                       ofi_descripcion,
                       fun_codreg,
                       reg_descripcion
                FROM   funcionarios, oficinas, regionales
               WHERE       fun_codigo >= '99900'
                       AND fun_codigo <= '99999'
                       AND fun_estado = 'A'
                       AND SUBSTR (fun_codigo, 5, 1) <> SUBSTR (vcod_reg, 2, 1)
                       AND fun_codfin = vcod_fin
                       AND fun_codofi = ofi_codigo
                       AND fun_codreg = ofi_codreg
                       AND fun_codreg = reg_codigo
            ORDER BY   fun_descripcion;

        RETURN cr;
    END;

    FUNCTION listarfuncionariosr2 (vcod_reg   IN VARCHAR2,
                                   vcod_fin   IN VARCHAR2)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        IF vcod_reg = '01' AND vcod_fin = '01'
        THEN
            OPEN cr FOR
                  SELECT   fun_codigo,
                           fun_descripcion,
                           fun_cargo,
                           fun_codofi,
                           ofi_descripcion,
                           fun_codreg,
                           reg_descripcion
                    FROM   funcionarios, oficinas, regionales
                   WHERE       fun_codigo >= '99900'
                           AND fun_codigo <= '99999'
                           AND fun_estado = 'A'
                           AND fun_codfin <> vcod_fin
                           AND fun_codofi = ofi_codigo
                           AND fun_codreg = ofi_codreg
                           AND fun_codreg = reg_codigo
                ORDER BY   fun_descripcion;
        ELSE
            IF vcod_fin = '01'
            THEN
                OPEN cr FOR
                      SELECT   fun_codigo,
                               fun_descripcion,
                               fun_cargo,
                               fun_codofi,
                               ofi_descripcion,
                               fun_codreg,
                               reg_descripcion
                        FROM   funcionarios, oficinas, regionales
                       WHERE       fun_codigo >= '99920'
                               AND fun_codigo <= '99999'
                               AND fun_estado = 'A'
                               AND fun_codfin <> vcod_fin
                               AND fun_codreg = vcod_reg
                               AND fun_codofi = ofi_codigo
                               AND fun_codreg = ofi_codreg
                               AND fun_codreg = reg_codigo
                    ORDER BY   fun_descripcion;
            ELSE
                OPEN cr FOR
                      SELECT   fun_codigo,
                               fun_descripcion,
                               fun_cargo,
                               fun_codofi,
                               ofi_descripcion,
                               fun_codreg,
                               reg_descripcion
                        FROM   funcionarios, oficinas, regionales
                       WHERE   (fun_codigo = '99901'
                                OR (SUBSTR (fun_codigo, 1, 3) = '999'
                                    AND SUBSTR (fun_codigo, 5, 1) =
                                           SUBSTR (vcod_reg, 2, 1)
                                    AND fun_codfin <> vcod_fin))
                               AND (fun_codfin = '01' OR fun_codfin = vcod_fin)
                               AND (fun_codreg = '01' OR fun_codreg = vcod_reg)
                               AND fun_estado = 'A'
                               AND fun_codofi = ofi_codigo
                               AND fun_codreg = ofi_codreg
                               AND fun_codreg = reg_codigo
                    ORDER BY   fun_descripcion;
            END IF;
        END IF;

        RETURN cr;
    END;

    FUNCTION obtener_correo (vcod_fun IN VARCHAR2)
        RETURN VARCHAR2
    IS
        correo   VARCHAR2 (50);
    BEGIN
        SELECT   fun_correo
          INTO   correo
          FROM   funcionarios
         WHERE       fun_estado = 'A'
                 AND fun_codigo = vcod_fun
                 AND fun_correo IS NOT NULL;

        RETURN correo;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            correo := 'frobles@aduana.gov.bo';
            RETURN correo;
    END;

    PROCEDURE insertargrupos (vgrp_codigo        IN     VARCHAR2,
                              vgrp_descripcion   IN     VARCHAR2,
                              vgrp_codrub        IN     VARCHAR2,
                              vgrp_usuario       IN     VARCHAR2,
                              vgrp_estado        IN     VARCHAR2,
                              vestado            IN     NUMBER,
                              vres                  OUT NUMBER,
                              vmsg                  OUT VARCHAR2)
    IS
    BEGIN
        IF vestado = 1
        THEN                                             /*Insertar Registro*/
            INSERT INTO grupos (grp_codigo,
                                grp_descripcion,
                                grp_codrub,
                                grp_fecalta,
                                grp_usuario,
                                grp_estado)
              VALUES   (vgrp_codigo,
                        vgrp_descripcion,
                        vgrp_codrub,
                        SYSDATE,
                        vgrp_usuario,
                        'A');

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 2
        THEN                                            /*Modificar Registro*/
            UPDATE   grupos
               SET   grp_descripcion = vgrp_descripcion,
                     grp_estado = vgrp_estado,
                     grp_fecmodi = SYSDATE
             WHERE   grp_codigo = vgrp_codigo AND grp_codrub = vgrp_codrub;

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 3
        THEN                                             /*Eliminar Registro*/
            UPDATE   grupos
               SET   grp_estado = 'B', grp_fecmodi = SYSDATE
             WHERE   grp_codigo = vgrp_codigo AND grp_codrub = vgrp_codrub;

            COMMIT;
            vres := '0';
            vmsg := '0';
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe el Grupo';
        WHEN OTHERS
        THEN
            vres := '1';

            IF SQLCODE = -2292
            THEN
                vmsg :=
                    'Restriccion de integridad : No se puede eliminar el Grupo';
            ELSE
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    PROCEDURE insertaroficinas (vofi_codigo        IN     VARCHAR2,
                                vofi_descripcion   IN     VARCHAR2,
                                vofi_codreg        IN     VARCHAR2,
                                vofi_codubi        IN     VARCHAR2,
                                vofi_usuario       IN     VARCHAR2,
                                vestado            IN     NUMBER,
                                vres                  OUT NUMBER,
                                vmsg                  OUT VARCHAR2)
    IS
        ccant   NUMERIC;
    BEGIN
        IF vestado = 1
        THEN                                             /*Insertar Registro*/
            INSERT INTO oficinas (ofi_codigo,
                                  ofi_descripcion,
                                  ofi_codreg,
                                  ofi_codubi,
                                  ofi_fecalta,
                                  ofi_usuario,
                                  ofi_estado)
              VALUES   (vofi_codigo,
                        vofi_descripcion,
                        vofi_codreg,
                        vofi_codubi,
                        SYSDATE,
                        vofi_usuario,
                        'A');

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 2
        THEN                                            /*Modificar Registro*/
            UPDATE   oficinas
               SET   ofi_descripcion = vofi_descripcion,
                     ofi_codubi = vofi_codubi,
                     ofi_fecmodi = SYSDATE
             WHERE   ofi_codigo = vofi_codigo AND ofi_codreg = vofi_codreg;

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 3
        THEN
            ccant := 0;

            SELECT   COUNT (1)
              INTO   ccant
              FROM   (  SELECT   act_codrub, act_codreg, act_codigo
                          FROM   activos
                         WHERE       act_codofi = vofi_codigo
                                 AND act_codreg = vofi_codreg
                                 AND act_estado = 'A'
                      GROUP BY   act_codrub, act_codreg, act_codigo);

            /*Eliminar Registro*/
            IF ccant = 0
            THEN
                UPDATE   oficinas
                   SET   ofi_estado = 'B', ofi_fecmodi = SYSDATE
                 WHERE   ofi_codigo = vofi_codigo
                         AND ofi_codreg = vofi_codreg;

                COMMIT;
                vres := '0';
                vmsg := '0';
            ELSE
                vres := '-1';
                vmsg :=
                    'La Oficina tiene bienes asignados y NO puede ser ELIMINADA';
            END IF;
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe la Oficina';
        WHEN OTHERS
        THEN
            vres := '1';

            IF SQLCODE = -2292
            THEN
                vmsg :=
                    'Restriccion de integridad : No se puede eliminar la Oficina';
            ELSE
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    FUNCTION listaroficinas (vcod_reg IN VARCHAR2)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   ofi_codigo,
                       ofi_descripcion,
                       ofi_codreg,
                       reg_descripcion,
                       ofi_codubi,
                       ubi_descripcion
                FROM   oficinas, regionales, ubicaciones
               WHERE       ofi_estado = 'A'
                       AND ofi_codreg = reg_codigo
                       AND ofi_codubi = ubi_codigo
                       AND ofi_codreg = ubi_codreg
                       AND ofi_codreg = vcod_reg
            ORDER BY   ofi_descripcion;

        RETURN cr;
    END;

    FUNCTION listaroficinas2 (vcod_reg IN VARCHAR2, vofi_codigo IN VARCHAR2)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        IF vofi_codigo IS NULL
        THEN
            OPEN cr FOR
                  SELECT   ofi_codigo,
                           ofi_descripcion,
                           ofi_codreg,
                           reg_descripcion,
                           ofi_codubi,
                           ubi_descripcion
                    FROM   oficinas, regionales, ubicaciones
                   WHERE       ofi_estado = 'A'
                           AND ofi_codreg = reg_codigo
                           AND ofi_codubi = ubi_codigo
                           AND ofi_codreg = ubi_codreg
                           AND ofi_codreg = vcod_reg
                ORDER BY   ofi_descripcion;
        ELSE
            OPEN cr FOR
                SELECT   ofi_codigo,
                         ofi_descripcion,
                         ofi_codreg,
                         reg_descripcion,
                         ofi_codubi,
                         ubi_descripcion
                  FROM   oficinas, regionales, ubicaciones
                 WHERE       ofi_estado = 'A'
                         AND ofi_codreg = reg_codigo
                         AND ofi_codubi = ubi_codigo
                         AND ofi_codreg = ubi_codreg
                         AND ofi_codreg = vcod_reg
                         AND ofi_codigo = vofi_codigo
                UNION ALL
                SELECT   ofi_codigo,
                         ofi_descripcion,
                         ofi_codreg,
                         reg_descripcion,
                         ofi_codubi,
                         ubi_descripcion
                  FROM   (  SELECT   ofi_codigo,
                                     ofi_descripcion,
                                     ofi_codreg,
                                     reg_descripcion,
                                     ofi_codubi,
                                     ubi_descripcion
                              FROM   oficinas, regionales, ubicaciones
                             WHERE       ofi_estado = 'A'
                                     AND ofi_codreg = reg_codigo
                                     AND ofi_codubi = ubi_codigo
                                     AND ofi_codreg = ubi_codreg
                                     AND ofi_codreg = vcod_reg
                                     AND ofi_codigo <> vofi_codigo
                          ORDER BY   ofi_descripcion) tbl;
        END IF;

        RETURN cr;
    END;



    FUNCTION listaroficinas1 (vcod_reg IN VARCHAR2)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   ofi_codigo,
                       reg_descripcion || '-' || ofi_descripcion,
                       ofi_codreg,
                       reg_descripcion
                FROM   oficinas, regionales
               WHERE   ofi_estado = 'A' AND ofi_codreg = reg_codigo
            ORDER BY   reg_descripcion, ofi_descripcion;

        RETURN cr;
    END;

    PROCEDURE insertarpartidas (vpar_codigo        IN     VARCHAR2,
                                vpar_descripcion   IN     VARCHAR2,
                                vpar_usuario       IN     VARCHAR2,
                                vestado            IN     NUMBER,
                                vres                  OUT NUMBER,
                                vmsg                  OUT VARCHAR2)
    IS
        ccant   NUMBER;
    BEGIN
        IF vestado = 1
        THEN                                             /*Insertar Registro*/
            INSERT INTO partidas (par_codigo,
                                  par_descripcion,
                                  par_fecalta,
                                  par_usuario,
                                  par_estado)
              VALUES   (vpar_codigo,
                        vpar_descripcion,
                        SYSDATE,
                        vpar_usuario,
                        'A');

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 2
        THEN                                            /*Modificar Registro*/
            UPDATE   partidas
               SET   par_descripcion = vpar_descripcion,
                     par_fecmodi = SYSDATE
             WHERE   par_codigo = vpar_codigo;

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 3
        THEN
            ccant := 0;

            SELECT   COUNT (1)
              INTO   ccant
              FROM   (  SELECT   act_codrub, act_codreg, act_codigo
                          FROM   activos
                         WHERE   act_codpar = vpar_codigo AND act_estado = 'A'
                      GROUP BY   act_codrub, act_codreg, act_codigo);

            /*Eliminar Registro*/
            IF ccant = 0
            THEN
                UPDATE   partidas
                   SET   par_estado = 'B', par_fecmodi = SYSDATE
                 WHERE   par_codigo = vpar_codigo;

                COMMIT;
                vres := '0';
                vmsg := '0';
            ELSE
                vres := '-1';
                vmsg :=
                    'La Partida tiene bienes asignados y NO puede ser ELIMINADA';
            END IF;
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe la Partida';
        WHEN OTHERS
        THEN
            IF SQLCODE = -2292
            THEN
                vres := '-1';
                vmsg := 'Partida Asignada a un Rubro';
            ELSE
                vres := '1';
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    FUNCTION listarpartidas
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   par_codigo, par_descripcion
                FROM   partidas
               WHERE   par_estado = 'A'
            ORDER BY   par_codigo;

        RETURN cr;
    END;

    PROCEDURE insertarproyectos (vpry_codigo        IN     VARCHAR2,
                                 vpry_descripcion   IN     VARCHAR2,
                                 vpry_codfin        IN     VARCHAR2,
                                 vpry_usuario       IN     VARCHAR2,
                                 vestado            IN     NUMBER,
                                 vres                  OUT NUMBER,
                                 vmsg                  OUT VARCHAR2)
    IS
        ccant   NUMBER;
    BEGIN
        IF vestado = 1
        THEN                                             /*Insertar Registro*/
            INSERT INTO proyectos (pry_codigo,
                                   pry_descripcion,
                                   pry_codfin,
                                   pry_fecalta,
                                   pry_usuario,
                                   pry_estado)
              VALUES   (vpry_codigo,
                        vpry_descripcion,
                        NULL,
                        SYSDATE,
                        vpry_usuario,
                        'A');

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 2
        THEN                                            /*Modificar Registro*/
            UPDATE   proyectos
               SET   pry_descripcion = vpry_descripcion,
                     pry_codfin = vpry_codfin,
                     pry_fecmodi = SYSDATE
             WHERE   pry_codigo = vpry_codigo; --AND pry_codfin = vpry_codfin;

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 3
        THEN
            ccant := 0;

            SELECT   COUNT (1)
              INTO   ccant
              FROM   (  SELECT   act_codrub, act_codreg, act_codigo
                          FROM   activos
                         WHERE   act_codpry = vpry_codigo AND act_estado = 'A'
                      GROUP BY   act_codrub, act_codreg, act_codigo);

            /*Eliminar Registro*/
            IF ccant = 0
            THEN
                UPDATE   proyectos
                   SET   pry_estado = 'B', pry_fecmodi = SYSDATE
                 WHERE   pry_codigo = vpry_codigo;

                --AND pry_codfin = vpry_codfin;
                COMMIT;
                vres := '0';
                vmsg := '0';
            ELSE
                vres := '-1';
                vmsg :=
                    'El Proyecto tiene bienes asignados y NO puede ser ELIMINADO';
            END IF;
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe el Proyecto';
        WHEN OTHERS
        THEN
            vres := '1';

            IF SQLCODE = -2292
            THEN
                vmsg :=
                    'Restriccion de integridad : No se puede eliminar el Proyecto';
            ELSE
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    FUNCTION listarproyectos
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   pry_codigo, pry_descripcion
                FROM   proyectos
               WHERE   pry_estado = 'A'
            ORDER BY   pry_codigo;

        RETURN cr;
    END;

    FUNCTION listarproyectos2
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   pry_codigo, pry_descripcion
                FROM   proyectos
               WHERE   pry_estado = 'A'
            ORDER BY   pry_codigo;

        RETURN cr;
    END;

    PROCEDURE insertarregionales (vreg_codigo        IN     VARCHAR2,
                                  vreg_descripcion   IN     VARCHAR2,
                                  vreg_codfun        IN     VARCHAR2,
                                  vreg_usuario       IN     VARCHAR2,
                                  vestado            IN     NUMBER,
                                  vres                  OUT NUMBER,
                                  vmsg                  OUT VARCHAR2)
    IS
        cant    NUMBER;
        ccant   NUMBER;
    BEGIN
        IF vestado = 1 OR vestado = 2
        THEN
            SELECT   COUNT (1)
              INTO   cant
              FROM   oficinas
             WHERE   ofi_codigo = (SELECT   fun_codofi
                                     FROM   funcionarios
                                    WHERE   fun_codigo = vreg_codfun)
                     AND ofi_codreg = vreg_codigo;
        END IF;

        IF vestado = 1
        THEN                                             /*Insertar Registro*/
            INSERT INTO regionales (reg_codigo,
                                    reg_descripcion,
                                    reg_codfun,
                                    reg_fecalta,
                                    reg_usuario,
                                    reg_estado)
              VALUES   (vreg_codigo,
                        vreg_descripcion,
                        vreg_codfun,
                        SYSDATE,
                        vreg_usuario,
                        'A');

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 2
        THEN                                            /*Modificar Registro*/
            IF cant > 0
            THEN
                UPDATE   regionales
                   SET   reg_descripcion = vreg_descripcion,
                         reg_codfun = vreg_codfun,
                         reg_fecmodi = SYSDATE
                 WHERE   reg_codigo = vreg_codigo;

                COMMIT;
                vres := '0';
                vmsg := '0';
            ELSE
                vres := '-1';
                vmsg :=
                    'La oficina del funcionario no existe para la Regional';
            END IF;
        ELSIF vestado = 3
        THEN
            ccant := 0;

            SELECT   COUNT (1)
              INTO   ccant
              FROM   (  SELECT   act_codrub, act_codreg, act_codigo
                          FROM   activos
                         WHERE   act_codreg = vreg_codigo AND act_estado = 'A'
                      GROUP BY   act_codrub, act_codreg, act_codigo);

            IF ccant = 0
            THEN                                         /*Eliminar Registro*/
                UPDATE   regionales
                   SET   reg_estado = 'B', reg_fecmodi = SYSDATE
                 WHERE   reg_codigo = vreg_codigo;

                COMMIT;
                vres := '0';
                vmsg := '0';
            ELSE
                vres := '-1';
                vmsg :=
                    'El Proyecto tiene bienes asignados y NO puede ser ELIMINADO';
            END IF;
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe la Regional';
        WHEN OTHERS
        THEN
            vres := '1';

            IF SQLCODE = -2292
            THEN
                vmsg :=
                    'Restriccion de integridad : No se puede eliminar la Regional';
            ELSE
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    PROCEDURE insertarusuarios (vusu_codigo   IN     VARCHAR2,
                                vusu_carnet   IN     VARCHAR2,
                                vusu_codfun   IN     VARCHAR2,
                                vestado       IN     NUMBER,
                                vres             OUT NUMBER,
                                vmsg             OUT VARCHAR2)
    IS
    BEGIN
        IF vestado = 1
        THEN                                             /*Insertar Registro*/
            INSERT INTO usuarios (usu_codigo,
                                  usu_carnet,
                                  usu_codfun,
                                  usu_estado)
              VALUES   (vusu_codigo,
                        vusu_carnet,
                        vusu_codfun,
                        'A');

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 2
        THEN                                            /*Modificar Registro*/
            UPDATE   usuarios
               SET   usu_carnet = vusu_carnet, usu_codfun = vusu_codfun
             WHERE   usu_codigo = vusu_codigo;

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 3
        THEN                                             /*Eliminar Registro*/
            UPDATE   usuarios
               SET   usu_estado = 'B'
             WHERE   usu_codigo = vusu_codigo;

            COMMIT;
            vres := '0';
            vmsg := '0';
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe el Usuario';
        WHEN OTHERS
        THEN
            vres := '1';

            IF SQLCODE = -2292
            THEN
                vmsg :=
                    'Restriccion de integridad : No se puede eliminar el Usuario';
            ELSE
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    FUNCTION listarregionales
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   reg_codigo,
                       reg_descripcion,
                       reg_codfun,
                       fun_descripcion
                FROM   regionales, funcionarios
               WHERE   reg_estado = 'A' AND reg_codfun = fun_codigo(+)
            ORDER BY   reg_codigo;

        RETURN cr;
    END;

    FUNCTION listarusuarios
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   usu_codigo,
                       usu_carnet,
                       usu_codfun,
                       fun_descripcion
                FROM   usuarios, funcionarios
               WHERE   usu_estado = 'A' AND usu_codfun = fun_codigo
            ORDER BY   usu_codigo;

        RETURN cr;
    END;

    FUNCTION listarregionales_01
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   reg_codigo,
                       reg_descripcion,
                       reg_codfun,
                       fun_descripcion
                FROM   regionales, funcionarios
               WHERE       reg_estado = 'A'
                       AND reg_codfun = fun_codigo
                       AND reg_codigo = '01'
            ORDER BY   reg_codigo;

        RETURN cr;
    END;

    PROCEDURE insertarrubros (vrub_codigo        IN     VARCHAR2,
                              vrub_descripcion   IN     VARCHAR2,
                              vrub_vidaut        IN     NUMBER,
                              vrub_porcen        IN     NUMBER,
                              vrub_codpar        IN     VARCHAR2,
                              vrub_ctadep        IN     VARCHAR2,
                              vrub_ctadac        IN     VARCHAR2,
                              vrub_usuario       IN     VARCHAR2,
                              vestado            IN     NUMBER,
                              vres                  OUT NUMBER,
                              vmsg                  OUT VARCHAR2)
    IS
        ccant   NUMBER;
    BEGIN
        IF vestado = 1
        THEN                                             /*Insertar Registro*/
            INSERT INTO rubros (rub_codigo,
                                rub_descripcion,
                                rub_vidaut,
                                rub_porcen,
                                rub_codpar,
                                rub_ctadep,
                                rub_ctadac,
                                rub_fecalta,
                                rub_usuario,
                                rub_estado)
              VALUES   (vrub_codigo,
                        vrub_descripcion,
                        vrub_vidaut,
                        vrub_porcen,
                        vrub_codpar,
                        vrub_ctadep,
                        vrub_ctadac,
                        SYSDATE,
                        vrub_usuario,
                        'A');

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 2
        THEN                                            /*Modificar Registro*/
            UPDATE   rubros
               SET   rub_descripcion = vrub_descripcion,
                     rub_vidaut = vrub_vidaut,
                     rub_porcen = vrub_porcen,
                     rub_codpar = vrub_codpar,
                     rub_ctadep = vrub_ctadep,
                     rub_ctadac = vrub_ctadac,
                     rub_fecmodi = SYSDATE
             WHERE   rub_codigo = vrub_codigo;

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 3
        THEN                                             /*Eliminar Registro*/
            ccant := 0;

            SELECT   COUNT (1)
              INTO   ccant
              FROM   (  SELECT   act_codrub, act_codreg, act_codigo
                          FROM   activos
                         WHERE   act_codrub = vrub_codigo AND act_estado = 'A'
                      GROUP BY   act_codrub, act_codreg, act_codigo);

            IF ccant = 0
            THEN
                UPDATE   rubros
                   SET   rub_estado = 'B', rub_fecmodi = SYSDATE
                 WHERE   rub_codigo = vrub_codigo;

                COMMIT;
                vres := '0';
                vmsg := '0';
            ELSE
                vres := '-1';
                vmsg :=
                    'El Rubro tiene bienes asignados y NO puede ser ELIMINADO';
            END IF;
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe el Rubro';
        WHEN OTHERS
        THEN
            vres := '1';

            IF SQLCODE = -2292
            THEN
                vmsg :=
                    'Restriccion de integridad : No se puede eliminar el Rubro';
            ELSE
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    FUNCTION listargrupos (par IN NUMBER, vcod_rub IN VARCHAR2)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        IF par = 0
        THEN
            OPEN cr FOR
                  SELECT   grp_codigo,
                           grp_descripcion,
                           grp_codrub,
                           rub_descripcion,
                           grp_estado
                    FROM   grupos, rubros
                   WHERE   grp_codrub = vcod_rub AND rub_codigo = grp_codrub
                ORDER BY   grp_descripcion;
        ELSE
            IF par = 1
            THEN
                OPEN cr FOR
                      SELECT   grp_codigo,
                               grp_descripcion,
                               grp_codrub,
                               rub_descripcion,
                               grp_estado
                        FROM   grupos, rubros
                       WHERE   rub_codigo = grp_codrub
                    ORDER BY   rub_descripcion, grp_descripcion;
            ELSE
                OPEN cr FOR
                      SELECT   grp_codigo,
                               rub_descripcion || '-' || grp_descripcion,
                               grp_codrub,
                               rub_descripcion,
                               grp_estado
                        FROM   grupos, rubros
                       WHERE   grp_estado = 'A' AND rub_codigo = grp_codrub
                    ORDER BY   rub_descripcion, grp_descripcion;
            END IF;
        END IF;

        RETURN cr;
    END;

    FUNCTION listarrubros
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   rub_codigo,
                       rub_descripcion,
                       rub_vidaut,
                       rub_porcen,
                       rub_codpar,
                       par_descripcion,
                       rub_ctadep,
                       rub_ctadac
                FROM   rubros, partidas
               WHERE   rub_estado = 'A' AND rub_codpar = par_codigo
            ORDER BY   rub_codigo;

        RETURN cr;
    END;

    FUNCTION listarrubrosp
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   rub_codigo,
                       par_descripcion || '-' || rub_descripcion,
                       rub_vidaut,
                       rub_porcen,
                       rub_codpar,
                       par_descripcion,
                       rub_ctadep,
                       rub_ctadac
                FROM   rubros, partidas
               WHERE   rub_estado = 'A' AND rub_codpar = par_codigo
            ORDER BY   par_descripcion, rub_descripcion;

        RETURN cr;
    END;

    PROCEDURE insertarsecbarras (vbar_rubro    IN     VARCHAR2,
                                 vbar_codreg   IN     VARCHAR2,
                                 vbar_numero   IN     NUMBER,
                                 vestado       IN     NUMBER,
                                 vres             OUT NUMBER,
                                 vmsg             OUT VARCHAR2)
    IS
    BEGIN
        IF vestado = 1
        THEN                                             /*Insertar Registro*/
            INSERT INTO secbarras (bar_rubro, bar_codreg, bar_numero)
              VALUES   (vbar_rubro, vbar_codreg, vbar_numero);

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 3
        THEN                                             /*Eliminar Registro*/
            DELETE   secbarras
             WHERE       bar_rubro = vbar_rubro
                     AND bar_codreg = vbar_codreg
                     AND bar_numero = 0;

            COMMIT;
            vres := '0';
            vmsg := '0';
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe el Codigo de Barras';
        WHEN OTHERS
        THEN
            vres := '1';

            IF SQLCODE = -2292
            THEN
                vmsg :=
                    'Restriccion de integridad : No se puede eliminar el Codigo de Barras';
            ELSE
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    FUNCTION listarsecbarras (vcod_reg IN VARCHAR2)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   bar_rubro,
                       rub_descripcion,
                       TO_CHAR (rub_fecalta, 'dd/mm/yyyy') rub_fecalta,
                       bar_codreg,
                       reg_descripcion,
                       bar_numero
                FROM   secbarras, rubros, regionales
               WHERE       bar_rubro = rub_codigo
                       AND bar_codreg = reg_codigo
                       AND bar_codreg = vcod_reg
            ORDER BY   bar_rubro, bar_codreg;

        RETURN cr;
    END;

    PROCEDURE insertarsectiposdoc (vstd_codfin    IN     VARCHAR2,
                                   vstd_codreg    IN     VARCHAR2,
                                   vstd_tipdoc    IN     VARCHAR2,
                                   vstd_numero    IN     NUMBER,
                                   vstd_usuario   IN     VARCHAR2,
                                   vestado        IN     NUMBER,
                                   vres              OUT NUMBER,
                                   vmsg              OUT VARCHAR2)
    IS
        ccant   NUMBER;
    BEGIN
        IF vestado = 1
        THEN
            ccant := 0;

            SELECT   COUNT (1)
              INTO   ccant
              FROM   (  SELECT   std_codfin,
                                 std_codreg,
                                 std_tipdoc,
                                 std_gestion
                          FROM   sectiposdoc
                         WHERE       std_codfin = vstd_codfin
                                 AND std_codreg = vstd_codreg
                                 AND std_tipdoc = vstd_tipdoc
                                 AND std_gestion = xgestion
                                 AND std_estado = 'B'
                      GROUP BY   std_codfin,
                                 std_codreg,
                                 std_tipdoc,
                                 std_gestion);

            IF ccant > 0
            THEN
                UPDATE   sectiposdoc
                   SET   std_estado = 'A',
                         std_numero = vstd_numero,
                         std_fecmodi = SYSDATE
                 WHERE       std_codfin = vstd_codfin
                         AND std_codreg = vstd_codreg
                         AND std_tipdoc = vstd_tipdoc
                         AND std_gestion = xgestion;
            ELSE
                /*Insertar Registro*/
                INSERT INTO sectiposdoc (std_codreg,
                                         std_tipdoc,
                                         std_gestion,
                                         std_numero,
                                         std_fecalta,
                                         std_usuario,
                                         std_estado,
                                         std_codfin)
                  VALUES   (vstd_codreg,
                            vstd_tipdoc,
                            xgestion,
                            vstd_numero,
                            SYSDATE,
                            vstd_usuario,
                            'A',
                            vstd_codfin);
            END IF;

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 2
        THEN                                            /*Modificar Registro*/
            UPDATE   sectiposdoc
               SET   std_numero = vstd_numero, std_fecmodi = SYSDATE
             WHERE       std_codfin = vstd_codfin
                     AND std_codreg = vstd_codreg
                     AND std_tipdoc = vstd_tipdoc
                     AND std_gestion = xgestion;

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 3
        THEN                                             /*Eliminar Registro*/
            UPDATE   sectiposdoc
               SET   std_estado = 'B', std_fecmodi = SYSDATE
             WHERE       std_codfin = vstd_codfin
                     AND std_codreg = vstd_codreg
                     AND std_tipdoc = vstd_tipdoc
                     AND std_gestion = xgestion
                     AND std_numero = 0;

            COMMIT;
            vres := '0';
            vmsg := '0';
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe el Correlativo de Actas';
        WHEN OTHERS
        THEN
            vres := '1';

            IF SQLCODE = -2292
            THEN
                vmsg :=
                    'Restriccion de integridad : No se puede eliminar el Correlativo de Actas';
            ELSE
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    FUNCTION listarsectiposdoc (vcod_fin IN VARCHAR2, vcod_reg IN VARCHAR2)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   std_codfin,
                       std_codreg,
                       std_tipdoc,
                       std_numero,
                       reg_descripcion,
                       tdo_descripcion,
                       fin_descripcion,
                       std_gestion
                FROM   sectiposdoc,
                       regionales,
                       tiposdoc,
                       financiadores
               WHERE       std_estado = 'A'
                       AND std_codreg = reg_codigo
                       AND std_codfin = fin_codigo
                       AND std_codfin = vcod_fin
                       AND std_codreg = vcod_reg
                       --AND std_gestion = xgestion
                       AND std_tipdoc = tdo_codigo
                       AND std_tipdoc <> 'V'
            ORDER BY   std_codfin,
                       std_codreg,
                       std_gestion,
                       std_tipdoc;

        RETURN cr;
    END;

    PROCEDURE insertartipocambio (vtca_fecha     IN     VARCHAR2,
                                  vtca_tipcam    IN     NUMBER,
                                  vtca_tipufv    IN     NUMBER,
                                  vtca_usuario   IN     VARCHAR2,
                                  vestado        IN     NUMBER,
                                  vres              OUT NUMBER,
                                  vmsg              OUT VARCHAR2)
    IS
        xanio   CHAR (4);
        ccant   NUMBER;
    BEGIN
        /* Actualiza UFV de la Gestion   05/06/2008  DGemio */
        IF vestado = 10
        THEN
            SELECT   MAX (cte_gestion) INTO xanio FROM parametros;

            actualizaufv (xanio,
                          vtca_usuario,
                          vres,
                          vmsg);
        /*----------------------------*/
        ELSIF vestado = 1
        THEN                                             /*Insertar Registro*/
            INSERT INTO tipocambio (tca_fecha,
                                    tca_tipcam,
                                    tca_tipufv,
                                    tca_fecalta,
                                    tca_usuario,
                                    tca_estado)
              VALUES   (TO_DATE (vtca_fecha, 'dd/mm/yyyy'),
                        vtca_tipcam,
                        vtca_tipufv,
                        SYSDATE,
                        vtca_usuario,
                        'A');

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 2
        THEN                                            /*Modificar Registro*/
            UPDATE   tipocambio
               SET   tca_tipcam = vtca_tipcam,
                     tca_tipufv = vtca_tipufv,
                     tca_fecmodi = SYSDATE
             WHERE   tca_fecha = TO_DATE (vtca_fecha, 'dd/mm/yyyy');

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 3
        THEN                                             /*Eliminar Registro*/
            ccant := 0;

            SELECT   COUNT (1)
              INTO   ccant
              FROM   (  SELECT   act_codrub, act_codreg, act_codigo
                          FROM   activos
                         WHERE   act_feccompra =
                                     TO_DATE (vtca_fecha, 'dd/mm/yyyy')
                                 AND act_estado = 'A'
                      GROUP BY   act_codrub, act_codreg, act_codigo);

            IF ccant = 0
            THEN
                UPDATE   tipocambio
                   SET   tca_estado = 'B', tca_fecmodi = SYSDATE
                 WHERE   tca_fecha = TO_DATE (vtca_fecha, 'dd/mm/yyyy');

                COMMIT;
                vres := '0';
                vmsg := '0';
            ELSE
                vres := '-1';
                vmsg :=
                    'Este Tipo de Cambio esta siendo usado y NO puede ser ELIMINADO';
            END IF;
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe el Tipo de Cambio';
        WHEN OTHERS
        THEN
            vres := '1';

            IF SQLCODE = -2292
            THEN
                vmsg :=
                    'Restriccion de integridad : No se puede eliminar el Tipo de Cambio';
            ELSE
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    /* Actualiza UFV en base a la vista UNRATTAB   05/06/2008 DGemio */
    PROCEDURE actualizaufv (vcte_anio      IN     VARCHAR2,
                            vcte_usuario   IN     VARCHAR2,
                            vres              OUT NUMBER,
                            vmsg              OUT VARCHAR2)
    IS
        num   NUMBER;

        CURSOR cr
        IS
            SELECT   *
              FROM   unrattab
             WHERE       cur_cod = 'UFV'
                     AND lst_ope = 'U'
                     AND TO_CHAR (eea_dov, 'yyyy') >= vcte_anio;
    BEGIN
        FOR cur IN cr
        LOOP
            SELECT   COUNT ( * )
              INTO   num
              FROM   tipocambio
             WHERE   tca_fecha = cur.eea_dov;

            IF num > 0
            THEN
                UPDATE   tipocambio
                   SET   tca_tipufv = cur.rat_exc,
                         tca_fecmodi = SYSDATE,
                         tca_usuario = vcte_usuario,
                         tca_estado = 'A'
                 WHERE   tca_fecha = cur.eea_dov;
            ELSE
                INSERT INTO tipocambio (tca_fecha,
                                        tca_tipcam,
                                        tca_tipufv,
                                        tca_fecalta,
                                        tca_usuario,
                                        tca_estado)
                  VALUES   (cur.eea_dov,
                            1.00,
                            cur.rat_exc,
                            SYSDATE,
                            vcte_usuario,
                            'A');
            END IF;
        END LOOP;

        COMMIT;
        vres := '0';
        vmsg := '0';
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '1';
            vmsg := 'Ya se genero tipo de cambio para la fecha';
        WHEN OTHERS
        THEN
            vres := '1';
            vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
    END;

    /*--------------------------------*/
    FUNCTION listartipocambio (vestado IN NUMBER)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        IF vestado = 4
        THEN
            OPEN cr FOR
                  SELECT   TO_CHAR (tca_fecha, 'dd/mm/yyyy') tca_fecha1,
                           tca_tipcam,
                           tca_tipufv
                    FROM   tipocambio
                   WHERE   tca_estado = 'A'
                           AND TO_CHAR (tca_fecha, 'yyyy') >= xgestion
                ORDER BY   tca_fecha DESC;
        ELSE
            OPEN cr FOR
                  SELECT   TO_CHAR (tca_fecha, 'dd/mm/yyyy') tca_fecha1,
                           tca_tipcam,
                           tca_tipufv
                    FROM   tipocambio
                   WHERE       tca_fecha NOT IN (  SELECT   act_feccompra
                                                     FROM   activos
                                                    WHERE   act_estado = 'A'
                                                 GROUP BY   act_feccompra)
                           AND tca_estado = 'A'
                           AND TO_CHAR (tca_fecha, 'yyyy') >= xgestion
                ORDER BY   tca_fecha DESC;
        END IF;

        RETURN cr;
    END;

    PROCEDURE insertartiposbaja (vmot_codigo        IN     VARCHAR2,
                                 vmot_descripcion   IN     VARCHAR2,
                                 vmot_usuario       IN     VARCHAR2,
                                 vestado            IN     NUMBER,
                                 vres                  OUT NUMBER,
                                 vmsg                  OUT VARCHAR2)
    IS
        ccant   NUMBER;
    BEGIN
        IF vestado = 1
        THEN                                             /*Insertar Registro*/
            INSERT INTO tiposbaja (mot_codigo,
                                   mot_descripcion,
                                   mot_fecalta,
                                   mot_usuario,
                                   mot_estado)
              VALUES   (vmot_codigo,
                        vmot_descripcion,
                        SYSDATE,
                        vmot_usuario,
                        'A');

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 2
        THEN                                            /*Modificar Registro*/
            UPDATE   tiposbaja
               SET   mot_descripcion = vmot_descripcion,
                     mot_fecmodi = SYSDATE
             WHERE   mot_codigo = vmot_codigo;

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 3
        THEN                                             /*Eliminar Registro*/
            ccant := 0;

            SELECT   COUNT (1)
              INTO   ccant
              FROM   (  SELECT   act_codrub, act_codreg, act_codigo
                          FROM   activos
                         WHERE   act_codmot = vmot_codigo AND act_estado = 'A'
                      GROUP BY   act_codrub, act_codreg, act_codigo);

            IF ccant = 0
            THEN
                UPDATE   tiposbaja
                   SET   mot_estado = 'B', mot_fecmodi = SYSDATE
                 WHERE   mot_codigo = vmot_codigo;

                COMMIT;
                vres := '0';
                vmsg := '0';
            ELSE
                vres := '-1';
                vmsg :=
                    'Este Tipo de Baja esta siendo usado y NO puede ser ELIMINADO';
            END IF;
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe el Motivo de Baja';
        WHEN OTHERS
        THEN
            vres := '1';

            IF SQLCODE = -2292
            THEN
                vmsg :=
                    'Restriccion de integridad : No se puede eliminar el Motivo de Baja';
            ELSE
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    FUNCTION listartiposbaja
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   mot_codigo, mot_descripcion
                FROM   tiposbaja
               WHERE   mot_estado = 'A'
            ORDER BY   mot_codigo;

        RETURN cr;
    END;

    PROCEDURE insertartiposdoc (vtdo_codigo        IN     VARCHAR2,
                                vtdo_descripcion   IN     VARCHAR2,
                                vtdo_feccie        IN     VARCHAR2,
                                vtdo_usuario       IN     VARCHAR2,
                                vestado            IN     NUMBER,
                                vres                  OUT NUMBER,
                                vmsg                  OUT VARCHAR2)
    IS
        ccant   NUMBER;
    BEGIN
        IF vestado = 1
        THEN                                             /*Insertar Registro*/
            INSERT INTO tiposdoc (tdo_codigo,
                                  tdo_descripcion,
                                  tdo_feccie,
                                  tdo_fecalta,
                                  tdo_usuario,
                                  tdo_estado)
              VALUES   (vtdo_codigo,
                        vtdo_descripcion,
                        TO_DATE (vtdo_feccie, 'dd/mm/yyyy'),
                        SYSDATE,
                        vtdo_usuario,
                        'A');

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 2
        THEN                                            /*Modificar Registro*/
            UPDATE   tiposdoc
               SET   tdo_descripcion = vtdo_descripcion,
                     tdo_feccie = TO_DATE (vtdo_feccie, 'dd/mm/yyyy'),
                     tdo_fecmodi = SYSDATE
             WHERE   tdo_codigo = vtdo_codigo;

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 3
        THEN                                             /*Eliminar Registro*/
            ccant := 0;

            SELECT   COUNT (1)
              INTO   ccant
              FROM   (  SELECT   doc_tipdoc
                          FROM   documentos
                         WHERE   doc_tipdoc = vtdo_codigo AND doc_estado = 'A'
                      GROUP BY   doc_tipdoc);

            IF ccant = 0
            THEN
                UPDATE   tiposdoc
                   SET   tdo_estado = 'B', tdo_fecmodi = SYSDATE
                 WHERE   tdo_codigo = vtdo_codigo;

                COMMIT;
                vres := '0';
                vmsg := '0';
            ELSE
                vres := '-1';
                vmsg :=
                    'Este Tipo de Documento esta siendo usado y NO puede ser ELIMINADO';
            END IF;
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe el Tipo de Acta';
        WHEN OTHERS
        THEN
            vres := '1';

            IF SQLCODE = -2292
            THEN
                vmsg :=
                    'Restriccion de integridad : No se puede eliminar el Tipo de Acta';
            ELSE
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    FUNCTION listartiposdoc (vpar      IN NUMBER,
                             vcodfin   IN VARCHAR2,
                             vcodreg   IN VARCHAR2)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        IF vpar = 0
        THEN
            OPEN cr FOR
                  SELECT   tdo_codigo,
                           tdo_descripcion,
                           TO_CHAR (tdo_feccie, 'dd/mm/yyyy') tdo_feccie
                    FROM   tiposdoc
                   WHERE   tdo_estado = 'A'
                ORDER BY   tdo_codigo;
        ELSE
            OPEN cr FOR
                  SELECT   tdo_codigo,
                           tdo_descripcion,
                           TO_CHAR (tdo_feccie, 'dd/mm/yyyy') tdo_feccie
                    FROM   tiposdoc, sectiposdoc
                   WHERE       tdo_estado = 'A'
                           AND tdo_codigo = std_tipdoc
                           AND std_codfin = vcodfin
                           AND std_codreg = vcodreg
                           AND std_gestion = xgestion
                ORDER BY   tdo_codigo;
        END IF;

        RETURN cr;
    END;

    FUNCTION listaractas (conf          IN NUMBER,
                          vcodfin       IN VARCHAR2,
                          vcodreg       IN VARCHAR2,
                          vtipdoc       IN VARCHAR2,
                          vinicio       IN NUMBER,
                          vfin          IN NUMBER,
                          vopcion       IN NUMBER,
                          confirmados   IN VARCHAR2,
                          vgestionant   IN VARCHAR2)
        RETURN cursortype
    IS
        cr      cursortype;
        vconf   CHAR (1);
    BEGIN
        vconf := confirmados;

        IF vopcion = 5
        THEN
            IF vconf = 'S'
            THEN
                OPEN cr FOR
                      SELECT   doc_codreg,
                               doc_tipdoc,
                               doc_numero,
                               TO_CHAR (doc_fecha, 'dd/mm/yyyy') doc_fecha,
                               doc_codofiorigen,
                               doc_codfunorigen,
                               doc_codubiorigen,
                               doc_codfinorigen,
                               doc_codpryorigen,
                               doc_codofidestino,
                               doc_codfundestino,
                               doc_codubidestino,
                               doc_codfindestino,
                               doc_codprydestino,
                               doc_observacion,
                               doc_inconfirma,
                               doc_usuario,
                               TO_CHAR (doc_fecsis, 'dd/mm/yyyy') doc_fecsis,
                               doc_estado,
                               tdo_descripcion,
                               tdo_glosa
                        FROM   documentos,
                               tiposdoc,
                               funcionarios a,
                               funcionarios b
                       WHERE       doc_codfin = vcodfin
                               AND doc_codreg = vcodreg
                               AND doc_tipdoc = vtipdoc
                               AND doc_gestion = vgestionant
                               AND doc_inconfirma = 'S'
                               AND doc_numero BETWEEN vinicio AND vfin
                               AND doc_estado = 'A'
                               AND tdo_codigo = doc_tipdoc
                               AND a.fun_codigo(+) = doc_codfunorigen
                               AND b.fun_codigo(+) = doc_codfundestino
                               AND 0 <
                                      (SELECT   COUNT (1)
                                         FROM   det_documentos
                                        WHERE       ddo_codfin = doc_codfin
                                                AND ddo_codreg = doc_codreg
                                                AND ddo_tipdoc = doc_tipdoc
                                                AND ddo_gestion = doc_gestion
                                                AND ddo_numero = doc_numero
                                                AND ddo_estado = 'A')
                    ORDER BY   doc_gestion,
                               doc_codreg,
                               doc_tipdoc,
                               doc_numero;
            ELSE
                OPEN cr FOR
                      SELECT   doc_codreg,
                               doc_tipdoc,
                               doc_numero,
                               TO_CHAR (doc_fecha, 'dd/mm/yyyy') doc_fecha,
                               doc_codofiorigen,
                               doc_codfunorigen,
                               doc_codubiorigen,
                               doc_codfinorigen,
                               doc_codpryorigen,
                               doc_codofidestino,
                               doc_codfundestino,
                               doc_codubidestino,
                               doc_codfindestino,
                               doc_codprydestino,
                               doc_observacion,
                               doc_inconfirma,
                               doc_usuario,
                               TO_CHAR (doc_fecsis, 'dd/mm/yyyy') doc_fecsis,
                               doc_estado,
                               tdo_descripcion,
                               tdo_glosa
                        FROM   documentos,
                               tiposdoc,
                               funcionarios a,
                               funcionarios b
                       WHERE       doc_codfin = vcodfin
                               AND doc_codreg = vcodreg
                               AND doc_tipdoc = vtipdoc
                               AND doc_gestion = vgestionant
                               AND doc_inconfirma = 'N'
                               AND doc_numero BETWEEN vinicio AND vfin
                               AND doc_estado = 'A'
                               AND tdo_codigo = doc_tipdoc
                               AND a.fun_codigo(+) = doc_codfunorigen
                               AND b.fun_codigo(+) = doc_codfundestino
                    ORDER BY   doc_gestion,
                               doc_codreg,
                               doc_tipdoc,
                               doc_numero;
            END IF;
        ELSE
            IF vopcion = 4
            THEN
                OPEN cr FOR
                      SELECT   doc_codreg,
                               doc_tipdoc,
                               doc_numero,
                               TO_CHAR (doc_fecha, 'dd/mm/yyyy') doc_fecha,
                               doc_codofiorigen,
                               doc_codfunorigen,
                               doc_codubiorigen,
                               doc_codfinorigen,
                               doc_codpryorigen,
                               doc_codofidestino,
                               doc_codfundestino,
                               doc_codubidestino,
                               doc_codfindestino,
                               doc_codprydestino,
                               doc_observacion,
                               doc_inconfirma,
                               doc_usuario,
                               TO_CHAR (doc_fecsis, 'dd/mm/yyyy') doc_fecsis,
                               doc_estado,
                               tdo_descripcion,
                               tdo_glosa
                        FROM   documentos,
                               tiposdoc,
                               funcionarios a,
                               funcionarios b
                       WHERE       doc_codfin = vcodfin
                               AND doc_codreg = vcodreg
                               AND doc_tipdoc = vtipdoc
                               AND doc_gestion = xgestion
                               AND doc_inconfirma = 'N'
                               AND doc_numero BETWEEN vinicio AND vfin
                               AND doc_estado = 'A'
                               AND tdo_codigo = doc_tipdoc
                               AND a.fun_codigo(+) = doc_codfunorigen
                               AND b.fun_codigo(+) = doc_codfundestino
                               AND 0 <
                                      (SELECT   COUNT (1)
                                         FROM   det_documentos
                                        WHERE       ddo_codfin = doc_codfin
                                                AND ddo_codreg = doc_codreg
                                                AND ddo_tipdoc = doc_tipdoc
                                                AND ddo_gestion = doc_gestion
                                                AND ddo_numero = doc_numero
                                                AND ddo_estado = 'A')
                    ORDER BY   doc_gestion,
                               doc_codreg,
                               doc_tipdoc,
                               doc_numero;
            ELSE
                OPEN cr FOR
                      SELECT   doc_codreg,
                               doc_tipdoc,
                               doc_numero,
                               TO_CHAR (doc_fecha, 'dd/mm/yyyy') doc_fecha,
                               doc_codofiorigen,
                               doc_codfunorigen,
                               doc_codubiorigen,
                               doc_codfinorigen,
                               doc_codpryorigen,
                               doc_codofidestino,
                               doc_codfundestino,
                               doc_codubidestino,
                               doc_codfindestino,
                               doc_codprydestino,
                               doc_observacion,
                               doc_inconfirma,
                               doc_usuario,
                               TO_CHAR (doc_fecsis, 'dd/mm/yyyy') doc_fecsis,
                               doc_estado,
                               tdo_descripcion,
                               tdo_glosa
                        FROM   documentos,
                               tiposdoc,
                               funcionarios a,
                               funcionarios b
                       WHERE       doc_codfin = vcodfin
                               AND doc_codreg = vcodreg
                               AND doc_tipdoc = vtipdoc
                               AND doc_gestion = xgestion
                               AND doc_inconfirma = 'N'
                               AND doc_numero BETWEEN vinicio AND vfin
                               AND doc_estado = 'A'
                               AND tdo_codigo = doc_tipdoc
                               AND a.fun_codigo(+) = doc_codfunorigen
                               AND b.fun_codigo(+) = doc_codfundestino
                    ORDER BY   doc_gestion,
                               doc_codreg,
                               doc_tipdoc,
                               doc_numero;
            END IF;
        END IF;

        RETURN cr;
    END;

    FUNCTION listaractas2 (conf          IN NUMBER,
                           vcodfin       IN VARCHAR2,
                           vcodreg       IN VARCHAR2,
                           vtipdoc       IN VARCHAR2,
                           vinicio       IN NUMBER,
                           vfin          IN NUMBER,
                           vopcion       IN NUMBER,
                           confirmados   IN VARCHAR2,
                           vgestionant   IN VARCHAR2)
        RETURN cursortype
    IS
        cr      cursortype;
        vconf   CHAR (1);
    BEGIN
        vconf := confirmados;

        IF vopcion = 5
        THEN
            IF vconf = 'S'
            THEN
                OPEN cr FOR
                      SELECT   doc_codreg,
                               doc_tipdoc,
                               doc_numero,
                               TO_CHAR (doc_fecha, 'dd/mm/yyyy') doc_fecha,
                               doc_codofiorigen,
                               doc_codfunorigen,
                               doc_codubiorigen,
                               doc_codfinorigen,
                               doc_codpryorigen,
                               doc_codofidestino,
                               doc_codfundestino,
                               doc_codubidestino,
                               doc_codfindestino,
                               doc_codprydestino,
                               doc_observacion,
                               doc_inconfirma,
                               doc_usuario,
                               TO_CHAR (doc_fecsis, 'dd/mm/yyyy') doc_fecsis,
                               doc_estado,
                               tdo_descripcion,
                               a.fun_descripcion,
                               b.fun_descripcion
                        FROM   documentos,
                               tiposdoc,
                               funcionarios a,
                               funcionarios b
                       WHERE       doc_codfin = vcodfin
                               AND doc_codreg = vcodreg
                               AND doc_tipdoc = vtipdoc
                               AND doc_gestion = vgestionant
                               AND doc_numero BETWEEN vinicio AND vfin
                               AND doc_inconfirma = 'S'
                               AND doc_estado = 'A'
                               AND tdo_codigo = doc_tipdoc
                               AND a.fun_codigo(+) = doc_codfunorigen
                               AND b.fun_codigo(+) = doc_codfundestino
                               AND 0 <
                                      (SELECT   COUNT (1)
                                         FROM   det_documentos
                                        WHERE       ddo_codfin = doc_codfin
                                                AND ddo_codreg = doc_codreg
                                                AND ddo_tipdoc = doc_tipdoc
                                                AND ddo_gestion = doc_gestion
                                                AND ddo_numero = doc_numero
                                                AND ddo_estado = 'A')
                    ORDER BY   doc_gestion,
                               doc_codreg,
                               doc_tipdoc,
                               doc_numero;
            ELSE
                OPEN cr FOR
                      SELECT   doc_codreg,
                               doc_tipdoc,
                               doc_numero,
                               TO_CHAR (doc_fecha, 'dd/mm/yyyy') doc_fecha,
                               doc_codofiorigen,
                               doc_codfunorigen,
                               doc_codubiorigen,
                               doc_codfinorigen,
                               doc_codpryorigen,
                               doc_codofidestino,
                               doc_codfundestino,
                               doc_codubidestino,
                               doc_codfindestino,
                               doc_codprydestino,
                               doc_observacion,
                               doc_inconfirma,
                               doc_usuario,
                               TO_CHAR (doc_fecsis, 'dd/mm/yyyy') doc_fecsis,
                               doc_estado,
                               tdo_descripcion,
                               a.fun_descripcion,
                               b.fun_descripcion
                        FROM   documentos,
                               tiposdoc,
                               funcionarios a,
                               funcionarios b
                       WHERE       doc_codfin = vcodfin
                               AND doc_codreg = vcodreg
                               AND doc_tipdoc = vtipdoc
                               AND doc_gestion = vgestionant
                               AND doc_numero BETWEEN vinicio AND vfin
                               AND doc_inconfirma = 'N'
                               AND doc_estado = 'A'
                               AND tdo_codigo = doc_tipdoc
                               AND a.fun_codigo(+) = doc_codfunorigen
                               AND b.fun_codigo(+) = doc_codfundestino
                    ORDER BY   doc_gestion,
                               doc_codreg,
                               doc_tipdoc,
                               doc_numero;
            END IF;
        ELSE
            IF vopcion = 4
            THEN
                OPEN cr FOR
                      SELECT   doc_codreg,
                               doc_tipdoc,
                               doc_numero,
                               TO_CHAR (doc_fecha, 'dd/mm/yyyy') doc_fecha,
                               doc_codofiorigen,
                               doc_codfunorigen,
                               doc_codubiorigen,
                               doc_codfinorigen,
                               doc_codpryorigen,
                               doc_codofidestino,
                               doc_codfundestino,
                               doc_codubidestino,
                               doc_codfindestino,
                               doc_codprydestino,
                               doc_observacion,
                               doc_inconfirma,
                               doc_usuario,
                               TO_CHAR (doc_fecsis, 'dd/mm/yyyy') doc_fecsis,
                               doc_estado,
                               tdo_descripcion,
                               a.fun_descripcion,
                               b.fun_descripcion
                        FROM   documentos,
                               tiposdoc,
                               funcionarios a,
                               funcionarios b
                       WHERE       doc_codfin = vcodfin
                               AND doc_codreg = vcodreg
                               AND doc_tipdoc = vtipdoc
                               AND doc_gestion = xgestion
                               AND doc_numero BETWEEN vinicio AND vfin
                               AND doc_inconfirma = 'N'
                               AND doc_estado = 'A'
                               AND tdo_codigo = doc_tipdoc
                               AND a.fun_codigo(+) = doc_codfunorigen
                               AND b.fun_codigo(+) = doc_codfundestino
                               AND 0 <
                                      (SELECT   COUNT (1)
                                         FROM   det_documentos
                                        WHERE       ddo_codfin = doc_codfin
                                                AND ddo_codreg = doc_codreg
                                                AND ddo_tipdoc = doc_tipdoc
                                                AND ddo_gestion = doc_gestion
                                                AND ddo_numero = doc_numero
                                                AND ddo_estado = 'A')
                    ORDER BY   doc_gestion,
                               doc_codreg,
                               doc_tipdoc,
                               doc_numero;
            ELSE
                OPEN cr FOR
                      SELECT   doc_codreg,
                               doc_tipdoc,
                               doc_numero,
                               TO_CHAR (doc_fecha, 'dd/mm/yyyy') doc_fecha,
                               doc_codofiorigen,
                               doc_codfunorigen,
                               doc_codubiorigen,
                               doc_codfinorigen,
                               doc_codpryorigen,
                               doc_codofidestino,
                               doc_codfundestino,
                               doc_codubidestino,
                               doc_codfindestino,
                               doc_codprydestino,
                               doc_observacion,
                               doc_inconfirma,
                               doc_usuario,
                               TO_CHAR (doc_fecsis, 'dd/mm/yyyy') doc_fecsis,
                               doc_estado,
                               tdo_descripcion,
                               a.fun_descripcion,
                               b.fun_descripcion
                        FROM   documentos,
                               tiposdoc,
                               funcionarios a,
                               funcionarios b
                       WHERE       doc_codfin = vcodfin
                               AND doc_codreg = vcodreg
                               AND doc_tipdoc = vtipdoc
                               AND doc_gestion = xgestion
                               AND doc_numero BETWEEN vinicio AND vfin
                               AND doc_inconfirma = 'N'
                               AND doc_estado = 'A'
                               AND tdo_codigo = doc_tipdoc
                               AND a.fun_codigo(+) = doc_codfunorigen
                               AND b.fun_codigo(+) = doc_codfundestino
                    ORDER BY   doc_gestion,
                               doc_codreg,
                               doc_tipdoc,
                               doc_numero;
            END IF;
        END IF;

        RETURN cr;
    END;

    PROCEDURE maximotiposdoc (vtpo_codfin   IN     VARCHAR2,
                              vtpo_codreg   IN     VARCHAR2,
                              vtpo_tipdoc   IN     VARCHAR2,
                              num              OUT NUMBER)
    IS
    BEGIN
        SELECT   MAX (std_numero) + 1
          INTO   num
          FROM   sectiposdoc
         WHERE       std_codfin = vtpo_codfin
                 AND std_codreg = vtpo_codreg
                 AND std_tipdoc = vtpo_tipdoc
                 AND std_gestion = xgestion;
    END;

    PROCEDURE feccierretiposdoc (vtpo_tipdoc IN VARCHAR2, num OUT VARCHAR2)
    IS
    BEGIN
        SELECT   TO_CHAR (tdo_feccie, 'dd/mm/yyyy')
          INTO   num
          FROM   tiposdoc
         WHERE   tdo_codigo = vtpo_tipdoc;
    END;

    PROCEDURE maximosecbarras (vtpo_codrub   IN     VARCHAR2,
                               vtpo_codreg   IN     VARCHAR2,
                               num              OUT NUMBER)
    IS
    BEGIN
        SELECT   MAX (bar_numero) + 1
          INTO   num
          FROM   secbarras
         WHERE   bar_rubro = vtpo_codrub AND bar_codreg = vtpo_codreg;
    END;

    FUNCTION existeactivo (vtpo_codrub   IN VARCHAR2,
                           vtpo_codreg   IN VARCHAR2,
                           vtpo_codigo   IN NUMBER)
        RETURN BOOLEAN
    IS
        estado   BOOLEAN;
        num      NUMBER;
    BEGIN
        SELECT   COUNT ( * )
          INTO   num
          FROM   activos
         WHERE       act_codrub = vtpo_codrub
                 AND act_codreg = vtpo_codreg
                 AND act_codigo = vtpo_codigo;

        IF num > 0
        THEN
            estado := TRUE;
        ELSE
            estado := FALSE;
        END IF;

        RETURN estado;
    END;

    /* Verifica la cantidad de registros depreciados en la gestion 05/06/2008 DGemio */
    FUNCTION validadepreciacion (vcte_gestion IN VARCHAR2)
        RETURN BOOLEAN
    IS
        estado   BOOLEAN;
        num1     NUMBER;
        num2     NUMBER;
    BEGIN
        SELECT   COUNT ( * )
          INTO   num1
          FROM   revaluos, activos
         WHERE       TO_CHAR (rev_fecha, 'yyyy') <= vcte_gestion
                 AND rev_estado = 'A'
                 AND rev_codrub = act_codrub
                 AND rev_codreg = act_codreg
                 AND rev_codigo = act_codigo
                 AND rev_estado = act_estado;

        SELECT   COUNT (1)
          INTO   num2
          FROM   activos.depreciaciones a, activos.activos b
         WHERE       b.act_codrub = a.dep_codrub
                 AND b.act_codreg = a.dep_codreg
                 AND b.act_codigo = a.dep_codigo
                 AND b.act_estado = 'A'
                 AND a.dep_anio = vcte_gestion
                 AND a.dep_mes =
                        (SELECT   MAX (dep_mes)
                           FROM   activos.depreciaciones d
                          WHERE       d.dep_codrub = a.dep_codrub
                                  AND d.dep_codreg = a.dep_codreg
                                  AND d.dep_codigo = a.dep_codigo
                                  AND d.dep_anio = a.dep_anio);

        IF num1 = num2
        THEN
            estado := TRUE;
        ELSE
            estado := FALSE;
        END IF;

        RETURN estado;
    END;

    /*----------------------*/

    FUNCTION validacambioges (vcte_gesactas IN VARCHAR2)
        RETURN BOOLEAN
    IS
        estado   BOOLEAN;
        num1     NUMBER;
    BEGIN
        SELECT   COUNT ( * )
          INTO   num1
          FROM   documentos
         WHERE       doc_inconfirma = 'N'
                 AND doc_gestion = vcte_gesactas
                 AND doc_estado = 'A';

        IF num1 > 0
        THEN
            estado := FALSE;
        ELSE
            estado := TRUE;
        END IF;

        RETURN estado;
    END;

    /*----------------------*/

    PROCEDURE maximomejoras (vtpo_codrub   IN     VARCHAR2,
                             vtpo_codreg   IN     VARCHAR2,
                             vtpo_codigo   IN     NUMBER,
                             num              OUT NUMBER)
    IS
    BEGIN
        IF existeactivo (vtpo_codrub, vtpo_codreg, vtpo_codigo)
        THEN
            SELECT   NVL (MAX (mre_corel), 0) + 1
              INTO   num
              FROM   mejorasrebajas
             WHERE       mre_codrub = vtpo_codrub
                     AND mre_codreg = vtpo_codreg
                     AND mre_codigo = vtpo_codigo;
        ELSE
            num := 0;
        END IF;
    END;

    PROCEDURE maximorevaluos (vtpo_codrub   IN     VARCHAR2,
                              vtpo_codreg   IN     VARCHAR2,
                              vtpo_codigo   IN     NUMBER,
                              vtpo_correl   IN     NUMBER,
                              num              OUT NUMBER)
    IS
    BEGIN
        SELECT   COUNT ( * )
          INTO   num
          FROM   activos
         WHERE       act_codrub = vtpo_codrub
                 AND act_codreg = vtpo_codreg
                 AND act_codigo = vtpo_codigo;

        IF num > 0
        THEN
            SELECT   NVL (MAX (rev_numrevaluo), 0) + 1
              INTO   num
              FROM   revaluos
             WHERE       rev_codrub = vtpo_codrub
                     AND rev_codreg = vtpo_codreg
                     AND rev_codigo = vtpo_codigo
                     AND rev_correlmre = vtpo_correl;
        END IF;
    END;

    PROCEDURE maximafecharevaluos (vtpo_codrub   IN     VARCHAR2,
                                   vtpo_codreg   IN     VARCHAR2,
                                   vtpo_codigo   IN     NUMBER,
                                   vtpo_correl   IN     NUMBER,
                                   vtpo_numrel   IN     NUMBER,
                                   fecha            OUT VARCHAR2)
    IS
        num   NUMBER;
    BEGIN
        fecha := NULL;

        SELECT   COUNT ( * )
          INTO   num
          FROM   activos
         WHERE       act_codrub = vtpo_codrub
                 AND act_codreg = vtpo_codreg
                 AND act_codigo = vtpo_codigo;

        IF num > 0
        THEN
            SELECT   TO_CHAR (MAX (rev_fecha), 'dd/mm/yyyy')
              INTO   fecha
              FROM   revaluos
             WHERE       rev_codrub = vtpo_codrub
                     AND rev_codreg = vtpo_codreg
                     AND rev_codigo = vtpo_codigo
                     AND rev_correlmre = vtpo_correl
                     --AND rev_numrevaluo < vtpo_numrel
                     AND rev_estado = 'A';
        END IF;
    END;

    PROCEDURE descripcionrubro (vtpo_codrub           IN     VARCHAR2,
                                vtpo_rubdescripcion      OUT VARCHAR2)
    IS
    BEGIN
        SELECT   rub_descripcion
          INTO   vtpo_rubdescripcion
          FROM   rubros
         WHERE   rub_codigo = vtpo_codrub;
    END;

    PROCEDURE partidarubro (vtpo_codrub           IN     VARCHAR2,
                            vtpo_rubdescripcion      OUT VARCHAR2)
    IS
    BEGIN
        SELECT   rub_codpar
          INTO   vtpo_rubdescripcion
          FROM   rubros
         WHERE   rub_codigo = vtpo_codrub;
    END;

    PROCEDURE vidautilrubro (vtpo_codrub     IN     VARCHAR2,
                             vtpo_vidautil      OUT NUMBER)
    IS
    BEGIN
        SELECT   rub_vidaut
          INTO   vtpo_vidautil
          FROM   rubros
         WHERE   rub_codigo = vtpo_codrub;
    END;

    PROCEDURE descripcionpartida (vtpo_codrub           IN     VARCHAR2,
                                  vtpo_pardescripcion      OUT VARCHAR2)
    IS
    BEGIN
        SELECT   par_descripcion
          INTO   vtpo_pardescripcion
          FROM   partidas
         WHERE   par_codigo = (SELECT   rub_codpar
                                 FROM   rubros
                                WHERE   rub_codigo = vtpo_codrub);
    END;

    PROCEDURE nombrecargo (vdoc_codfun IN VARCHAR2, vdoc_nombre OUT VARCHAR2)
    IS
    BEGIN
        SELECT   fun_cargo
          INTO   vdoc_nombre
          FROM   funcionarios
         WHERE   fun_codigo = vdoc_codfun;
    END;

    PROCEDURE nombrefuncionario (vdoc_codfun   IN     VARCHAR2,
                                 vdoc_nombre      OUT VARCHAR2)
    IS
    BEGIN
        SELECT   fun_descripcion
          INTO   vdoc_nombre
          FROM   funcionarios
         WHERE   fun_codigo = vdoc_codfun;
    END;

    PROCEDURE nombreoficina (vdoc_codofi   IN     VARCHAR2,
                             vcodreg       IN     VARCHAR2,
                             vdoc_nombre      OUT VARCHAR2)
    IS
    BEGIN
        SELECT   ofi_descripcion
          INTO   vdoc_nombre
          FROM   oficinas
         WHERE   ofi_codigo = vdoc_codofi AND ofi_codreg = vcodreg;
    END;

    PROCEDURE nombregrupo (vcodrub       IN     VARCHAR2,
                           vcodgrp       IN     VARCHAR2,
                           vdoc_nombre      OUT VARCHAR2)
    IS
    BEGIN
        SELECT   grp_descripcion
          INTO   vdoc_nombre
          FROM   grupos
         WHERE   grp_codigo = vcodgrp AND grp_codrub = vcodrub;
    END;

    PROCEDURE nombreubicacion (vcodreg       IN     VARCHAR2,
                               vcodubi       IN     VARCHAR2,
                               vdoc_nombre      OUT VARCHAR2)
    IS
    BEGIN
        SELECT   ubi_descripcion
          INTO   vdoc_nombre
          FROM   ubicaciones
         WHERE   ubi_codigo = vcodubi AND ubi_codreg = vcodreg;
    END;

    PROCEDURE nombreproyecto (vcodpry IN VARCHAR2, vdoc_nombre OUT VARCHAR2)
    IS
    BEGIN
        SELECT   pry_descripcion
          INTO   vdoc_nombre
          FROM   proyectos
         WHERE   pry_codigo = vcodpry;
    END;

    PROCEDURE nombrefinanciador (vcodfin       IN     VARCHAR2,
                                 vdoc_nombre      OUT VARCHAR2)
    IS
    BEGIN
        SELECT   fin_descripcion
          INTO   vdoc_nombre
          FROM   financiadores
         WHERE   fin_codigo = vcodfin;
    END;

    PROCEDURE nombretipobaja (vcodmot IN VARCHAR2, vddo_nombre OUT VARCHAR2)
    IS
    BEGIN
        SELECT   mot_descripcion
          INTO   vddo_nombre
          FROM   tiposbaja
         WHERE   mot_codigo = vcodmot;
    END;

    PROCEDURE descripcionregional (vtpo_codreg           IN     VARCHAR2,
                                   vtpo_regdescripcion      OUT VARCHAR2)
    IS
    BEGIN
        SELECT   reg_descripcion
          INTO   vtpo_regdescripcion
          FROM   regionales
         WHERE   reg_codigo = vtpo_codreg;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            vtpo_regdescripcion := '999';
    END;

    PROCEDURE descripcionfinanciador (vtpo_codfin           IN     VARCHAR2,
                                      vtpo_findescripcion      OUT VARCHAR2)
    IS
    BEGIN
        SELECT   fin_descripcion
          INTO   vtpo_findescripcion
          FROM   financiadores
         WHERE   fin_codigo = vtpo_codfin;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            vtpo_findescripcion := '999';
    END;

    PROCEDURE descripcionactivo (vact_codfin         IN     VARCHAR2,
                                 vact_codreg         IN     VARCHAR2,
                                 vact_tipdoc         IN     VARCHAR2,
                                 vact_numero         IN     NUMBER,
                                 vact_codfunorigen   IN     VARCHAR2,
                                 vact_fecha          IN     VARCHAR2,
                                 vact_rubcod         IN     VARCHAR2,
                                 vact_codigo         IN     NUMBER,
                                 vact_desactivo         OUT VARCHAR2)
    IS
        vddo_codrub   VARCHAR2 (10);
        vddo_codreg   VARCHAR2 (10);
        vddo_codigo   NUMBER;
    BEGIN
        vddo_codrub := SUBSTR (vact_rubcod, 1, 2);
        vddo_codreg := SUBSTR (vact_rubcod, 3, 2);
        vddo_codigo := TO_NUMBER (SUBSTR (vact_rubcod, 5, 5));

        IF vact_tipdoc IN ('D', 'T')
        THEN
              SELECT   grp_descripcion || ' ' || act_descripcion
                INTO   vact_desactivo
                FROM   activos, revaluos, grupos
               WHERE       act_codrub = vddo_codrub
                       AND act_codreg = vddo_codreg
                       AND act_codigo = vddo_codigo
                       AND act_codfin = vact_codfin
                       AND act_codfun = vact_codfunorigen
                       AND act_estado = 'A'
                       AND act_propiedad = 'S'
                       AND rev_fecha <= TO_DATE (vact_fecha, 'dd/mm/yyyy')
                       AND TRUNC (act_fecsis) <=
                              TO_DATE (vact_fecha, 'dd/mm/yyyy')
                       AND act_codgrp = grp_codigo
                       AND act_codrub = grp_codrub
                       AND rev_codrub = act_codrub
                       AND rev_codreg = act_codreg
                       AND rev_codigo = act_codigo
                       AND rev_correlmre = 0
                       AND rev_numrevaluo = 0
                       AND ( (act_codrub, act_codreg, act_codigo) NOT IN
                                    (SELECT   ddo_codrubactual,
                                              ddo_codregactual,
                                              ddo_codigo
                                       FROM   det_documentos
                                      WHERE       ddo_codfin = vact_codfin
                                              AND ddo_codreg = vact_codreg
                                              AND ddo_tipdoc = vact_tipdoc
                                              AND ddo_gestion = xgestion
                                              AND ddo_numero = vact_numero
                                              AND ddo_estado = 'A')
                            AND (act_codrub, act_codreg, act_codigo, act_codfin) NOT IN
                                       (SELECT   ddo_codrubactual,
                                                 ddo_codregactual,
                                                 ddo_codigo,
                                                 ddo_codfin
                                          FROM   det_documentos, documentos
                                         WHERE       ddo_codfin = doc_codfin
                                                 AND ddo_codreg = doc_codreg
                                                 AND ddo_tipdoc = doc_tipdoc
                                                 AND ddo_gestion = doc_gestion
                                                 AND ddo_numero = doc_numero
                                                 AND ddo_estado = 'A'
                                                 AND doc_inconfirma = 'N'
                                                 AND   ddo_codfin
                                                    || ddo_codreg
                                                    || ddo_tipdoc
                                                    || ddo_gestion
                                                    || ddo_numero <>
                                                           vact_codfin
                                                        || vact_codreg
                                                        || vact_tipdoc
                                                        || xgestion
                                                        || vact_numero))
            ORDER BY   act_codrub, act_codreg, act_codigo;
        ELSE
              SELECT   grp_descripcion || ' ' || act_descripcion
                INTO   vact_desactivo
                FROM   activos, revaluos, grupos
               WHERE       act_codrub = vddo_codrub
                       AND act_codreg = vddo_codreg
                       AND act_codigo = vddo_codigo
                       AND act_codfin = vact_codfin
                       AND act_codfun = vact_codfunorigen
                       AND act_estado = 'A'
                       AND act_propiedad = 'N'
                       AND rev_fecha <= TO_DATE (vact_fecha, 'dd/mm/yyyy')
                       AND TRUNC (act_fecsis) <=
                              TO_DATE (vact_fecha, 'dd/mm/yyyy')
                       AND act_codgrp = grp_codigo
                       AND act_codrub = grp_codrub
                       AND rev_codrub = act_codrub
                       AND rev_codreg = act_codreg
                       AND rev_codigo = act_codigo
                       AND rev_correlmre = 0
                       AND rev_numrevaluo = 0
                       AND ( (act_codrub, act_codreg, act_codigo, act_codfin) NOT IN
                                    (SELECT   ddo_codrubactual,
                                              ddo_codregactual,
                                              ddo_codigo,
                                              ddo_codfin
                                       FROM   det_documentos
                                      WHERE       ddo_codfin = vact_codfin
                                              AND ddo_codreg = vddo_codreg
                                              AND ddo_tipdoc = vact_tipdoc
                                              AND ddo_gestion = xgestion
                                              AND ddo_numero = vact_numero
                                              AND ddo_estado = 'A')
                            AND (act_codrub, act_codreg, act_codigo) NOT IN
                                       (SELECT   ddo_codrubactual,
                                                 ddo_codregactual,
                                                 ddo_codigo
                                          FROM   det_documentos, documentos
                                         WHERE       ddo_codfin = doc_codfin
                                                 AND ddo_codreg = doc_codreg
                                                 AND ddo_tipdoc = doc_tipdoc
                                                 AND ddo_gestion = doc_gestion
                                                 AND ddo_numero = doc_numero
                                                 AND ddo_estado = 'A'
                                                 AND doc_inconfirma = 'N'
                                                 AND   ddo_codfin
                                                    || ddo_codreg
                                                    || ddo_tipdoc
                                                    || ddo_gestion
                                                    || ddo_numero <>
                                                           vact_codfin
                                                        || vddo_codreg
                                                        || vact_tipdoc
                                                        || xgestion
                                                        || vact_numero))
            ORDER BY   act_codrub, act_codreg, act_codigo;
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND
        THEN
            vact_desactivo := 'NO Existe Activo';
    END;

    PROCEDURE maximodetdocumentos (vtpo_codfin   IN     VARCHAR2,
                                   vtpo_codreg   IN     VARCHAR2,
                                   vtpo_tipdoc   IN     VARCHAR2,
                                   vtpo_numero   IN     NUMBER,
                                   num              OUT NUMBER)
    IS
    BEGIN
        SELECT   NVL (MAX (ddo_item), 0) + 1
          INTO   num
          FROM   det_documentos
         WHERE       ddo_codfin = vtpo_codfin
                 AND ddo_codreg = vtpo_codreg
                 AND ddo_tipdoc = vtpo_tipdoc
                 AND ddo_gestion = xgestion
                 AND ddo_numero = vtpo_numero;
    END;

    PROCEDURE funcionarioactivos (vtpo_codreg   IN     VARCHAR2,
                                  vtpo_codfin   IN     VARCHAR2,
                                  codfun           OUT VARCHAR2)
    IS
    BEGIN
        IF vtpo_codfin = '01'
        THEN
            SELECT   reg_codfun
              INTO   codfun
              FROM   regionales
             WHERE   reg_codigo = vtpo_codreg;
        ELSE
            SELECT   MAX (fun_codigo)
              INTO   codfun
              FROM   funcionarios
             WHERE       fun_codigo >= '99900'
                     AND fun_estado = 'A'
                     AND fun_codreg = vtpo_codreg
                     AND fun_codfin = vtpo_codfin;
        END IF;
    END;

    PROCEDURE oficinafuncionarioactivos (vtpo_codfun   IN     VARCHAR2,
                                         codofi           OUT VARCHAR2)
    IS
    BEGIN
        SELECT   fun_codofi
          INTO   codofi
          FROM   funcionarios
         WHERE   fun_codigo = vtpo_codfun;
    END;

    PROCEDURE insertarubicaciones (vubi_codigo        IN     VARCHAR2,
                                   vubi_descripcion   IN     VARCHAR2,
                                   vubi_direccion     IN     VARCHAR2,
                                   vubi_codreg        IN     VARCHAR2,
                                   vubi_usuario       IN     VARCHAR2,
                                   vestado            IN     NUMBER,
                                   vres                  OUT NUMBER,
                                   vmsg                  OUT VARCHAR2)
    IS
        ccant   NUMBER;
    BEGIN
        IF vestado = 1
        THEN                                             /*Insertar Registro*/
            INSERT INTO ubicaciones (ubi_codigo,
                                     ubi_descripcion,
                                     ubi_direccion,
                                     ubi_codreg,
                                     ubi_fecalta,
                                     ubi_usuario,
                                     ubi_estado)
              VALUES   (vubi_codigo,
                        vubi_descripcion,
                        vubi_direccion,
                        vubi_codreg,
                        SYSDATE,
                        vubi_usuario,
                        'A');

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 2
        THEN                                            /*Modificar Registro*/
            UPDATE   ubicaciones
               SET   ubi_descripcion = vubi_descripcion,
                     ubi_direccion = vubi_direccion,
                     ubi_fecmodi = SYSDATE
             WHERE   ubi_codigo = vubi_codigo AND ubi_codreg = vubi_codreg;

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 3
        THEN                                             /*Eliminar Registro*/
            ccant := 0;

            SELECT   COUNT (1)
              INTO   ccant
              FROM   (  SELECT   act_codrub, act_codreg, act_codigo
                          FROM   activos
                         WHERE       act_codubi = vubi_codigo
                                 AND act_codreg = vubi_codreg
                                 AND act_estado = 'A'
                      GROUP BY   act_codrub, act_codreg, act_codigo);

            IF ccant = 0
            THEN
                UPDATE   ubicaciones
                   SET   ubi_estado = 'B', ubi_fecmodi = SYSDATE
                 WHERE   ubi_codigo = vubi_codigo
                         AND ubi_codreg = vubi_codreg;

                COMMIT;
                vres := '0';
                vmsg := '0';
            ELSE
                vres := '-1';
                vmsg :=
                    'Esta Ubicacion esta siendo usada y NO puede ser ELIMINADA';
            END IF;
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe la Ubicacion';
        WHEN OTHERS
        THEN
            vres := '1';

            IF SQLCODE = -2292
            THEN
                vmsg :=
                    'Restriccion de integridad : No se puede eliminar la Ubicacion';
            ELSE
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    FUNCTION listarubicaciones (vcod_reg IN VARCHAR2)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   ubi_codigo,
                       ubi_descripcion,
                       ubi_direccion,
                       ubi_codreg,
                       reg_descripcion
                FROM   ubicaciones, regionales
               WHERE       ubi_estado = 'A'
                       AND ubi_codreg = reg_codigo
                       AND ubi_codreg = vcod_reg
            ORDER BY   ubi_codigo;

        RETURN cr;
    END;

    FUNCTION listardocumentos (vdoc_codreg   IN VARCHAR2,
                               vdoc_tipdoc   IN VARCHAR2,
                               vdoc_numero   IN NUMBER)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
            SELECT   doc_codreg,
                     doc_tipdoc,
                     doc_numero,
                     TO_CHAR (doc_fecha, 'dd/mm/yyyy') doc_fecha,
                     doc_codofiorigen,
                     doc_codfunorigen,
                     doc_codubiorigen,
                     doc_codfinorigen,
                     doc_codpryorigen,
                     doc_codofidestino,
                     doc_codfundestino,
                     doc_codubidestino,
                     doc_codfindestino,
                     doc_codprydestino,
                     doc_observacion,
                     doc_inconfirma,
                     doc_usuario,
                     TO_CHAR (doc_fecsis, 'dd/mm/yyyy') doc_fecsis,
                     doc_estado
              FROM   documentos
             WHERE       doc_codreg = vdoc_codreg
                     AND doc_tipdoc = vdoc_tipdoc
                     AND doc_numero = vdoc_numero;

        RETURN cr;
    END;

    FUNCTION listaractivos (vact_codrub   IN VARCHAR2,
                            vact_codreg   IN VARCHAR2,
                            vact_codigo   IN NUMBER)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   act_codrub,
                       act_codreg,
                       act_codigo,
                       act_codgrp,
                       act_codpar,
                       act_codofi,
                       act_codfun,
                       act_codubi,
                       act_codfin,
                       act_codpry,
                       act_codmot,
                       TO_CHAR (act_feccompra, 'dd/mm/yyyy') act_feccompra,
                       act_tipcam,
                       act_tipufv,
                       act_umanejo,
                       act_descripcion,
                       act_desadicional,
                       act_accesorios,
                       act_proveedor,
                       act_marca,
                       act_modelo,
                       act_serie1,
                       act_serie2,
                       act_docreferencia,
                       TO_CHAR (act_fecreferencia, 'dd/mm/yyyy')
                           act_fecreferencia,
                       act_docrefotro,
                       act_placa,
                       act_aniofabricacion,
                       act_color,
                       act_procedencia,
                       act_gobmunicipal,
                       act_valcobol,
                       act_valcodol,
                       act_valcoufv,
                       TO_CHAR (act_fecbaja, 'dd/mm/yyyy') act_fecbaja,
                       act_ordencompra,
                       act_numfactura,
                       act_numcomprobante,
                       act_codanterior,
                       act_indetiqueta,
                       TO_CHAR (rev_fecha, 'dd/mm/yyyy') rev_fecha,
                       rev_vidaut,
                       rev_estadoactivo,
                       rev_desestado,
                       rev_indepreciacion,
                       rev_numdocumento
                FROM   activos, revaluos
               WHERE       act_codrub = vact_codrub
                       AND act_codregional = vact_codreg
                       AND act_codigo = vact_codigo
                       AND act_estado = 'A'
                       AND rev_codrub = act_codrub
                       AND rev_codreg = act_codreg
                       AND rev_codigo = act_codigo
                       AND rev_correlmre = 0
                       AND rev_numrevaluo = 0
            ORDER BY   act_descripcion,
                       act_codrub,
                       act_codreg,
                       act_codigo;

        RETURN cr;
    END;

    FUNCTION listaractivos2 (vact_codfin         IN VARCHAR2,
                             vact_codreg         IN VARCHAR2,
                             vact_tipdoc         IN VARCHAR2,
                             vact_numero         IN NUMBER,
                             vact_codfunorigen   IN VARCHAR2,
                             vact_fecha          IN VARCHAR2,
                             vact_rubcod         IN VARCHAR2,
                             vact_inicod         IN NUMBER,
                             vact_fincod         IN NUMBER)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        IF vact_tipdoc IN ('D', 'T')
        THEN
            OPEN cr FOR
                  SELECT      act_codrub
                           || '-'
                           || act_codreg
                           || '-'
                           || TO_CHAR (act_codigo, '00000'),
                              act_codrub
                           || '-'
                           || act_codreg
                           || '-'
                           || TO_CHAR (act_codigo, '00000')
                           || ' '
                           || grp_descripcion
                           || ' '
                           || act_descripcion
                    FROM   activos, revaluos, grupos
                   WHERE       act_codfin = vact_codfin
                           AND act_codregional = vact_codreg
                           AND act_codfun = vact_codfunorigen
                           AND act_estado = 'A'
                           AND act_propiedad = 'S'
                           AND rev_fecha <= TO_DATE (vact_fecha, 'dd/mm/yyyy')
                           AND TRUNC (act_fecsis) <=
                                  TO_DATE (vact_fecha, 'dd/mm/yyyy')
                           AND act_codgrp = grp_codigo
                           AND act_codrub = grp_codrub
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_correlmre = 0
                           AND rev_numrevaluo = 0
                           AND ( (act_codrub, act_codreg, act_codigo) NOT IN
                                        (SELECT   ddo_codrubactual,
                                                  ddo_codregactual,
                                                  ddo_codigo
                                           FROM   det_documentos
                                          WHERE       ddo_codfin = vact_codfin
                                                  AND ddo_codreg = vact_codreg
                                                  AND ddo_tipdoc = vact_tipdoc
                                                  AND ddo_gestion = xgestion
                                                  AND ddo_numero = vact_numero
                                                  AND ddo_estado = 'A')
                                AND (act_codrub,
                                     act_codreg,
                                     act_codigo,
                                     act_codfin) NOT IN
                                           (SELECT   ddo_codrubactual,
                                                     ddo_codregactual,
                                                     ddo_codigo,
                                                     ddo_codfin
                                              FROM   det_documentos, documentos
                                             WHERE   ddo_codfin = doc_codfin
                                                     AND ddo_codreg =
                                                            doc_codreg
                                                     AND ddo_tipdoc =
                                                            doc_tipdoc
                                                     AND ddo_gestion =
                                                            doc_gestion
                                                     AND ddo_numero =
                                                            doc_numero
                                                     AND ddo_estado = 'A'
                                                     AND doc_inconfirma = 'N'
                                                     AND   ddo_codfin
                                                        || ddo_codreg
                                                        || ddo_tipdoc
                                                        || ddo_gestion
                                                        || ddo_numero <>
                                                               vact_codfin
                                                            || vact_codreg
                                                            || vact_tipdoc
                                                            || xgestion
                                                            || vact_numero))
                ORDER BY   act_codrub, act_codreg, act_codigo;
        ELSE
            OPEN cr FOR
                  SELECT      act_codrub
                           || '-'
                           || act_codreg
                           || '-'
                           || TO_CHAR (act_codigo, '00000'),
                              act_codrub
                           || '-'
                           || act_codreg
                           || '-'
                           || TO_CHAR (act_codigo, '00000')
                           || ' '
                           || grp_descripcion
                           || ' '
                           || act_descripcion
                    FROM   activos, revaluos, grupos
                   WHERE       act_codrub = vact_rubcod
                           AND act_codregional = vact_codreg
                           AND act_codigo BETWEEN vact_inicod AND vact_fincod
                           AND act_codfin = vact_codfin
                           AND act_codfun = vact_codfunorigen
                           AND act_estado = 'A'
                           AND act_propiedad = 'N'
                           AND rev_fecha <= TO_DATE (vact_fecha, 'dd/mm/yyyy')
                           AND TRUNC (act_fecsis) <=
                                  TO_DATE (vact_fecha, 'dd/mm/yyyy')
                           AND act_codgrp = grp_codigo
                           AND act_codrub = grp_codrub
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_correlmre = 0
                           AND rev_numrevaluo = 0
                           AND ( (act_codrub,
                                  act_codreg,
                                  act_codigo,
                                  act_codfin) NOT IN
                                        (SELECT   ddo_codrubactual,
                                                  ddo_codregactual,
                                                  ddo_codigo,
                                                  ddo_codfin
                                           FROM   det_documentos
                                          WHERE       ddo_codfin = vact_codfin
                                                  AND ddo_codreg = vact_codreg
                                                  AND ddo_tipdoc = vact_tipdoc
                                                  AND ddo_gestion = xgestion
                                                  AND ddo_numero = vact_numero
                                                  AND ddo_estado = 'A')
                                AND (act_codrub, act_codreg, act_codigo) NOT IN
                                           (SELECT   ddo_codrubactual,
                                                     ddo_codregactual,
                                                     ddo_codigo
                                              FROM   det_documentos, documentos
                                             WHERE   ddo_codfin = doc_codfin
                                                     AND ddo_codreg =
                                                            doc_codreg
                                                     AND ddo_tipdoc =
                                                            doc_tipdoc
                                                     AND ddo_gestion =
                                                            doc_gestion
                                                     AND ddo_numero =
                                                            doc_numero
                                                     AND ddo_estado = 'A'
                                                     AND doc_inconfirma = 'N'
                                                     AND   ddo_codfin
                                                        || ddo_codreg
                                                        || ddo_tipdoc
                                                        || ddo_gestion
                                                        || ddo_numero <>
                                                               vact_codfin
                                                            || vact_codreg
                                                            || vact_tipdoc
                                                            || xgestion
                                                            || vact_numero))
                ORDER BY   act_codrub, act_codreg, act_codigo;
        END IF;

        RETURN cr;
    END;

    FUNCTION listaractivos3 (vact_codrub   IN VARCHAR2,
                             vact_codreg   IN VARCHAR2,
                             vact_descri   IN VARCHAR2,
                             vact_codgrp   IN VARCHAR2,
                             vact_codfin   IN VARCHAR2,
                             vestado       IN NUMBER)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        IF vestado IN (2, 3)
        THEN
            OPEN cr FOR
                  SELECT   act_codrub,
                           act_codreg,
                           act_codigo,
                           act_descripcion
                    FROM   activos, revaluos, estados
                   WHERE       act_codrub = vact_codrub
                           AND act_codregional = vact_codreg
                           AND act_codgrp = vact_codgrp
                           AND act_codfin = vact_codfin
                           AND UPPER (act_descripcion) LIKE UPPER (vact_descri)
                           AND act_estado = 'A'
                           --AND act_indetiqueta = 'S'
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_correlmre = 0
                           AND rev_numrevaluo = 0
                           AND rev_estadoactivo = estado
                ORDER BY   act_codigo;
        ELSE
            OPEN cr FOR
                  SELECT   act_codrub,
                           act_codreg,
                           act_codigo,
                           act_descripcion
                    FROM   activos, revaluos, estados
                   WHERE       act_codrub = vact_codrub
                           AND act_codregional = vact_codreg
                           AND act_codgrp = vact_codgrp
                           AND act_codfin = vact_codfin
                           AND UPPER (act_descripcion) LIKE UPPER (vact_descri)
                           AND act_estado = 'A'
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_correlmre = 0
                           AND rev_numrevaluo = 0
                           AND rev_estadoactivo = estado
                ORDER BY   act_codigo;
        END IF;

        RETURN cr;
    END;

    FUNCTION listaractivos4 (vact_codrub   IN VARCHAR2,
                             vact_codreg   IN VARCHAR2,
                             vact_descri   IN VARCHAR2,
                             vact_codgrp   IN VARCHAR2,
                             vact_codfin   IN VARCHAR2,
                             vestado       IN NUMBER)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        IF vestado IN (2, 3)
        THEN
            OPEN cr FOR
                  SELECT   act_codrub,
                           act_codreg,
                           act_codigo,
                           act_codgrp,
                           act_codpar,
                           act_codofi,
                           act_codfun,
                           act_codubi,
                           act_codfin,
                           act_codpry,
                           act_codmot,
                           TO_CHAR (act_feccompra, 'dd/mm/yyyy') act_feccompra,
                           act_tipcam,
                           act_tipufv,
                           act_umanejo,
                           act_descripcion,
                           act_desadicional,
                           act_accesorios,
                           act_proveedor,
                           act_marca,
                           act_modelo,
                           act_serie1,
                           act_serie2,
                           act_docreferencia,
                           TO_CHAR (act_fecreferencia, 'dd/mm/yyyy')
                               act_fecreferencia,
                           act_docrefotro,
                           act_placa,
                           act_aniofabricacion,
                           act_color,
                           act_procedencia,
                           act_gobmunicipal,
                           act_valcobol,
                           act_valcodol,
                           act_valcoufv,
                           TO_CHAR (act_fecbaja, 'dd/mm/yyyy') act_fecbaja,
                           act_ordencompra,
                           act_numfactura,
                           act_numcomprobante,
                           act_codanterior,
                           act_indetiqueta,
                           TO_CHAR (rev_fecha, 'dd/mm/yyyy') rev_fecha,
                           rev_vidaut,
                           rev_estadoactivo,
                           desestado,
                           rev_desestado,
                           rev_indepreciacion,
                           rev_numdocumento
                    FROM   activos, revaluos, estados
                   WHERE       act_codrub = vact_codrub
                           AND act_codregional = vact_codreg
                           AND act_codgrp = vact_codgrp
                           AND act_codfin = vact_codfin
                           AND UPPER (act_descripcion) LIKE UPPER (vact_descri)
                           AND act_estado = 'A'
                           --AND act_indetiqueta = 'S'
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_correlmre = 0
                           AND rev_numrevaluo = 0
                           AND rev_estadoactivo = estado
                ORDER BY   act_codigo;
        ELSE
            OPEN cr FOR
                  SELECT   act_codrub,
                           act_codreg,
                           act_codigo,
                           act_codgrp,
                           act_codpar,
                           act_codofi,
                           act_codfun,
                           act_codubi,
                           act_codfin,
                           act_codpry,
                           act_codmot,
                           TO_CHAR (act_feccompra, 'dd/mm/yyyy') act_feccompra,
                           act_tipcam,
                           act_tipufv,
                           act_umanejo,
                           act_descripcion,
                           act_desadicional,
                           act_accesorios,
                           act_proveedor,
                           act_marca,
                           act_modelo,
                           act_serie1,
                           act_serie2,
                           act_docreferencia,
                           TO_CHAR (act_fecreferencia, 'dd/mm/yyyy')
                               act_fecreferencia,
                           act_docrefotro,
                           act_placa,
                           act_aniofabricacion,
                           act_color,
                           act_procedencia,
                           act_gobmunicipal,
                           act_valcobol,
                           act_valcodol,
                           act_valcoufv,
                           TO_CHAR (act_fecbaja, 'dd/mm/yyyy') act_fecbaja,
                           act_ordencompra,
                           act_numfactura,
                           act_numcomprobante,
                           act_codanterior,
                           act_indetiqueta,
                           TO_CHAR (rev_fecha, 'dd/mm/yyyy') rev_fecha,
                           rev_vidaut,
                           rev_estadoactivo,
                           desestado,
                           rev_desestado,
                           rev_indepreciacion,
                           rev_numdocumento
                    FROM   activos, revaluos, estados
                   WHERE       act_codrub = vact_codrub
                           AND act_codregional = vact_codreg
                           AND act_codgrp = vact_codgrp
                           AND act_codfin = vact_codfin
                           AND UPPER (act_descripcion) LIKE UPPER (vact_descri)
                           AND act_estado = 'A'
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_correlmre = 0
                           AND rev_numrevaluo = 0
                           AND rev_estadoactivo = estado
                ORDER BY   act_codigo;
        END IF;

        RETURN cr;
    END;

    FUNCTION listarmejorasrebajas (vmre_codrub   IN VARCHAR2,
                                   vmre_codreg   IN VARCHAR2,
                                   vmre_codigo   IN NUMBER,
                                   vmre_corel    IN NUMBER)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
            SELECT   mre_codrub,
                     mre_codreg,
                     mre_codigo,
                     mre_inmejreb,
                     mre_corel,
                     TO_CHAR (mre_fecha, 'dd/mm/yyyy') mre_fecha,
                     mre_tipcam,
                     mre_tipufv,
                     mre_descripcion,
                     mre_desadicional,
                     mre_proveedor,
                     mre_marca,
                     mre_modelo,
                     mre_serie,
                     mre_docreferencia,
                     TO_CHAR (mre_fecreferencia, 'dd/mm/yyyy')
                         mre_fecreferencia,
                     mre_valbol,
                     mre_valdol,
                     mre_valufv,
                     mre_ordencompra,
                     mre_numfactura,
                     mre_numcomprobante,
                     TO_CHAR (rev_fecha, 'dd/mm/yyyy') rev_fecha,
                     rev_vidaut,
                     rev_estadoactivo,
                     rev_desestado,
                     rev_numdocumento
              FROM   mejorasrebajas, revaluos
             WHERE       mre_codrub = vmre_codrub
                     AND mre_codreg = vmre_codreg
                     AND mre_codigo = vmre_codigo
                     AND mre_corel = vmre_corel
                     AND mre_estado = 'A'
                     AND rev_codrub = mre_codrub
                     AND rev_codreg = mre_codreg
                     AND rev_codigo = mre_codigo
                     AND rev_correlmre = mre_corel
                     AND rev_numrevaluo = 0;

        RETURN cr;
    END;

    FUNCTION listarmejorasrebajas3 (vact_codrub   IN VARCHAR2,
                                    vact_codreg   IN VARCHAR2,
                                    vact_descri   IN VARCHAR2,
                                    vparametro    IN NUMBER)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        IF vparametro = 1
        THEN
            OPEN cr FOR
                  SELECT   act_codrub,
                           act_codreg,
                           act_codigo,
                           0 mre_corel,
                           act_descripcion
                    FROM   activos, revaluos
                   WHERE       act_codrub = vact_codrub
                           AND act_codreg = vact_codreg
                           AND UPPER (act_descripcion) LIKE UPPER (vact_descri)
                           AND act_estado = 'A'
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_correlmre = 0
                           AND rev_numrevaluo = 0
                ORDER BY   act_descripcion, mre_corel;
        ELSE
            OPEN cr FOR
                  SELECT   act_codrub,
                           act_codreg,
                           act_codigo,
                           mre_corel,
                           act_descripcion
                    FROM   activos, revaluos, mejorasrebajas
                   WHERE       act_codrub = vact_codrub
                           AND act_codreg = vact_codreg
                           AND UPPER (act_descripcion) LIKE UPPER (vact_descri)
                           AND act_estado = 'A'
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_numrevaluo = 0
                           AND rev_estado = 'A'
                           AND mre_codrub = rev_codrub
                           AND mre_codreg = rev_codreg
                           AND mre_codigo = rev_codigo
                           AND mre_corel = rev_correlmre
                           AND mre_estado = 'A'
                ORDER BY   act_descripcion, mre_corel;
        END IF;

        RETURN cr;
    END;

    FUNCTION listarmejorasrebajas4 (vact_codrub   IN VARCHAR2,
                                    vact_codreg   IN VARCHAR2,
                                    vact_descri   IN VARCHAR2,
                                    vparametro    IN NUMBER)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        IF vparametro = 1
        THEN
            OPEN cr FOR
                  SELECT   act_codrub,
                           act_codreg,
                           act_codigo,
                           act_descripcion,
                           0 mre_corel
                    FROM   activos, revaluos
                   WHERE       act_codrub = vact_codrub
                           AND act_codreg = vact_codreg
                           AND UPPER (act_descripcion) LIKE UPPER (vact_descri)
                           AND act_estado = 'A'
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_correlmre = 0
                           AND rev_numrevaluo = 0
                ORDER BY   act_descripcion, mre_corel;
        ELSE
            OPEN cr FOR
                  SELECT   mre_codrub,
                           mre_codreg,
                           mre_codigo,
                           act_descripcion,
                           mre_inmejreb,
                           mre_corel,
                           TO_CHAR (mre_fecha, 'dd/mm/yyyy') mre_fecha,
                           mre_tipcam,
                           mre_tipufv,
                           mre_descripcion,
                           mre_desadicional,
                           mre_proveedor,
                           mre_marca,
                           mre_modelo,
                           mre_serie,
                           mre_docreferencia,
                           TO_CHAR (mre_fecreferencia, 'dd/mm/yyyy')
                               mre_fecreferencia,
                           mre_valbol,
                           mre_valdol,
                           mre_valufv,
                           mre_ordencompra,
                           mre_numfactura,
                           mre_numcomprobante,
                           TO_CHAR (rev_fecha, 'dd/mm/yyyy') rev_fecha,
                           rev_vidaut,
                           rev_estadoactivo,
                           rev_desestado,
                           rev_numdocumento
                    FROM   activos, mejorasrebajas, revaluos
                   WHERE       act_codrub = vact_codrub
                           AND act_codreg = vact_codreg
                           AND UPPER (act_descripcion) LIKE UPPER (vact_descri)
                           AND act_estado = 'A'
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_numrevaluo = 0
                           AND rev_estado = 'A'
                           AND mre_codrub = rev_codrub
                           AND mre_codreg = rev_codreg
                           AND mre_codigo = rev_codigo
                           AND mre_corel = rev_correlmre
                           AND mre_estado = 'A'
                ORDER BY   act_descripcion, mre_corel;
        END IF;

        RETURN cr;
    END;

    FUNCTION listarrevaluos (vrev_codrub       IN VARCHAR2,
                             vrev_codreg       IN VARCHAR2,
                             vrev_codigo       IN NUMBER,
                             vrev_numrevaluo   IN NUMBER)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
            SELECT   rev_codrub,
                     rev_codreg,
                     rev_codigo,
                     rev_numrevaluo,
                     TO_CHAR (rev_fecha, 'dd/mm/yyyy') rev_fecha,
                     rev_tipcam,
                     rev_tipufv,
                     rev_valbol,
                     rev_valdol,
                     rev_valufv,
                     rev_depacubol,
                     rev_depacudol,
                     rev_depacuufv,
                     rev_vidaut,
                     rev_estadoactivo,
                     rev_desestado,
                     rev_indepreciacion,
                     rev_numdocumento
              FROM   revaluos
             WHERE       rev_codrub = vrev_codrub
                     AND rev_codreg = vrev_codreg
                     AND rev_codigo = vrev_codigo
                     AND rev_numrevaluo = vrev_numrevaluo
                     AND rev_estado = 'A';

        RETURN cr;
    END;

    FUNCTION listarrevaluos3 (vact_codrub   IN VARCHAR2,
                              vact_codreg   IN VARCHAR2,
                              vact_descri   IN VARCHAR2,
                              vact_codgrp   IN VARCHAR2,
                              vparametro    IN NUMBER)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        IF vparametro = 1
        THEN
            OPEN cr FOR
                  SELECT   act_codrub,
                           act_codreg,
                           act_codigo,
                           rev_numrevaluo,
                           act_descripcion,
                           act_codgrp
                    FROM   activos, revaluos
                   WHERE       act_codrub = vact_codrub
                           AND act_codregional = vact_codreg
                           AND act_codgrp = vact_codgrp
                           AND UPPER (act_descripcion) LIKE UPPER (vact_descri)
                           AND act_estado = 'A'
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_correlmre = 0
                           AND rev_numrevaluo = 0
                           AND rev_estado = 'A'
                ORDER BY   act_codrub, act_codreg, act_codigo;
        ELSIF vparametro = 5
        THEN
            OPEN cr FOR
                  SELECT   act_codrub,
                           act_codreg,
                           act_codigo,
                           rev_numrevaluo,
                           act_descripcion,
                           act_codgrp
                    FROM   activos a1, revaluos
                   WHERE       act_codrub = vact_codrub
                           AND act_codregional = vact_codreg
                           AND act_codgrp = vact_codgrp
                           AND UPPER (act_descripcion) LIKE UPPER (vact_descri)
                           AND act_estado = 'A'
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_estado = 'A'
                           AND rev_indepreciacion = 'S'
                           AND rev_numrevaluo <> 0
                ORDER BY   act_codrub, act_codreg, act_codigo;
        ELSE
            OPEN cr FOR
                  SELECT   act_codrub,
                           act_codreg,
                           act_codigo,
                           rev_numrevaluo,
                           act_descripcion,
                           act_codgrp
                    FROM   activos a1, revaluos
                   WHERE       act_codrub = vact_codrub
                           AND act_codregional = vact_codreg
                           AND act_codgrp = vact_codgrp
                           AND UPPER (act_descripcion) LIKE UPPER (vact_descri)
                           AND act_estado = 'A'
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_estado = 'A'
                           AND rev_indepreciacion = 'S'
                           AND rev_numrevaluo =
                                  (SELECT   MAX (rev_numrevaluo)
                                     FROM   revaluos
                                    WHERE       rev_codrub = a1.act_codrub
                                            AND rev_codreg = a1.act_codreg
                                            AND rev_codigo = a1.act_codigo
                                            AND rev_estado = 'A'
                                            AND rev_indepreciacion = 'S'
                                            AND rev_numrevaluo <> 0)
                ORDER BY   act_codrub, act_codreg, act_codigo;
        END IF;

        RETURN cr;
    END;

    FUNCTION listarrevaluos4 (vact_codrub   IN VARCHAR2,
                              vact_codreg   IN VARCHAR2,
                              vact_descri   IN VARCHAR2,
                              vact_codgrp   IN VARCHAR2,
                              vparametro    IN NUMBER)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        IF vparametro = 1
        THEN
            OPEN cr FOR
                  SELECT   act_codrub,
                           act_codreg,
                           act_codigo,
                           act_descripcion,
                           act_codgrp,
                           rev_numrevaluo
                    FROM   activos, revaluos
                   WHERE       act_codrub = vact_codrub
                           AND act_codregional = vact_codreg
                           AND act_codgrp = vact_codgrp
                           AND UPPER (act_descripcion) LIKE UPPER (vact_descri)
                           AND act_estado = 'A'
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_correlmre = 0
                           AND rev_numrevaluo = 0
                           AND rev_estado = 'A'
                ORDER BY   act_codrub, act_codreg, act_codigo;
        ELSIF vparametro = 5
        THEN
            OPEN cr FOR
                  SELECT   rev_codrub,
                           rev_codreg,
                           rev_codigo,
                           act_descripcion,
                           act_codgrp,
                           rev_numrevaluo,
                           TO_CHAR (rev_fecha, 'dd/mm/yyyy') rev_fecha,
                           rev_tipcam,
                           rev_tipufv,
                           rev_valbol,
                           rev_valdol,
                           rev_valufv,
                           rev_depacubol,
                           rev_depacudol,
                           rev_depacuufv,
                           rev_vidaut,
                           desestado,
                           rev_desestado,
                           rev_indepreciacion,
                           rev_numdocumento
                    FROM   activos a1, revaluos, estados
                   WHERE       act_codrub = vact_codrub
                           AND act_codregional = vact_codreg
                           AND act_codgrp = vact_codgrp
                           AND UPPER (act_descripcion) LIKE UPPER (vact_descri)
                           AND act_estado = 'A'
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_numrevaluo <> 0
                           AND rev_estado = 'A'
                           AND rev_indepreciacion = 'S'
                           AND rev_numrevaluo <> 0
                           AND rev_estadoactivo = estado
                ORDER BY   act_codrub, act_codreg, act_codigo;
        ELSE
            OPEN cr FOR
                  SELECT   rev_codrub,
                           rev_codreg,
                           rev_codigo,
                           act_descripcion,
                           act_codgrp,
                           rev_numrevaluo,
                           TO_CHAR (rev_fecha, 'dd/mm/yyyy') rev_fecha,
                           rev_tipcam,
                           rev_tipufv,
                           rev_valbol,
                           rev_valdol,
                           rev_valufv,
                           rev_depacubol,
                           rev_depacudol,
                           rev_depacuufv,
                           rev_vidaut,
                           rev_estadoactivo,
                           rev_desestado,
                           rev_indepreciacion,
                           rev_numdocumento
                    FROM   activos a1, revaluos
                   WHERE       act_codrub = vact_codrub
                           AND act_codregional = vact_codreg
                           AND act_codgrp = vact_codgrp
                           AND UPPER (act_descripcion) LIKE UPPER (vact_descri)
                           AND act_estado = 'A'
                           AND rev_codrub = act_codrub
                           AND rev_codreg = act_codreg
                           AND rev_codigo = act_codigo
                           AND rev_numrevaluo <> 0
                           AND rev_estado = 'A'
                           AND rev_indepreciacion = 'S'
                           AND rev_numrevaluo =
                                  (SELECT   MAX (rev_numrevaluo)
                                     FROM   revaluos
                                    WHERE       rev_codrub = a1.act_codrub
                                            AND rev_codreg = a1.act_codreg
                                            AND rev_codigo = a1.act_codigo
                                            AND rev_estado = 'A'
                                            AND rev_indepreciacion = 'S'
                                            AND rev_numrevaluo <> 0)
                ORDER BY   act_codrub, act_codreg, act_codigo;
        END IF;

        RETURN cr;
    END;

    PROCEDURE depreciacion (ddep_fecha       IN     CHAR,
                            vdep_tipcamini   IN     NUMBER,
                            vdep_tipcamfin   IN     NUMBER,
                            vdep_tipufvini   IN     NUMBER,
                            vdep_tipufvfin   IN     NUMBER,
                            vdep_usuario     IN     VARCHAR2,
                            vestado          IN     NUMBER,
                            vdep_codrub      IN     VARCHAR2,
                            vdep_codreg      IN     VARCHAR2,
                            vdep_codini      IN     VARCHAR2,
                            vdep_codfin      IN     VARCHAR2,
                            vres                OUT NUMBER,
                            vmsg                OUT VARCHAR2)
    IS
        CURSOR cr
        IS
              SELECT   act_codrub,
                       act_codreg,
                       act_codigo,
                       0 mre_corel,
                       rev_numrevaluo,
                       act_estado,
                       act_fecbaja,
                       rev_fecha,
                       rev_fecsis
                FROM   activos, revaluos
               WHERE       act_codrub = vdep_codrub
                       AND act_codreg = vdep_codreg
                       AND act_codigo BETWEEN vdep_codini AND vdep_codfin
                       AND rev_fecha <=
                              LAST_DAY (TO_DATE (ddep_fecha, 'dd/mm/yyyy'))
                       AND TRUNC (act_fecsis) <=
                              LAST_DAY (TO_DATE (ddep_fecha, 'dd/mm/yyyy'))
                       AND rev_codrub = act_codrub
                       AND rev_codreg = act_codreg
                       AND rev_codigo = act_codigo
                       AND rev_correlmre = 0
            /*AND act_estado = 'A';*/
            ORDER BY   act_codrub,
                       act_codreg,
                       act_codigo,
                       rev_numrevaluo;

        /*UNION
        SELECT mre_codrub, mre_codreg, mre_codigo, mre_corel
          FROM mejorasrebajas
         WHERE mre_estado = 'A';*/
        factoractualizacion   NUMBER := 0;
        max_numdepreciacion   NUMBER := 0;
        pdepreciaciones       depreciaciones%ROWTYPE;
        prevaluos             revaluos%ROWTYPE;
        vsecuencia            NUMBER := 0;
        xnum                  NUMBER := 0;
        cestado               CHAR (1);
        cgestion              CHAR (4);
        cmes                  CHAR (2);
        cgesbaja              CHAR (4);
        cmesbaja              CHAR (2);
        vdep_fecha            DATE;
        vdif                  NUMBER := 0;
        vdif1                 NUMBER := 0;
        vutil                 NUMBER := 0;
        vutilcte              NUMBER := 0;
        a                     CHAR (4);
        m                     CHAR (2);
        d                     CHAR (2);
        vdr_fecha             VARCHAR2 (10);
        a1                    CHAR (4);
        m1                    CHAR (2);
    BEGIN
        cestado := 'S';
        vdep_fecha := TO_DATE (ddep_fecha, 'dd/mm/yyyy');

        SELECT   secuencia
          INTO   vsecuencia
          FROM   mesdepreciacion
         WHERE   gestion = TO_CHAR (vdep_fecha, 'yyyy')
                 AND mes = TO_CHAR (vdep_fecha, 'mm');

        IF vsecuencia <> 1
        THEN
            SELECT   estado, gestion, mes
              INTO   cestado, cgestion, cmes
              FROM   mesdepreciacion
             WHERE   secuencia = vsecuencia - 1;

            IF cestado = 'N'
            THEN
                vres := '-1';
                vmsg :=
                       'No se genero el mes '
                    || cmes
                    || ' de la gestion '
                    || cgestion;
            END IF;
        END IF;

        IF cestado = 'S'
        THEN
            xnum := 0;
            pdepreciaciones := NULL;

            FOR cur IN cr
            LOOP
                --dbms_output.put_line(cur.act_codrub||cur.act_codreg||to_char(cur.act_codigo,'00000'));
                xnum := xnum + 1;

                SELECT   *
                  INTO   prevaluos
                  FROM   revaluos
                 WHERE       rev_codrub = cur.act_codrub
                         AND rev_codreg = cur.act_codreg
                         AND rev_codigo = cur.act_codigo
                         AND rev_correlmre = cur.mre_corel
                         AND rev_numrevaluo = cur.rev_numrevaluo;

                SELECT   NVL (MAX (dep_numdepreciacion), 0) + 1
                  INTO   max_numdepreciacion
                  FROM   depreciaciones
                 WHERE       dep_codrub = cur.act_codrub
                         AND dep_codreg = cur.act_codreg
                         AND dep_codigo = cur.act_codigo
                         AND dep_correlmre = cur.mre_corel
                         AND dep_numrevaluo = cur.rev_numrevaluo;

                vutil := 0;
                vutilcte := 0;

                IF prevaluos.rev_vidaut = 0
                THEN
                    prevaluos.rev_vidaut := 999;
                ELSE
                    IF prevaluos.rev_vidaut <= max_numdepreciacion
                    THEN
                        vutil := prevaluos.rev_vidaut;
                        vutilcte := prevaluos.rev_vidaut;
                        prevaluos.rev_vidaut := max_numdepreciacion + 12;
                    END IF;
                END IF;

                IF max_numdepreciacion <= prevaluos.rev_vidaut
                THEN
                    pdepreciaciones.dep_codrub := cur.act_codrub;
                    pdepreciaciones.dep_codreg := cur.act_codreg;
                    pdepreciaciones.dep_codigo := cur.act_codigo;
                    pdepreciaciones.dep_numrevaluo := cur.rev_numrevaluo;
                    pdepreciaciones.dep_numdepreciacion := max_numdepreciacion;
                    pdepreciaciones.dep_fecha := vdep_fecha;
                    pdepreciaciones.dep_tipcamini := vdep_tipcamini;
                    pdepreciaciones.dep_tipcamfin := vdep_tipcamfin;
                    pdepreciaciones.dep_tipufvini := vdep_tipufvini;
                    pdepreciaciones.dep_tipufvfin := vdep_tipufvfin;
                    factoractualizacion :=
                        (pdepreciaciones.dep_tipufvfin
                         / pdepreciaciones.dep_tipufvini);
                    pdepreciaciones.dep_actuvalbol :=
                        (prevaluos.rev_valdol * factoractualizacion);
                    vdif1 :=
                        ROUND ( (prevaluos.rev_valdol * factoractualizacion),
                               2);
                    pdepreciaciones.dep_factorbol :=
                        /*                      (pdepreciaciones.dep_actuvalbol - prevaluos.rev_valdol */
                        (vdif1 - ROUND (prevaluos.rev_valdol * 1, 2));

                    IF prevaluos.rev_vidaut = 999
                    THEN
                        pdepreciaciones.dep_actufacbol := 0;
                    ELSE
                        IF vutil > 0
                        THEN
                            /*
                               pdepreciaciones.dep_actufacbol :=
                               round((pdepreciaciones.dep_actuvalbol / vutil),2);  */
                            pdepreciaciones.dep_actufacbol := 0;
                        ELSE
                            pdepreciaciones.dep_actufacbol :=
                                ROUND (
                                    (pdepreciaciones.dep_actuvalbol
                                     / prevaluos.rev_vidaut),
                                    2);
                        END IF;
                    END IF;

                    pdepreciaciones.dep_factordol :=
                        (ROUND (
                             (prevaluos.rev_depacudol * factoractualizacion),
                             2)
                         - prevaluos.rev_depacudol);
                    pdepreciaciones.dep_actufacdol :=
                        (  prevaluos.rev_depacudol
                         + pdepreciaciones.dep_actufacbol
                         + pdepreciaciones.dep_factordol);

                    pdepreciaciones.dep_usuario := vdep_usuario;
                    pdepreciaciones.dep_fecsis := SYSDATE;
                    pdepreciaciones.dep_estado := 'A';

                    IF max_numdepreciacion = prevaluos.rev_vidaut
                       OR vutil > 0
                    THEN
                        vdif :=
                            ROUND (
                                pdepreciaciones.dep_actufacdol
                                - pdepreciaciones.dep_actuvalbol,
                                2);

                        IF vdif >= 0
                        THEN
                            pdepreciaciones.dep_actufacbol :=
                                (pdepreciaciones.dep_actufacbol - vdif) - 1;
                        ELSE
                            pdepreciaciones.dep_actufacbol :=
                                (  pdepreciaciones.dep_actufacbol
                                 + (vdif * (-1))
                                 - 1);
                        END IF;

                        /*                pdepreciaciones.dep_actufacdol :=
                                                                     pdepreciaciones.dep_actufacbol
                                                                     - 1;*/

                        pdepreciaciones.dep_actufacdol :=
                            (  prevaluos.rev_depacudol
                             + pdepreciaciones.dep_actufacbol
                             + pdepreciaciones.dep_factordol);
                    END IF;

                    IF pdepreciaciones.dep_codrub = '01'
                    THEN
                        pdepreciaciones.dep_actufacdol := 0;
                        pdepreciaciones.dep_actufacbol := 0;
                        pdepreciaciones.dep_factordol := 0;
                    END IF;

                    IF vutil > 0
                    THEN
                        IF pdepreciaciones.dep_numdepreciacion > vutilcte
                        THEN
                            pdepreciaciones.dep_factordol :=
                                pdepreciaciones.dep_factordol
                                + pdepreciaciones.dep_actufacbol;
                            pdepreciaciones.dep_actufacbol := 0;
                        END IF;
                    END IF;

                    d := '  ';

                    IF cur.act_estado = 'B'
                    THEN
                        cgesbaja := TO_CHAR (cur.act_fecbaja, 'YYYY');

                        IF cgesbaja = TO_CHAR (vdep_fecha, 'yyyy')
                        THEN
                            cmesbaja := TO_CHAR (cur.act_fecbaja, 'MM');
                        ELSE
                            cmesbaja := '12';
                        END IF;
                    ELSE
                        IF cur.rev_fecha <> cur.rev_fecsis
                        THEN
                            a := TO_CHAR (cur.rev_fecsis, 'YYYY');
                            m := TO_CHAR (cur.rev_fecsis, 'MM');
                            d := TO_CHAR (cur.rev_fecsis, 'DD');

                            IF m = '01'
                            THEN
                                m1 := '12';
                                a1 := TO_CHAR (TO_NUMBER (a) - 1);
                            ELSE
                                a1 := a;

                                IF (TO_NUMBER (m) - 1) < 10
                                THEN
                                    m1 := '0' || TO_CHAR (TO_NUMBER (m) - 1);
                                ELSE
                                    m1 := TO_CHAR (TO_NUMBER (m) - 1);
                                END IF;
                            END IF;

                            cgesbaja := a1;

                            IF cgesbaja = TO_CHAR (vdep_fecha, 'yyyy')
                            THEN
                                cmesbaja := m1;
                            ELSE
                                cmesbaja := '12';
                            END IF;

                            vdr_fecha :=
                                d || '/' || cmesbaja || '/' || cgesbaja;
                        ELSE
                            cgesbaja := '9999';
                            cmesbaja := '12';
                        END IF;
                    END IF;

                    IF TO_CHAR (vdep_fecha, 'yyyy') <= cgesbaja
                       AND TO_CHAR (vdep_fecha, 'mm') <= cmesbaja
                    THEN
                        INSERT INTO depreciaciones
                          VALUES   (pdepreciaciones.dep_codrub,
                                    pdepreciaciones.dep_codreg,
                                    pdepreciaciones.dep_codigo,
                                    cur.mre_corel,
                                    pdepreciaciones.dep_numrevaluo,
                                    pdepreciaciones.dep_numdepreciacion,
                                    pdepreciaciones.dep_fecha,
                                    TO_CHAR (vdep_fecha, 'yyyy'),
                                    TO_CHAR (vdep_fecha, 'mm'),
                                    pdepreciaciones.dep_tipcamini,
                                    pdepreciaciones.dep_tipcamfin,
                                    pdepreciaciones.dep_tipufvini,
                                    pdepreciaciones.dep_tipufvfin,
                                    pdepreciaciones.dep_factorbol,
                                    pdepreciaciones.dep_factordol,
                                    pdepreciaciones.dep_factorufv,
                                    pdepreciaciones.dep_actuvalbol,
                                    pdepreciaciones.dep_actuvaldol,
                                    pdepreciaciones.dep_actuvalufv,
                                    pdepreciaciones.dep_actufacbol,
                                    pdepreciaciones.dep_actufacdol,
                                    pdepreciaciones.dep_actufacufv,
                                    pdepreciaciones.dep_usuario,
                                    pdepreciaciones.dep_fecsis,
                                    pdepreciaciones.dep_estado);
                    END IF;

                    /*               UPDATE activos
                                      SET act_indetiqueta = 'D'
                                    WHERE act_codrub = pdepreciaciones.dep_codrub
                                      AND act_codreg = pdepreciaciones.dep_codreg
                                      AND act_codigo = pdepreciaciones.dep_codigo;
                    */
                    IF d > '  '
                    THEN
                        UPDATE   activos
                           SET   act_fecbaja =
                                     TO_DATE (vdr_fecha, 'DD/MM/YYYY')
                         WHERE       act_codrub = pdepreciaciones.dep_codrub
                                 AND act_codreg = pdepreciaciones.dep_codreg
                                 AND act_codigo = pdepreciaciones.dep_codigo;
                    END IF;

                    UPDATE   revaluos
                       SET   rev_valdol = pdepreciaciones.dep_actuvalbol,
                             rev_depacudol = pdepreciaciones.dep_actufacdol,
                             rev_indepreciacion = 'D'
                     WHERE       rev_codrub = pdepreciaciones.dep_codrub
                             AND rev_codreg = pdepreciaciones.dep_codreg
                             AND rev_codigo = pdepreciaciones.dep_codigo
                             AND rev_correlmre = 0
                             AND rev_numrevaluo =
                                    pdepreciaciones.dep_numrevaluo
                             AND TO_CHAR (rev_fecha, 'yyyy/mm') <=
                                    TO_CHAR (vdep_fecha, 'yyyy/mm');
                --                  AND rev_fecha <= vdep_fecha;
                END IF;
            END LOOP;

            UPDATE   mesdepreciacion
               SET   estado = 'S'
             WHERE   gestion = TO_CHAR (vdep_fecha, 'yyyy')
                     AND mes = TO_CHAR (vdep_fecha, 'mm');

            COMMIT;
            vres := '0';
            vmsg := '0';
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '1';
            vmsg := 'Ya se genero el mes';
        WHEN OTHERS
        THEN
            vres := '1';
            vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
    END;

    PROCEDURE depreciaciontotal (vdep_fecha     IN     VARCHAR2,
                                 vdep_usuario   IN     VARCHAR2,
                                 vestado        IN     NUMBER,
                                 vdep_codrub    IN     VARCHAR2,
                                 vdep_codreg    IN     VARCHAR2,
                                 vdep_codini    IN     VARCHAR2,
                                 vdep_codfin    IN     VARCHAR2,
                                 vres              OUT NUMBER,
                                 vmsg              OUT VARCHAR2)
    IS
        CURSOR cr1
        IS
              SELECT   act_codrub,
                       act_codreg,
                       act_codigo,
                       0 mre_corel,
                       rev_numrevaluo,
                       act_estado,
                       act_fecbaja,
                       rev_fecha,
                       rev_fecsis
                FROM   activos, revaluos
               WHERE       act_codrub = vdep_codrub
                       AND act_codreg = vdep_codreg
                       AND act_codigo BETWEEN vdep_codini AND vdep_codfin
                       AND rev_fecha <=
                              LAST_DAY (TO_DATE (vdep_fecha, 'dd/mm/yyyy'))
                       AND TRUNC (act_fecsis) <=
                              LAST_DAY (TO_DATE (vdep_fecha, 'dd/mm/yyyy'))
                       AND rev_codrub = act_codrub
                       AND rev_codreg = act_codreg
                       AND rev_codigo = act_codigo
                       AND rev_correlmre = 0
                       AND rev_numrevaluo = 0
            /* AND act_estado = 'A' */
            ORDER BY   act_codrub,
                       act_codreg,
                       act_codigo,
                       rev_numrevaluo;

        xmes             NUMBER;
        ymes             NUMBER;
        xanio            NUMBER;
        cmes             CHAR (2);
        canio            CHAR (4);
        vdep_tipcamini   NUMBER (15, 6);
        vdep_tipcamfin   NUMBER (15, 6);
        vdep_tipufvini   NUMBER (15, 6);
        vdep_tipufvfin   NUMBER (15, 6);
        vdep_fecha_ini   CHAR (10);
        xcant            NUMBER;
        xmaxsec          NUMBER;
    BEGIN
        xmes := TO_CHAR (TO_DATE (vdep_fecha, 'DD/MM/YYYY'), 'MM');
        xanio := TO_CHAR (TO_DATE (vdep_fecha, 'DD/MM/YYYY'), 'YYYY');
        ymes := 12;

        /* inserta parametros depresacion en tabla 05/06/2008 DGemio*/
        INSERT INTO registro_depreciacion
          VALUES   (xanio,
                    vdep_codreg,
                    vdep_codrub,
                    vdep_codini,
                    vdep_codfin,
                    vdep_fecha,
                    SUBSTR (vdep_usuario, 1, 10),
                    SYSDATE);

        /*------*/
        SELECT   COUNT ( * )
          INTO   xcant
          FROM   mesdepreciacion
         WHERE   gestion = xanio;

        IF xcant != 12
        THEN
            DELETE FROM   mesdepreciacion
                  WHERE   gestion = xanio;

            SELECT   MAX (secuencia)
              INTO   xmaxsec
              FROM   mesdepreciacion
             WHERE   TO_NUMBER (gestion) = TO_NUMBER (xanio) - 1;

            INSERT INTO mesdepreciacion
              VALUES   (xanio,
                        '01',
                        'N',
                        xmaxsec + 1);

            INSERT INTO mesdepreciacion
              VALUES   (xanio,
                        '02',
                        'N',
                        xmaxsec + 2);

            INSERT INTO mesdepreciacion
              VALUES   (xanio,
                        '03',
                        'N',
                        xmaxsec + 3);

            INSERT INTO mesdepreciacion
              VALUES   (xanio,
                        '04',
                        'N',
                        xmaxsec + 4);

            INSERT INTO mesdepreciacion
              VALUES   (xanio,
                        '05',
                        'N',
                        xmaxsec + 5);

            INSERT INTO mesdepreciacion
              VALUES   (xanio,
                        '06',
                        'N',
                        xmaxsec + 6);

            INSERT INTO mesdepreciacion
              VALUES   (xanio,
                        '07',
                        'N',
                        xmaxsec + 7);

            INSERT INTO mesdepreciacion
              VALUES   (xanio,
                        '08',
                        'N',
                        xmaxsec + 8);

            INSERT INTO mesdepreciacion
              VALUES   (xanio,
                        '09',
                        'N',
                        xmaxsec + 9);

            INSERT INTO mesdepreciacion
              VALUES   (xanio,
                        '10',
                        'N',
                        xmaxsec + 10);

            INSERT INTO mesdepreciacion
              VALUES   (xanio,
                        '11',
                        'N',
                        xmaxsec + 11);

            INSERT INTO mesdepreciacion
              VALUES   (xanio,
                        '12',
                        'N',
                        xmaxsec + 12);
        END IF;

        UPDATE   mesdepreciacion
           SET   estado = 'N'
         WHERE   gestion > '2005' AND gestion <= xanio;

        DELETE FROM   depreciaciones
              WHERE       TO_CHAR (dep_fecha, 'yyyy') <= xanio
                      AND dep_codrub = vdep_codrub
                      AND dep_codreg = vdep_codreg
                      AND dep_codigo BETWEEN vdep_codini AND vdep_codfin;

        UPDATE   revaluos
           SET   rev_valdol = rev_valbol,
                 rev_depacudol = 0.00,
                 rev_indepreciacion = 'S',
                 rev_fecsis = rev_fecha
         WHERE       rev_codrub = vdep_codrub
                 AND rev_codreg = vdep_codreg
                 AND rev_codigo BETWEEN vdep_codini AND vdep_codfin;

        UPDATE   activos
           SET   act_fecsis =
                     (SELECT   MIN (rev_fecha)
                        FROM   revaluos
                       WHERE       rev_codrub = act_codrub
                               AND rev_codreg = act_codreg
                               AND rev_codigo = act_codigo)
         WHERE       act_codrub = vdep_codrub
                 AND act_codreg = vdep_codreg
                 AND act_codigo BETWEEN vdep_codini AND vdep_codfin;

        FOR cur IN cr1
        LOOP
            UPDATE   revaluos
               SET   rev_fecsis = cur.rev_fecha
             WHERE       rev_codrub = cur.act_codrub
                     AND rev_codreg = cur.act_codreg
                     AND rev_codigo = cur.act_codigo
                     AND rev_numrevaluo = cur.rev_numrevaluo;
        END LOOP;

        FOR ges_i IN 2006 .. xanio
        LOOP
            IF ges_i = xanio
            THEN
                ymes := xmes;
            END IF;

            FOR mes_i IN 1 .. ymes
            LOOP
                IF mes_i < 10
                THEN
                    cmes := '0' || mes_i;
                ELSE
                    cmes := mes_i;
                END IF;

                canio := ges_i;
                vdep_fecha_ini := '01/' || cmes || '/' || canio;

                SELECT   tca_tipcam, tca_tipufv
                  INTO   vdep_tipcamini, vdep_tipufvini
                  FROM   tipocambio
                 WHERE   tca_fecha =
                             TO_DATE (vdep_fecha_ini, 'dd/mm/yyyy') - 1;

                SELECT   tca_tipcam, tca_tipufv
                  INTO   vdep_tipcamfin, vdep_tipufvfin
                  FROM   tipocambio
                 WHERE   tca_fecha =
                             LAST_DAY (
                                 TO_DATE (vdep_fecha_ini, 'dd/mm/yyyy'));

                depreciacion (vdep_fecha_ini,
                              vdep_tipcamini,
                              vdep_tipcamfin,
                              vdep_tipufvini,
                              vdep_tipufvfin,
                              vdep_usuario,
                              vestado,
                              vdep_codrub,
                              vdep_codreg,
                              vdep_codini,
                              vdep_codfin,
                              vres,
                              vmsg);
            END LOOP;
        END LOOP;
    END;

    FUNCTION reportedepreciacion (vcod_reg   IN VARCHAR2,
                                  vcod_rub   IN VARCHAR2,
                                  vcod_ini   IN VARCHAR2,
                                  vcod_fin   IN VARCHAR2)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   dep_codrub,
                       dep_codreg,
                       dep_codigo,
                       dep_numdepreciacion,
                       TO_NUMBER (rev_vidaut) rev_vidaut,
                       TO_CHAR (dep_fecha, 'dd/mm/yyyy') dep_fecha,
                       dep_tipufvini,
                       dep_tipufvfin,
                       dep_tipcamini,
                       dep_tipcamfin,
                       dep_factorufv,
                       dep_factordol,
                       dep_factorbol,
                       dep_actuvalufv,
                       dep_actuvaldol,
                       dep_actuvalbol,
                       dep_actufacufv,
                       dep_actufacdol,
                       dep_actufacbol,
                       dep_usuario,
                       TO_CHAR (dep_fecsis, 'dd/mm/yyyy') dep_fecsis,
                       dep_estado,
                       dep_codrub || dep_codreg || dep_codigo || dep_numrevaluo
                           codigo,
                       act_descripcion,
                       TO_CHAR (rev_fecha, 'dd/mm/yyyy') rev_fecha,
                       rev_valbol,
                       rev_valdol,
                       rev_depacudol
                FROM   depreciaciones, activos, revaluos r
               WHERE       dep_codrub = vcod_rub
                       AND dep_codreg = vcod_reg
                       AND dep_codigo BETWEEN vcod_ini AND vcod_fin
                       AND dep_codrub = act_codrub
                       AND dep_codreg = act_codreg
                       AND dep_codigo = act_codigo
                       AND rev_codrub = dep_codrub
                       AND rev_codreg = dep_codreg
                       AND rev_codigo = dep_codigo
                       AND rev_numrevaluo =
                              (SELECT   MAX (rev_numrevaluo)
                                 FROM   revaluos
                                WHERE       rev_codrub = r.rev_codrub
                                        AND rev_codreg = r.rev_codreg
                                        AND rev_codigo = r.rev_codigo)
                       AND rev_estado = 'A'
            ORDER BY   dep_codrub,
                       dep_codreg,
                       dep_codigo,
                       rev_numrevaluo,
                       dep_numdepreciacion;

        RETURN cr;
    END;

    FUNCTION reportedepreciacion_d
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   reg_descripcion unidad,
                          act_codrub
                       || ' '
                       || act_codreg
                       || TO_CHAR (act_codigo, '0000')
                           codigo,
                       act_descripcion detalle,
                       rev_vidaut vida_util,
                       rev_fecha fecha_activacion,
                       rev_valbol valor_adquisicion,
                       rev_valdol valor_original_2004,
                       dep_tipcamfin / dep_tipcamini * rev_valdol - rev_valdol
                           actualizacion_valores_2004,
                       rev_depacudol depreciacion_acumulada_2004,
                       dep_tipcamfin / dep_tipcamini * rev_valdol / rev_vidaut
                           depreciacion_2005,
                       dep_tipcamfin / dep_tipcamini * rev_depacudol
                       - rev_depacudol
                           actualizacion_valores_2005
                FROM   activos,
                       revaluos,
                       regionales,
                       depreciaciones
               WHERE       act_codrub = rev_codrub
                       AND act_codreg = rev_codreg
                       AND act_codigo = rev_codigo
                       AND rev_correlmre = 0
                       AND rev_numrevaluo = 0
                       AND act_codreg = reg_codigo
                       AND rev_codrub = dep_codrub
                       AND rev_codreg = dep_codreg
                       AND rev_codigo = dep_codigo
                       AND rev_correlmre = dep_correlmre
                       AND rev_numrevaluo = dep_numrevaluo
                       AND rev_estado = 'A'
            ORDER BY   act_codrub, act_codreg, act_codigo;

        RETURN cr;
    END;

    FUNCTION reporteactivos (condicion1   IN VARCHAR2,
                             condicion2   IN VARCHAR2,
                             flag         IN NUMBER,
                             vregional    IN VARCHAR2)
        RETURN cursortype
    IS
        cr            cursortype;
        vcondicion1   VARCHAR2 (20);
    BEGIN
        IF condicion1 = '0'
        THEN
            vcondicion1 := '%';
        ELSE
            vcondicion1 := condicion1;
        END IF;

        IF flag = 1
        THEN                                                /*Por Referencia*/
            OPEN cr FOR
                  SELECT      act_codrub
                           || ' '
                           || act_codreg
                           || ''
                           || TO_CHAR (act_codigo, '00000')
                               act_codigo,
                           NVL (act_codanterior, '') act_codanterior,
                           grp_descripcion,
                           act_descripcion,
                           act_estado,
                           ubi_descripcion,
                           fun_descripcion,
                           act_umanejo,
                           act_ultimo_doc
                    FROM   activos,
                           grupos,
                           ubicaciones,
                           funcionarios
                   WHERE       act_codgrp = grp_codigo
                           AND act_codrub = grp_codrub
                           AND act_codubi = ubi_codigo
                           AND act_codreg = ubi_codreg
                           AND act_codfun = fun_codigo
                           AND act_codreg = vregional
                           AND act_descripcion LIKE condicion1
                ORDER BY   act_codfun,
                           act_codrub,
                           act_codreg,
                           act_codigo;
        ELSIF flag = 2
        THEN                                               /*Por Responsable*/
            OPEN cr FOR
                  SELECT      act_codrub
                           || ' '
                           || act_codreg
                           || ''
                           || TO_CHAR (act_codigo, '00000')
                               act_codigo,
                           NVL (act_codanterior, '') act_codanterior,
                           grp_descripcion,
                           act_descripcion,
                           act_estado,
                           ubi_descripcion,
                           fun_descripcion,
                           act_umanejo,
                           act_ultimo_doc
                    FROM   activos,
                           grupos,
                           ubicaciones,
                           funcionarios
                   WHERE       act_codgrp = grp_codigo
                           AND act_codrub = grp_codrub
                           AND act_codubi = ubi_codigo
                           AND act_codreg = ubi_codreg
                           AND act_codfun = fun_codigo
                           AND act_codreg = vregional
                           AND act_codfun LIKE vcondicion1
                ORDER BY   act_codfun,
                           act_codrub,
                           act_codreg,
                           act_codigo;
        ELSIF flag = 3
        THEN                                                 /*Por Ubicacion*/
            OPEN cr FOR
                  SELECT      act_codrub
                           || ' '
                           || act_codreg
                           || ''
                           || TO_CHAR (act_codigo, '00000')
                               act_codigo,
                           NVL (act_codanterior, '') act_codanterior,
                           grp_descripcion,
                           act_descripcion,
                           act_estado,
                           ubi_descripcion,
                           fun_descripcion,
                           act_umanejo,
                           act_ultimo_doc
                    FROM   activos,
                           grupos,
                           ubicaciones,
                           funcionarios
                   WHERE       act_codgrp = grp_codigo
                           AND act_codrub = grp_codrub
                           AND act_codubi = ubi_codigo
                           AND act_codreg = ubi_codreg
                           AND act_codfun = fun_codigo
                           AND act_codreg = vregional
                           AND act_codubi LIKE vcondicion1
                ORDER BY   act_codfun,
                           act_codrub,
                           act_codreg,
                           act_codigo;
        ELSIF flag = 4
        THEN                                                     /*Por Rango*/
            OPEN cr FOR
                  SELECT      act_codrub
                           || ' '
                           || act_codreg
                           || ''
                           || TO_CHAR (act_codigo, '00000')
                               act_codigo,
                           NVL (act_codanterior, '') act_codanterior,
                           grp_descripcion,
                           act_descripcion,
                           act_estado,
                           ubi_descripcion,
                           fun_descripcion,
                           act_umanejo,
                           act_ultimo_doc
                    FROM   activos,
                           grupos,
                           ubicaciones,
                           funcionarios
                   WHERE       act_codgrp = grp_codigo
                           AND act_codrub = grp_codrub
                           AND act_codubi = ubi_codigo
                           AND act_codreg = ubi_codreg
                           AND act_codfun = fun_codigo
                           AND act_codreg = vregional
                           AND act_codrub || act_codreg || act_codigo BETWEEN condicion1
                                                                          AND  condicion2
                ORDER BY   act_codfun,
                           act_codrub,
                           act_codreg,
                           act_codigo;
        END IF;

        RETURN cr;
    END;

    FUNCTION gestion
        RETURN CHAR
    IS
        vgestion   CHAR (4);
    BEGIN
        SELECT   MAX (cte_gestion) INTO vgestion FROM parametros;

        RETURN vgestion;
    END;

    FUNCTION gestiond
        RETURN CHAR
    IS
        vgestiond   CHAR (4);
    BEGIN
        SELECT   MAX (cte_codrubaccesorios) INTO vgestiond FROM parametros;

        RETURN vgestiond;
    END;

    FUNCTION mesgestion
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
            SELECT   gestion, mes
              FROM   mesdepreciacion
             WHERE   estado = 'N'
                     AND secuencia = (SELECT   MIN (secuencia)
                                        FROM   mesdepreciacion
                                       WHERE   estado = 'N');

        RETURN cr;
    END;

    FUNCTION listarestados
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR SELECT   estado, desestado FROM estados;

        RETURN cr;
    END;

    FUNCTION listarinventarios (vcodreg IN VARCHAR2)
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        OPEN cr FOR
              SELECT   inv_codbarra,
                       TO_CHAR (inv_fecha, 'dd/mm/yyyy'),
                       inv_codofi,
                       inv_codfun,
                       inv_control,
                       inv_codfin,
                       inv_codpry,
                       inv_codreg,
                       inv_estado,
                       inv_mod,
                          SUBSTR (inv_codbarra, 1, 2)
                       || '-'
                       || SUBSTR (inv_codbarra, 3, 2)
                       || '-'
                       || SUBSTR (inv_codbarra, 5)
                           inv_codbarrad,
                       inv_codofi || ' ' || ofi_descripcion inv_codofides,
                       inv_codfun || ' ' || fun_descripcion inv_codfundes,
                       inv_codfin || ' ' || fin_descripcion inv_codfindes,
                       inv_codpry || ' ' || pry_descripcion inv_codprydes,
                       inv_codreg || ' ' || reg_descripcion inv_codregdes,
                       inv_estado || ' ' || desestado inv_estadodes
                FROM   inventarios,
                       oficinas,
                       funcionarios,
                       financiadores,
                       proyectos,
                       regionales,
                       estados
               WHERE       inv_codreg = vcodreg
                       AND (inv_mod = 'M' OR inv_mod = 'I')
                       AND inv_codofi = ofi_codigo
                       AND inv_codreg = ofi_codreg
                       AND inv_codfun = fun_codigo
                       AND inv_codfin = fin_codigo
                       AND inv_codpry = pry_codigo
                       AND inv_codreg = reg_codigo
                       AND inv_estado = estado
            ORDER BY   inv_codbarra;

        RETURN cr;
    END;

    PROCEDURE insertarinventarios (vinv_codbarra   IN     VARCHAR2,
                                   vinv_fecha      IN     VARCHAR2,
                                   vinv_codofi     IN     VARCHAR2,
                                   vinv_codfun     IN     VARCHAR2,
                                   vinv_codubi     IN     VARCHAR2,
                                   vinv_codfin     IN     VARCHAR2,
                                   vinv_codpry     IN     VARCHAR2,
                                   vinv_codreg     IN     VARCHAR2,
                                   vinv_estado     IN     VARCHAR2,
                                   vpar_usuario    IN     VARCHAR2,
                                   vestado         IN     NUMBER,
                                   vinv_mod        IN     VARCHAR2,
                                   vres               OUT NUMBER,
                                   vmsg               OUT VARCHAR2)
    IS
        vcodfunori    VARCHAR2 (10);
        vinvcontrol   VARCHAR2 (20);
    BEGIN
        SELECT   MIN (inv_control)
          INTO   vinvcontrol
          FROM   inventarios
         WHERE   inv_codbarra = vinv_codbarra AND inv_mod IS NOT NULL;

        IF vestado = 2
        THEN                                            /*Modificar Registro*/
            UPDATE   inventarios
               SET   inv_fecha = TO_DATE (vinv_fecha, 'dd/mm/yyyy'),
                     inv_codofi = vinv_codofi,
                     inv_codfun = vinv_codfun,
                     inv_codfin = vinv_codfin,
                     inv_codpry = vinv_codpry,
                     inv_codreg = vinv_codreg,
                     inv_estado = vinv_estado,
                     inv_usuario = vpar_usuario,
                     inv_fecha_inv = SYSDATE
             WHERE   inv_codbarra = vinv_codbarra
                     AND inv_control = vinvcontrol;

            COMMIT;
            vres := '0';
            vmsg := '0';

            SELECT   reg_codfun
              INTO   vcodfunori
              FROM   regionales
             WHERE   reg_codigo = vinv_codreg;

            UPDATE   inventarios
               SET   inv_mod = 'M'
             WHERE   inv_codbarra = vinv_codbarra
                     AND inv_control = vinvcontrol
                     AND inv_codfun NOT IN
                                (SELECT   act_codfun
                                   FROM   activos
                                  WHERE   SUBSTR (inv_codbarra, 1, 2) =
                                              act_codrub
                                          AND SUBSTR (inv_codbarra, 3, 2) =
                                                 act_codreg
                                          AND TO_NUMBER (
                                                 SUBSTR (inv_codbarra, 5, 5)) =
                                                 act_codigo);

            COMMIT;
            vres := '0';
            vmsg := '0';

            UPDATE   inventarios
               SET   inv_mod = 'I'
             WHERE   inv_codbarra = vinv_codbarra
                     AND inv_control = vinvcontrol
                     AND vcodfunori IN
                                (SELECT   act_codfun
                                   FROM   activos
                                  WHERE   SUBSTR (inv_codbarra, 1, 2) =
                                              act_codrub
                                          AND SUBSTR (inv_codbarra, 3, 2) =
                                                 act_codreg
                                          AND TO_NUMBER (
                                                 SUBSTR (inv_codbarra, 5, 5)) =
                                                 act_codigo);

            COMMIT;
            vres := '0';
            vmsg := '0';
        ELSIF vestado = 3
        THEN                                             /*Eliminar Registro*/
            UPDATE   inventarios
               SET   inv_mod = NULL
             WHERE   inv_codbarra = vinv_codbarra
                     AND inv_control = vinvcontrol;

            COMMIT;
            vres := '0';
            vmsg := '0';
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe el codigo';
        WHEN OTHERS
        THEN
            IF SQLCODE = -2291
            THEN
                vres := '-1';
                vmsg := 'Error de Integridad (Revise la informacion)';
            ELSE
                vres := '1';
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    PROCEDURE generarinventarios (vcodreg     IN     VARCHAR2,
                                  vcodfin     IN     VARCHAR2,
                                  vusuario    IN     VARCHAR2,
                                  vtipoacta   IN     VARCHAR2,
                                  vres           OUT NUMBER,
                                  vmsg           OUT VARCHAR2)
    IS
        vnumeroini           NUMBER;
        vnumerofin           NUMBER;
        vnumero              NUMBER;
        vnum                 NUMBER;
        vi                   NUMBER;
        vcodfunori           VARCHAR2 (10);
        vcodfun              VARCHAR2 (20);
        xdoc_codregorigen    VARCHAR2 (10);
        xdoc_codofiorigen    VARCHAR2 (10);
        xdoc_codubiorigen    VARCHAR2 (10);
        xdoc_codregdestino   VARCHAR2 (10);
        xdoc_codofidestino   VARCHAR2 (10);
        xdoc_codubidestino   VARCHAR2 (10);
        ydoc_codregorigen    VARCHAR2 (10);
        ydoc_codofiorigen    VARCHAR2 (10);
        ydoc_codubiorigen    VARCHAR2 (10);
        ydoc_codregdestino   VARCHAR2 (10);
        ydoc_codofidestino   VARCHAR2 (10);
        ydoc_codubidestino   VARCHAR2 (10);
        ccodb                VARCHAR2 (30);
        ccant                NUMBER;
        tcant                NUMBER;
        vinv_modf            VARCHAR2 (1);
        vtipdoc              VARCHAR2 (2);
        vdoc_observacion     VARCHAR2 (120);

        CURSOR cr
        IS
              SELECT   UNIQUE inv_codbarra,
                              inv_codofi,
                              inv_codfun,
                              inv_codfin,
                              inv_codpry,
                              inv_codreg,
                              inv_estado,
                              inv_gestion,
                              inv_mod,
                              act_codfun
                FROM   inventarios, activos
               WHERE       inv_codreg = vcodreg
                       AND inv_mod = vtipoacta
                       AND act_codrub = SUBSTR (inv_codbarra, 1, 2)
                       AND act_codreg = SUBSTR (inv_codbarra, 3, 2)
                       AND act_codigo = SUBSTR (inv_codbarra, 5, 5)
                       AND act_estado = 'A'
            ORDER BY   inv_codfun, inv_codbarra;
    BEGIN
        IF vtipoacta = 'M'
        THEN
            vinv_modf := 'G';
            vtipdoc := 'T';
        ELSE
            vinv_modf := 'J';
            vtipdoc := 'E';
        END IF;

        SELECT   COUNT (1)
          INTO   ccant
          FROM   (  SELECT   inv_codbarra
                      FROM   inventarios
                     WHERE   inv_codreg = vcodreg AND inv_mod = vtipoacta
                  GROUP BY   inv_codbarra
                    HAVING   COUNT (1) > 1);

        IF ccant = 0
        THEN
            SELECT   std_numero
              INTO   vnumero
              FROM   sectiposdoc
             WHERE       std_codreg = vcodreg
                     AND std_tipdoc = vtipdoc
                     AND std_gestion = xgestion
                     AND std_codfin = vcodfin;

            vnumeroini := vnumero + 1;
            vnum := 1;
            vcodfun := '9999999999999';
            vi := 1;

            FOR cur IN cr
            LOOP
                IF vi = 1
                THEN
                    vi := vi + 1;
                END IF;

                UPDATE   inventarios
                   SET   inv_mod = vinv_modf
                 WHERE   inv_codbarra = cur.inv_codbarra
                         AND inv_gestion = cur.inv_gestion;

                IF vcodfun != cur.inv_codfun || cur.act_codfun
                THEN
                    vnumero := vnumero + 1;
                    vcodfunori := cur.act_codfun;

                    IF vtipoacta = 'I'
                    THEN
                        SELECT   reg_codfun
                          INTO   vcodfunori
                          FROM   regionales
                         WHERE   reg_codigo = vcodreg;
                    END IF;

                    /*ORIGEN*/
                    SELECT   fun_codofi, fun_codreg
                      INTO   xdoc_codofiorigen, xdoc_codregorigen
                      FROM   funcionarios
                     WHERE   fun_codigo = vcodfunori;

                    SELECT   ofi_codubi
                      INTO   xdoc_codubiorigen
                      FROM   oficinas
                     WHERE   ofi_codigo = xdoc_codofiorigen
                             AND ofi_codreg = xdoc_codregorigen;

                    /*DESTINO*/
                    BEGIN
                        SELECT   fun_codofi, fun_codreg
                          INTO   xdoc_codofidestino, xdoc_codregdestino
                          FROM   funcionarios
                         WHERE   fun_codigo = cur.inv_codfun;

                        SELECT   ofi_codubi
                          INTO   xdoc_codubidestino
                          FROM   oficinas
                         WHERE   ofi_codigo = cur.inv_codofi
                                 AND ofi_codreg = xdoc_codregdestino;
                    EXCEPTION
                        WHEN OTHERS
                        THEN
                            NULL;
                    END;

                    IF vtipdoc = 'E'
                    THEN
                        SELECT   COUNT (act_codigo)
                          INTO   tcant
                          FROM   activos
                         WHERE   act_codfun = cur.inv_codfun
                                 AND SUBSTR (act_codrub, 1, 2)
                                    || SUBSTR (act_codreg, 1, 2)
                                    || SUBSTR (TO_CHAR (act_codigo, '00000'),
                                               2,
                                               5) NOT IN
                                            (SELECT   inv_codbarra
                                               FROM   inventarios
                                              WHERE   inv_codfun =
                                                          cur.inv_codfun);

                        IF tcant > 0
                        THEN
                            vdoc_observacion :=
                                'ACTIVOS FALTANTES ' || TO_CHAR (tcant);
                        ELSE
                            vdoc_observacion := ' ';
                        END IF;
                    ELSE
                        vdoc_observacion :=
                            'GENERACION AUTOMATICA POR INVENTARIO';
                    END IF;

                    INSERT INTO documentos
                      VALUES   (vcodreg,
                                vtipdoc,
                                xgestion,
                                vnumero,
                                TRUNC (SYSDATE),
                                xdoc_codofiorigen,
                                vcodfunori,
                                xdoc_codubiorigen,
                                NULL,
                                NULL,
                                xdoc_codregdestino,
                                xdoc_codofidestino,
                                cur.inv_codfun,
                                xdoc_codubidestino,
                                NULL,
                                NULL,
                                vdoc_observacion,
                                'N',
                                vusuario,
                                SYSDATE,
                                'A',
                                vcodfin);

                    vcodfun := cur.inv_codfun || cur.act_codfun;
                    vnum := 1;

                    UPDATE   sectiposdoc
                       SET   std_numero = vnumero
                     WHERE       std_codreg = vcodreg
                             AND std_tipdoc = vtipdoc
                             AND std_gestion = xgestion
                             AND std_codfin = vcodfin;
                END IF;

                INSERT INTO det_documentos
                  VALUES   (vcodreg,
                            vtipdoc,
                            xgestion,
                            vnumero,
                            vnum,
                            SUBSTR (cur.inv_codbarra, 1, 2),
                            SUBSTR (cur.inv_codbarra, 3, 2),
                            SUBSTR (cur.inv_codbarra, 5, 5),
                            NULL,
                            vusuario,
                            'A',
                            vcodfin,
                            cur.inv_codofi,
                            xdoc_codubidestino);

                vnum := vnum + 1;
            END LOOP;

            IF vi > 1
            THEN
                vnumerofin := vnumero;
                COMMIT;
                vres := '0';

                IF vtipdoc = 'T'
                THEN
                    vmsg :=
                           'Se generaron las actas de transferencia del '
                        || vnumeroini
                        || ' al '
                        || vnumerofin;
                ELSE
                    vmsg :=
                           'Se generaron las actas de asignacion del '
                        || vnumeroini
                        || ' al '
                        || vnumerofin;
                END IF;
            ELSE
                vres := '-1';
                vmsg := 'No se generaron actas de transferencia';
            END IF;
        ELSE
            vres := '-1';
            vmsg :=
                'No se generaron actas de transferencia por duplicidad de registros (Revise)';
        END IF;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg := 'Ya existe el registro';
        WHEN OTHERS
        THEN
            IF SQLCODE = -2291
            THEN
                vres := '-1';
                vmsg := 'Error de Integridad (Revise la informacion)';
            ELSE
                vres := '1';
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    FUNCTION listarparametros
        RETURN cursortype
    IS
        cr   cursortype;
    BEGIN
        /* cte_codrubaccesorios = gestion a depreciar */
        OPEN cr FOR
            SELECT   cte_codinstitucion,
                     cte_codrubaccesorios,
                     cte_codrubmejoras,
                     cte_codrubrebajas,
                     cte_codrub1,
                     cte_codrub2,
                     cte_codrub3,
                     cte_codrub4,
                     cte_codrub5,
                     cte_codrub6,
                     cte_tipdocentrega,
                     cte_tipdocdevolucion,
                     cte_tipdoctransferencia,
                     cte_tipdocbaja,
                     cte_tipdoctraregionales,
                     cte_gestion
              FROM   parametros;

        RETURN cr;
    END;

    PROCEDURE insertarparametros (vcte_codinstitucion        IN     VARCHAR2,
                                  vcte_codrubaccesorios      IN     VARCHAR2,
                                  vcte_codrubmejoras         IN     VARCHAR2,
                                  vcte_codrubrebajas         IN     VARCHAR2,
                                  vcte_codrub1               IN     VARCHAR2,
                                  vcte_codrub2               IN     VARCHAR2,
                                  vcte_codrub3               IN     VARCHAR2,
                                  vcte_codrub4               IN     VARCHAR2,
                                  vcte_codrub5               IN     VARCHAR2,
                                  vcte_codrub6               IN     VARCHAR2,
                                  vcte_tipdocentrega         IN     VARCHAR2,
                                  vcte_tipdocdevolucion      IN     VARCHAR2,
                                  vcte_tipdoctransferencia   IN     VARCHAR2,
                                  vcte_tipdocbaja            IN     VARCHAR2,
                                  vcte_tipdoctraregionales   IN     VARCHAR2,
                                  vcte_gestion               IN     VARCHAR2,
                                  vestado                    IN     NUMBER,
                                  vres                          OUT NUMBER,
                                  vmsg                          OUT VARCHAR2)
    IS
        vcte_gesval    VARCHAR2 (4);
        vcte_gesacta   VARCHAR2 (4);
        npar           NUMBER;
    BEGIN
        /* cte_codrubaccesorios = gestion a depreciar */
        IF vestado = 1
        THEN                                             /*Insertar Registro*/
            SELECT   COUNT ( * ) INTO npar FROM parametros;

            IF npar <= 0
            THEN
                INSERT INTO parametros (cte_codinstitucion,
                                        cte_codrubaccesorios,
                                        cte_codrubmejoras,
                                        cte_codrubrebajas,
                                        cte_codrub1,
                                        cte_codrub2,
                                        cte_codrub3,
                                        cte_codrub4,
                                        cte_codrub5,
                                        cte_codrub6,
                                        cte_tipdocentrega,
                                        cte_tipdocdevolucion,
                                        cte_tipdoctransferencia,
                                        cte_tipdocbaja,
                                        cte_gestion,
                                        cte_tipdoctraregionales)
                  VALUES   (vcte_codinstitucion,
                            vcte_codrubaccesorios,
                            vcte_codrubmejoras,
                            vcte_codrubrebajas,
                            vcte_codrub1,
                            vcte_codrub2,
                            vcte_codrub3,
                            vcte_codrub4,
                            vcte_codrub5,
                            vcte_codrub6,
                            vcte_tipdocentrega,
                            vcte_tipdocdevolucion,
                            vcte_tipdoctransferencia,
                            vcte_tipdocbaja,
                            vcte_gestion,
                            vcte_tipdoctraregionales);

                COMMIT;
                vres := '0';
                vmsg := '0';
            ELSE
                vres := '-1';
                vmsg := 'YA EXISTE PARAMETROS ';
            END IF;
        ELSIF vestado = 2
        THEN
            SELECT   MAX (cte_codrubaccesorios)
              INTO   vcte_gesval
              FROM   parametros;

            SELECT   MAX (cte_gestion) INTO vcte_gesacta FROM parametros;

            /*Modificar Registro*/
            UPDATE   parametros
               SET   cte_codinstitucion = vcte_codinstitucion,
                     cte_codrubmejoras = vcte_codrubmejoras,
                     cte_codrubrebajas = vcte_codrubrebajas,
                     cte_codrub1 = vcte_codrub1,
                     cte_codrub2 = vcte_codrub2,
                     cte_codrub3 = vcte_codrub3,
                     cte_codrub4 = vcte_codrub4,
                     cte_codrub5 = vcte_codrub5,
                     cte_codrub6 = vcte_codrub6,
                     cte_tipdocentrega = vcte_tipdocentrega,
                     cte_tipdocdevolucion = vcte_tipdocdevolucion,
                     cte_tipdoctransferencia = vcte_tipdoctransferencia,
                     cte_tipdocbaja = vcte_tipdocbaja,
                     cte_tipdoctraregionales = vcte_tipdoctraregionales;

            /* Valida la cantidad de registros depreciados en la gestion 05/06/2008 DGemio */
            COMMIT;
            vres := '0';
            vmsg := '0';

            IF vcte_gesval <> vcte_codrubaccesorios
            THEN
                IF validadepreciacion (vcte_gesval)
                THEN
                    UPDATE   parametros
                       SET   cte_codrubaccesorios = vcte_codrubaccesorios;

                    COMMIT;
                    vres := '0';
                    vmsg := '0';
                ELSE
                    vres := '-1';
                    vmsg :=
                        'FALTA DEPRECIAR ALGUNOS RUBROS EN LA GESTION '
                        || vcte_gesval;
                END IF;
            END IF;

            IF vcte_gesacta <> vcte_gestion
            THEN
                IF validacambioges (vcte_gesacta)
                THEN
                    UPDATE   parametros
                       SET   cte_gestion = vcte_gestion;

                    COMMIT;
                    vres := '0';
                    vmsg := '0';
                ELSE
                    vres := '-1';
                    vmsg :=
                        'FALTA CONFIRMAR ALGUNOS DOCUMENTOS EN LA GESTION '
                        || vcte_gesacta;
                END IF;
            END IF;
        /*-------------------*/
        ELSIF vestado = 3
        THEN                                             /*Eliminar Registro*/
            SELECT   COUNT ( * ) INTO npar FROM parametros;

            IF npar > 1
            THEN
                DELETE   parametros;

                COMMIT;
                vres := '0';
                vmsg := '0';
            ELSE
                vres := '-1';
                vmsg := 'NO SE PUEDE ELIMINAR PARAMETROS';
            END IF;
        END IF;
    EXCEPTION
        WHEN OTHERS
        THEN
            vres := '1';
            vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
    END;

    FUNCTION bajar_tablas (vcod_reg IN VARCHAR2, vcod_fin IN VARCHAR2)
        RETURN NUMBER
    IS
        output   UTL_FILE.file_type;
        nombre   VARCHAR2 (30);
        direct   VARCHAR2 (100);
    BEGIN
        nombre := 'activos0.xls';
        --direct := '/home/reg' || vcod_reg || vcod_fin || '/activos';
        direct := 'ACTIVOS' || vcod_reg;
        output :=
            UTL_FILE.fopen (direct,
                            nombre,
                            'w',
                            32000);

        IF vcod_fin = '02'
        THEN
            owa_sylk.show (
                p_file            => output,
                p_query           => 'select ACT_CODRUB, ACT_CODREG, ACT_CODIGO, ACT_CODGRP, ACT_CODOFI, '
                                    || 'ACT_CODFUN, ACT_CODFIN, ACT_CODPRY, to_char(ACT_FECCOMPRA,''dd/mm/yyyy'') ACT_FECCOMPRA, '
                                    || 'ACT_DESCRIPCION, ACT_MARCA, ACT_MODELO, ACT_SERIE1, ACT_SERIE2, ACT_PLACA, ACT_COLOR, '
                                    || 'ACT_PROCEDENCIA, ACT_GOBMUNICIPAL, REV_ESTADOACTIVO, ACT_CODREGIONAL '
                                    || 'from activos,revaluos '
                                    || 'where act_codregional = :act_codregional and act_codfin = :act_codfin '
                                    || 'and act_codrub=rev_codrub and act_codreg=rev_codreg and act_codigo=rev_codigo '
                                    || 'and rev_numrevaluo = (select max(rev_numrevaluo) from revaluos r '
                                    || 'where act_codrub = r.rev_codrub and act_codreg = r.rev_codreg and act_codigo = r.rev_codigo)',
                p_parm_names      => owa_sylk.owasylkarray ('act_codregional',
                                                            'act_codfin'),
                p_parm_values     => owa_sylk.owasylkarray (vcod_reg, vcod_fin),
                p_sum_column      => owa_sylk.owasylkarray ('N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N'),
                p_show_grid       => 'YES',
                p_show_cantidad   => 20);
        ELSE
            owa_sylk.show (
                p_file            => output,
                p_query           => 'select ACT_CODRUB, ACT_CODREG, ACT_CODIGO, ACT_CODGRP, ACT_CODOFI, '
                                    || 'ACT_CODFUN, ACT_CODFIN, ACT_CODPRY, to_char(ACT_FECCOMPRA,''dd/mm/yyyy'') ACT_FECCOMPRA, '
                                    || 'ACT_DESCRIPCION, ACT_MARCA, ACT_MODELO, ACT_SERIE1, ACT_SERIE2, ACT_PLACA, ACT_COLOR, '
                                    || 'ACT_PROCEDENCIA, ACT_GOBMUNICIPAL, REV_ESTADOACTIVO, ACT_CODREGIONAL '
                                    || 'from activos,revaluos '
                                    || 'where act_codregional = :act_codregional and act_codfin != :act_codfin '
                                    || 'and act_codrub=rev_codrub and act_codreg=rev_codreg and act_codigo=rev_codigo '
                                    || 'and rev_numrevaluo = (select max(rev_numrevaluo) from revaluos r '
                                    || 'where act_codrub = r.rev_codrub and act_codreg = r.rev_codreg and act_codigo = r.rev_codigo)',
                p_parm_names      => owa_sylk.owasylkarray ('act_codregional',
                                                            'act_codfin'),
                p_parm_values     => owa_sylk.owasylkarray (vcod_reg, '02'),
                p_sum_column      => owa_sylk.owasylkarray ('N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N',
                                                            'N'),
                p_show_grid       => 'YES',
                p_show_cantidad   => 20);
        END IF;

        UTL_FILE.fclose (output);
        nombre := 'financiadores0.xls';
        output :=
            UTL_FILE.fopen (direct,
                            nombre,
                            'w',
                            32000);
        owa_sylk.show (
            p_file            => output,
            p_query           =>   'select fin_codigo, fin_descripcion '
                                || 'from financiadores '
                                || 'where fin_estado=:fin_estado',
            p_parm_names      => owa_sylk.owasylkarray ('fin_estado'),
            p_parm_values     => owa_sylk.owasylkarray ('A'),
            p_sum_column      => owa_sylk.owasylkarray ('N', 'N'),
            p_show_grid       => 'YES',
            p_show_cantidad   => 2);
        UTL_FILE.fclose (output);
        nombre := 'funcionarios0.xls';
        output :=
            UTL_FILE.fopen (direct,
                            nombre,
                            'w',
                            32000);
        owa_sylk.show (
            p_file            => output,
            p_query           =>   'select fun_codigo, fun_descripcion '
                                || 'from funcionarios '
                                || 'where fun_codreg = :fun_codreg '
                                || 'and fun_estado = :fun_estado',
            p_parm_names      => owa_sylk.owasylkarray ('fun_codreg',
                                                        'fun_estado'),
            p_parm_values     => owa_sylk.owasylkarray (vcod_reg, 'A'),
            p_sum_column      => owa_sylk.owasylkarray ('N', 'N'),
            p_show_grid       => 'YES',
            p_show_cantidad   => 2);
        UTL_FILE.fclose (output);
        nombre := 'grupos0.xls';
        output :=
            UTL_FILE.fopen (direct,
                            nombre,
                            'w',
                            32000);
        owa_sylk.show (
            p_file            => output,
            p_query           =>   'select grp_codigo, grp_descripcion, grp_codrub '
                                || 'from grupos '
                                || 'where grp_estado = :grp_estado',
            p_parm_names      => owa_sylk.owasylkarray ('grp_estado'),
            p_parm_values     => owa_sylk.owasylkarray ('A'),
            p_sum_column      => owa_sylk.owasylkarray ('N', 'N', 'N'),
            p_show_grid       => 'YES',
            p_show_cantidad   => 3);
        UTL_FILE.fclose (output);
        nombre := 'oficinas0.xls';
        output :=
            UTL_FILE.fopen (direct,
                            nombre,
                            'w',
                            32000);
        owa_sylk.show (
            p_file            => output,
            p_query           =>   'select ofi_codigo, ofi_descripcion, ofi_codreg '
                                || 'from oficinas '
                                || 'where ofi_codreg = :ofi_codreg '
                                || 'and ofi_estado = :ofi_estado',
            p_parm_names      => owa_sylk.owasylkarray ('ofi_codreg',
                                                        'ofi_estado'),
            p_parm_values     => owa_sylk.owasylkarray (vcod_reg, 'A'),
            p_sum_column      => owa_sylk.owasylkarray ('N', 'N', 'N'),
            p_show_grid       => 'YES',
            p_show_cantidad   => 3);
        UTL_FILE.fclose (output);
        nombre := 'proyectos0.xls';
        output :=
            UTL_FILE.fopen (direct,
                            nombre,
                            'w',
                            32000);
        owa_sylk.show (
            p_file            => output,
            p_query           =>   'select pry_codigo, pry_descripcion '
                                || 'from proyectos '
                                || 'where pry_estado=:pry_estado',
            p_parm_names      => owa_sylk.owasylkarray ('pry_estado'),
            p_parm_values     => owa_sylk.owasylkarray ('A'),
            p_sum_column      => owa_sylk.owasylkarray ('N', 'N'),
            p_show_grid       => 'YES',
            p_show_cantidad   => 2);
        UTL_FILE.fclose (output);
        nombre := 'regionales0.xls';
        output :=
            UTL_FILE.fopen (direct,
                            nombre,
                            'w',
                            32000);
        owa_sylk.show (
            p_file            => output,
            p_query           =>   'select reg_codigo, reg_descripcion '
                                || 'from regionales '
                                || 'where reg_estado = :reg_estado',
            p_parm_names      => owa_sylk.owasylkarray ('reg_estado'),
            p_parm_values     => owa_sylk.owasylkarray ('A'),
            p_sum_column      => owa_sylk.owasylkarray ('N', 'N'),
            p_show_grid       => 'YES',
            p_show_cantidad   => 2);
        UTL_FILE.fclose (output);
        nombre := 'rubros0.xls';
        output :=
            UTL_FILE.fopen (direct,
                            nombre,
                            'w',
                            32000);
        owa_sylk.show (
            p_file            => output,
            p_query           =>   'select rub_codigo, rub_descripcion '
                                || 'from rubros '
                                || 'where rub_estado=:rub_estado',
            p_parm_names      => owa_sylk.owasylkarray ('rub_estado'),
            p_parm_values     => owa_sylk.owasylkarray ('A'),
            p_sum_column      => owa_sylk.owasylkarray ('N', 'N'),
            p_show_grid       => 'YES',
            p_show_cantidad   => 2);
        UTL_FILE.fclose (output);
        nombre := 'usuarios0.xls';
        output :=
            UTL_FILE.fopen (direct,
                            nombre,
                            'w',
                            32000);
        owa_sylk.show (
            p_file            => output,
            p_query           => 'select usu_codigo, usu_carnet, usu_estado, usu_codfun '
                                || 'from usuarios ',
            p_sum_column      => owa_sylk.owasylkarray ('N', 'N'),
            p_show_grid       => 'YES',
            p_show_cantidad   => 4);
        UTL_FILE.fclose (output);
        RETURN 0;
    END;

    PROCEDURE subir_tablas (vcodbarra   IN     VARCHAR2,
                            vfecha      IN     VARCHAR2,
                            vcodofi     IN     VARCHAR2,
                            vcodfun     IN     VARCHAR2,
                            vestado     IN     VARCHAR2,
                            vcodfin     IN     VARCHAR2,
                            vcodpry     IN     VARCHAR2,
                            vcodreg     IN     VARCHAR2,
                            vhora       IN     VARCHAR2,
                            vfun        IN     VARCHAR2,
                            vusuario    IN     VARCHAR2,
                            vmod        IN     VARCHAR2,
                            vcontrol    IN     VARCHAR2,
                            vres           OUT NUMBER,
                            vmsg           OUT VARCHAR2)
    IS
    BEGIN
        INSERT INTO inventarios_tmp (inv_codbarra,
                                     inv_fecha,
                                     inv_codofi,
                                     inv_codfun,
                                     inv_estado,
                                     inv_codfin,
                                     inv_codpry,
                                     inv_codreg,
                                     inv_hora,
                                     inv_fun,
                                     inv_mod,
                                     inv_control,
                                     inv_gestion,
                                     inv_usuario,
                                     inv_fecha_inv)
          VALUES   (vcodbarra,
                    TO_DATE (vfecha, 'dd/mm/yyyy'),
                    vcodofi,
                    vcodfun,
                    vestado,
                    vcodfin,
                    vcodpry,
                    vcodreg,
                    vhora,
                    vfun,
                    vmod,
                    SUBSTR (vcontrol, 1, 10) || SUBSTR (vhora, 11, 9),
                    SUBSTR (vcontrol, 1, 6),
                    vusuario,
                    SYSDATE);

        COMMIT;
        vres := '0';
        vmsg := '0';
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg :=
                   'Ya existe el codigo: '
                || vcodbarra
                || ' '
                || SUBSTR (vcontrol, 1, 6)
                || ' en la subida '
                || vcontrol;
        WHEN OTHERS
        THEN
            IF SQLCODE = -2291
            THEN
                vres := '-1';
                vmsg :=
                       'Error de Integridad (No subio desde '
                    || vcodbarra
                    || ' '
                    || vcontrol
                    || ')';
            ELSE
                vres := '-1';
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    PROCEDURE subir_tablas2 (vcodrub        IN     VARCHAR2,
                             vcodreg        IN     VARCHAR2,
                             vcodigo        IN     NUMBER,
                             vcodgrp        IN     VARCHAR2,
                             vcodofi        IN     VARCHAR2,
                             vcodfun        IN     VARCHAR2,
                             vcodfin        IN     VARCHAR2,
                             vcodpry        IN     VARCHAR2,
                             vdescripcion   IN     VARCHAR2,
                             vestado        IN     VARCHAR2,
                             vhora          IN     VARCHAR2,
                             vfun           IN     VARCHAR2,
                             vcontrol       IN     VARCHAR2,
                             vusuario       IN     VARCHAR2,
                             vres              OUT NUMBER,
                             vmsg              OUT VARCHAR2)
    IS
    BEGIN
        INSERT INTO nuevos_tmp
          VALUES   (vcodrub,
                    vcodreg,
                    vcodigo,
                    vcodgrp,
                    vcodofi,
                    vcodfun,
                    vcodfin,
                    vcodpry,
                    vdescripcion,
                    vestado,
                    vhora,
                    vfun,
                    SUBSTR (vcontrol, 1, 10) || SUBSTR (vhora, 11, 9),
                    vusuario,
                    SYSDATE);

        COMMIT;
        vres := '0';
        vmsg := '0';
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg :=
                   'Ya existe el codigo: '
                || vcodrub
                || ' '
                || vcodreg
                || ' '
                || vcodigo;
        WHEN OTHERS
        THEN
            IF SQLCODE = -2291
            THEN
                vres := '-1';
                vmsg :=
                       'Error de Integridad (No subio desde '
                    || vcodrub
                    || ' '
                    || vcodreg
                    || ' '
                    || vcodigo
                    || ')';
            ELSE
                vres := '-1';
                vmsg := SUBSTR ('1. ' || SQLERRM || '. ', 1, 255);
            END IF;
    END;

    PROCEDURE validar (vflag       IN     VARCHAR2,
                       vusuario    IN     VARCHAR2,
                       vcontrol1   IN     VARCHAR2,  -- control de inventarios
                       vcontrol2   IN     VARCHAR2,       -- control de nuevos
                       vres           OUT NUMBER,
                       vmsg           OUT VARCHAR2)
    IS
        vctrl1       VARCHAR2 (20);
        vctrl2       VARCHAR2 (20);
        vcodfunori   VARCHAR2 (10);
        vcodreg      VARCHAR2 (10);

        CURSOR cr
        IS
            SELECT   UNIQUE inv_control inv_ctrl FROM inventarios_tmp;

        CURSOR cr2
        IS
            SELECT   UNIQUE act_control act_ctrl FROM nuevos_tmp;

        CURSOR cr3
        IS
              SELECT   inv_codbarra,
                       COUNT ( * ) cantidad,
                       MIN (inv_control) ctrl
                FROM   inventarios
            GROUP BY   inv_codbarra
              HAVING   COUNT ( * ) > 1;
    BEGIN
        IF vflag = 'C'
        THEN
            UPDATE   inventarios_tmp
               SET   inv_mod = 'I';

            COMMIT;

            SELECT   MAX (inv_codreg) INTO vcodreg FROM inventarios_tmp;

            SELECT   reg_codfun
              INTO   vcodfunori
              FROM   regionales
             WHERE   reg_codigo = vcodreg;

            UPDATE   inventarios_tmp
               SET   inv_mod = 'M'
             WHERE   inv_codfun NOT IN
                             (SELECT   act_codfun
                                FROM   activos
                               WHERE   SUBSTR (inv_codbarra, 1, 2) =
                                           act_codrub
                                       AND SUBSTR (inv_codbarra, 3, 2) =
                                              act_codreg
                                       AND TO_NUMBER (
                                              SUBSTR (inv_codbarra, 5, 5)) =
                                              act_codigo);

            COMMIT;

            UPDATE   inventarios_tmp
               SET   inv_mod = 'I'
             WHERE   vcodfunori IN
                             (SELECT   act_codfun
                                FROM   activos
                               WHERE   SUBSTR (inv_codbarra, 1, 2) =
                                           act_codrub
                                       AND SUBSTR (inv_codbarra, 3, 2) =
                                              act_codreg
                                       AND TO_NUMBER (
                                              SUBSTR (inv_codbarra, 5, 5)) =
                                              act_codigo);

            COMMIT;

            FOR cur IN cr
            LOOP
                vmsg := '0';

                DELETE   inventarios
                 WHERE   inv_control = cur.inv_ctrl
                         AND (inv_mod = 'I' OR inv_mod = 'M');

                INSERT INTO inventarios
                    SELECT   *
                      FROM   inventarios_tmp
                     WHERE   inv_control = cur.inv_ctrl;

                DELETE FROM   inventarios_tmp
                      WHERE   inv_control = cur.inv_ctrl;

                vctrl1 := cur.inv_ctrl;
                vmsg := '0';
                COMMIT;
                vres := '0';
            END LOOP;

            FOR cur IN cr3
            LOOP
                vmsg := '0';

                DELETE   inventarios
                 WHERE   inv_codbarra = cur.inv_codbarra
                         AND inv_control = cur.ctrl;

                vmsg := '0';
                COMMIT;
                vres := '0';
            END LOOP;

            vmsg := '0';

            FOR cur IN cr2
            LOOP
                DELETE   nuevos
                 WHERE   act_control = cur.act_ctrl;

                INSERT INTO nuevos
                    SELECT   *
                      FROM   nuevos_tmp
                     WHERE   act_control = cur.act_ctrl;

                DELETE FROM   nuevos_tmp
                      WHERE   act_control = cur.act_ctrl;

                vctrl2 := cur.act_ctrl;
                vmsg := '0';
                COMMIT;
                vres := '0';
            END LOOP;
        END IF;

        DELETE FROM   inventarios_tmp;

        DELETE FROM   nuevos_tmp;

        vres := '0';
        vmsg := '0';
        COMMIT;
    EXCEPTION
        WHEN DUP_VAL_ON_INDEX
        THEN
            vres := '-1';
            vmsg :=
                'Registro duplicado de la subida ' || vctrl1 || ' ' || vctrl2;
        WHEN OTHERS
        THEN
            vres := '-1';
            vmsg := 'Error al subir el archivo';
    END;
END;
/

