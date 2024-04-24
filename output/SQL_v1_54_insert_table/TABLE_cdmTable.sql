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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if PERSON table is present as expected based on the specification.' as check_description
  ,'PERSON' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_person' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if OBSERVATION_PERIOD table is present as expected based on the specification.' as check_description
  ,'OBSERVATION_PERIOD' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_observation_period' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if VISIT_OCCURRENCE table is present as expected based on the specification.' as check_description
  ,'VISIT_OCCURRENCE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_visit_occurrence' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if VISIT_DETAIL table is present as expected based on the specification.' as check_description
  ,'VISIT_DETAIL' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_visit_detail' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if CONDITION_OCCURRENCE table is present as expected based on the specification.' as check_description
  ,'CONDITION_OCCURRENCE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_condition_occurrence' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if DRUG_EXPOSURE table is present as expected based on the specification.' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_drug_exposure' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if PROCEDURE_OCCURRENCE table is present as expected based on the specification.' as check_description
  ,'PROCEDURE_OCCURRENCE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_procedure_occurrence' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if DEVICE_EXPOSURE table is present as expected based on the specification.' as check_description
  ,'DEVICE_EXPOSURE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_device_exposure' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if MEASUREMENT table is present as expected based on the specification.' as check_description
  ,'MEASUREMENT' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_measurement' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if OBSERVATION table is present as expected based on the specification.' as check_description
  ,'OBSERVATION' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_observation' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if DEATH table is present as expected based on the specification.' as check_description
  ,'DEATH' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_death' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if NOTE table is present as expected based on the specification.' as check_description
  ,'NOTE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_note' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if NOTE_NLP table is present as expected based on the specification.' as check_description
  ,'NOTE_NLP' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_note_nlp' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if SPECIMEN table is present as expected based on the specification.' as check_description
  ,'SPECIMEN' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_specimen' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if FACT_RELATIONSHIP table is present as expected based on the specification.' as check_description
  ,'FACT_RELATIONSHIP' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_fact_relationship' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if LOCATION table is present as expected based on the specification.' as check_description
  ,'LOCATION' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_location' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if CARE_SITE table is present as expected based on the specification.' as check_description
  ,'CARE_SITE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_care_site' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if PROVIDER table is present as expected based on the specification.' as check_description
  ,'PROVIDER' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_provider' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if PAYER_PLAN_PERIOD table is present as expected based on the specification.' as check_description
  ,'PAYER_PLAN_PERIOD' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_payer_plan_period' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if COST table is present as expected based on the specification.' as check_description
  ,'COST' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_cost' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if DRUG_ERA table is present as expected based on the specification.' as check_description
  ,'DRUG_ERA' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_drug_era' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if DOSE_ERA table is present as expected based on the specification.' as check_description
  ,'DOSE_ERA' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_dose_era' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if CONDITION_ERA table is present as expected based on the specification.' as check_description
  ,'CONDITION_ERA' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_condition_era' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if EPISODE table is present as expected based on the specification.' as check_description
  ,'EPISODE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_episode' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = EPISODE

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
        FROM dbo.EPISODE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if EPISODE_EVENT table is present as expected based on the specification.' as check_description
  ,'EPISODE_EVENT' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_episode_event' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = EPISODE_EVENT

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
        FROM dbo.EPISODE_EVENT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if METADATA table is present as expected based on the specification.' as check_description
  ,'METADATA' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_metadata' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = METADATA

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
        FROM dbo.METADATA cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if CDM_SOURCE table is present as expected based on the specification.' as check_description
  ,'CDM_SOURCE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_cdm_source' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = CDM_SOURCE

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
        FROM dbo.CDM_SOURCE cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if CONCEPT table is present as expected based on the specification.' as check_description
  ,'CONCEPT' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_concept' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT

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
        FROM dbo.CONCEPT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if VOCABULARY table is present as expected based on the specification.' as check_description
  ,'VOCABULARY' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_vocabulary' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = VOCABULARY

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
        FROM dbo.VOCABULARY cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if DOMAIN table is present as expected based on the specification.' as check_description
  ,'DOMAIN' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_domain' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = DOMAIN

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
        FROM dbo.DOMAIN cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if CONCEPT_CLASS table is present as expected based on the specification.' as check_description
  ,'CONCEPT_CLASS' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_concept_class' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_CLASS

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
        FROM dbo.CONCEPT_CLASS cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if CONCEPT_RELATIONSHIP table is present as expected based on the specification.' as check_description
  ,'CONCEPT_RELATIONSHIP' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_concept_relationship' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_RELATIONSHIP

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
        FROM dbo.CONCEPT_RELATIONSHIP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if RELATIONSHIP table is present as expected based on the specification.' as check_description
  ,'RELATIONSHIP' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_relationship' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = RELATIONSHIP

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
        FROM dbo.RELATIONSHIP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if CONCEPT_SYNONYM table is present as expected based on the specification.' as check_description
  ,'CONCEPT_SYNONYM' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_concept_synonym' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_SYNONYM

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
        FROM dbo.CONCEPT_SYNONYM cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if CONCEPT_ANCESTOR table is present as expected based on the specification.' as check_description
  ,'CONCEPT_ANCESTOR' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_concept_ancestor' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_ANCESTOR

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
        FROM dbo.CONCEPT_ANCESTOR cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if SOURCE_TO_CONCEPT_MAP table is present as expected based on the specification.' as check_description
  ,'SOURCE_TO_CONCEPT_MAP' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_source_to_concept_map' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = SOURCE_TO_CONCEPT_MAP

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
        FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if DRUG_STRENGTH table is present as expected based on the specification.' as check_description
  ,'DRUG_STRENGTH' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_drug_strength' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_STRENGTH

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
        FROM dbo.DRUG_STRENGTH cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if COHORT table is present as expected based on the specification.' as check_description
  ,'COHORT' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_cohort' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = COHORT

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
        FROM dbo.COHORT cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
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
  ,'cdmTable' as check_name
  ,'TABLE' as check_level
  ,'A yes or no value indicating if COHORT_DEFINITION table is present as expected based on the specification.' as check_description
  ,'COHORT_DEFINITION' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_cdm_table.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'table_cdmtable_cohort_definition' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
CDM_TABLE

Verify the table exists.

Parameters used in this template:
schema = dbo
cdmTableName = COHORT_DEFINITION

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
        FROM dbo.COHORT_DEFINITION cdmTable
    ) violated_rows
) violated_row_count,
( 
    SELECT 1 AS num_rows
) denominator


) cte

)
SELECT *
FROM cte_all
;

