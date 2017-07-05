CREATE OR REPLACE 
PROCEDURE confirmaactast
      IS
      CURSOR cr
      IS
         SELECT    documentos.doc_tipdoc
                || '-'
                || documentos.doc_numero
                || '/'
                || documentos.doc_gestion doc_numero,
                ddo_codrubactual, ddo_codregactual, ddo_codigo, ddo_codmot,
                doc_fecha, doc_codofiorigen, doc_codfunorigen,
                doc_codubiorigen, doc_codregdestino, doc_codofidestino,
                doc_codfundestino, doc_codubidestino
           FROM det_documentos, documentos
          WHERE ddo_tipdoc = 'T'
            AND ddo_gestion = '2007'
            AND doc_codreg = ddo_codreg
            AND doc_tipdoc = ddo_tipdoc
            AND doc_gestion = ddo_gestion
            AND doc_numero = ddo_numero
            AND ddo_estado = 'A';
   BEGIN

      FOR cur IN cr
      LOOP
            UPDATE activos
               SET act_codofi = cur.doc_codofidestino,
                   act_codfun = cur.doc_codfundestino,
                   act_codubi = cur.doc_codubidestino,
                   act_codregional = cur.doc_codregdestino,
                   act_usuario = 'ACTIVOS',
                   act_propiedad = 'S',
                   act_fecsis = SYSDATE,
                   act_ultimo_doc = cur.doc_numero
             WHERE act_codrub = cur.ddo_codrubactual
               AND act_codreg = cur.ddo_codregactual
               AND act_codigo = cur.ddo_codigo;

      END LOOP;

      UPDATE documentos
         SET doc_inconfirma = 'S'
       WHERE doc_tipdoc = 'T'
         AND doc_gestion = '2007';

      COMMIT;

   END;
/

CREATE OR REPLACE 
PROCEDURE confirmaactast1
      IS
      CURSOR cr
      IS
         SELECT    documentos.doc_tipdoc
                || '-'
                || documentos.doc_numero
                || '/'
                || documentos.doc_gestion doc_numero,
                ddo_codrubactual, ddo_codregactual, ddo_codigo, ddo_codmot,
                doc_fecha, doc_codofiorigen, doc_codfunorigen,
                doc_codubiorigen, doc_codregdestino, doc_codofidestino,
                doc_codfundestino, doc_codubidestino
           FROM det_documentos, documentos
          WHERE ddo_codfin = doc_codfin
            AND ddo_codreg = doc_codreg
            AND ddo_tipdoc = doc_tipdoc
            AND ddo_gestion = doc_gestion
            AND ddo_numero = doc_numero
            AND ddo_tipdoc = 'T'
            AND ddo_gestion = '2007'
            AND doc_inconfirma = 'N'
            AND ddo_estado = 'A';
   BEGIN

      FOR cur IN cr
      LOOP
            UPDATE activos
               SET act_codofi = cur.doc_codofidestino,
                   act_codfun = cur.doc_codfundestino,
                   act_codubi = cur.doc_codubidestino,
                   act_codregional = cur.doc_codregdestino,
                   act_usuario = 'ACTIVOS',
                   act_propiedad = 'S',
                   act_fecsis = SYSDATE,
                   act_ultimo_doc = cur.doc_numero
             WHERE act_codrub = cur.ddo_codrubactual
               AND act_codreg = cur.ddo_codregactual
               AND act_codigo = cur.ddo_codigo;

      END LOOP;

      UPDATE documentos
         SET doc_inconfirma = 'S'
       WHERE doc_tipdoc = 'T'
         AND doc_gestion = '2007';

      COMMIT;

   END;
/

CREATE OR REPLACE 
PROCEDURE generaactat
   IS
      vnumero              NUMBER;
      vnum                 NUMBER;
      vi                   NUMBER;
      vcodfunori           VARCHAR2 (10);
      vcodfun              VARCHAR2 (10);
      vcodreg              VARCHAR2 (10);
      vcodfin              VARCHAR2 (10);
      xdoc_codregdestino   VARCHAR2 (10);
      xdoc_codofidestino   VARCHAR2 (10);
      xdoc_codubidestino   VARCHAR2 (10);
      vdoc_observacion     VARCHAR2 (120);
      xgestion             VARCHAR2 (4);
      xfecha               DATE;

      CURSOR cr
      IS
      select act_codreg,act_codfin,act_codfun,act_codofi,act_codubi,act_codrub,act_codigo
        from activos
       where act_codfun<>'99901'
         AND act_codfun<>'99902'
         AND act_codfun<>'99903'
         AND act_codfun<>'99904'
         AND act_codfun<>'99905'
         AND act_codfun<>'99906'
         AND act_codfun<>'1578'
         AND act_codfun<>'1139'
         AND act_codfun<>'2489'
         AND act_codfun<>'2344'
         AND act_codfun<>'2589'
         AND act_estado = 'A'
    order by act_codreg,act_codfin,act_codfun,act_codofi,act_codubi,act_codrub,act_codigo;

    BEGIN

       xfecha := TO_DATE ('31/12/2007','dd/mm/yyyy');
       xgestion := '2007';
       vnumero := 0;
       vnum := 1;
       vcodfun := '9999999999';
       vi := 1;
       vdoc_observacion := 'GENERACION AUTOMATICA ACTA DE TRANSFERENCIA DE ACTIVOS A RESPONSABLE';

         FOR cur IN cr
         LOOP
            IF vi = 1
            THEN
               vi := vi + 1;
            END IF;

            IF vcodfun != cur.act_codreg||cur.act_codfin||cur.act_codfun
            THEN
               vcodreg := cur.act_codreg;
               vcodfin := cur.act_codfin;
               vcodfunori := cur.act_codfun;

               SELECT std_numero
                 INTO vnumero
                 FROM sectiposdoc
                WHERE std_codreg = vcodreg
                  AND std_tipdoc = 'T'
                  AND std_gestion = xgestion
                  AND std_codfin = vcodfin;

               vnumero := vnumero + 1;

               IF vcodfin = '02'
               THEN
                  IF vcodreg = '02'
                  THEN
                     vcodfunori := '2589';
                  ELSE
                     IF vcodreg = '03'
                     THEN
                        vcodfunori := '2489';
                     ELSE
                        IF vcodreg = '04'
                        THEN
                           vcodfunori := '2344';
                        ELSE
                           IF vcodreg = '05'
                           THEN
                              vcodfunori := '1139';
                           ELSE
                              IF vcodreg = '06'
                              THEN
                                 vcodfunori := '1578';
                              END IF;
                           END IF;
                        END IF;
                     END IF;
                  END IF;
               ELSE
                  SELECT reg_codfun
                    INTO vcodfunori
                    FROM regionales
                   WHERE reg_codigo = vcodreg;
               END IF;
               /*DESTINO*/
               SELECT fun_codofi, fun_codreg
                 INTO xdoc_codofidestino, xdoc_codregdestino
                 FROM funcionarios
                WHERE fun_codigo = vcodfunori;

               SELECT ofi_codubi
                 INTO xdoc_codubidestino
                 FROM oficinas
                WHERE ofi_codigo = xdoc_codofidestino
                  AND ofi_codreg = xdoc_codregdestino;

               INSERT INTO documentos
                    VALUES (vcodreg, 'T', xgestion, vnumero, xfecha,
                            cur.act_codofi, cur.act_codfun, cur.act_codubi,
                            NULL, NULL, vcodreg,
                            xdoc_codofidestino, vcodfunori,
                            xdoc_codubidestino, NULL, NULL,
                            vdoc_observacion, 'N',
                            'ACTIVOS', SYSDATE, 'A', vcodfin);

               vcodfun := cur.act_codreg||cur.act_codfin||cur.act_codfun;
               vnum := 1;

               UPDATE sectiposdoc
                  SET std_numero = vnumero
                WHERE std_codreg = vcodreg
                  AND std_tipdoc = 'T'
                  AND std_gestion = xgestion
                  AND std_codfin = vcodfin;

            END IF;

            INSERT INTO det_documentos
                 VALUES (vcodreg, 'T', xgestion, vnumero, vnum,
                         cur.act_codrub,
                         cur.act_codreg,
                         cur.act_codigo, NULL, 'ACTIVOS', 'A',
                         vcodfin);

            vnum := vnum + 1;
         END LOOP;
         COMMIT;
   END;
/

CREATE OR REPLACE 
PROCEDURE generaactat1
   IS
      vnumero              NUMBER;
      vnum                 NUMBER;
      vi                   NUMBER;
      vcodfunori           VARCHAR2 (10);
      vcodfun              VARCHAR2 (10);
      vcodreg              VARCHAR2 (10);
      vcodfin              VARCHAR2 (10);
      xdoc_codregdestino   VARCHAR2 (10);
      xdoc_codofidestino   VARCHAR2 (10);
      xdoc_codubidestino   VARCHAR2 (10);
      vdoc_observacion     VARCHAR2 (120);
      xgestion             VARCHAR2 (4);
      xfecha               DATE;

      CURSOR cr
      IS
      select act_codreg,act_codfin,act_codfun,act_codofi,act_codubi,act_codrub,act_codigo
        from activos
       where act_codreg='02'
         and act_codfin<>'02'
         and act_codfun<>'99902'
      UNION
       select act_codreg,act_codfin,act_codfun,act_codofi,act_codubi,act_codrub,act_codigo
        from activos
       where act_codreg='03'
         and act_codfin<>'02'
         and act_codfun<>'99903'
        UNION
       select act_codreg,act_codfin,act_codfun,act_codofi,act_codubi,act_codrub,act_codigo
        from activos
       where act_codreg='04'
         and act_codfin<>'02'
         and act_codfun<>'99904'
      UNION
       select act_codreg,act_codfin,act_codfun,act_codofi,act_codubi,act_codrub,act_codigo
        from activos
       where act_codreg='05'
         and act_codfin<>'02'
         and act_codfun<>'99905'
      UNION
       select act_codreg,act_codfin,act_codfun,act_codofi,act_codubi,act_codrub,act_codigo
        from activos
       where act_codreg='06'
         and act_codfin<>'02'
         and act_codfun<>'99906'
      UNION
       select act_codreg,act_codfin,act_codfun,act_codofi,act_codubi,act_codrub,act_codigo
        from activos
       where act_codreg='02'
         and act_codfin='02'
         and act_codfun<>'2589'
      UNION
       select act_codreg,act_codfin,act_codfun,act_codofi,act_codubi,act_codrub,act_codigo
        from activos
       where act_codreg='03'
         and act_codfin='02'
         and act_codfun<>'2489'
      UNION
       select act_codreg,act_codfin,act_codfun,act_codofi,act_codubi,act_codrub,act_codigo
        from activos
       where act_codreg='04'
         and act_codfin='02'
         and act_codfun<>'2344'
      UNION
       select act_codreg,act_codfin,act_codfun,act_codofi,act_codubi,act_codrub,act_codigo
        from activos
       where act_codreg='05'
         and act_codfin='02'
         and act_codfun<>'1139'
      UNION
       select act_codreg,act_codfin,act_codfun,act_codofi,act_codubi,act_codrub,act_codigo
        from activos
       where act_codreg='06'
         and act_codfin='02'
         and act_codfun<>'1578'
    order by act_codreg,act_codfin,act_codfun,act_codofi,act_codubi,act_codrub,act_codigo;

    BEGIN

       xfecha := TO_DATE ('31/12/2007','dd/mm/yyyy');
       xgestion := '2007';
       vnumero := 0;
       vnum := 1;
       vcodfun := '9999999999';
       vi := 1;
       vdoc_observacion := 'GENERACION AUTOMATICA ACTA DE TRANSFERENCIA DE ACTIVOS A RESPONSABLE';

         FOR cur IN cr
         LOOP
            IF vi = 1
            THEN
               vi := vi + 1;
            END IF;

            IF vcodfun != cur.act_codreg||cur.act_codfin||cur.act_codfun
            THEN
               vcodreg := cur.act_codreg;
               vcodfin := cur.act_codfin;
               vcodfunori := cur.act_codfun;

               SELECT std_numero
                 INTO vnumero
                 FROM sectiposdoc
                WHERE std_codreg = vcodreg
                  AND std_tipdoc = 'T'
                  AND std_gestion = xgestion
                  AND std_codfin = vcodfin;

               vnumero := vnumero + 1;

               IF vcodreg = '02'
               THEN
                  IF vcodfin = '02'
                  THEN
                     vcodfunori := '2589';
                  ELSE
                     vcodfunori := '99902';
                  END IF;
               END IF;

               IF vcodreg = '03'
               THEN
                  IF vcodfin = '02'
                  THEN
                     vcodfunori := '2489';
                  ELSE
                     vcodfunori := '99903';
                  END IF;
               END IF;

               IF vcodreg = '04'
               THEN
                  IF vcodfin = '02'
                  THEN
                     vcodfunori := '2344';
                  ELSE
                     vcodfunori := '99904';
                  END IF;
               END IF;

               IF vcodreg = '05'
               THEN
                  IF vcodfin = '02'
                  THEN
                     vcodfunori := '1139';
                  ELSE
                     vcodfunori := '99905';
                  END IF;
               END IF;

               IF vcodreg = '06'
               THEN
                  IF vcodfin = '02'
                  THEN
                     vcodfunori := '1578';
                  ELSE
                     vcodfunori := '99906';
                  END IF;
               END IF;

               /*DESTINO*/
               SELECT fun_codofi, fun_codreg
                 INTO xdoc_codofidestino, xdoc_codregdestino
                 FROM funcionarios
                WHERE fun_codigo = vcodfunori;

               SELECT ofi_codubi
                 INTO xdoc_codubidestino
                 FROM oficinas
                WHERE ofi_codigo = xdoc_codofidestino
                  AND ofi_codreg = xdoc_codregdestino;

               INSERT INTO documentos
                    VALUES (vcodreg, 'T', xgestion, vnumero, xfecha,
                            cur.act_codofi, cur.act_codfun, cur.act_codubi,
                            NULL, NULL, vcodreg,
                            xdoc_codofidestino, vcodfunori,
                            xdoc_codubidestino, NULL, NULL,
                            vdoc_observacion, 'N',
                            'ACTIVOS', SYSDATE, 'A', vcodfin);

               vcodfun := cur.act_codreg||cur.act_codfin||cur.act_codfun;
               vnum := 1;

               UPDATE sectiposdoc
                  SET std_numero = vnumero
                WHERE std_codreg = vcodreg
                  AND std_tipdoc = 'T'
                  AND std_gestion = xgestion
                  AND std_codfin = vcodfin;

            END IF;
            INSERT INTO det_documentos
                 VALUES (vcodreg, 'T', xgestion, vnumero, vnum,
                         cur.act_codrub,
                         cur.act_codreg,
                         cur.act_codigo, NULL, 'ACTIVOS', 'A',
                         vcodfin);

            vnum := vnum + 1;
         END LOOP;
         COMMIT;
   END;
/

