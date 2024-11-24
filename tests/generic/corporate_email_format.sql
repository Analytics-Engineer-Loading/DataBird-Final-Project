{% test corporate_email_format(model, column_name) %}
    
    SELECT
        {{ column_name }}
    FROM
        {{ model }}
    WHERE
        NOT REGEXP_CONTAINS({{ column_name }}, r'[^ ]*@bikes\.shop')

{% endtest %}