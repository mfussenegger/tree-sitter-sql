;;; Can parse comments
; -- hello
; SELECT * FROM my_table
(program
 (comment)
 (statement
  (select_statement
   (select (keyword_select) (select_expression))
   (from (keyword_from) (table_expression (table_name))))))
