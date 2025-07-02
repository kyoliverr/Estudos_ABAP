REPORT ZPROGHANA_06.

DATA(offset) = 10000.

SELECT id, 
       num1,
       num2,
       CAST ( num1 AS FLTP ) / CAST ( num2 AS FLTP ) AS ratio,
       DIV ( num1 , num2 ) AS div,
       MOD ( num1, num2 ) AS mod,
       @offset + ABS ( num1 - num2 ) AS sum
       FROM demo_expressions
       ORDER BY sum DESCENDING
       INTO TABLE @DATA(results).

cl_demo_output=>display( results ).

