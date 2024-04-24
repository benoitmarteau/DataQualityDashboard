
/*********
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = PERSON

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION_PERIOD

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = FACT_RELATIONSHIP

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = LOCATION

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = CARE_SITE

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = COST

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
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
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = DEATH

**********/


SELECT 
    num_violated_rows, 
    CASE 
        WHEN denominator.num_rows = 0 THEN 0 
        ELSE 1.0*num_violated_rows/denominator.num_rows 
    END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
    SELECT 
        num_violated_rows 
    FROM
    (
        SELECT
            CASE 
                WHEN COUNT_BIG(*) = 0 THEN 0
                ELSE 0
            END AS num_violated_rows
        FROM dbo.DEATH cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator
;

