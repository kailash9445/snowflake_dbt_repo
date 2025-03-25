
select
sum(case when payment_mode =  'upi'  then sales end) as upi_SALES 
,sum(case when payment_mode =  'cash'  then sales end) as cash_SALES 
,sum(case when payment_mode =  'cc'  then sales end) as cc_SALES 
,sum(case when payment_mode =  'dc'  then sales end) as dc_SALES 
,sum(case when payment_mode =  'voucher'  then sales end) as voucher_SALES 
from DB_KAILASH.SCH_KAILASH.PAY_MODES
