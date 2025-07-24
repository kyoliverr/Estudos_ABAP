REPORT ZPROGHANA09

PARAMETERS p_car TYPE sflight-carrid.

START-OF-SELECTION

* Selecionando os dados e declarando uma table In-Line | Consumindo CDS com parâmetro
select mandt,
       carrid,
       connid,
       fldate,
       seatsmax
       FROM ZPROGHANA_CDS02( p_carrid = @p_car )
       into table @DATA(lt_param)

* cl_demo_output=>display( lt_param ).

LOOP AT lt_param INTO DATA(ls_param).
    CONCATENATE: ls_param-fldate+6(2)
                 ls_param-fldate+4(2)
                 ls_param-fldate(4)
                 into v1_data
                 SEPARETED BY '/'

    WRITE: / ls_param-fldate
           vl_data.

END LOOP.                 
