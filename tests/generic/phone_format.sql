{% test phone_format(model, column_name) %}
    
    SELECT
        {{ column_name }}
    FROM
        {{ model }}
    WHERE
        NOT REGEXP_CONTAINS({{ column_name }}, r'\([0-9]{3}\) [0-9]{3}-[0-9]{4}')

{% endtest %}