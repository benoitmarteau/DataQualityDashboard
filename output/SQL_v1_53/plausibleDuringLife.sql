
/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_START_DATE

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_ERA.CONDITION_ERA_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_ERA cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.CONDITION_ERA_START_DATE AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_ERA cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATE

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_OCCURRENCE.CONDITION_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_OCCURRENCE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.CONDITION_START_DATE AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_OCCURRENCE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATETIME

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_OCCURRENCE.CONDITION_START_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_OCCURRENCE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.CONDITION_START_DATETIME AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_OCCURRENCE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATE

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_OCCURRENCE.CONDITION_END_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_OCCURRENCE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.CONDITION_END_DATE AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_OCCURRENCE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATETIME

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_OCCURRENCE.CONDITION_END_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_OCCURRENCE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.CONDITION_END_DATETIME AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_OCCURRENCE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATE

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'DEVICE_EXPOSURE.DEVICE_EXPOSURE_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.DEVICE_EXPOSURE_START_DATE AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATETIME

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'DEVICE_EXPOSURE.DEVICE_EXPOSURE_START_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.DEVICE_EXPOSURE_START_DATETIME AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATE

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'DEVICE_EXPOSURE.DEVICE_EXPOSURE_END_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.DEVICE_EXPOSURE_END_DATE AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATETIME

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'DEVICE_EXPOSURE.DEVICE_EXPOSURE_END_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.DEVICE_EXPOSURE_END_DATETIME AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_START_DATE

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'DOSE_ERA.DOSE_ERA_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.DOSE_ERA cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.DOSE_ERA_START_DATE AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DOSE_ERA cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_START_DATE

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_ERA.DRUG_ERA_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_ERA cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.DRUG_ERA_START_DATE AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_ERA cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATE

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.DRUG_EXPOSURE_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.DRUG_EXPOSURE_START_DATE AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATETIME

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.DRUG_EXPOSURE_START_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.DRUG_EXPOSURE_START_DATETIME AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATE

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.DRUG_EXPOSURE_END_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.DRUG_EXPOSURE_END_DATE AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATETIME

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.DRUG_EXPOSURE_END_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.DRUG_EXPOSURE_END_DATETIME AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VERBATIM_END_DATE

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.VERBATIM_END_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.VERBATIM_END_DATE AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_START_DATE

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'OBSERVATION_PERIOD.OBSERVATION_PERIOD_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION_PERIOD cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.OBSERVATION_PERIOD_START_DATE AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION_PERIOD cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_END_DATE

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'OBSERVATION_PERIOD.OBSERVATION_PERIOD_END_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION_PERIOD cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.OBSERVATION_PERIOD_END_DATE AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION_PERIOD cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATE

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'PROCEDURE_OCCURRENCE.PROCEDURE_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.PROCEDURE_DATE AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATETIME

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'PROCEDURE_OCCURRENCE.PROCEDURE_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.PROCEDURE_DATETIME AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATE

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_DETAIL.VISIT_DETAIL_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.VISIT_DETAIL_START_DATE AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATETIME

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_DETAIL.VISIT_DETAIL_START_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.VISIT_DETAIL_START_DATETIME AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATE

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_DETAIL.VISIT_DETAIL_END_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.VISIT_DETAIL_END_DATE AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATETIME

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_DETAIL.VISIT_DETAIL_END_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.VISIT_DETAIL_END_DATETIME AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATE

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_OCCURRENCE.VISIT_START_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.VISIT_START_DATE AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATETIME

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_OCCURRENCE.VISIT_START_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.VISIT_START_DATETIME AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATE

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_OCCURRENCE.VISIT_END_DATE' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.VISIT_END_DATE AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;


/*********
PLAUSIBLE_DURING_LIFE
get number of events that occur after death event (PLAUSIBLE_DURING_LIFE == Yes)

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATETIME

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
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM
    (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_OCCURRENCE.VISIT_END_DATETIME' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
        JOIN dbo.death de 
            ON cdmTable.person_id = de.person_id
        WHERE CAST(cdmTable.VISIT_END_DATETIME AS DATE) > DATEADD(day, 60, CAST(de.death_date AS DATE))
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
    
    WHERE person_id IN
        (SELECT 
            person_id 
        FROM dbo.death)
) denominator
;

