with vendas_finalizadas as (
Select 
    SALE,
    DATE_COMPLETE,
    NAME_PRODUCT,
    CLIENT_NAME,
    STORE_NAME,
    VALUE_SALE,
    {{ category_sales('VALUE_SALE') }} AS CATEGORY
from {{ ref('Sales_final') }}
where STATUS_SALE = 'Entregue'
)
Select * From vendas_finalizadas