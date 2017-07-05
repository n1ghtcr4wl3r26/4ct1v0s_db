CREATE OR REPLACE 
PACKAGE owa_sylk as
--
  type owaSylkArray is table of varchar2(2000);
--
  procedure show(
      p_file          in utl_file.file_type,
      p_query         in varchar2,
      p_parm_names    in owaSylkArray default owaSylkArray(),
      p_parm_values   in owaSylkArray default owaSylkArray(),
      p_sum_column    in owaSylkArray default owaSylkArray(),
      p_max_rows      in number     default 10000,
      p_show_null_as  in varchar2   default null,
      p_show_grid     in varchar2   default 'YES',
      p_show_cantidad in number,
      p_show_col_headers in varchar2 default 'YES',
      p_font_name     in varchar2   default 'Courier New',
      p_widths        in owaSylkArray default owaSylkArray(),
      p_titles        in owaSylkArray default owaSylkArray(),
      p_strip_html    in varchar2   default 'YES' );
--
  procedure show(
      p_file          in utl_file.file_type,
      p_cursor        in integer,
      p_sum_column    in owaSylkArray  default owaSylkArray(),
      p_max_rows      in number     default 10000,
      p_show_null_as  in varchar2   default null,
      p_show_grid     in varchar2   default 'YES',
      p_show_cantidad in number,
      p_show_col_headers in varchar2 default 'YES',
      p_font_name     in varchar2   default 'Courier New',
      p_widths        in owaSylkArray default owaSylkArray(),
      p_titles        in owaSylkArray default owaSylkArray(),
      p_strip_html    in varchar2   default 'YES' );
--
end owa_sylk;
/

CREATE OR REPLACE 
PACKAGE BODY owa_sylk as
--
  g_cvalue  varchar2(32767);
  g_desc_t dbms_sql.desc_tab;

  type vc_arr is table of varchar2(2000) index by binary_integer;
  g_lengths vc_arr;
  g_sums vc_arr;
--
--

  g_file  utl_file.file_type;

  procedure p( p_str in varchar2 )
  is
  begin
    utl_file.put_line( g_file, p_str );
  exception
    when others then null;
  end;

  function build_cursor(
      q in varchar2,
      n in owaSylkArray,
      v in owaSylkArray ) return integer is
    c integer := dbms_sql.open_cursor;
    i number := 1;
  begin
    dbms_sql.parse (c, q, dbms_sql.native);
    loop
      dbms_sql.bind_variable( c, n(i), v(i) );
      i := i + 1;
    end loop;
    return c;
  exception
    when others then
      return c;
  end build_cursor;

  function ite( b boolean,
                t varchar2,
                f varchar2 ) return varchar2 is
  begin
    if b then
      return t;
    else
      return f;
    end if;
  end ite;

  procedure print_heading( font in varchar2,
                           grid in varchar2,
                           col_heading in varchar2,
                           titles in owaSylkArray )
  is
    l_title varchar2(2000);
    l_titlet varchar2(2000);
  begin
  p('<tr>');
    for i in 1 .. g_desc_t.count loop
      g_lengths(i) := g_desc_t(i).col_name_len;
      g_sums(i) := 0;
      begin
        l_title := titles(i);
      exception
        when others then
          l_title := g_desc_t(i).col_name;
      end;
        l_title:='<td>'||l_title||'</td>';
        l_titlet := l_titlet||l_title;
    end loop;
    p(l_titlet);
    p('</tr>');
  end print_heading;
--
  function print_rows(
      c            in integer,
      max_rows     in number,
      sum_columns  in owaSylkArray,
      show_null_as in varchar2,
      strip_html   in varchar2,
      show_cantidad in number ) return number is
    row_cnt number          := 0;
    line    varchar2(32767) := null;
    n       number;
    j       number;
  begin
    loop
    p('<tr>');
        exit when ( row_cnt >= max_rows or
                  dbms_sql.fetch_rows( c ) <= 0 );
      row_cnt := row_cnt + 1;
      --
      j := 1;
      line:='';
      for i in 1 .. g_desc_t.count loop
        dbms_sql.column_value( c, i, g_cvalue );
        g_cvalue := translate( g_cvalue,
                            chr(10)||chr(9)||';', '   ' );
        g_lengths(i) := greatest( nvl(length(g_cvalue),
                                  nvl(length(show_null_as),0)),
                                  g_lengths(i) );
        line := line||'<td class=xl24>'||g_cvalue||'</td>';
        if j=show_cantidad then
         p( line );
         j:=1;
         line:='';
        end if;
        j:=j+1;
      end loop;
    p('</tr>');
    end loop;
    p('</tr>');
    return row_cnt;
  end print_rows;

  procedure show(
      p_file          in utl_file.file_type,
      p_cursor        in integer,
      p_sum_column    in owaSylkArray default owaSylkArray(),
      p_max_rows      in number     default 10000,
      p_show_null_as  in varchar2   default null,
      p_show_grid     in varchar2   default 'YES',
      p_show_cantidad in number,
      p_show_col_headers in varchar2 default 'YES',
      p_font_name     in varchar2   default 'Courier New',
      p_widths        in owaSylkArray default owaSylkArray(),
      p_titles        in owaSylkArray default owaSylkArray(),
      p_strip_html    in varchar2   default 'YES' ) is
  --
    l_row_cnt number;
    l_col_cnt number;
    l_status  number;
  begin
    g_file := p_file;
    dbms_sql.describe_columns( p_cursor, l_col_cnt, g_desc_t );
    --
    for i in 1 .. g_desc_t.count loop
      dbms_sql.define_column( p_cursor, i, g_cvalue, 32765);
    end loop;
    --
p('<html>');
p('<head>');
p('<style>');
p('.xl24');
p('  {mso-number-format:"\@";}');
p('</style>');
p('</head>');
p('<body>');
p('<table x:str border=0>');
    print_heading( p_font_name,
                   p_show_grid,
                   p_show_col_headers,
                   p_titles );
    l_status := dbms_sql.execute( p_cursor );
    l_row_cnt := print_rows(
                   p_cursor,
                   p_max_rows,
                   p_sum_column,
                   p_show_null_as,
                   p_strip_html,
                   p_show_cantidad );
p('</table>');
p('</body>');
p('</html>');
  end show;
--
  procedure show(
      p_file          in utl_file.file_type,
      p_query         in varchar2,
      p_parm_names    in owaSylkArray default owaSylkArray(),
      p_parm_values   in owaSylkArray default owaSylkArray(),
      p_sum_column    in owaSylkArray default owaSylkArray(),
      p_max_rows      in number     default 10000,
      p_show_null_as  in varchar2   default null,
      p_show_grid     in varchar2   default 'YES',
      p_show_cantidad in number,
      p_show_col_headers in varchar2 default 'YES',
      p_font_name     in varchar2   default 'Courier New',
      p_widths        in owaSylkArray default owaSylkArray(),
      p_titles        in owaSylkArray default owaSylkArray(),
      p_strip_html    in varchar2   default 'YES' ) is
  begin
    show( p_file => p_file,
          p_cursor => build_cursor( p_query,
                                    p_parm_names,
                                    p_parm_values ),
          p_sum_column => p_sum_column,
          p_max_rows => p_max_rows,
          p_show_null_as => p_show_null_as,
          p_show_grid => p_show_grid,
          p_show_cantidad => p_show_cantidad,
          p_show_col_headers => p_show_col_headers,
          p_font_name => p_font_name,
          p_widths => p_widths,
          p_titles => p_titles,
          p_strip_html => p_strip_html );
  end show;
--
end owa_sylk;
/

