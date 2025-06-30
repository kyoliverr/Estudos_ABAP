REPORT ZPROGHANA_05.1 

TYPES: type_itab TYPE TABLE OF demo_expressions WITH KEY id.

DATA(itab) = VALUE type_itab(
  ( id = 'x' char1 = 'aaaaa' char2 = 'bbbbb' num1 = '10' num2 = '5' )
  ( id = 'y' char1 = 'xxxxx' char2 = 'yyyyy' num1 = '40' num2 = '20' )
  ( id = 'z' char1 = 'mmmmmmm' char2 = 'nnnnn' num1 = '30' num2 = '3' )).

DELETE FROM demo_expressions.
INSERT demo_expressions FROM TABLE @itab.

DATA else TYPE c LENGHT 10 VALUE 'fffff'.

SELECT id,
       char1,
       char2,

       CASE char1
         WHEN 'aaaaa'
           THEN ( char1 && char2 )
         WHEN 'xxxxx'
           THEN ( char2 && char1 )
         ELSE @else
      END AS text

      FROM demo_expressions
      INTO TABLE @DATA(results).


LOOP AT results INTO DATA(w_result).
  WRITE: / w_result-id,
           w_result-char1,
           w_result-char2,
           w_result-text.
ENDLOOP.
