{% macro classify_abc(column_name) %}

    CASE
        WHEN ({{ column_name }} BETWEEN 0 AND 100) THEN 'D'
        WHEN ({{ column_name }} BETWEEN 100 AND 200) THEN 'C'
        WHEN ({{ column_name }} BETWEEN 200 AND 300) THEN 'B'
        ELSE 'A'
    END

{% endmacro %}

