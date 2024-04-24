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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the PLACE_OF_SERVICE_CONCEPT_ID field in the CARE_SITE table.' as check_description
  ,'CARE_SITE' as cdm_table_name
  ,'PLACE_OF_SERVICE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_care_site_place_of_service_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CARE_SITE
cdmFieldName = PLACE_OF_SERVICE_CONCEPT_ID

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
			'CARE_SITE.PLACE_OF_SERVICE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.CARE_SITE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.PLACE_OF_SERVICE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CARE_SITE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the CDM_VERSION_CONCEPT_ID field in the CDM_SOURCE table.' as check_description
  ,'CDM_SOURCE' as cdm_table_name
  ,'CDM_VERSION_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_cdm_source_cdm_version_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_VERSION_CONCEPT_ID

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
			'CDM_SOURCE.CDM_VERSION_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.CDM_SOURCE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.CDM_VERSION_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CDM_SOURCE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the DEFINITION_TYPE_CONCEPT_ID field in the COHORT_DEFINITION table.' as check_description
  ,'COHORT_DEFINITION' as cdm_table_name
  ,'DEFINITION_TYPE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_cohort_definition_definition_type_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = COHORT_DEFINITION
cdmFieldName = DEFINITION_TYPE_CONCEPT_ID

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
			'COHORT_DEFINITION.DEFINITION_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.COHORT_DEFINITION cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.DEFINITION_TYPE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.COHORT_DEFINITION cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the SUBJECT_CONCEPT_ID field in the COHORT_DEFINITION table.' as check_description
  ,'COHORT_DEFINITION' as cdm_table_name
  ,'SUBJECT_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_cohort_definition_subject_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = COHORT_DEFINITION
cdmFieldName = SUBJECT_CONCEPT_ID

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
			'COHORT_DEFINITION.SUBJECT_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.COHORT_DEFINITION cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.SUBJECT_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.COHORT_DEFINITION cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the CONDITION_CONCEPT_ID field in the CONDITION_ERA table.' as check_description
  ,'CONDITION_ERA' as cdm_table_name
  ,'CONDITION_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_condition_era_condition_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_CONCEPT_ID

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
			'CONDITION_ERA.CONDITION_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.CONDITION_ERA cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.CONDITION_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_ERA cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the CONDITION_CONCEPT_ID field in the CONDITION_OCCURRENCE table.' as check_description
  ,'CONDITION_OCCURRENCE' as cdm_table_name
  ,'CONDITION_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_condition_occurrence_condition_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_CONCEPT_ID

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
			'CONDITION_OCCURRENCE.CONDITION_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.CONDITION_OCCURRENCE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.CONDITION_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the CONDITION_STATUS_CONCEPT_ID field in the CONDITION_OCCURRENCE table.' as check_description
  ,'CONDITION_OCCURRENCE' as cdm_table_name
  ,'CONDITION_STATUS_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_condition_occurrence_condition_status_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_STATUS_CONCEPT_ID

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
			'CONDITION_OCCURRENCE.CONDITION_STATUS_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.CONDITION_OCCURRENCE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.CONDITION_STATUS_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the CONDITION_TYPE_CONCEPT_ID field in the CONDITION_OCCURRENCE table.' as check_description
  ,'CONDITION_OCCURRENCE' as cdm_table_name
  ,'CONDITION_TYPE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_condition_occurrence_condition_type_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_TYPE_CONCEPT_ID

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
			'CONDITION_OCCURRENCE.CONDITION_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.CONDITION_OCCURRENCE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.CONDITION_TYPE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the COST_TYPE_CONCEPT_ID field in the COST table.' as check_description
  ,'COST' as cdm_table_name
  ,'COST_TYPE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_cost_cost_type_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = COST
cdmFieldName = COST_TYPE_CONCEPT_ID

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
			'COST.COST_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.COST cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.COST_TYPE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.COST cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the CAUSE_CONCEPT_ID field in the DEATH table.' as check_description
  ,'DEATH' as cdm_table_name
  ,'CAUSE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_death_cause_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DEATH
cdmFieldName = CAUSE_CONCEPT_ID

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
			'DEATH.CAUSE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DEATH cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.CAUSE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEATH cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the DEATH_TYPE_CONCEPT_ID field in the DEATH table.' as check_description
  ,'DEATH' as cdm_table_name
  ,'DEATH_TYPE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_death_death_type_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DEATH
cdmFieldName = DEATH_TYPE_CONCEPT_ID

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
			'DEATH.DEATH_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DEATH cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.DEATH_TYPE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEATH cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the DEVICE_CONCEPT_ID field in the DEVICE_EXPOSURE table.' as check_description
  ,'DEVICE_EXPOSURE' as cdm_table_name
  ,'DEVICE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_device_exposure_device_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_CONCEPT_ID

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
			'DEVICE_EXPOSURE.DEVICE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DEVICE_EXPOSURE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.DEVICE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the DEVICE_TYPE_CONCEPT_ID field in the DEVICE_EXPOSURE table.' as check_description
  ,'DEVICE_EXPOSURE' as cdm_table_name
  ,'DEVICE_TYPE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_device_exposure_device_type_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_TYPE_CONCEPT_ID

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
			'DEVICE_EXPOSURE.DEVICE_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DEVICE_EXPOSURE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.DEVICE_TYPE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the UNIT_CONCEPT_ID field in the DEVICE_EXPOSURE table.' as check_description
  ,'DEVICE_EXPOSURE' as cdm_table_name
  ,'UNIT_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_device_exposure_unit_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = UNIT_CONCEPT_ID

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
			'DEVICE_EXPOSURE.UNIT_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DEVICE_EXPOSURE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.UNIT_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the DRUG_CONCEPT_ID field in the DOSE_ERA table.' as check_description
  ,'DOSE_ERA' as cdm_table_name
  ,'DRUG_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_dose_era_drug_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DRUG_CONCEPT_ID

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
			'DOSE_ERA.DRUG_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DOSE_ERA cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.DRUG_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DOSE_ERA cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the UNIT_CONCEPT_ID field in the DOSE_ERA table.' as check_description
  ,'DOSE_ERA' as cdm_table_name
  ,'UNIT_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_dose_era_unit_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = UNIT_CONCEPT_ID

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
			'DOSE_ERA.UNIT_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DOSE_ERA cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.UNIT_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DOSE_ERA cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the DRUG_CONCEPT_ID field in the DRUG_ERA table.' as check_description
  ,'DRUG_ERA' as cdm_table_name
  ,'DRUG_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_drug_era_drug_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_CONCEPT_ID

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
			'DRUG_ERA.DRUG_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DRUG_ERA cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.DRUG_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_ERA cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the DRUG_CONCEPT_ID field in the DRUG_EXPOSURE table.' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'DRUG_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_drug_exposure_drug_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_CONCEPT_ID

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
			'DRUG_EXPOSURE.DRUG_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DRUG_EXPOSURE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.DRUG_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the DRUG_TYPE_CONCEPT_ID field in the DRUG_EXPOSURE table.' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'DRUG_TYPE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_drug_exposure_drug_type_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_TYPE_CONCEPT_ID

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
			'DRUG_EXPOSURE.DRUG_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DRUG_EXPOSURE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.DRUG_TYPE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the ROUTE_CONCEPT_ID field in the DRUG_EXPOSURE table.' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'ROUTE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_drug_exposure_route_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_CONCEPT_ID

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
			'DRUG_EXPOSURE.ROUTE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DRUG_EXPOSURE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.ROUTE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the EPISODE_CONCEPT_ID field in the EPISODE table.' as check_description
  ,'EPISODE' as cdm_table_name
  ,'EPISODE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_episode_episode_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = EPISODE
cdmFieldName = EPISODE_CONCEPT_ID

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
			'EPISODE.EPISODE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.EPISODE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.EPISODE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.EPISODE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the EPISODE_TYPE_CONCEPT_ID field in the EPISODE table.' as check_description
  ,'EPISODE' as cdm_table_name
  ,'EPISODE_TYPE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_episode_episode_type_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = EPISODE
cdmFieldName = EPISODE_TYPE_CONCEPT_ID

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
			'EPISODE.EPISODE_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.EPISODE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.EPISODE_TYPE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.EPISODE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the EPISODE_EVENT_FIELD_CONCEPT_ID field in the EPISODE_EVENT table.' as check_description
  ,'EPISODE_EVENT' as cdm_table_name
  ,'EPISODE_EVENT_FIELD_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_episode_event_episode_event_field_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = EPISODE_EVENT
cdmFieldName = EPISODE_EVENT_FIELD_CONCEPT_ID

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
			'EPISODE_EVENT.EPISODE_EVENT_FIELD_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.EPISODE_EVENT cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.EPISODE_EVENT_FIELD_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.EPISODE_EVENT cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the COUNTRY_CONCEPT_ID field in the LOCATION table.' as check_description
  ,'LOCATION' as cdm_table_name
  ,'COUNTRY_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_location_country_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = LOCATION
cdmFieldName = COUNTRY_CONCEPT_ID

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
			'LOCATION.COUNTRY_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.LOCATION cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.COUNTRY_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.LOCATION cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the MEAS_EVENT_FIELD_CONCEPT_ID field in the MEASUREMENT table.' as check_description
  ,'MEASUREMENT' as cdm_table_name
  ,'MEAS_EVENT_FIELD_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_measurement_meas_event_field_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEAS_EVENT_FIELD_CONCEPT_ID

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
			'MEASUREMENT.MEAS_EVENT_FIELD_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.MEASUREMENT cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.MEAS_EVENT_FIELD_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the MEASUREMENT_CONCEPT_ID field in the MEASUREMENT table.' as check_description
  ,'MEASUREMENT' as cdm_table_name
  ,'MEASUREMENT_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_measurement_measurement_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID

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
			'MEASUREMENT.MEASUREMENT_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.MEASUREMENT cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.MEASUREMENT_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the MEASUREMENT_TYPE_CONCEPT_ID field in the MEASUREMENT table.' as check_description
  ,'MEASUREMENT' as cdm_table_name
  ,'MEASUREMENT_TYPE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_measurement_measurement_type_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_TYPE_CONCEPT_ID

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
			'MEASUREMENT.MEASUREMENT_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.MEASUREMENT cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.MEASUREMENT_TYPE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the OPERATOR_CONCEPT_ID field in the MEASUREMENT table.' as check_description
  ,'MEASUREMENT' as cdm_table_name
  ,'OPERATOR_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_measurement_operator_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = OPERATOR_CONCEPT_ID

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
			'MEASUREMENT.OPERATOR_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.MEASUREMENT cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.OPERATOR_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the UNIT_CONCEPT_ID field in the MEASUREMENT table.' as check_description
  ,'MEASUREMENT' as cdm_table_name
  ,'UNIT_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_measurement_unit_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_CONCEPT_ID

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
			'MEASUREMENT.UNIT_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.MEASUREMENT cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.UNIT_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the ENCODING_CONCEPT_ID field in the NOTE table.' as check_description
  ,'NOTE' as cdm_table_name
  ,'ENCODING_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_note_encoding_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = NOTE
cdmFieldName = ENCODING_CONCEPT_ID

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
			'NOTE.ENCODING_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.NOTE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.ENCODING_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the LANGUAGE_CONCEPT_ID field in the NOTE table.' as check_description
  ,'NOTE' as cdm_table_name
  ,'LANGUAGE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_note_language_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = NOTE
cdmFieldName = LANGUAGE_CONCEPT_ID

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
			'NOTE.LANGUAGE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.NOTE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.LANGUAGE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the NOTE_CLASS_CONCEPT_ID field in the NOTE table.' as check_description
  ,'NOTE' as cdm_table_name
  ,'NOTE_CLASS_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_note_note_class_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_CLASS_CONCEPT_ID

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
			'NOTE.NOTE_CLASS_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.NOTE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.NOTE_CLASS_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the NOTE_EVENT_FIELD_CONCEPT_ID field in the NOTE table.' as check_description
  ,'NOTE' as cdm_table_name
  ,'NOTE_EVENT_FIELD_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_note_note_event_field_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_EVENT_FIELD_CONCEPT_ID

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
			'NOTE.NOTE_EVENT_FIELD_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.NOTE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.NOTE_EVENT_FIELD_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the NOTE_TYPE_CONCEPT_ID field in the NOTE table.' as check_description
  ,'NOTE' as cdm_table_name
  ,'NOTE_TYPE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_note_note_type_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_TYPE_CONCEPT_ID

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
			'NOTE.NOTE_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.NOTE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.NOTE_TYPE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the NOTE_NLP_CONCEPT_ID field in the NOTE_NLP table.' as check_description
  ,'NOTE_NLP' as cdm_table_name
  ,'NOTE_NLP_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_note_nlp_note_nlp_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_CONCEPT_ID

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
			'NOTE_NLP.NOTE_NLP_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.NOTE_NLP cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.NOTE_NLP_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE_NLP cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the SECTION_CONCEPT_ID field in the NOTE_NLP table.' as check_description
  ,'NOTE_NLP' as cdm_table_name
  ,'SECTION_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_note_nlp_section_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = SECTION_CONCEPT_ID

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
			'NOTE_NLP.SECTION_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.NOTE_NLP cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.SECTION_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE_NLP cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the OBS_EVENT_FIELD_CONCEPT_ID field in the OBSERVATION table.' as check_description
  ,'OBSERVATION' as cdm_table_name
  ,'OBS_EVENT_FIELD_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_observation_obs_event_field_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBS_EVENT_FIELD_CONCEPT_ID

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
			'OBSERVATION.OBS_EVENT_FIELD_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.OBSERVATION cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.OBS_EVENT_FIELD_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the OBSERVATION_CONCEPT_ID field in the OBSERVATION table.' as check_description
  ,'OBSERVATION' as cdm_table_name
  ,'OBSERVATION_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_observation_observation_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_CONCEPT_ID

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
			'OBSERVATION.OBSERVATION_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.OBSERVATION cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.OBSERVATION_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the OBSERVATION_TYPE_CONCEPT_ID field in the OBSERVATION table.' as check_description
  ,'OBSERVATION' as cdm_table_name
  ,'OBSERVATION_TYPE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_observation_observation_type_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_TYPE_CONCEPT_ID

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
			'OBSERVATION.OBSERVATION_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.OBSERVATION cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.OBSERVATION_TYPE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the QUALIFIER_CONCEPT_ID field in the OBSERVATION table.' as check_description
  ,'OBSERVATION' as cdm_table_name
  ,'QUALIFIER_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_observation_qualifier_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = QUALIFIER_CONCEPT_ID

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
			'OBSERVATION.QUALIFIER_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.OBSERVATION cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.QUALIFIER_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the UNIT_CONCEPT_ID field in the OBSERVATION table.' as check_description
  ,'OBSERVATION' as cdm_table_name
  ,'UNIT_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_observation_unit_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = UNIT_CONCEPT_ID

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
			'OBSERVATION.UNIT_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.OBSERVATION cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.UNIT_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the PERIOD_TYPE_CONCEPT_ID field in the OBSERVATION_PERIOD table.' as check_description
  ,'OBSERVATION_PERIOD' as cdm_table_name
  ,'PERIOD_TYPE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_observation_period_period_type_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERIOD_TYPE_CONCEPT_ID

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
			'OBSERVATION_PERIOD.PERIOD_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.OBSERVATION_PERIOD cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.PERIOD_TYPE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION_PERIOD cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the ETHNICITY_CONCEPT_ID field in the person table.' as check_description
  ,'person' as cdm_table_name
  ,'ETHNICITY_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_person_ethnicity_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = person
cdmFieldName = ETHNICITY_CONCEPT_ID

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
			'person.ETHNICITY_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.person cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.ETHNICITY_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the GENDER_CONCEPT_ID field in the person table.' as check_description
  ,'person' as cdm_table_name
  ,'GENDER_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_person_gender_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = person
cdmFieldName = GENDER_CONCEPT_ID

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
			'person.GENDER_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.person cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.GENDER_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the RACE_CONCEPT_ID field in the person table.' as check_description
  ,'person' as cdm_table_name
  ,'RACE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_person_race_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = person
cdmFieldName = RACE_CONCEPT_ID

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
			'person.RACE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.person cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.RACE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the MODIFIER_CONCEPT_ID field in the PROCEDURE_OCCURRENCE table.' as check_description
  ,'PROCEDURE_OCCURRENCE' as cdm_table_name
  ,'MODIFIER_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_procedure_occurrence_modifier_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = MODIFIER_CONCEPT_ID

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
			'PROCEDURE_OCCURRENCE.MODIFIER_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PROCEDURE_OCCURRENCE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.MODIFIER_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the PROCEDURE_CONCEPT_ID field in the PROCEDURE_OCCURRENCE table.' as check_description
  ,'PROCEDURE_OCCURRENCE' as cdm_table_name
  ,'PROCEDURE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_procedure_occurrence_procedure_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_CONCEPT_ID

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
			'PROCEDURE_OCCURRENCE.PROCEDURE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PROCEDURE_OCCURRENCE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.PROCEDURE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the PROCEDURE_TYPE_CONCEPT_ID field in the PROCEDURE_OCCURRENCE table.' as check_description
  ,'PROCEDURE_OCCURRENCE' as cdm_table_name
  ,'PROCEDURE_TYPE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_procedure_occurrence_procedure_type_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_TYPE_CONCEPT_ID

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
			'PROCEDURE_OCCURRENCE.PROCEDURE_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PROCEDURE_OCCURRENCE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.PROCEDURE_TYPE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the GENDER_CONCEPT_ID field in the PROVIDER table.' as check_description
  ,'PROVIDER' as cdm_table_name
  ,'GENDER_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_provider_gender_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PROVIDER
cdmFieldName = GENDER_CONCEPT_ID

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
			'PROVIDER.GENDER_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PROVIDER cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.GENDER_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROVIDER cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the SPECIALTY_CONCEPT_ID field in the PROVIDER table.' as check_description
  ,'PROVIDER' as cdm_table_name
  ,'SPECIALTY_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_provider_specialty_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_CONCEPT_ID

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
			'PROVIDER.SPECIALTY_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PROVIDER cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.SPECIALTY_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROVIDER cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the TARGET_CONCEPT_ID field in the SOURCE_TO_CONCEPT_MAP table.' as check_description
  ,'SOURCE_TO_CONCEPT_MAP' as cdm_table_name
  ,'TARGET_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_source_to_concept_map_target_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = TARGET_CONCEPT_ID

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
			'SOURCE_TO_CONCEPT_MAP.TARGET_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.TARGET_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the ANATOMIC_SITE_CONCEPT_ID field in the SPECIMEN table.' as check_description
  ,'SPECIMEN' as cdm_table_name
  ,'ANATOMIC_SITE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_specimen_anatomic_site_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = SPECIMEN
cdmFieldName = ANATOMIC_SITE_CONCEPT_ID

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
			'SPECIMEN.ANATOMIC_SITE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.SPECIMEN cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.ANATOMIC_SITE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.SPECIMEN cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the DISEASE_STATUS_CONCEPT_ID field in the SPECIMEN table.' as check_description
  ,'SPECIMEN' as cdm_table_name
  ,'DISEASE_STATUS_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_specimen_disease_status_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = SPECIMEN
cdmFieldName = DISEASE_STATUS_CONCEPT_ID

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
			'SPECIMEN.DISEASE_STATUS_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.SPECIMEN cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.DISEASE_STATUS_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.SPECIMEN cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the SPECIMEN_CONCEPT_ID field in the SPECIMEN table.' as check_description
  ,'SPECIMEN' as cdm_table_name
  ,'SPECIMEN_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_specimen_specimen_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_CONCEPT_ID

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
			'SPECIMEN.SPECIMEN_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.SPECIMEN cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.SPECIMEN_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.SPECIMEN cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the SPECIMEN_TYPE_CONCEPT_ID field in the SPECIMEN table.' as check_description
  ,'SPECIMEN' as cdm_table_name
  ,'SPECIMEN_TYPE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_specimen_specimen_type_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_TYPE_CONCEPT_ID

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
			'SPECIMEN.SPECIMEN_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.SPECIMEN cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.SPECIMEN_TYPE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.SPECIMEN cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the UNIT_CONCEPT_ID field in the SPECIMEN table.' as check_description
  ,'SPECIMEN' as cdm_table_name
  ,'UNIT_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_specimen_unit_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = SPECIMEN
cdmFieldName = UNIT_CONCEPT_ID

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
			'SPECIMEN.UNIT_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.SPECIMEN cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.UNIT_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.SPECIMEN cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the ADMITTED_FROM_CONCEPT_ID field in the VISIT_DETAIL table.' as check_description
  ,'VISIT_DETAIL' as cdm_table_name
  ,'ADMITTED_FROM_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_visit_detail_admitted_from_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = ADMITTED_FROM_CONCEPT_ID

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
			'VISIT_DETAIL.ADMITTED_FROM_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_DETAIL cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.ADMITTED_FROM_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_DETAIL cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the DISCHARGED_TO_CONCEPT_ID field in the VISIT_DETAIL table.' as check_description
  ,'VISIT_DETAIL' as cdm_table_name
  ,'DISCHARGED_TO_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_visit_detail_discharged_to_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = DISCHARGED_TO_CONCEPT_ID

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
			'VISIT_DETAIL.DISCHARGED_TO_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_DETAIL cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.DISCHARGED_TO_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_DETAIL cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the VISIT_DETAIL_CONCEPT_ID field in the VISIT_DETAIL table.' as check_description
  ,'VISIT_DETAIL' as cdm_table_name
  ,'VISIT_DETAIL_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_visit_detail_visit_detail_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_CONCEPT_ID

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
			'VISIT_DETAIL.VISIT_DETAIL_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_DETAIL cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.VISIT_DETAIL_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_DETAIL cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the VISIT_DETAIL_TYPE_CONCEPT_ID field in the VISIT_DETAIL table.' as check_description
  ,'VISIT_DETAIL' as cdm_table_name
  ,'VISIT_DETAIL_TYPE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_visit_detail_visit_detail_type_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_TYPE_CONCEPT_ID

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
			'VISIT_DETAIL.VISIT_DETAIL_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_DETAIL cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.VISIT_DETAIL_TYPE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_DETAIL cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the ADMITTED_FROM_CONCEPT_ID field in the VISIT_OCCURRENCE table.' as check_description
  ,'VISIT_OCCURRENCE' as cdm_table_name
  ,'ADMITTED_FROM_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_visit_occurrence_admitted_from_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = ADMITTED_FROM_CONCEPT_ID

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
			'VISIT_OCCURRENCE.ADMITTED_FROM_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_OCCURRENCE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.ADMITTED_FROM_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the DISCHARGED_TO_CONCEPT_ID field in the VISIT_OCCURRENCE table.' as check_description
  ,'VISIT_OCCURRENCE' as cdm_table_name
  ,'DISCHARGED_TO_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_visit_occurrence_discharged_to_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = DISCHARGED_TO_CONCEPT_ID

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
			'VISIT_OCCURRENCE.DISCHARGED_TO_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_OCCURRENCE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.DISCHARGED_TO_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the VISIT_CONCEPT_ID field in the VISIT_OCCURRENCE table.' as check_description
  ,'VISIT_OCCURRENCE' as cdm_table_name
  ,'VISIT_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_visit_occurrence_visit_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_CONCEPT_ID

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
			'VISIT_OCCURRENCE.VISIT_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_OCCURRENCE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.VISIT_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE cdmTable
		
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
  ,'isStandardValidConcept' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that do not have a standard, valid CONCEPT in the VISIT_TYPE_CONCEPT_ID field in the VISIT_OCCURRENCE table.' as check_description
  ,'VISIT_OCCURRENCE' as cdm_table_name
  ,'VISIT_TYPE_CONCEPT_ID' as cdm_field_name
  ,'NA' as CONCEPT_ID
  ,'NA' as unit_concept_id
  ,'field_is_standard_valid_concept.sql' as sql_file
  ,'Conformance' as category
  ,'Value' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isstandardvalidconcept_visit_occurrence_visit_type_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard CONCEPT id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_TYPE_CONCEPT_ID

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
			'VISIT_OCCURRENCE.VISIT_TYPE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_OCCURRENCE cdmTable
			
	  	JOIN dbo.CONCEPT co 
	  	    ON cdmTable.VISIT_TYPE_CONCEPT_ID = co.CONCEPT_ID
		WHERE co.CONCEPT_ID != 0 
			AND (co.STANDARD_CONCEPT != 'S' OR co.INVALID_REASON IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE cdmTable
		
) denominator


) cte

)
SELECT *
FROM cte_all
;

