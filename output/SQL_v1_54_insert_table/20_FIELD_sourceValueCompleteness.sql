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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the CONDITION_SOURCE_VALUE field of the CONDITION_OCCURRENCE table mapped to 0.' as check_description
  ,'CONDITION_OCCURRENCE' as cdm_table_name
  ,'CONDITION_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_condition_occurrence_condition_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 10 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 10 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,10 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_SOURCE_VALUE
standardConceptFieldName = CONDITION_CONCEPT_ID

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
        SELECT DISTINCT 
            'CONDITION_OCCURRENCE.CONDITION_SOURCE_VALUE' AS violating_field, 
            cdmTable.CONDITION_SOURCE_VALUE
        FROM dbo.CONDITION_OCCURRENCE cdmTable
        
        WHERE cdmTable.CONDITION_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.CONDITION_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.CONDITION_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the CONDITION_STATUS_SOURCE_VALUE field of the CONDITION_OCCURRENCE table mapped to 0.' as check_description
  ,'CONDITION_OCCURRENCE' as cdm_table_name
  ,'CONDITION_STATUS_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_condition_occurrence_condition_status_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_STATUS_SOURCE_VALUE
standardConceptFieldName = CONDITION_STATUS_CONCEPT_ID

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
        SELECT DISTINCT 
            'CONDITION_OCCURRENCE.CONDITION_STATUS_SOURCE_VALUE' AS violating_field, 
            cdmTable.CONDITION_STATUS_SOURCE_VALUE
        FROM dbo.CONDITION_OCCURRENCE cdmTable
        
        WHERE cdmTable.CONDITION_STATUS_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.CONDITION_STATUS_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.CONDITION_STATUS_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the CAUSE_SOURCE_VALUE field of the DEATH table mapped to 0.' as check_description
  ,'DEATH' as cdm_table_name
  ,'CAUSE_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_death_cause_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 10 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 10 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,10 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DEATH
cdmFieldName = CAUSE_SOURCE_VALUE
standardConceptFieldName = CAUSE_SOURCE_CONCEPT_ID

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
        SELECT DISTINCT 
            'DEATH.CAUSE_SOURCE_VALUE' AS violating_field, 
            cdmTable.CAUSE_SOURCE_VALUE
        FROM dbo.DEATH cdmTable
        
        WHERE cdmTable.CAUSE_SOURCE_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.CAUSE_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.CAUSE_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the DEVICE_SOURCE_VALUE field of the DEVICE_EXPOSURE table mapped to 0.' as check_description
  ,'DEVICE_EXPOSURE' as cdm_table_name
  ,'DEVICE_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_device_exposure_device_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_SOURCE_VALUE
standardConceptFieldName = DEVICE_CONCEPT_ID

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
        SELECT DISTINCT 
            'DEVICE_EXPOSURE.DEVICE_SOURCE_VALUE' AS violating_field, 
            cdmTable.DEVICE_SOURCE_VALUE
        FROM dbo.DEVICE_EXPOSURE cdmTable
        
        WHERE cdmTable.DEVICE_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.DEVICE_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.DEVICE_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the UNIT_SOURCE_VALUE field of the DEVICE_EXPOSURE table mapped to 0.' as check_description
  ,'DEVICE_EXPOSURE' as cdm_table_name
  ,'UNIT_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_device_exposure_unit_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 10 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 10 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,10 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = UNIT_SOURCE_VALUE
standardConceptFieldName = UNIT_CONCEPT_ID

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
        SELECT DISTINCT 
            'DEVICE_EXPOSURE.UNIT_SOURCE_VALUE' AS violating_field, 
            cdmTable.UNIT_SOURCE_VALUE
        FROM dbo.DEVICE_EXPOSURE cdmTable
        
        WHERE cdmTable.UNIT_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.UNIT_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.UNIT_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the DRUG_SOURCE_VALUE field of the DRUG_EXPOSURE table mapped to 0.' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'DRUG_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_drug_exposure_drug_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 10 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 10 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,10 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_SOURCE_VALUE
standardConceptFieldName = DRUG_CONCEPT_ID

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
        SELECT DISTINCT 
            'DRUG_EXPOSURE.DRUG_SOURCE_VALUE' AS violating_field, 
            cdmTable.DRUG_SOURCE_VALUE
        FROM dbo.DRUG_EXPOSURE cdmTable
        
        WHERE cdmTable.DRUG_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.DRUG_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.DRUG_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the ROUTE_SOURCE_VALUE field of the DRUG_EXPOSURE table mapped to 0.' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'ROUTE_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_drug_exposure_route_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_SOURCE_VALUE
standardConceptFieldName = ROUTE_CONCEPT_ID

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
        SELECT DISTINCT 
            'DRUG_EXPOSURE.ROUTE_SOURCE_VALUE' AS violating_field, 
            cdmTable.ROUTE_SOURCE_VALUE
        FROM dbo.DRUG_EXPOSURE cdmTable
        
        WHERE cdmTable.ROUTE_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.ROUTE_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.ROUTE_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the MEASUREMENT_SOURCE_VALUE field of the MEASUREMENT table mapped to 0.' as check_description
  ,'MEASUREMENT' as cdm_table_name
  ,'MEASUREMENT_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_measurement_measurement_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_SOURCE_VALUE
standardConceptFieldName = MEASUREMENT_CONCEPT_ID

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
        SELECT DISTINCT 
            'MEASUREMENT.MEASUREMENT_SOURCE_VALUE' AS violating_field, 
            cdmTable.MEASUREMENT_SOURCE_VALUE
        FROM dbo.MEASUREMENT cdmTable
        
        WHERE cdmTable.MEASUREMENT_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.MEASUREMENT_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.MEASUREMENT_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the UNIT_SOURCE_VALUE field of the MEASUREMENT table mapped to 0.' as check_description
  ,'MEASUREMENT' as cdm_table_name
  ,'UNIT_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_measurement_unit_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_SOURCE_VALUE
standardConceptFieldName = UNIT_CONCEPT_ID

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
        SELECT DISTINCT 
            'MEASUREMENT.UNIT_SOURCE_VALUE' AS violating_field, 
            cdmTable.UNIT_SOURCE_VALUE
        FROM dbo.MEASUREMENT cdmTable
        
        WHERE cdmTable.UNIT_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.UNIT_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.UNIT_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the OBSERVATION_SOURCE_VALUE field of the OBSERVATION table mapped to 0.' as check_description
  ,'OBSERVATION' as cdm_table_name
  ,'OBSERVATION_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_observation_observation_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_SOURCE_VALUE
standardConceptFieldName = OBSERVATION_CONCEPT_ID

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
        SELECT DISTINCT 
            'OBSERVATION.OBSERVATION_SOURCE_VALUE' AS violating_field, 
            cdmTable.OBSERVATION_SOURCE_VALUE
        FROM dbo.OBSERVATION cdmTable
        
        WHERE cdmTable.OBSERVATION_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.OBSERVATION_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.OBSERVATION_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the QUALIFIER_SOURCE_VALUE field of the OBSERVATION table mapped to 0.' as check_description
  ,'OBSERVATION' as cdm_table_name
  ,'QUALIFIER_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_observation_qualifier_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = QUALIFIER_SOURCE_VALUE
standardConceptFieldName = QUALIFIER_CONCEPT_ID

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
        SELECT DISTINCT 
            'OBSERVATION.QUALIFIER_SOURCE_VALUE' AS violating_field, 
            cdmTable.QUALIFIER_SOURCE_VALUE
        FROM dbo.OBSERVATION cdmTable
        
        WHERE cdmTable.QUALIFIER_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.QUALIFIER_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.QUALIFIER_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the UNIT_SOURCE_VALUE field of the OBSERVATION table mapped to 0.' as check_description
  ,'OBSERVATION' as cdm_table_name
  ,'UNIT_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_observation_unit_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = UNIT_SOURCE_VALUE
standardConceptFieldName = UNIT_CONCEPT_ID

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
        SELECT DISTINCT 
            'OBSERVATION.UNIT_SOURCE_VALUE' AS violating_field, 
            cdmTable.UNIT_SOURCE_VALUE
        FROM dbo.OBSERVATION cdmTable
        
        WHERE cdmTable.UNIT_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.UNIT_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.UNIT_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the PAYER_SOURCE_VALUE field of the PAYER_PLAN_PERIOD table mapped to 0.' as check_description
  ,'PAYER_PLAN_PERIOD' as cdm_table_name
  ,'PAYER_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_payer_plan_period_payer_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_SOURCE_VALUE
standardConceptFieldName = PAYER_CONCEPT_ID

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
        SELECT DISTINCT 
            'PAYER_PLAN_PERIOD.PAYER_SOURCE_VALUE' AS violating_field, 
            cdmTable.PAYER_SOURCE_VALUE
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
        
        WHERE cdmTable.PAYER_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.PAYER_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.PAYER_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
    FROM dbo.PAYER_PLAN_PERIOD cdmTable
    
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the PLAN_SOURCE_VALUE field of the PAYER_PLAN_PERIOD table mapped to 0.' as check_description
  ,'PAYER_PLAN_PERIOD' as cdm_table_name
  ,'PLAN_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_payer_plan_period_plan_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_SOURCE_VALUE
standardConceptFieldName = PLAN_CONCEPT_ID

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
        SELECT DISTINCT 
            'PAYER_PLAN_PERIOD.PLAN_SOURCE_VALUE' AS violating_field, 
            cdmTable.PLAN_SOURCE_VALUE
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
        
        WHERE cdmTable.PLAN_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.PLAN_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.PLAN_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
    FROM dbo.PAYER_PLAN_PERIOD cdmTable
    
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the SPONSOR_SOURCE_VALUE field of the PAYER_PLAN_PERIOD table mapped to 0.' as check_description
  ,'PAYER_PLAN_PERIOD' as cdm_table_name
  ,'SPONSOR_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_payer_plan_period_sponsor_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_SOURCE_VALUE
standardConceptFieldName = SPONSOR_CONCEPT_ID

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
        SELECT DISTINCT 
            'PAYER_PLAN_PERIOD.SPONSOR_SOURCE_VALUE' AS violating_field, 
            cdmTable.SPONSOR_SOURCE_VALUE
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
        
        WHERE cdmTable.SPONSOR_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.SPONSOR_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.SPONSOR_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
    FROM dbo.PAYER_PLAN_PERIOD cdmTable
    
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the STOP_REASON_SOURCE_VALUE field of the PAYER_PLAN_PERIOD table mapped to 0.' as check_description
  ,'PAYER_PLAN_PERIOD' as cdm_table_name
  ,'STOP_REASON_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_payer_plan_period_stop_reason_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_SOURCE_VALUE
standardConceptFieldName = STOP_REASON_CONCEPT_ID

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
        SELECT DISTINCT 
            'PAYER_PLAN_PERIOD.STOP_REASON_SOURCE_VALUE' AS violating_field, 
            cdmTable.STOP_REASON_SOURCE_VALUE
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
        
        WHERE cdmTable.STOP_REASON_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.STOP_REASON_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.STOP_REASON_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
    FROM dbo.PAYER_PLAN_PERIOD cdmTable
    
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the ETHNICITY_SOURCE_VALUE field of the person table mapped to 0.' as check_description
  ,'person' as cdm_table_name
  ,'ETHNICITY_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_person_ethnicity_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = person
cdmFieldName = ETHNICITY_SOURCE_VALUE
standardConceptFieldName = ETHNICITY_CONCEPT_ID

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
        SELECT DISTINCT 
            'person.ETHNICITY_SOURCE_VALUE' AS violating_field, 
            cdmTable.ETHNICITY_SOURCE_VALUE
        FROM dbo.person cdmTable
        
        WHERE cdmTable.ETHNICITY_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.ETHNICITY_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.ETHNICITY_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the GENDER_SOURCE_VALUE field of the person table mapped to 0.' as check_description
  ,'person' as cdm_table_name
  ,'GENDER_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_person_gender_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = person
cdmFieldName = GENDER_SOURCE_VALUE
standardConceptFieldName = GENDER_CONCEPT_ID

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
        SELECT DISTINCT 
            'person.GENDER_SOURCE_VALUE' AS violating_field, 
            cdmTable.GENDER_SOURCE_VALUE
        FROM dbo.person cdmTable
        
        WHERE cdmTable.GENDER_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.GENDER_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.GENDER_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the RACE_SOURCE_VALUE field of the person table mapped to 0.' as check_description
  ,'person' as cdm_table_name
  ,'RACE_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_person_race_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = person
cdmFieldName = RACE_SOURCE_VALUE
standardConceptFieldName = RACE_CONCEPT_ID

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
        SELECT DISTINCT 
            'person.RACE_SOURCE_VALUE' AS violating_field, 
            cdmTable.RACE_SOURCE_VALUE
        FROM dbo.person cdmTable
        
        WHERE cdmTable.RACE_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.RACE_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.RACE_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the MODIFIER_SOURCE_VALUE field of the PROCEDURE_OCCURRENCE table mapped to 0.' as check_description
  ,'PROCEDURE_OCCURRENCE' as cdm_table_name
  ,'MODIFIER_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_procedure_occurrence_modifier_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = MODIFIER_SOURCE_VALUE
standardConceptFieldName = MODIFIER_CONCEPT_ID

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
        SELECT DISTINCT 
            'PROCEDURE_OCCURRENCE.MODIFIER_SOURCE_VALUE' AS violating_field, 
            cdmTable.MODIFIER_SOURCE_VALUE
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
        WHERE cdmTable.MODIFIER_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.MODIFIER_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.MODIFIER_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the PROCEDURE_SOURCE_VALUE field of the PROCEDURE_OCCURRENCE table mapped to 0.' as check_description
  ,'PROCEDURE_OCCURRENCE' as cdm_table_name
  ,'PROCEDURE_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_procedure_occurrence_procedure_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_SOURCE_VALUE
standardConceptFieldName = PROCEDURE_CONCEPT_ID

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
        SELECT DISTINCT 
            'PROCEDURE_OCCURRENCE.PROCEDURE_SOURCE_VALUE' AS violating_field, 
            cdmTable.PROCEDURE_SOURCE_VALUE
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
        WHERE cdmTable.PROCEDURE_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.PROCEDURE_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.PROCEDURE_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the GENDER_SOURCE_VALUE field of the PROVIDER table mapped to 0.' as check_description
  ,'PROVIDER' as cdm_table_name
  ,'GENDER_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_provider_gender_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = PROVIDER
cdmFieldName = GENDER_SOURCE_VALUE
standardConceptFieldName = GENDER_CONCEPT_ID

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
        SELECT DISTINCT 
            'PROVIDER.GENDER_SOURCE_VALUE' AS violating_field, 
            cdmTable.GENDER_SOURCE_VALUE
        FROM dbo.PROVIDER cdmTable
        
        WHERE cdmTable.GENDER_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.GENDER_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.GENDER_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the SPECIALTY_SOURCE_VALUE field of the PROVIDER table mapped to 0.' as check_description
  ,'PROVIDER' as cdm_table_name
  ,'SPECIALTY_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_provider_specialty_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_SOURCE_VALUE
standardConceptFieldName = SPECIALTY_CONCEPT_ID

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
        SELECT DISTINCT 
            'PROVIDER.SPECIALTY_SOURCE_VALUE' AS violating_field, 
            cdmTable.SPECIALTY_SOURCE_VALUE
        FROM dbo.PROVIDER cdmTable
        
        WHERE cdmTable.SPECIALTY_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.SPECIALTY_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.SPECIALTY_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the ANATOMIC_SITE_SOURCE_VALUE field of the SPECIMEN table mapped to 0.' as check_description
  ,'SPECIMEN' as cdm_table_name
  ,'ANATOMIC_SITE_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_specimen_anatomic_site_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = SPECIMEN
cdmFieldName = ANATOMIC_SITE_SOURCE_VALUE
standardConceptFieldName = ANATOMIC_SITE_CONCEPT_ID

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
        SELECT DISTINCT 
            'SPECIMEN.ANATOMIC_SITE_SOURCE_VALUE' AS violating_field, 
            cdmTable.ANATOMIC_SITE_SOURCE_VALUE
        FROM dbo.SPECIMEN cdmTable
        
        WHERE cdmTable.ANATOMIC_SITE_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.ANATOMIC_SITE_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.ANATOMIC_SITE_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the DISEASE_STATUS_SOURCE_VALUE field of the SPECIMEN table mapped to 0.' as check_description
  ,'SPECIMEN' as cdm_table_name
  ,'DISEASE_STATUS_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_specimen_disease_status_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = SPECIMEN
cdmFieldName = DISEASE_STATUS_SOURCE_VALUE
standardConceptFieldName = DISEASE_STATUS_CONCEPT_ID

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
        SELECT DISTINCT 
            'SPECIMEN.DISEASE_STATUS_SOURCE_VALUE' AS violating_field, 
            cdmTable.DISEASE_STATUS_SOURCE_VALUE
        FROM dbo.SPECIMEN cdmTable
        
        WHERE cdmTable.DISEASE_STATUS_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.DISEASE_STATUS_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.DISEASE_STATUS_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the SPECIMEN_SOURCE_VALUE field of the SPECIMEN table mapped to 0.' as check_description
  ,'SPECIMEN' as cdm_table_name
  ,'SPECIMEN_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_specimen_specimen_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_SOURCE_VALUE
standardConceptFieldName = SPECIMEN_CONCEPT_ID

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
        SELECT DISTINCT 
            'SPECIMEN.SPECIMEN_SOURCE_VALUE' AS violating_field, 
            cdmTable.SPECIMEN_SOURCE_VALUE
        FROM dbo.SPECIMEN cdmTable
        
        WHERE cdmTable.SPECIMEN_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.SPECIMEN_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.SPECIMEN_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the UNIT_SOURCE_VALUE field of the SPECIMEN table mapped to 0.' as check_description
  ,'SPECIMEN' as cdm_table_name
  ,'UNIT_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_specimen_unit_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = SPECIMEN
cdmFieldName = UNIT_SOURCE_VALUE
standardConceptFieldName = UNIT_CONCEPT_ID

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
        SELECT DISTINCT 
            'SPECIMEN.UNIT_SOURCE_VALUE' AS violating_field, 
            cdmTable.UNIT_SOURCE_VALUE
        FROM dbo.SPECIMEN cdmTable
        
        WHERE cdmTable.UNIT_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.UNIT_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.UNIT_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
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
  ,'sourceValueCompleteness' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of distinct source values in the VISIT_SOURCE_VALUE field of the VISIT_OCCURRENCE table mapped to 0.' as check_description
  ,'VISIT_OCCURRENCE' as cdm_table_name
  ,'VISIT_SOURCE_VALUE' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_source_value_completeness.sql' as sql_file
  ,'Completeness' as category
  ,'NA' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_sourcevaluecompleteness_visit_occurrence_visit_source_value' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 100 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 100 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,100 as threshold_value
  ,NULL as notes_value
FROM (
  /*********
SOURCE_VALUE_COMPLETENESS
number of source values with 0 standard concept / number of distinct source values

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_SOURCE_VALUE
standardConceptFieldName = VISIT_CONCEPT_ID

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
        SELECT DISTINCT 
            'VISIT_OCCURRENCE.VISIT_SOURCE_VALUE' AS violating_field, 
            cdmTable.VISIT_SOURCE_VALUE
        FROM dbo.VISIT_OCCURRENCE cdmTable
        
        WHERE cdmTable.VISIT_CONCEPT_ID = 0
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(DISTINCT cdmTable.VISIT_SOURCE_VALUE) + COUNT(DISTINCT CASE WHEN cdmTable.VISIT_SOURCE_VALUE IS NULL THEN 1 END) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
    
) denominator


) cte

)
SELECT *
FROM cte_all
;

