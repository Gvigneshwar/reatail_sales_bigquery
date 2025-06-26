SELECT
  region,
  SUM(quantity) AS total_quantity
FROM
  `vignesh-15.v15.retail_sales`
GROUP BY
  region;

SELECT
  date,
  product,
  quantity,
  price,
  quantity * price AS total_sales
FROM
  `vignesh-15.v15.retail_sales`
ORDER BY
  date;
