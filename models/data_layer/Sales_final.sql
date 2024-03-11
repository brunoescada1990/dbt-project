Select 
    s.ID,
    s.SALE,
    d.DATE_COMPLETE,
    P.NAME_PRODUCT,
    c.CLIENT_NAME,
    st.STORE_NAME,
    s.QUANTITY,
    s.VALUE_SALE,
    s.STATUS_SALE
    FROM {{ ref('Sales') }} s
    LEFT JOIN {{ ref('Date') }} d
        ON s.date_sale = d.ID
    LEFT JOIN {{ ref('Product') }} p
        ON s.Product = p.ID
    LEFT JOIN {{ ref('Client') }} c
        ON s.Client = c.ID
    LEFT JOIN {{ ref('Store') }} st
        ON s.Store = st.ID