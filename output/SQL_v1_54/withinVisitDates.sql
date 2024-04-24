/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATE

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
        
        JOIN dbo.visit_occurrence vo
            ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
        WHERE cdmTable.CONDITION_START_DATE < DATEADD(DAY, -7, vo.visit_start_date)
            OR cdmTable.CONDITION_START_DATE > DATEADD(DAY, 7, vo.visit_end_date)
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_OCCURRENCE cdmTable
    
    JOIN dbo.visit_occurrence vo
        ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATE

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
        
        JOIN dbo.visit_occurrence vo
            ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
        WHERE cdmTable.DEVICE_EXPOSURE_START_DATE < DATEADD(DAY, -7, vo.visit_start_date)
            OR cdmTable.DEVICE_EXPOSURE_START_DATE > DATEADD(DAY, 7, vo.visit_end_date)
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
    
    JOIN dbo.visit_occurrence vo
        ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATE

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
        
        JOIN dbo.visit_occurrence vo
            ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
        WHERE cdmTable.DRUG_EXPOSURE_START_DATE < DATEADD(DAY, -7, vo.visit_start_date)
            OR cdmTable.DRUG_EXPOSURE_START_DATE > DATEADD(DAY, 7, vo.visit_end_date)
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
    
    JOIN dbo.visit_occurrence vo
        ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATE

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
        
        JOIN dbo.visit_occurrence vo
            ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
        WHERE cdmTable.MEASUREMENT_DATE < DATEADD(DAY, -7, vo.visit_start_date)
            OR cdmTable.MEASUREMENT_DATE > DATEADD(DAY, 7, vo.visit_end_date)
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.MEASUREMENT cdmTable
    
    JOIN dbo.visit_occurrence vo
        ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_DATE

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
        
        JOIN dbo.visit_occurrence vo
            ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
        WHERE cdmTable.NOTE_DATE < DATEADD(DAY, -7, vo.visit_start_date)
            OR cdmTable.NOTE_DATE > DATEADD(DAY, 7, vo.visit_end_date)
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.NOTE cdmTable
    
    JOIN dbo.visit_occurrence vo
        ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATE

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
        
        JOIN dbo.visit_occurrence vo
            ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
        WHERE cdmTable.OBSERVATION_DATE < DATEADD(DAY, -7, vo.visit_start_date)
            OR cdmTable.OBSERVATION_DATE > DATEADD(DAY, 7, vo.visit_end_date)
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION cdmTable
    
    JOIN dbo.visit_occurrence vo
        ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATE

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
        
        JOIN dbo.visit_occurrence vo
            ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
        WHERE cdmTable.PROCEDURE_DATE < DATEADD(DAY, -7, vo.visit_start_date)
            OR cdmTable.PROCEDURE_DATE > DATEADD(DAY, 7, vo.visit_end_date)
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    
    JOIN dbo.visit_occurrence vo
        ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATE

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
        
        JOIN dbo.visit_occurrence vo
            ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
        WHERE cdmTable.VISIT_DETAIL_END_DATE < DATEADD(DAY, -7, vo.visit_start_date)
            OR cdmTable.VISIT_DETAIL_END_DATE > DATEADD(DAY, 7, vo.visit_end_date)
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
    
    JOIN dbo.visit_occurrence vo
        ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

/*********
FIELD LEVEL check:
WITHIN_VISIT_DATES - find events that occur one week before the corresponding visit_start_date or one week after the corresponding visit_end_date

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATE

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
        
        JOIN dbo.visit_occurrence vo
            ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
        WHERE cdmTable.VISIT_DETAIL_START_DATE < DATEADD(DAY, -7, vo.visit_start_date)
            OR cdmTable.VISIT_DETAIL_START_DATE > DATEADD(DAY, 7, vo.visit_end_date)
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
    
    JOIN dbo.visit_occurrence vo
        ON cdmTable.visit_occurrence_id = vo.visit_occurrence_id
) denominator
;

