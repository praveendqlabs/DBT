WITH employee_sales_vw AS  (
    SELECT 
    A.SALESORDERID,
    CONCAT(A.COMPANYNAME, A.LEGALFORM) AS COMPANY_INFO,
    B.CREATED_EMPLOYEE_EMAIL,
    TO_DATE(B.CREATEDAT, 'YYYYMMDD') AS CREATED_DATE,
    B.CURRENCY,
    A.ITEM_GROSSAMOUNT,
    A.ITEM_NETAMOUNT,
    A.ITEM_TAXAMOUNT,
    A.PRODUCTID 
FROM 
    DQLABS_QA.STAGING.SALES_BUSINESS A
INNER JOIN 
    DQLABS_QA.STAGING.SALES_EMP B
    ON A.SALESORDERID = B.SALESORDERID
)
SELECT * FROM employee_sales_vw