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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the CDM_RELEASE_DATE field of the CDM_SOURCE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'CDM_SOURCE' as cdm_table_name
  ,'CDM_RELEASE_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_cdm_source_cdm_release_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_RELEASE_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'CDM_SOURCE.CDM_RELEASE_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.CDM_SOURCE cdmTable
        
    	
      	    WHERE cast(cdmTable.CDM_RELEASE_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CDM_SOURCE cdmTable
    
  	WHERE CDM_RELEASE_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the SOURCE_RELEASE_DATE field of the CDM_SOURCE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'CDM_SOURCE' as cdm_table_name
  ,'SOURCE_RELEASE_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_cdm_source_source_release_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CDM_SOURCE
cdmFieldName = SOURCE_RELEASE_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'CDM_SOURCE.SOURCE_RELEASE_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.CDM_SOURCE cdmTable
        
    	
      	    WHERE cast(cdmTable.SOURCE_RELEASE_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CDM_SOURCE cdmTable
    
  	WHERE SOURCE_RELEASE_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the COHORT_END_DATE field of the COHORT table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'COHORT' as cdm_table_name
  ,'COHORT_END_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_cohort_cohort_end_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = COHORT
cdmFieldName = COHORT_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'COHORT.COHORT_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.COHORT cdmTable
        
    	
      	    WHERE cast(cdmTable.COHORT_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.COHORT cdmTable
    
  	WHERE COHORT_END_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the COHORT_START_DATE field of the COHORT table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'COHORT' as cdm_table_name
  ,'COHORT_START_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_cohort_cohort_start_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = COHORT
cdmFieldName = COHORT_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'COHORT.COHORT_START_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.COHORT cdmTable
        
    	
      	    WHERE cast(cdmTable.COHORT_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.COHORT cdmTable
    
  	WHERE COHORT_START_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the CONDITION_ERA_END_DATE field of the CONDITION_ERA table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'CONDITION_ERA' as cdm_table_name
  ,'CONDITION_ERA_END_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_condition_era_condition_era_end_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'CONDITION_ERA.CONDITION_ERA_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.CONDITION_ERA cdmTable
        
    	
      	    WHERE cast(cdmTable.CONDITION_ERA_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_ERA cdmTable
    
  	WHERE CONDITION_ERA_END_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the CONDITION_ERA_START_DATE field of the CONDITION_ERA table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'CONDITION_ERA' as cdm_table_name
  ,'CONDITION_ERA_START_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_condition_era_condition_era_start_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.CONDITION_ERA_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_ERA cdmTable
    
  	WHERE CONDITION_ERA_START_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the CONDITION_END_DATE field of the CONDITION_OCCURRENCE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'CONDITION_OCCURRENCE' as cdm_table_name
  ,'CONDITION_END_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_condition_occurrence_condition_end_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.CONDITION_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE cdmTable
    
  	WHERE CONDITION_END_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the CONDITION_END_DATETIME field of the CONDITION_OCCURRENCE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'CONDITION_OCCURRENCE' as cdm_table_name
  ,'CONDITION_END_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_condition_occurrence_condition_end_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.CONDITION_END_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE cdmTable
    
  	WHERE CONDITION_END_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the CONDITION_START_DATE field of the CONDITION_OCCURRENCE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'CONDITION_OCCURRENCE' as cdm_table_name
  ,'CONDITION_START_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_condition_occurrence_condition_start_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.CONDITION_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE cdmTable
    
  	WHERE CONDITION_START_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the CONDITION_START_DATETIME field of the CONDITION_OCCURRENCE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'CONDITION_OCCURRENCE' as cdm_table_name
  ,'CONDITION_START_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_condition_occurrence_condition_start_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.CONDITION_START_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE cdmTable
    
  	WHERE CONDITION_START_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the DEATH_DATE field of the DEATH table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'DEATH' as cdm_table_name
  ,'DEATH_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_death_death_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEATH
cdmFieldName = DEATH_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'DEATH.DEATH_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DEATH cdmTable
        
    	
      	    WHERE cast(cdmTable.DEATH_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEATH cdmTable
    
  	WHERE DEATH_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the DEATH_DATETIME field of the DEATH table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'DEATH' as cdm_table_name
  ,'DEATH_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_death_death_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEATH
cdmFieldName = DEATH_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'DEATH.DEATH_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DEATH cdmTable
        
    	
      	    WHERE cast(cdmTable.DEATH_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEATH cdmTable
    
  	WHERE DEATH_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the DEVICE_EXPOSURE_END_DATE field of the DEVICE_EXPOSURE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'DEVICE_EXPOSURE' as cdm_table_name
  ,'DEVICE_EXPOSURE_END_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_device_exposure_device_exposure_end_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.DEVICE_EXPOSURE_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE cdmTable
    
  	WHERE DEVICE_EXPOSURE_END_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the DEVICE_EXPOSURE_END_DATETIME field of the DEVICE_EXPOSURE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'DEVICE_EXPOSURE' as cdm_table_name
  ,'DEVICE_EXPOSURE_END_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_device_exposure_device_exposure_end_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.DEVICE_EXPOSURE_END_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE cdmTable
    
  	WHERE DEVICE_EXPOSURE_END_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the DEVICE_EXPOSURE_START_DATE field of the DEVICE_EXPOSURE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'DEVICE_EXPOSURE' as cdm_table_name
  ,'DEVICE_EXPOSURE_START_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_device_exposure_device_exposure_start_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.DEVICE_EXPOSURE_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE cdmTable
    
  	WHERE DEVICE_EXPOSURE_START_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the DEVICE_EXPOSURE_START_DATETIME field of the DEVICE_EXPOSURE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'DEVICE_EXPOSURE' as cdm_table_name
  ,'DEVICE_EXPOSURE_START_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_device_exposure_device_exposure_start_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.DEVICE_EXPOSURE_START_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE cdmTable
    
  	WHERE DEVICE_EXPOSURE_START_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the DOSE_ERA_END_DATE field of the DOSE_ERA table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'DOSE_ERA' as cdm_table_name
  ,'DOSE_ERA_END_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_dose_era_dose_era_end_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'DOSE_ERA.DOSE_ERA_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DOSE_ERA cdmTable
        
    	
      	    WHERE cast(cdmTable.DOSE_ERA_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DOSE_ERA cdmTable
    
  	WHERE DOSE_ERA_END_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the DOSE_ERA_START_DATE field of the DOSE_ERA table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'DOSE_ERA' as cdm_table_name
  ,'DOSE_ERA_START_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_dose_era_dose_era_start_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.DOSE_ERA_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DOSE_ERA cdmTable
    
  	WHERE DOSE_ERA_START_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the DRUG_ERA_END_DATE field of the DRUG_ERA table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'DRUG_ERA' as cdm_table_name
  ,'DRUG_ERA_END_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_drug_era_drug_era_end_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'DRUG_ERA.DRUG_ERA_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DRUG_ERA cdmTable
        
    	
      	    WHERE cast(cdmTable.DRUG_ERA_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_ERA cdmTable
    
  	WHERE DRUG_ERA_END_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the DRUG_ERA_START_DATE field of the DRUG_ERA table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'DRUG_ERA' as cdm_table_name
  ,'DRUG_ERA_START_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_drug_era_drug_era_start_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.DRUG_ERA_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_ERA cdmTable
    
  	WHERE DRUG_ERA_START_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the DAYS_SUPPLY field of the DRUG_EXPOSURE table greater than 365.' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'DAYS_SUPPLY' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_drug_exposure_days_supply' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DAYS_SUPPLY
plausibleValueHigh = 365

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
            'DRUG_EXPOSURE.DAYS_SUPPLY' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DRUG_EXPOSURE cdmTable
        
    	
      	    WHERE cdmTable.DAYS_SUPPLY > 365
		
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
    
  	WHERE DAYS_SUPPLY IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the DRUG_EXPOSURE_END_DATE field of the DRUG_EXPOSURE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'DRUG_EXPOSURE_END_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_drug_exposure_drug_exposure_end_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.DRUG_EXPOSURE_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
    
  	WHERE DRUG_EXPOSURE_END_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the DRUG_EXPOSURE_END_DATETIME field of the DRUG_EXPOSURE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'DRUG_EXPOSURE_END_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_drug_exposure_drug_exposure_end_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.DRUG_EXPOSURE_END_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
    
  	WHERE DRUG_EXPOSURE_END_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the DRUG_EXPOSURE_START_DATE field of the DRUG_EXPOSURE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'DRUG_EXPOSURE_START_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_drug_exposure_drug_exposure_start_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.DRUG_EXPOSURE_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
    
  	WHERE DRUG_EXPOSURE_START_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the DRUG_EXPOSURE_START_DATETIME field of the DRUG_EXPOSURE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'DRUG_EXPOSURE_START_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_drug_exposure_drug_exposure_start_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.DRUG_EXPOSURE_START_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
    
  	WHERE DRUG_EXPOSURE_START_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the QUANTITY field of the DRUG_EXPOSURE table greater than 1095.' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'QUANTITY' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_drug_exposure_quantity' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = QUANTITY
plausibleValueHigh = 1095

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
            'DRUG_EXPOSURE.QUANTITY' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DRUG_EXPOSURE cdmTable
        
    	
      	    WHERE cdmTable.QUANTITY > 1095
		
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
    
  	WHERE QUANTITY IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the REFILLS field of the DRUG_EXPOSURE table greater than 24.' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'REFILLS' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_drug_exposure_refills' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = REFILLS
plausibleValueHigh = 24

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
            'DRUG_EXPOSURE.REFILLS' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DRUG_EXPOSURE cdmTable
        
    	
      	    WHERE cdmTable.REFILLS > 24
		
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
    
  	WHERE REFILLS IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the VERBATIM_END_DATE field of the DRUG_EXPOSURE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'VERBATIM_END_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_drug_exposure_verbatim_end_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VERBATIM_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.VERBATIM_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
    
  	WHERE VERBATIM_END_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the EPISODE_END_DATE field of the EPISODE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'EPISODE' as cdm_table_name
  ,'EPISODE_END_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_episode_episode_end_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = EPISODE
cdmFieldName = EPISODE_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'EPISODE.EPISODE_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.EPISODE cdmTable
        
    	
      	    WHERE cast(cdmTable.EPISODE_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.EPISODE cdmTable
    
  	WHERE EPISODE_END_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the EPISODE_END_DATETIME field of the EPISODE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'EPISODE' as cdm_table_name
  ,'EPISODE_END_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_episode_episode_end_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = EPISODE
cdmFieldName = EPISODE_END_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'EPISODE.EPISODE_END_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.EPISODE cdmTable
        
    	
      	    WHERE cast(cdmTable.EPISODE_END_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.EPISODE cdmTable
    
  	WHERE EPISODE_END_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the EPISODE_START_DATE field of the EPISODE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'EPISODE' as cdm_table_name
  ,'EPISODE_START_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_episode_episode_start_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = EPISODE
cdmFieldName = EPISODE_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'EPISODE.EPISODE_START_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.EPISODE cdmTable
        
    	
      	    WHERE cast(cdmTable.EPISODE_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.EPISODE cdmTable
    
  	WHERE EPISODE_START_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the EPISODE_START_DATETIME field of the EPISODE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'EPISODE' as cdm_table_name
  ,'EPISODE_START_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_episode_episode_start_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = EPISODE
cdmFieldName = EPISODE_START_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'EPISODE.EPISODE_START_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.EPISODE cdmTable
        
    	
      	    WHERE cast(cdmTable.EPISODE_START_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.EPISODE cdmTable
    
  	WHERE EPISODE_START_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the MEASUREMENT_DATE field of the MEASUREMENT table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'MEASUREMENT' as cdm_table_name
  ,'MEASUREMENT_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_measurement_measurement_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'MEASUREMENT.MEASUREMENT_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.MEASUREMENT cdmTable
        
    	
      	    WHERE cast(cdmTable.MEASUREMENT_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT cdmTable
    
  	WHERE MEASUREMENT_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the MEASUREMENT_DATETIME field of the MEASUREMENT table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'MEASUREMENT' as cdm_table_name
  ,'MEASUREMENT_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_measurement_measurement_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'MEASUREMENT.MEASUREMENT_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.MEASUREMENT cdmTable
        
    	
      	    WHERE cast(cdmTable.MEASUREMENT_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT cdmTable
    
  	WHERE MEASUREMENT_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the NOTE_DATE field of the NOTE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'NOTE' as cdm_table_name
  ,'NOTE_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_note_note_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'NOTE.NOTE_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.NOTE cdmTable
        
    	
      	    WHERE cast(cdmTable.NOTE_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE cdmTable
    
  	WHERE NOTE_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the NOTE_DATETIME field of the NOTE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'NOTE' as cdm_table_name
  ,'NOTE_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_note_note_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'NOTE.NOTE_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.NOTE cdmTable
        
    	
      	    WHERE cast(cdmTable.NOTE_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE cdmTable
    
  	WHERE NOTE_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the NLP_DATETIME field of the NOTE_NLP table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'NOTE_NLP' as cdm_table_name
  ,'NLP_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_note_nlp_nlp_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = NLP_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'NOTE_NLP.NLP_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.NOTE_NLP cdmTable
        
    	
      	    WHERE cast(cdmTable.NLP_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE_NLP cdmTable
    
  	WHERE NLP_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the OBSERVATION_DATE field of the OBSERVATION table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'OBSERVATION' as cdm_table_name
  ,'OBSERVATION_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_observation_observation_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'OBSERVATION.OBSERVATION_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.OBSERVATION cdmTable
        
    	
      	    WHERE cast(cdmTable.OBSERVATION_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION cdmTable
    
  	WHERE OBSERVATION_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the OBSERVATION_DATETIME field of the OBSERVATION table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'OBSERVATION' as cdm_table_name
  ,'OBSERVATION_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_observation_observation_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'OBSERVATION.OBSERVATION_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.OBSERVATION cdmTable
        
    	
      	    WHERE cast(cdmTable.OBSERVATION_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION cdmTable
    
  	WHERE OBSERVATION_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the OBSERVATION_PERIOD_END_DATE field of the OBSERVATION_PERIOD table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'OBSERVATION_PERIOD' as cdm_table_name
  ,'OBSERVATION_PERIOD_END_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_observation_period_observation_period_end_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.OBSERVATION_PERIOD_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION_PERIOD cdmTable
    
  	WHERE OBSERVATION_PERIOD_END_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the OBSERVATION_PERIOD_START_DATE field of the OBSERVATION_PERIOD table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'OBSERVATION_PERIOD' as cdm_table_name
  ,'OBSERVATION_PERIOD_START_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_observation_period_observation_period_start_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.OBSERVATION_PERIOD_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION_PERIOD cdmTable
    
  	WHERE OBSERVATION_PERIOD_START_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the PAYER_PLAN_PERIOD_END_DATE field of the PAYER_PLAN_PERIOD table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'PAYER_PLAN_PERIOD' as cdm_table_name
  ,'PAYER_PLAN_PERIOD_END_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_payer_plan_period_payer_plan_period_end_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.PAYER_PLAN_PERIOD cdmTable
        
    	
      	    WHERE cast(cdmTable.PAYER_PLAN_PERIOD_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PAYER_PLAN_PERIOD cdmTable
    
  	WHERE PAYER_PLAN_PERIOD_END_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the PAYER_PLAN_PERIOD_START_DATE field of the PAYER_PLAN_PERIOD table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'PAYER_PLAN_PERIOD' as cdm_table_name
  ,'PAYER_PLAN_PERIOD_START_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_payer_plan_period_payer_plan_period_start_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_START_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.PAYER_PLAN_PERIOD cdmTable
        
    	
      	    WHERE cast(cdmTable.PAYER_PLAN_PERIOD_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PAYER_PLAN_PERIOD cdmTable
    
  	WHERE PAYER_PLAN_PERIOD_START_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the BIRTH_DATETIME field of the person table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'person' as cdm_table_name
  ,'BIRTH_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_person_birth_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = person
cdmFieldName = BIRTH_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'person.BIRTH_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.person cdmTable
        
    	
      	    WHERE cast(cdmTable.BIRTH_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
    
  	WHERE BIRTH_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the DAY_OF_BIRTH field of the person table greater than 31.' as check_description
  ,'person' as cdm_table_name
  ,'DAY_OF_BIRTH' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_person_day_of_birth' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = person
cdmFieldName = DAY_OF_BIRTH
plausibleValueHigh = 31

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
            'person.DAY_OF_BIRTH' AS violating_field, 
		    cdmTable.*
    	FROM dbo.person cdmTable
        
    	
      	    WHERE cdmTable.DAY_OF_BIRTH > 31
		
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
    
  	WHERE DAY_OF_BIRTH IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the MONTH_OF_BIRTH field of the person table greater than 12.' as check_description
  ,'person' as cdm_table_name
  ,'MONTH_OF_BIRTH' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_person_month_of_birth' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = person
cdmFieldName = MONTH_OF_BIRTH
plausibleValueHigh = 12

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
            'person.MONTH_OF_BIRTH' AS violating_field, 
		    cdmTable.*
    	FROM dbo.person cdmTable
        
    	
      	    WHERE cdmTable.MONTH_OF_BIRTH > 12
		
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
    
  	WHERE MONTH_OF_BIRTH IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the YEAR_OF_BIRTH field of the person table greater than YEAR(GETDATE())+1.' as check_description
  ,'person' as cdm_table_name
  ,'YEAR_OF_BIRTH' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_person_year_of_birth' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = person
cdmFieldName = YEAR_OF_BIRTH
plausibleValueHigh = YEAR(GETDATE())+1

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
            'person.YEAR_OF_BIRTH' AS violating_field, 
		    cdmTable.*
    	FROM dbo.person cdmTable
        
    	
      	    WHERE cdmTable.YEAR_OF_BIRTH > YEAR(GETDATE())+1
		
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
    
  	WHERE YEAR_OF_BIRTH IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the PROCEDURE_DATE field of the PROCEDURE_OCCURRENCE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'PROCEDURE_OCCURRENCE' as cdm_table_name
  ,'PROCEDURE_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_procedure_occurrence_procedure_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.PROCEDURE_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    
  	WHERE PROCEDURE_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the PROCEDURE_DATETIME field of the PROCEDURE_OCCURRENCE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'PROCEDURE_OCCURRENCE' as cdm_table_name
  ,'PROCEDURE_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_procedure_occurrence_procedure_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.PROCEDURE_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    
  	WHERE PROCEDURE_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the PROCEDURE_END_DATE field of the PROCEDURE_OCCURRENCE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'PROCEDURE_OCCURRENCE' as cdm_table_name
  ,'PROCEDURE_END_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_procedure_occurrence_procedure_end_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'PROCEDURE_OCCURRENCE.PROCEDURE_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
    	
      	    WHERE cast(cdmTable.PROCEDURE_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    
  	WHERE PROCEDURE_END_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the PROCEDURE_END_DATETIME field of the PROCEDURE_OCCURRENCE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'PROCEDURE_OCCURRENCE' as cdm_table_name
  ,'PROCEDURE_END_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_procedure_occurrence_procedure_end_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_END_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'PROCEDURE_OCCURRENCE.PROCEDURE_END_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
    	
      	    WHERE cast(cdmTable.PROCEDURE_END_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    
  	WHERE PROCEDURE_END_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the SPECIMEN_DATE field of the SPECIMEN table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'SPECIMEN' as cdm_table_name
  ,'SPECIMEN_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_specimen_specimen_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'SPECIMEN.SPECIMEN_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.SPECIMEN cdmTable
        
    	
      	    WHERE cast(cdmTable.SPECIMEN_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.SPECIMEN cdmTable
    
  	WHERE SPECIMEN_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the SPECIMEN_DATETIME field of the SPECIMEN table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'SPECIMEN' as cdm_table_name
  ,'SPECIMEN_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_specimen_specimen_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
            'SPECIMEN.SPECIMEN_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.SPECIMEN cdmTable
        
    	
      	    WHERE cast(cdmTable.SPECIMEN_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.SPECIMEN cdmTable
    
  	WHERE SPECIMEN_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the VISIT_DETAIL_END_DATE field of the VISIT_DETAIL table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'VISIT_DETAIL' as cdm_table_name
  ,'VISIT_DETAIL_END_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_visit_detail_visit_detail_end_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.VISIT_DETAIL_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_DETAIL cdmTable
    
  	WHERE VISIT_DETAIL_END_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the VISIT_DETAIL_END_DATETIME field of the VISIT_DETAIL table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'VISIT_DETAIL' as cdm_table_name
  ,'VISIT_DETAIL_END_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_visit_detail_visit_detail_end_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.VISIT_DETAIL_END_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_DETAIL cdmTable
    
  	WHERE VISIT_DETAIL_END_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the VISIT_DETAIL_START_DATE field of the VISIT_DETAIL table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'VISIT_DETAIL' as cdm_table_name
  ,'VISIT_DETAIL_START_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_visit_detail_visit_detail_start_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.VISIT_DETAIL_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_DETAIL cdmTable
    
  	WHERE VISIT_DETAIL_START_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the VISIT_DETAIL_START_DATETIME field of the VISIT_DETAIL table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'VISIT_DETAIL' as cdm_table_name
  ,'VISIT_DETAIL_START_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_visit_detail_visit_detail_start_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.VISIT_DETAIL_START_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_DETAIL cdmTable
    
  	WHERE VISIT_DETAIL_START_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the VISIT_END_DATE field of the VISIT_OCCURRENCE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'VISIT_OCCURRENCE' as cdm_table_name
  ,'VISIT_END_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_visit_occurrence_visit_end_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.VISIT_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE cdmTable
    
  	WHERE VISIT_END_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the VISIT_END_DATETIME field of the VISIT_OCCURRENCE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'VISIT_OCCURRENCE' as cdm_table_name
  ,'VISIT_END_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_visit_occurrence_visit_end_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.VISIT_END_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE cdmTable
    
  	WHERE VISIT_END_DATETIME IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the VISIT_START_DATE field of the VISIT_OCCURRENCE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'VISIT_OCCURRENCE' as cdm_table_name
  ,'VISIT_START_DATE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_visit_occurrence_visit_start_date' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.VISIT_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE cdmTable
    
  	WHERE VISIT_START_DATE IS NOT NULL
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
  ,'plausibleValueHigh' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records with a value in the VISIT_START_DATETIME field of the VISIT_OCCURRENCE table greater than DATEADD(DD,1,GETDATE()).' as check_description
  ,'VISIT_OCCURRENCE' as cdm_table_name
  ,'VISIT_START_DATETIME' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_plausible_value_high.sql' as sql_file
  ,'Plausibility' as category
  ,'Atemporal' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_plausiblevaluehigh_visit_occurrence_visit_start_datetime' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 1 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 1 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,1 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

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
        
    	
      	    WHERE cast(cdmTable.VISIT_START_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE cdmTable
    
  	WHERE VISIT_START_DATETIME IS NOT NULL
) denominator


) cte

)
SELECT *
FROM cte_all
;

