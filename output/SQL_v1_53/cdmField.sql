
/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CARE_SITE
cdmFieldName = CARE_SITE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CARE_SITE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CARE_SITE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CARE_SITE
cdmFieldName = CARE_SITE_NAME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CARE_SITE_NAME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CARE_SITE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CARE_SITE
cdmFieldName = PLACE_OF_SERVICE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PLACE_OF_SERVICE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CARE_SITE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CARE_SITE
cdmFieldName = LOCATION_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(LOCATION_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CARE_SITE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CARE_SITE
cdmFieldName = CARE_SITE_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CARE_SITE_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CARE_SITE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CARE_SITE
cdmFieldName = PLACE_OF_SERVICE_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PLACE_OF_SERVICE_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CARE_SITE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CONDITION_ERA_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = PERSON_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CONDITION_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_START_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CONDITION_ERA_START_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_END_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CONDITION_ERA_END_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_OCCURRENCE_COUNT

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CONDITION_OCCURRENCE_COUNT) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_OCCURRENCE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CONDITION_OCCURRENCE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = PERSON_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CONDITION_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CONDITION_START_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CONDITION_START_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CONDITION_END_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CONDITION_END_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_TYPE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CONDITION_TYPE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_STATUS_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CONDITION_STATUS_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = STOP_REASON

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(STOP_REASON) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = PROVIDER_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROVIDER_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_OCCURRENCE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = VISIT_DETAIL_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_DETAIL_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CONDITION_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CONDITION_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_STATUS_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CONDITION_STATUS_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.CONDITION_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = COST_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(COST_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = COST_EVENT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(COST_EVENT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = COST_DOMAIN_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(COST_DOMAIN_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = COST_TYPE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(COST_TYPE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = CURRENCY_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CURRENCY_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = TOTAL_CHARGE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(TOTAL_CHARGE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = TOTAL_COST

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(TOTAL_COST) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = TOTAL_PAID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(TOTAL_PAID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = PAID_BY_PAYER

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PAID_BY_PAYER) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = PAID_BY_PATIENT

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PAID_BY_PATIENT) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = PAID_PATIENT_COPAY

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PAID_PATIENT_COPAY) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = PAID_PATIENT_COINSURANCE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PAID_PATIENT_COINSURANCE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = PAID_PATIENT_DEDUCTIBLE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PAID_PATIENT_DEDUCTIBLE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = PAID_BY_PRIMARY

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PAID_BY_PRIMARY) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = PAID_INGREDIENT_COST

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PAID_INGREDIENT_COST) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = PAID_DISPENSING_FEE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PAID_DISPENSING_FEE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = PAYER_PLAN_PERIOD_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PAYER_PLAN_PERIOD_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = AMOUNT_ALLOWED

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(AMOUNT_ALLOWED) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = REVENUE_CODE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(REVENUE_CODE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = REVENUE_CODE_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(REVENUE_CODE_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = DRG_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DRG_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = DRG_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DRG_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.COST cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEATH
cdmFieldName = CAUSE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CAUSE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEATH cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEATH
cdmFieldName = CAUSE_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CAUSE_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEATH cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEATH
cdmFieldName = CAUSE_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CAUSE_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEATH cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEATH
cdmFieldName = DEATH_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DEATH_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEATH cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEATH
cdmFieldName = DEATH_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DEATH_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEATH cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEATH
cdmFieldName = DEATH_TYPE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DEATH_TYPE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEATH cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEATH
cdmFieldName = PERSON_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEATH cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DEVICE_EXPOSURE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PERSON_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DEVICE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DEVICE_EXPOSURE_START_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DEVICE_EXPOSURE_START_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DEVICE_EXPOSURE_END_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DEVICE_EXPOSURE_END_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_TYPE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DEVICE_TYPE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = UNIQUE_DEVICE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(UNIQUE_DEVICE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = QUANTITY

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(QUANTITY) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PROVIDER_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROVIDER_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = VISIT_OCCURRENCE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_OCCURRENCE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = VISIT_DETAIL_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_DETAIL_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DEVICE_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DEVICE_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEVICE_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DOSE_ERA_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DOSE_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = PERSON_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DOSE_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DRUG_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DRUG_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DOSE_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = UNIT_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(UNIT_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DOSE_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DOSE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DOSE_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_START_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DOSE_ERA_START_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DOSE_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_END_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DOSE_ERA_END_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DOSE_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DRUG_ERA_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = PERSON_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DRUG_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_START_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DRUG_ERA_START_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_END_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DRUG_ERA_END_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_EXPOSURE_COUNT

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DRUG_EXPOSURE_COUNT) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = GAP_DAYS

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(GAP_DAYS) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_ERA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DRUG_EXPOSURE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = PERSON_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DRUG_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DRUG_EXPOSURE_START_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DRUG_EXPOSURE_START_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DRUG_EXPOSURE_END_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DRUG_EXPOSURE_END_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VERBATIM_END_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VERBATIM_END_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_TYPE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DRUG_TYPE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = STOP_REASON

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(STOP_REASON) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = REFILLS

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(REFILLS) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = QUANTITY

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(QUANTITY) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DAYS_SUPPLY

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DAYS_SUPPLY) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = SIG

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(SIG) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(ROUTE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = LOT_NUMBER

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(LOT_NUMBER) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = PROVIDER_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROVIDER_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VISIT_OCCURRENCE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_OCCURRENCE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VISIT_DETAIL_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_DETAIL_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DRUG_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DRUG_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(ROUTE_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DOSE_UNIT_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DOSE_UNIT_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DRUG_EXPOSURE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_1

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DOMAIN_CONCEPT_ID_1) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.FACT_RELATIONSHIP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = FACT_ID_1

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(FACT_ID_1) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.FACT_RELATIONSHIP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_2

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DOMAIN_CONCEPT_ID_2) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.FACT_RELATIONSHIP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = FACT_ID_2

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(FACT_ID_2) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.FACT_RELATIONSHIP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = RELATIONSHIP_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(RELATIONSHIP_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.FACT_RELATIONSHIP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = LOCATION
cdmFieldName = LOCATION_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(LOCATION_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.LOCATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = LOCATION
cdmFieldName = ADDRESS_1

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(ADDRESS_1) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.LOCATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = LOCATION
cdmFieldName = ADDRESS_2

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(ADDRESS_2) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.LOCATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = LOCATION
cdmFieldName = CITY

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CITY) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.LOCATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = LOCATION
cdmFieldName = STATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(STATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.LOCATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = LOCATION
cdmFieldName = ZIP

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(ZIP) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.LOCATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = LOCATION
cdmFieldName = COUNTY

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(COUNTY) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.LOCATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = LOCATION
cdmFieldName = LOCATION_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(LOCATION_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.LOCATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(MEASUREMENT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = PERSON_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(MEASUREMENT_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(MEASUREMENT_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(MEASUREMENT_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_TIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(MEASUREMENT_TIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_TYPE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(MEASUREMENT_TYPE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = OPERATOR_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(OPERATOR_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = VALUE_AS_NUMBER

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VALUE_AS_NUMBER) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = VALUE_AS_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VALUE_AS_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(UNIT_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = RANGE_LOW

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(RANGE_LOW) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = RANGE_HIGH

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(RANGE_HIGH) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = PROVIDER_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROVIDER_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = VISIT_OCCURRENCE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_OCCURRENCE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = VISIT_DETAIL_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_DETAIL_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(MEASUREMENT_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(MEASUREMENT_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(UNIT_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = VALUE_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VALUE_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.MEASUREMENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(NOTE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = PERSON_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(NOTE_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(NOTE_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_TYPE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(NOTE_TYPE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_CLASS_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(NOTE_CLASS_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_TITLE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(NOTE_TITLE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_TEXT

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(NOTE_TEXT) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = ENCODING_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(ENCODING_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = LANGUAGE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(LANGUAGE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = PROVIDER_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROVIDER_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = VISIT_OCCURRENCE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_OCCURRENCE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = VISIT_DETAIL_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_DETAIL_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(NOTE_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(NOTE_NLP_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(NOTE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = SECTION_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(SECTION_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = SNIPPET

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(SNIPPET) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = LEXICAL_VARIANT

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(LEXICAL_VARIANT) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(NOTE_NLP_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(NOTE_NLP_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = NLP_SYSTEM

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(NLP_SYSTEM) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = NLP_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(NLP_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = NLP_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(NLP_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = TERM_EXISTS

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(TERM_EXISTS) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = TERM_TEMPORAL

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(TERM_TEMPORAL) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = TERM_MODIFIERS

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(TERM_MODIFIERS) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.NOTE_NLP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(OBSERVATION_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = PERSON_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(OBSERVATION_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(OBSERVATION_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(OBSERVATION_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_TYPE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(OBSERVATION_TYPE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = VALUE_AS_NUMBER

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VALUE_AS_NUMBER) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = VALUE_AS_STRING

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VALUE_AS_STRING) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = VALUE_AS_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VALUE_AS_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = QUALIFIER_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(QUALIFIER_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = UNIT_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(UNIT_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = PROVIDER_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROVIDER_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = VISIT_OCCURRENCE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_OCCURRENCE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = VISIT_DETAIL_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_DETAIL_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(OBSERVATION_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(OBSERVATION_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = UNIT_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(UNIT_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = QUALIFIER_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(QUALIFIER_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(OBSERVATION_PERIOD_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERSON_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_START_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(OBSERVATION_PERIOD_START_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_END_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(OBSERVATION_PERIOD_END_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERIOD_TYPE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERIOD_TYPE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.OBSERVATION_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PAYER_PLAN_PERIOD_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PERSON_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_START_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PAYER_PLAN_PERIOD_START_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_END_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PAYER_PLAN_PERIOD_END_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PAYER_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PAYER_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PAYER_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PLAN_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PLAN_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PLAN_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(SPONSOR_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(SPONSOR_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(SPONSOR_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = FAMILY_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(FAMILY_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(STOP_REASON_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(STOP_REASON_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(STOP_REASON_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = PERSON_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = GENDER_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(GENDER_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = YEAR_OF_BIRTH

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(YEAR_OF_BIRTH) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = MONTH_OF_BIRTH

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(MONTH_OF_BIRTH) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = DAY_OF_BIRTH

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DAY_OF_BIRTH) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = BIRTH_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(BIRTH_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = RACE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(RACE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = ETHNICITY_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(ETHNICITY_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = LOCATION_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(LOCATION_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = PROVIDER_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROVIDER_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = CARE_SITE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CARE_SITE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = PERSON_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = GENDER_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(GENDER_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = GENDER_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(GENDER_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = RACE_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(RACE_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = RACE_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(RACE_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = ETHNICITY_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(ETHNICITY_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = ETHNICITY_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(ETHNICITY_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PERSON cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_OCCURRENCE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROCEDURE_OCCURRENCE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PERSON_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROCEDURE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROCEDURE_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROCEDURE_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_TYPE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROCEDURE_TYPE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = MODIFIER_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(MODIFIER_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = QUANTITY

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(QUANTITY) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROVIDER_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROVIDER_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_OCCURRENCE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = VISIT_DETAIL_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_DETAIL_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROCEDURE_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROCEDURE_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = MODIFIER_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(MODIFIER_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
cdmFieldName = PROVIDER_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROVIDER_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
cdmFieldName = PROVIDER_NAME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROVIDER_NAME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
cdmFieldName = NPI

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(NPI) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
cdmFieldName = DEA

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DEA) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(SPECIALTY_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
cdmFieldName = CARE_SITE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CARE_SITE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
cdmFieldName = YEAR_OF_BIRTH

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(YEAR_OF_BIRTH) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
cdmFieldName = GENDER_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(GENDER_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
cdmFieldName = PROVIDER_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROVIDER_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(SPECIALTY_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(SPECIALTY_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
cdmFieldName = GENDER_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(GENDER_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
cdmFieldName = GENDER_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(GENDER_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.PROVIDER cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(SPECIMEN_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = PERSON_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(SPECIMEN_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_TYPE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(SPECIMEN_TYPE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(SPECIMEN_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(SPECIMEN_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = QUANTITY

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(QUANTITY) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = UNIT_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(UNIT_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = ANATOMIC_SITE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(ANATOMIC_SITE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = DISEASE_STATUS_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DISEASE_STATUS_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_SOURCE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(SPECIMEN_SOURCE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(SPECIMEN_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = UNIT_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(UNIT_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = ANATOMIC_SITE_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(ANATOMIC_SITE_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = DISEASE_STATUS_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DISEASE_STATUS_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.SPECIMEN cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_DETAIL_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = PERSON_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_DETAIL_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_DETAIL_START_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_DETAIL_START_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_DETAIL_END_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_DETAIL_END_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_TYPE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_DETAIL_TYPE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = PROVIDER_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROVIDER_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = CARE_SITE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CARE_SITE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_DETAIL_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_DETAIL_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = ADMITTING_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(ADMITTING_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = ADMITTING_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(ADMITTING_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = DISCHARGE_TO_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DISCHARGE_TO_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = DISCHARGE_TO_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DISCHARGE_TO_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = PRECEDING_VISIT_DETAIL_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PRECEDING_VISIT_DETAIL_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_PARENT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_DETAIL_PARENT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_OCCURRENCE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_OCCURRENCE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_DETAIL cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_OCCURRENCE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PERSON_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PERSON_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_START_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_START_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_END_DATE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATETIME

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_END_DATETIME) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_TYPE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_TYPE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PROVIDER_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PROVIDER_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = CARE_SITE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(CARE_SITE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(VISIT_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = ADMITTING_SOURCE_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(ADMITTING_SOURCE_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = ADMITTING_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(ADMITTING_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = DISCHARGE_TO_CONCEPT_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DISCHARGE_TO_CONCEPT_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = DISCHARGE_TO_SOURCE_VALUE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(DISCHARGE_TO_SOURCE_VALUE) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;


/*********
CDM_FIELD

Verify the field exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PRECEDING_VISIT_OCCURRENCE_ID

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM (
    SELECT num_violated_rows FROM (
        SELECT
            CASE 
                WHEN COUNT_BIG(PRECEDING_VISIT_OCCURRENCE_ID) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.VISIT_OCCURRENCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;

