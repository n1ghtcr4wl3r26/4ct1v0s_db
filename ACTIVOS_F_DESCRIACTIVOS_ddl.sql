CREATE OR REPLACE 
FUNCTION f_descriactivos
   (p_codrub  IN VARCHAR2,
    P_codreg  IN VARCHAR2,
    p_codigo  IN NUMBER)
RETURN VARCHAR2
IS
   v_descri VARCHAR2(400):='';
   v_desact VARCHAR2(240):=' ';
   v_desadi VARCHAR2(240):=' ';
   v_superf VARCHAR2(20):=' ';
   v_docref VARCHAR2(30):=' ';
   v_gobmun VARCHAR2(60):=' ';
   v_nrose1 VARCHAR2(30):=' ';
   v_nrose2 VARCHAR2(30):=' ';
   v_marca  VARCHAR2(30):=' ';
   v_color  VARCHAR2(30):=' ';
   v_provee VARCHAR2(50):=' ';
   v_proced VARCHAR2(30):=' ';
   v_modelo VARCHAR2(30):=' ';
   v_placa  VARCHAR2(10):=' ';
   v_febaja VARCHAR2(30):=' ';
   v_estado VARCHAR2(1):=' ';
BEGIN
   IF p_codrub IN ('01','02')
   THEN
      /* Rubro 01 Terrenos y 02 Edificios */
      SELECT nvl(act_descripcion,' '),nvl(act_desadicional,' '),nvl(act_umanejo,' '),
             nvl(act_docreferencia,' '),nvl(act_gobmunicipal,' '),nvl(act_serie1,' '),
--             nvl(act_serie2,' '),nvl(TO_CHAR (act_fecbaja, 'dd/mm/yyyy'),' '),act_estado
             nvl(act_serie2,' '),decode(ACT_ESTADO, 'B',nvl(TO_CHAR (act_fecbaja, 'dd/mm/yyyy'),ACT_FECCOMPRA)), act_estado

        INTO v_desact,v_desadi,v_superf,v_docref,v_gobmun,v_nrose1,v_nrose2,v_febaja,v_estado
        FROM activos.activos
       WHERE act_codrub = p_codrub
         AND act_codreg = P_codreg
         AND act_codigo = p_codigo;

      IF v_desact > '          '
       THEN
          IF v_estado = 'B'
           THEN
              v_descri := v_descri||'*** '||v_desact;
           ELSE
              v_descri := v_descri||v_desact;
           END IF;
      END IF;
      IF v_desadi > '          '
       THEN
          v_descri := v_descri||'; Dirección:'||v_desadi;
      END IF;
      IF v_superf > '          '
       THEN
          v_descri := v_descri||'; Superficie:'||v_superf;
      END IF;
      IF v_docref > '          '
       THEN
          v_descri := v_descri||'; Folio:'||v_docref;
      END IF;
      IF v_nrose1 > '          '
       THEN
          v_descri := v_descri||'; Testimonio:'||v_nrose1;
      END IF;
      IF v_nrose2 > '          '
       THEN
          v_descri := v_descri||'; Catastro:'||v_nrose2;
      END IF;
      IF v_gobmun > '          '
       THEN
          v_descri := v_descri||'; Gobierno Municipal:'||v_gobmun;
      END IF;
      IF v_estado = 'B'
       THEN
          v_descri := v_descri||'; Fecha Baja:'||v_febaja;
      END IF;

   ELSE IF p_codrub IN ('03','08')
      THEN
      /* Rubro 03 Muebles y Enseres    08 Educacional y Recreativo */
      SELECT nvl(act_descripcion,' '),nvl(act_gobmunicipal,' '),nvl(act_marca,' '),
             nvl(act_color,' '),nvl(act_proveedor,' '),nvl(act_procedencia,' '),
--             nvl(TO_CHAR (act_fecbaja, 'dd/mm/yyyy'),' '),act_estado
             decode(ACT_ESTADO, 'B',nvl(TO_CHAR (act_fecbaja, 'dd/mm/yyyy'),ACT_FECCOMPRA)), act_estado

        INTO v_desact,v_gobmun,v_marca,v_color,v_provee,v_proced,v_febaja,v_estado
        FROM activos.activos
       WHERE act_codrub = p_codrub
         AND act_codreg = P_codreg
         AND act_codigo = p_codigo;

      IF v_desact > '          '
       THEN
          IF v_estado = 'B'
           THEN
              v_descri := v_descri||'*** '||v_desact;
           ELSE
              v_descri := v_descri||v_desact;
           END IF;
      END IF;
      IF v_proced > '          '
       THEN
          v_descri := v_descri||'; Material:'||v_proced;
      END IF;
      IF v_marca > '          '
       THEN
          v_descri := v_descri||'; Marca:'||v_marca;
      END IF;
      IF v_gobmun > '          '
       THEN
          v_descri := v_descri||'; Dimensiones:'||v_gobmun;
      END IF;
      IF v_color > '          '
       THEN
          v_descri := v_descri||'; Color:'||v_color;
      END IF;
      IF v_provee > '          '
       THEN
          v_descri := v_descri||'; Proveedor:'||v_provee;
      END IF;
      IF v_estado = 'B'
       THEN
          v_descri := v_descri||'; Fecha Baja:'||v_febaja;
      END IF;
   ELSE IF p_codrub = '05'
         THEN
         /* Rubro 05 Vehiculos */
         SELECT nvl(act_descripcion,' '),nvl(act_marca,' '),nvl(act_modelo,' '),
                nvl(act_color,' '),nvl(act_serie1,' '),nvl(act_serie2,' '),nvl(act_placa,' '),
--                nvl(TO_CHAR (act_fecbaja, 'dd/mm/yyyy'),' '), act_estado
           decode(ACT_ESTADO, 'B',nvl(TO_CHAR (act_fecbaja, 'dd/mm/yyyy'),ACT_FECCOMPRA)), act_estado

           INTO v_desact,v_marca,v_modelo,v_color,v_nrose1,v_nrose2,v_placa,v_febaja,v_estado
           FROM activos.activos
          WHERE act_codrub = p_codrub
            AND act_codreg = P_codreg
            AND act_codigo = p_codigo;

         IF v_desact > '          '
          THEN
             IF v_estado = 'B'
              THEN
                 v_descri := v_descri||'*** '||v_desact;
              ELSE
                 v_descri := v_descri||v_desact;
              END IF;
         END IF;
         IF v_marca > '          '
          THEN
             v_descri := v_descri||'; Marca:'||v_marca;
         END IF;
         IF v_color > '          '
          THEN
             v_descri := v_descri||'; Color:'||v_color;
         END IF;
         IF v_placa > '          '
          THEN
             v_descri := v_descri||'; Placa:'||v_placa;
         END IF;
         IF v_nrose1 > '          '
          THEN
             v_descri := v_descri||'; Nro.Chasis:'||v_nrose1;
         END IF;
         IF v_nrose2 > '          '
          THEN
             v_descri := v_descri||'; Nro.Motor:'||v_nrose2;
         END IF;
         IF v_estado = 'B'
          THEN
             v_descri := v_descri||'; Fecha Baja:'||v_febaja;
         END IF;
         ELSE
            /* Rubros 04,06,07,09,10,11 */
            SELECT nvl(act_descripcion,' '),nvl(act_marca,' '),nvl(act_modelo,' '),
                   nvl(act_serie1,' '),nvl(act_serie2,' '),nvl(act_proveedor,' '),
--                   nvl(TO_CHAR (act_fecbaja, 'dd/mm/yyyy'),' '),act_estado
                   decode(ACT_ESTADO, 'B',nvl(TO_CHAR (act_fecbaja, 'dd/mm/yyyy'),ACT_FECCOMPRA)), act_estado

              INTO v_desact,v_marca,v_modelo,v_nrose1,v_nrose2,v_provee,v_febaja,v_estado
              FROM activos.activos
             WHERE act_codrub = p_codrub
               AND act_codreg = P_codreg
               AND act_codigo = p_codigo;

             IF v_desact > '          '
              THEN
                 IF v_estado = 'B'
                  THEN
                     v_descri := v_descri||'*** '||v_desact;
                  ELSE
                     v_descri := v_descri||v_desact;
                  END IF;
             END IF;
             IF v_marca > '          '
              THEN
                 v_descri := v_descri||'; Marca:'||v_marca;
             END IF;
             IF v_modelo > '          '
              THEN
                 v_descri := v_descri||'; Modelo:'||v_modelo;
             END IF;
             IF v_nrose1 > '          '
              THEN
                 v_descri := v_descri||'; Nro.Serie:'||v_nrose1;
             END IF;
             IF v_nrose2 > '          '
              THEN
                 v_descri := v_descri||'; Nro.Serie:'||v_nrose2;
             END IF;
             IF v_provee > '          '
              THEN
                 v_descri := v_descri||'; Proveedor:'||v_provee;
             END IF;
             IF v_estado = 'B'
              THEN
                 v_descri := v_descri||'; Fecha Baja:'||v_febaja;
             END IF;
         END IF;
      END IF;
   END IF;
   RETURN (v_descri);
END;
/

