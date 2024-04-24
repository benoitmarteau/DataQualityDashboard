
/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_START_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_ERA.CONDITION_ERA_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_ERA cdmTable
        
        
            WHERE CAST(cdmTable.CONDITION_ERA_START_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_ERA cdmTable
    
    WHERE CONDITION_ERA_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_END_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_ERA.CONDITION_ERA_END_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_ERA cdmTable
        
        
            WHERE CAST(cdmTable.CONDITION_ERA_END_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_ERA cdmTable
    
    WHERE CONDITION_ERA_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_OCCURRENCE_COUNT
plausibleValueLow = 1

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_ERA.CONDITION_OCCURRENCE_COUNT' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_ERA cdmTable
        
        
            WHERE cdmTable.CONDITION_OCCURRENCE_COUNT < 1
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_ERA cdmTable
    
    WHERE CONDITION_OCCURRENCE_COUNT IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_OCCURRENCE.CONDITION_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_OCCURRENCE cdmTable
        
        
            WHERE CAST(cdmTable.CONDITION_START_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_OCCURRENCE cdmTable
    
    WHERE CONDITION_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATETIME
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_OCCURRENCE.CONDITION_START_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_OCCURRENCE cdmTable
        
        
            WHERE CAST(cdmTable.CONDITION_START_DATETIME AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_OCCURRENCE cdmTable
    
    WHERE CONDITION_START_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_OCCURRENCE.CONDITION_END_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_OCCURRENCE cdmTable
        
        
            WHERE CAST(cdmTable.CONDITION_END_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_OCCURRENCE cdmTable
    
    WHERE CONDITION_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATETIME
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_OCCURRENCE.CONDITION_END_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_OCCURRENCE cdmTable
        
        
            WHERE CAST(cdmTable.CONDITION_END_DATETIME AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_OCCURRENCE cdmTable
    
    WHERE CONDITION_END_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEATH
cdmFieldName = DEATH_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DEATH.DEATH_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.DEATH cdmTable
        
        
            WHERE CAST(cdmTable.DEATH_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEATH cdmTable
    
    WHERE DEATH_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEATH
cdmFieldName = DEATH_DATETIME
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DEATH.DEATH_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.DEATH cdmTable
        
        
            WHERE CAST(cdmTable.DEATH_DATETIME AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEATH cdmTable
    
    WHERE DEATH_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DEVICE_EXPOSURE.DEVICE_EXPOSURE_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
        
        
            WHERE CAST(cdmTable.DEVICE_EXPOSURE_START_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
    
    WHERE DEVICE_EXPOSURE_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATETIME
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DEVICE_EXPOSURE.DEVICE_EXPOSURE_START_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
        
        
            WHERE CAST(cdmTable.DEVICE_EXPOSURE_START_DATETIME AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
    
    WHERE DEVICE_EXPOSURE_START_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DEVICE_EXPOSURE.DEVICE_EXPOSURE_END_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
        
        
            WHERE CAST(cdmTable.DEVICE_EXPOSURE_END_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
    
    WHERE DEVICE_EXPOSURE_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATETIME
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DEVICE_EXPOSURE.DEVICE_EXPOSURE_END_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
        
        
            WHERE CAST(cdmTable.DEVICE_EXPOSURE_END_DATETIME AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
    
    WHERE DEVICE_EXPOSURE_END_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = QUANTITY
plausibleValueLow = 1

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DEVICE_EXPOSURE.QUANTITY' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
        
        
            WHERE cdmTable.QUANTITY < 1
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
    
    WHERE QUANTITY IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_VALUE
plausibleValueLow = 0

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DOSE_ERA.DOSE_VALUE' AS violating_field, 
            cdmTable.*
        FROM dbo.DOSE_ERA cdmTable
        
        
            WHERE cdmTable.DOSE_VALUE < 0
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DOSE_ERA cdmTable
    
    WHERE DOSE_VALUE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_START_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DOSE_ERA.DOSE_ERA_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.DOSE_ERA cdmTable
        
        
            WHERE CAST(cdmTable.DOSE_ERA_START_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DOSE_ERA cdmTable
    
    WHERE DOSE_ERA_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_END_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DOSE_ERA.DOSE_ERA_END_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.DOSE_ERA cdmTable
        
        
            WHERE CAST(cdmTable.DOSE_ERA_END_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DOSE_ERA cdmTable
    
    WHERE DOSE_ERA_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_START_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_ERA.DRUG_ERA_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_ERA cdmTable
        
        
            WHERE CAST(cdmTable.DRUG_ERA_START_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_ERA cdmTable
    
    WHERE DRUG_ERA_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_END_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_ERA.DRUG_ERA_END_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_ERA cdmTable
        
        
            WHERE CAST(cdmTable.DRUG_ERA_END_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_ERA cdmTable
    
    WHERE DRUG_ERA_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_EXPOSURE_COUNT
plausibleValueLow = 1

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_ERA.DRUG_EXPOSURE_COUNT' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_ERA cdmTable
        
        
            WHERE cdmTable.DRUG_EXPOSURE_COUNT < 1
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_ERA cdmTable
    
    WHERE DRUG_EXPOSURE_COUNT IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = GAP_DAYS
plausibleValueLow = 0

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_ERA.GAP_DAYS' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_ERA cdmTable
        
        
            WHERE cdmTable.GAP_DAYS < 0
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_ERA cdmTable
    
    WHERE GAP_DAYS IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.DRUG_EXPOSURE_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
        
        
            WHERE CAST(cdmTable.DRUG_EXPOSURE_START_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
    
    WHERE DRUG_EXPOSURE_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATETIME
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.DRUG_EXPOSURE_START_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
        
        
            WHERE CAST(cdmTable.DRUG_EXPOSURE_START_DATETIME AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
    
    WHERE DRUG_EXPOSURE_START_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.DRUG_EXPOSURE_END_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
        
        
            WHERE CAST(cdmTable.DRUG_EXPOSURE_END_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
    
    WHERE DRUG_EXPOSURE_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATETIME
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.DRUG_EXPOSURE_END_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
        
        
            WHERE CAST(cdmTable.DRUG_EXPOSURE_END_DATETIME AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
    
    WHERE DRUG_EXPOSURE_END_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VERBATIM_END_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.VERBATIM_END_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
        
        
            WHERE CAST(cdmTable.VERBATIM_END_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
    
    WHERE VERBATIM_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = REFILLS
plausibleValueLow = 0

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.REFILLS' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
        
        
            WHERE cdmTable.REFILLS < 0
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
    
    WHERE REFILLS IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = QUANTITY
plausibleValueLow = 0.0000001

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.QUANTITY' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
        
        
            WHERE cdmTable.QUANTITY < 0.0000001
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
    
    WHERE QUANTITY IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DAYS_SUPPLY
plausibleValueLow = 1

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.DAYS_SUPPLY' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
        
        
            WHERE cdmTable.DAYS_SUPPLY < 1
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
    
    WHERE DAYS_SUPPLY IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'MEASUREMENT.MEASUREMENT_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.MEASUREMENT cdmTable
        
        
            WHERE CAST(cdmTable.MEASUREMENT_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.MEASUREMENT cdmTable
    
    WHERE MEASUREMENT_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'NOTE.NOTE_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.NOTE cdmTable
        
        
            WHERE CAST(cdmTable.NOTE_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.NOTE cdmTable
    
    WHERE NOTE_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_DATETIME
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'NOTE.NOTE_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.NOTE cdmTable
        
        
            WHERE CAST(cdmTable.NOTE_DATETIME AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.NOTE cdmTable
    
    WHERE NOTE_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = NLP_DATETIME
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'NOTE_NLP.NLP_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.NOTE_NLP cdmTable
        
        
            WHERE CAST(cdmTable.NLP_DATETIME AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.NOTE_NLP cdmTable
    
    WHERE NLP_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'OBSERVATION.OBSERVATION_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION cdmTable
        
        
            WHERE CAST(cdmTable.OBSERVATION_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION cdmTable
    
    WHERE OBSERVATION_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATETIME
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'OBSERVATION.OBSERVATION_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION cdmTable
        
        
            WHERE CAST(cdmTable.OBSERVATION_DATETIME AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION cdmTable
    
    WHERE OBSERVATION_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_START_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'OBSERVATION_PERIOD.OBSERVATION_PERIOD_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION_PERIOD cdmTable
        
        
            WHERE CAST(cdmTable.OBSERVATION_PERIOD_START_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION_PERIOD cdmTable
    
    WHERE OBSERVATION_PERIOD_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_END_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'OBSERVATION_PERIOD.OBSERVATION_PERIOD_END_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION_PERIOD cdmTable
        
        
            WHERE CAST(cdmTable.OBSERVATION_PERIOD_END_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION_PERIOD cdmTable
    
    WHERE OBSERVATION_PERIOD_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = YEAR_OF_BIRTH
plausibleValueLow = 1850

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'PERSON.YEAR_OF_BIRTH' AS violating_field, 
            cdmTable.*
        FROM dbo.PERSON cdmTable
        
        
            WHERE cdmTable.YEAR_OF_BIRTH < 1850
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PERSON cdmTable
    
    WHERE YEAR_OF_BIRTH IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = MONTH_OF_BIRTH
plausibleValueLow = 1

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'PERSON.MONTH_OF_BIRTH' AS violating_field, 
            cdmTable.*
        FROM dbo.PERSON cdmTable
        
        
            WHERE cdmTable.MONTH_OF_BIRTH < 1
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PERSON cdmTable
    
    WHERE MONTH_OF_BIRTH IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = DAY_OF_BIRTH
plausibleValueLow = 1

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'PERSON.DAY_OF_BIRTH' AS violating_field, 
            cdmTable.*
        FROM dbo.PERSON cdmTable
        
        
            WHERE cdmTable.DAY_OF_BIRTH < 1
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PERSON cdmTable
    
    WHERE DAY_OF_BIRTH IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = BIRTH_DATETIME
plausibleValueLow = '18500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'PERSON.BIRTH_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.PERSON cdmTable
        
        
            WHERE CAST(cdmTable.BIRTH_DATETIME AS DATE) < CAST('18500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PERSON cdmTable
    
    WHERE BIRTH_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'PROCEDURE_OCCURRENCE.PROCEDURE_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
        
            WHERE CAST(cdmTable.PROCEDURE_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    
    WHERE PROCEDURE_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATETIME
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'PROCEDURE_OCCURRENCE.PROCEDURE_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
        
            WHERE CAST(cdmTable.PROCEDURE_DATETIME AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    
    WHERE PROCEDURE_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = QUANTITY
plausibleValueLow = 1

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'PROCEDURE_OCCURRENCE.QUANTITY' AS violating_field, 
            cdmTable.*
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
        
            WHERE cdmTable.QUANTITY < 1
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    
    WHERE QUANTITY IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'SPECIMEN.SPECIMEN_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.SPECIMEN cdmTable
        
        
            WHERE CAST(cdmTable.SPECIMEN_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.SPECIMEN cdmTable
    
    WHERE SPECIMEN_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATETIME
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'SPECIMEN.SPECIMEN_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.SPECIMEN cdmTable
        
        
            WHERE CAST(cdmTable.SPECIMEN_DATETIME AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.SPECIMEN cdmTable
    
    WHERE SPECIMEN_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = QUANTITY
plausibleValueLow = 0

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'SPECIMEN.QUANTITY' AS violating_field, 
            cdmTable.*
        FROM dbo.SPECIMEN cdmTable
        
        
            WHERE cdmTable.QUANTITY < 0
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.SPECIMEN cdmTable
    
    WHERE QUANTITY IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_DETAIL.VISIT_DETAIL_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
        
        
            WHERE CAST(cdmTable.VISIT_DETAIL_START_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
    
    WHERE VISIT_DETAIL_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATETIME
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_DETAIL.VISIT_DETAIL_START_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
        
        
            WHERE CAST(cdmTable.VISIT_DETAIL_START_DATETIME AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
    
    WHERE VISIT_DETAIL_START_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_DETAIL.VISIT_DETAIL_END_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
        
        
            WHERE CAST(cdmTable.VISIT_DETAIL_END_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
    
    WHERE VISIT_DETAIL_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATETIME
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_DETAIL.VISIT_DETAIL_END_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
        
        
            WHERE CAST(cdmTable.VISIT_DETAIL_END_DATETIME AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
    
    WHERE VISIT_DETAIL_END_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_OCCURRENCE.VISIT_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_OCCURRENCE cdmTable
        
        
            WHERE CAST(cdmTable.VISIT_START_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
    
    WHERE VISIT_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATETIME
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_OCCURRENCE.VISIT_START_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_OCCURRENCE cdmTable
        
        
            WHERE CAST(cdmTable.VISIT_START_DATETIME AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
    
    WHERE VISIT_START_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATE
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_OCCURRENCE.VISIT_END_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_OCCURRENCE cdmTable
        
        
            WHERE CAST(cdmTable.VISIT_END_DATE AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
    
    WHERE VISIT_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_LOW
get number of records and the proportion to total number of eligible records that fall below this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATETIME
plausibleValueLow = '19500101'

**********/

SELECT num_violated_rows,
    CASE
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows
    END AS pct_violated_rows,
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_OCCURRENCE.VISIT_END_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_OCCURRENCE cdmTable
        
        
            WHERE CAST(cdmTable.VISIT_END_DATETIME AS DATE) < CAST('19500101' AS DATE)
        
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
    
    WHERE VISIT_END_DATETIME IS NOT NULL
) denominator
;

