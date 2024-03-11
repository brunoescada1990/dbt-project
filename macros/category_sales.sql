{% macro category_sales(value) %}
    {% set col_ref %}
        {% if adapter.type() == 'snowflake' %}
            {{ adapter.quote(value) }}
        {% else %}
            {{ value }}
        {% endif %}
    {% endset %}
    
    {% set result %}
        case
            when to_number({{ col_ref }}) < 5000 then 'low'
            when to_number({{ col_ref }}) >= 5000 and to_number({{ col_ref }}) < 10000 then 'middle'
            else 'high'
        end
    {% endset %}
    
    {{ result }}
{% endmacro %}