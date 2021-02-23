;;; Simple select
; SELECT * FROM my_table
(program
 (statement
  (select_statement
   (select
    (keyword_select)
    (select_expression))
   (from
    (keyword_from)
     (table_expression (table_name))))))

;;; Simple from schema name qualifier
; SELECT * FROM my_schema.my_table
(program
 (statement
  (select_statement
   (select
    (keyword_select)
    (select_expression))
   (from
    (keyword_from)
     (table_expression
      (schema_name) (table_name))))))

;;; Simple select with distinct
; SELECT DISTINCT * FROM my_table
(program
 (statement
  (select_statement
   (select
    (keyword_select)
    (keyword_distinct)
    (select_expression))
   (from
    (keyword_from)
     (table_expression (table_name))))))

;;; Simple select with distinct
; SELECT ALL * FROM my_table
(program
 (statement
  (select_statement
   (select
    (keyword_select)
    (keyword_all)
    (select_expression))
   (from
    (keyword_from)
     (table_expression (table_name))))))
