## How does weather precipitation affect spending habits at the mall for each gender?

select customers.gender, avg(mall.price)
		from mall
        join customers
        on mall.customer_id = customers.customer_id
        join weather
        on mall.invoice_date = weather.Date
        where Precipitation>0
        group by gender;

## Result: Women spend less at the mall on rainy days than men do. 