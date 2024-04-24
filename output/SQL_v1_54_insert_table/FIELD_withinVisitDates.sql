/*********
SQL to insert individual DQD results directly into output table, rather than waiting until collecting all results.
Note that this  does not include information about SQL errors or performance
**********/

WITH cte_all AS (
  /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/

SELECT 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'withinVisitDates' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records not within one week on either side of the corresponding visit occurrence start and end date' as check_description
  ,'CONDITION_OCCURRENCE' as cdm_table_name
  ,'CONDITION_START_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_within_visit_dates.sql' as sql_file
  ,'Conformance' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_withinvisitdates_condition_occurrence_condition_start_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 5 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 5 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,5 as threshold_value
  ,NULL as notes_value
FROM (
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


) cte
 UNION ALL /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/

SELECT 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'withinVisitDates' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records not within one week on either side of the corresponding visit occurrence start and end date' as check_description
  ,'DEVICE_EXPOSURE' as cdm_table_name
  ,'DEVICE_EXPOSURE_START_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_within_visit_dates.sql' as sql_file
  ,'Conformance' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_withinvisitdates_device_exposure_device_exposure_start_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 5 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 5 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,5 as threshold_value
  ,NULL as notes_value
FROM (
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


) cte
 UNION ALL /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/

SELECT 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'withinVisitDates' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records not within one week on either side of the corresponding visit occurrence start and end date' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'DRUG_EXPOSURE_START_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_within_visit_dates.sql' as sql_file
  ,'Conformance' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_withinvisitdates_drug_exposure_drug_exposure_start_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 5 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 5 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,5 as threshold_value
  ,NULL as notes_value
FROM (
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


) cte
 UNION ALL /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/

SELECT 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'withinVisitDates' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records not within one week on either side of the corresponding visit occurrence start and end date' as check_description
  ,'MEASUREMENT' as cdm_table_name
  ,'MEASUREMENT_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_within_visit_dates.sql' as sql_file
  ,'Conformance' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_withinvisitdates_measurement_measurement_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 5 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 5 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,5 as threshold_value
  ,NULL as notes_value
FROM (
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


) cte
 UNION ALL /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/

SELECT 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'withinVisitDates' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records not within one week on either side of the corresponding visit occurrence start and end date' as check_description
  ,'NOTE' as cdm_table_name
  ,'NOTE_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_within_visit_dates.sql' as sql_file
  ,'Conformance' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_withinvisitdates_note_note_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 5 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 5 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,5 as threshold_value
  ,NULL as notes_value
FROM (
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


) cte
 UNION ALL /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/

SELECT 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'withinVisitDates' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records not within one week on either side of the corresponding visit occurrence start and end date' as check_description
  ,'OBSERVATION' as cdm_table_name
  ,'OBSERVATION_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_within_visit_dates.sql' as sql_file
  ,'Conformance' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_withinvisitdates_observation_observation_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 5 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 5 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,5 as threshold_value
  ,NULL as notes_value
FROM (
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


) cte
 UNION ALL /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/

SELECT 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'withinVisitDates' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records not within one week on either side of the corresponding visit occurrence start and end date' as check_description
  ,'PROCEDURE_OCCURRENCE' as cdm_table_name
  ,'PROCEDURE_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_within_visit_dates.sql' as sql_file
  ,'Conformance' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_withinvisitdates_procedure_occurrence_procedure_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 5 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 5 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,5 as threshold_value
  ,NULL as notes_value
FROM (
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


) cte
 UNION ALL /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/

SELECT 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'withinVisitDates' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records not within one week on either side of the corresponding visit occurrence start and end date' as check_description
  ,'VISIT_DETAIL' as cdm_table_name
  ,'VISIT_DETAIL_END_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_within_visit_dates.sql' as sql_file
  ,'Conformance' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_withinvisitdates_visit_detail_visit_detail_end_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
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


) cte
 UNION ALL /*********
SQL to create query for insertion into results table. These may be unioned together prior to insert.
Note that this does not include information about SQL errors or performance.
**********/

SELECT 
  cte.num_violated_rows
  ,cte.pct_violated_rows
  ,cte.num_denominator_rows
  ,'' as execution_time
  ,'' as query_text
  ,'withinVisitDates' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records not within one week on either side of the corresponding visit occurrence start and end date' as check_description
  ,'VISIT_DETAIL' as cdm_table_name
  ,'VISIT_DETAIL_START_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_within_visit_dates.sql' as sql_file
  ,'Conformance' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_withinvisitdates_visit_detail_visit_detail_start_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
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


) cte

)
SELECT *
FROM cte_all
;

