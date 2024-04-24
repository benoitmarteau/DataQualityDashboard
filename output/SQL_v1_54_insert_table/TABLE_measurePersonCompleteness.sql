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
  ,'measurePersonCompleteness' as check_name
  ,'TABLE' as check_level
  ,'The number and percent of persons in the CDM that do not have at least one record in the OBSERVATION_PERIOD table' as check_description
  ,'OBSERVATION_PERIOD' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_person_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Validation' as context
  ,'' as warning
  ,'' as error
  ,'table_measurepersoncompleteness_observation_period' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

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
		COUNT_BIG(violated_rows.PERSON_ID) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.OBSERVATION_PERIOD cdmTable2 
			    ON cdmTable.PERSON_ID = cdmTable2.PERSON_ID
		WHERE cdmTable2.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
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
  ,'measurePersonCompleteness' as check_name
  ,'TABLE' as check_level
  ,'The number and percent of persons in the CDM that do not have at least one record in the VISIT_OCCURRENCE table' as check_description
  ,'VISIT_OCCURRENCE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_person_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Validation' as context
  ,'' as warning
  ,'' as error
  ,'table_measurepersoncompleteness_visit_occurrence' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 95 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 95 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,95 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

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
		COUNT_BIG(violated_rows.PERSON_ID) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.VISIT_OCCURRENCE cdmTable2 
			    ON cdmTable.PERSON_ID = cdmTable2.PERSON_ID
		WHERE cdmTable2.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
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
  ,'measurePersonCompleteness' as check_name
  ,'TABLE' as check_level
  ,'The number and percent of persons in the CDM that do not have at least one record in the VISIT_DETAIL table' as check_description
  ,'VISIT_DETAIL' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_person_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Validation' as context
  ,'' as warning
  ,'' as error
  ,'table_measurepersoncompleteness_visit_detail' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

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
		COUNT_BIG(violated_rows.PERSON_ID) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.VISIT_DETAIL cdmTable2 
			    ON cdmTable.PERSON_ID = cdmTable2.PERSON_ID
		WHERE cdmTable2.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
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
  ,'measurePersonCompleteness' as check_name
  ,'TABLE' as check_level
  ,'The number and percent of persons in the CDM that do not have at least one record in the CONDITION_OCCURRENCE table' as check_description
  ,'CONDITION_OCCURRENCE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_person_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Validation' as context
  ,'' as warning
  ,'' as error
  ,'table_measurepersoncompleteness_condition_occurrence' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 95 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 95 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,95 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

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
		COUNT_BIG(violated_rows.PERSON_ID) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.CONDITION_OCCURRENCE cdmTable2 
			    ON cdmTable.PERSON_ID = cdmTable2.PERSON_ID
		WHERE cdmTable2.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
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
  ,'measurePersonCompleteness' as check_name
  ,'TABLE' as check_level
  ,'The number and percent of persons in the CDM that do not have at least one record in the DRUG_EXPOSURE table' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_person_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Validation' as context
  ,'' as warning
  ,'' as error
  ,'table_measurepersoncompleteness_drug_exposure' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 95 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 95 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,95 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

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
		COUNT_BIG(violated_rows.PERSON_ID) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.DRUG_EXPOSURE cdmTable2 
			    ON cdmTable.PERSON_ID = cdmTable2.PERSON_ID
		WHERE cdmTable2.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
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
  ,'measurePersonCompleteness' as check_name
  ,'TABLE' as check_level
  ,'The number and percent of persons in the CDM that do not have at least one record in the PROCEDURE_OCCURRENCE table' as check_description
  ,'PROCEDURE_OCCURRENCE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_person_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Validation' as context
  ,'' as warning
  ,'' as error
  ,'table_measurepersoncompleteness_procedure_occurrence' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 95 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 95 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,95 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

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
		COUNT_BIG(violated_rows.PERSON_ID) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.PROCEDURE_OCCURRENCE cdmTable2 
			    ON cdmTable.PERSON_ID = cdmTable2.PERSON_ID
		WHERE cdmTable2.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
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
  ,'measurePersonCompleteness' as check_name
  ,'TABLE' as check_level
  ,'The number and percent of persons in the CDM that do not have at least one record in the DEVICE_EXPOSURE table' as check_description
  ,'DEVICE_EXPOSURE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_person_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Validation' as context
  ,'' as warning
  ,'' as error
  ,'table_measurepersoncompleteness_device_exposure' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

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
		COUNT_BIG(violated_rows.PERSON_ID) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.DEVICE_EXPOSURE cdmTable2 
			    ON cdmTable.PERSON_ID = cdmTable2.PERSON_ID
		WHERE cdmTable2.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
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
  ,'measurePersonCompleteness' as check_name
  ,'TABLE' as check_level
  ,'The number and percent of persons in the CDM that do not have at least one record in the MEASUREMENT table' as check_description
  ,'MEASUREMENT' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_person_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Validation' as context
  ,'' as warning
  ,'' as error
  ,'table_measurepersoncompleteness_measurement' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 95 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 95 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,95 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

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
		COUNT_BIG(violated_rows.PERSON_ID) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.MEASUREMENT cdmTable2 
			    ON cdmTable.PERSON_ID = cdmTable2.PERSON_ID
		WHERE cdmTable2.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
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
  ,'measurePersonCompleteness' as check_name
  ,'TABLE' as check_level
  ,'The number and percent of persons in the CDM that do not have at least one record in the OBSERVATION table' as check_description
  ,'OBSERVATION' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_person_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Validation' as context
  ,'' as warning
  ,'' as error
  ,'table_measurepersoncompleteness_observation' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 95 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 95 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,95 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

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
		COUNT_BIG(violated_rows.PERSON_ID) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.OBSERVATION cdmTable2 
			    ON cdmTable.PERSON_ID = cdmTable2.PERSON_ID
		WHERE cdmTable2.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
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
  ,'measurePersonCompleteness' as check_name
  ,'TABLE' as check_level
  ,'The number and percent of persons in the CDM that do not have at least one record in the DEATH table' as check_description
  ,'DEATH' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_person_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Validation' as context
  ,'' as warning
  ,'' as error
  ,'table_measurepersoncompleteness_death' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

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
		COUNT_BIG(violated_rows.PERSON_ID) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.DEATH cdmTable2 
			    ON cdmTable.PERSON_ID = cdmTable2.PERSON_ID
		WHERE cdmTable2.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
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
  ,'measurePersonCompleteness' as check_name
  ,'TABLE' as check_level
  ,'The number and percent of persons in the CDM that do not have at least one record in the NOTE table' as check_description
  ,'NOTE' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_person_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Validation' as context
  ,'' as warning
  ,'' as error
  ,'table_measurepersoncompleteness_note' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

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
		COUNT_BIG(violated_rows.PERSON_ID) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.NOTE cdmTable2 
			    ON cdmTable.PERSON_ID = cdmTable2.PERSON_ID
		WHERE cdmTable2.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
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
  ,'measurePersonCompleteness' as check_name
  ,'TABLE' as check_level
  ,'The number and percent of persons in the CDM that do not have at least one record in the SPECIMEN table' as check_description
  ,'SPECIMEN' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_person_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Validation' as context
  ,'' as warning
  ,'' as error
  ,'table_measurepersoncompleteness_specimen' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

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
		COUNT_BIG(violated_rows.PERSON_ID) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.SPECIMEN cdmTable2 
			    ON cdmTable.PERSON_ID = cdmTable2.PERSON_ID
		WHERE cdmTable2.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
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
  ,'measurePersonCompleteness' as check_name
  ,'TABLE' as check_level
  ,'The number and percent of persons in the CDM that do not have at least one record in the PAYER_PLAN_PERIOD table' as check_description
  ,'PAYER_PLAN_PERIOD' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_person_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Validation' as context
  ,'' as warning
  ,'' as error
  ,'table_measurepersoncompleteness_payer_plan_period' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

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
		COUNT_BIG(violated_rows.PERSON_ID) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.PAYER_PLAN_PERIOD cdmTable2 
			    ON cdmTable.PERSON_ID = cdmTable2.PERSON_ID
		WHERE cdmTable2.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
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
  ,'measurePersonCompleteness' as check_name
  ,'TABLE' as check_level
  ,'The number and percent of persons in the CDM that do not have at least one record in the DRUG_ERA table' as check_description
  ,'DRUG_ERA' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_person_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Validation' as context
  ,'' as warning
  ,'' as error
  ,'table_measurepersoncompleteness_drug_era' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 95 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 95 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,95 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

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
		COUNT_BIG(violated_rows.PERSON_ID) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.DRUG_ERA cdmTable2 
			    ON cdmTable.PERSON_ID = cdmTable2.PERSON_ID
		WHERE cdmTable2.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
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
  ,'measurePersonCompleteness' as check_name
  ,'TABLE' as check_level
  ,'The number and percent of persons in the CDM that do not have at least one record in the DOSE_ERA table' as check_description
  ,'DOSE_ERA' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_person_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Validation' as context
  ,'' as warning
  ,'' as error
  ,'table_measurepersoncompleteness_dose_era' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

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
		COUNT_BIG(violated_rows.PERSON_ID) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.DOSE_ERA cdmTable2 
			    ON cdmTable.PERSON_ID = cdmTable2.PERSON_ID
		WHERE cdmTable2.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
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
  ,'measurePersonCompleteness' as check_name
  ,'TABLE' as check_level
  ,'The number and percent of persons in the CDM that do not have at least one record in the CONDITION_ERA table' as check_description
  ,'CONDITION_ERA' as cdm_table_name
  ,'NA' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'table_person_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Validation' as context
  ,'' as warning
  ,'' as error
  ,'table_measurepersoncompleteness_condition_era' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 95 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 95 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,95 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

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
		COUNT_BIG(violated_rows.PERSON_ID) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.CONDITION_ERA cdmTable2 
			    ON cdmTable.PERSON_ID = cdmTable2.PERSON_ID
		WHERE cdmTable2.PERSON_ID IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
) denominator


) cte

)
SELECT *
FROM cte_all
;

