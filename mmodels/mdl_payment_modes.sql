
select
sum(case when payment_mode =  'upi'  then sales end) as upi_SALES 
,sum(case when payment_mode =  'cash'  then sales end) as cash_SALES 
,sum(case when payment_mode =  'cc'  then sales end) as cc_SALES 
,sum(case when payment_mode =  'dc'  then sales end) as dc_SALES 
,sum(case when payment_mode =  'voucher'  then sales end) as voucher_SALES 
from DB_KAILASH.SCHE_KAILASH.PAYment_MODES


{#seed to table in snowflake-------------------->model on seed.
DB_KAILASH.SCH_KAILASH.PAYMENT_MODES------------> DB_KAILASH.SCH_KAILASH.MDL_PAYMENT_MODES
#}

{#--previous error
18:02:28 Encountered an error:
Compilation Error
  dbt found two resources with the database representation "DB_KAILASH.SCH_KAILASH.payment_modes".
  dbt cannot create two resources with identical database representations. To fix this,
  change the configuration of one of these resources:
  - model.PROJECT_DEV.payment_modes (mmodels/payment_modes.sql)
  - seed.PROJECT_DEV.payment_modes (seeds/payment_modes.csv)
#}