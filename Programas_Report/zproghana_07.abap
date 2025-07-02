REPORT ZPROGHANA_07.

SELECT char1 && '_' && char2 AS group,
       MAX( num1 + num2) AS max,
       MIN( num1 - num2) AS min
       FROM demo_expressions
       GROUP BY char1, char2
       HAVING MIN( num1 + num2 ) > 25
       ORDER BY group
       INTO TABLE @DATA(grouped_having).

cl_demo_output=>display( grouped_having ).
