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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the CARE_SITE_ID field of the CARE_SITE.' as check_description
  ,'CARE_SITE' as cdm_table_name
  ,'CARE_SITE_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_care_site_care_site_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = CARE_SITE
cdmFieldName = CARE_SITE_ID

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
            'CARE_SITE.CARE_SITE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CARE_SITE cdmTable
            
        WHERE cdmTable.CARE_SITE_ID IN ( 
            SELECT 
                CARE_SITE_ID 
            FROM dbo.CARE_SITE
            GROUP BY CARE_SITE_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the CONCEPT_ID field of the CONCEPT.' as check_description
  ,'CONCEPT' as cdm_table_name
  ,'CONCEPT_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_concept_concept_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT
cdmFieldName = CONCEPT_ID

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
            'CONCEPT.CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT cdmTable
            
        WHERE cdmTable.CONCEPT_ID IN ( 
            SELECT 
                CONCEPT_ID 
            FROM dbo.CONCEPT
            GROUP BY CONCEPT_ID
            HAVING COUNT_BIG(*) > 1 
        )
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT cdmTable
        
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the CONCEPT_CLASS_ID field of the CONCEPT_CLASS.' as check_description
  ,'CONCEPT_CLASS' as cdm_table_name
  ,'CONCEPT_CLASS_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_concept_class_concept_class_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_CLASS
cdmFieldName = CONCEPT_CLASS_ID

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
            'CONCEPT_CLASS.CONCEPT_CLASS_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT_CLASS cdmTable
            
        WHERE cdmTable.CONCEPT_CLASS_ID IN ( 
            SELECT 
                CONCEPT_CLASS_ID 
            FROM dbo.CONCEPT_CLASS
            GROUP BY CONCEPT_CLASS_ID
            HAVING COUNT_BIG(*) > 1 
        )
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT_CLASS cdmTable
        
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the CONDITION_ERA_ID field of the CONDITION_ERA.' as check_description
  ,'CONDITION_ERA' as cdm_table_name
  ,'CONDITION_ERA_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_condition_era_condition_era_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_ID

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
            'CONDITION_ERA.CONDITION_ERA_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONDITION_ERA cdmTable
            
        WHERE cdmTable.CONDITION_ERA_ID IN ( 
            SELECT 
                CONDITION_ERA_ID 
            FROM dbo.CONDITION_ERA
            GROUP BY CONDITION_ERA_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the CONDITION_OCCURRENCE_ID field of the CONDITION_OCCURRENCE.' as check_description
  ,'CONDITION_OCCURRENCE' as cdm_table_name
  ,'CONDITION_OCCURRENCE_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_condition_occurrence_condition_occurrence_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_OCCURRENCE_ID

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
            'CONDITION_OCCURRENCE.CONDITION_OCCURRENCE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONDITION_OCCURRENCE cdmTable
            
        WHERE cdmTable.CONDITION_OCCURRENCE_ID IN ( 
            SELECT 
                CONDITION_OCCURRENCE_ID 
            FROM dbo.CONDITION_OCCURRENCE
            GROUP BY CONDITION_OCCURRENCE_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the COST_ID field of the COST.' as check_description
  ,'COST' as cdm_table_name
  ,'COST_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_cost_cost_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = COST_ID

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
            'COST.COST_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.COST cdmTable
            
        WHERE cdmTable.COST_ID IN ( 
            SELECT 
                COST_ID 
            FROM dbo.COST
            GROUP BY COST_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the DEVICE_EXPOSURE_ID field of the DEVICE_EXPOSURE.' as check_description
  ,'DEVICE_EXPOSURE' as cdm_table_name
  ,'DEVICE_EXPOSURE_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_device_exposure_device_exposure_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_ID

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
            'DEVICE_EXPOSURE.DEVICE_EXPOSURE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DEVICE_EXPOSURE cdmTable
            
        WHERE cdmTable.DEVICE_EXPOSURE_ID IN ( 
            SELECT 
                DEVICE_EXPOSURE_ID 
            FROM dbo.DEVICE_EXPOSURE
            GROUP BY DEVICE_EXPOSURE_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the DOMAIN_ID field of the DOMAIN.' as check_description
  ,'DOMAIN' as cdm_table_name
  ,'DOMAIN_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_domain_domain_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = DOMAIN
cdmFieldName = DOMAIN_ID

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
            'DOMAIN.DOMAIN_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DOMAIN cdmTable
            
        WHERE cdmTable.DOMAIN_ID IN ( 
            SELECT 
                DOMAIN_ID 
            FROM dbo.DOMAIN
            GROUP BY DOMAIN_ID
            HAVING COUNT_BIG(*) > 1 
        )
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DOMAIN cdmTable
        
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the DOSE_ERA_ID field of the DOSE_ERA.' as check_description
  ,'DOSE_ERA' as cdm_table_name
  ,'DOSE_ERA_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_dose_era_dose_era_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_ID

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
            'DOSE_ERA.DOSE_ERA_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DOSE_ERA cdmTable
            
        WHERE cdmTable.DOSE_ERA_ID IN ( 
            SELECT 
                DOSE_ERA_ID 
            FROM dbo.DOSE_ERA
            GROUP BY DOSE_ERA_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the DRUG_ERA_ID field of the DRUG_ERA.' as check_description
  ,'DRUG_ERA' as cdm_table_name
  ,'DRUG_ERA_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_drug_era_drug_era_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_ID

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
            'DRUG_ERA.DRUG_ERA_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_ERA cdmTable
            
        WHERE cdmTable.DRUG_ERA_ID IN ( 
            SELECT 
                DRUG_ERA_ID 
            FROM dbo.DRUG_ERA
            GROUP BY DRUG_ERA_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the DRUG_EXPOSURE_ID field of the DRUG_EXPOSURE.' as check_description
  ,'DRUG_EXPOSURE' as cdm_table_name
  ,'DRUG_EXPOSURE_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_drug_exposure_drug_exposure_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_ID

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
            'DRUG_EXPOSURE.DRUG_EXPOSURE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_EXPOSURE cdmTable
            
        WHERE cdmTable.DRUG_EXPOSURE_ID IN ( 
            SELECT 
                DRUG_EXPOSURE_ID 
            FROM dbo.DRUG_EXPOSURE
            GROUP BY DRUG_EXPOSURE_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the EPISODE_ID field of the EPISODE.' as check_description
  ,'EPISODE' as cdm_table_name
  ,'EPISODE_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_episode_episode_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = EPISODE
cdmFieldName = EPISODE_ID

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
            'EPISODE.EPISODE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.EPISODE cdmTable
            
        WHERE cdmTable.EPISODE_ID IN ( 
            SELECT 
                EPISODE_ID 
            FROM dbo.EPISODE
            GROUP BY EPISODE_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the LOCATION_ID field of the LOCATION.' as check_description
  ,'LOCATION' as cdm_table_name
  ,'LOCATION_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_location_location_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = LOCATION
cdmFieldName = LOCATION_ID

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
            'LOCATION.LOCATION_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.LOCATION cdmTable
            
        WHERE cdmTable.LOCATION_ID IN ( 
            SELECT 
                LOCATION_ID 
            FROM dbo.LOCATION
            GROUP BY LOCATION_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the MEASUREMENT_ID field of the MEASUREMENT.' as check_description
  ,'MEASUREMENT' as cdm_table_name
  ,'MEASUREMENT_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_measurement_measurement_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_ID

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
            'MEASUREMENT.MEASUREMENT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.MEASUREMENT cdmTable
            
        WHERE cdmTable.MEASUREMENT_ID IN ( 
            SELECT 
                MEASUREMENT_ID 
            FROM dbo.MEASUREMENT
            GROUP BY MEASUREMENT_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the METADATA_ID field of the METADATA.' as check_description
  ,'METADATA' as cdm_table_name
  ,'METADATA_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_metadata_metadata_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = METADATA
cdmFieldName = METADATA_ID

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
            'METADATA.METADATA_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.METADATA cdmTable
            
        WHERE cdmTable.METADATA_ID IN ( 
            SELECT 
                METADATA_ID 
            FROM dbo.METADATA
            GROUP BY METADATA_ID
            HAVING COUNT_BIG(*) > 1 
        )
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.METADATA cdmTable
        
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the NOTE_ID field of the NOTE.' as check_description
  ,'NOTE' as cdm_table_name
  ,'NOTE_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_note_note_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_ID

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
            'NOTE.NOTE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.NOTE cdmTable
            
        WHERE cdmTable.NOTE_ID IN ( 
            SELECT 
                NOTE_ID 
            FROM dbo.NOTE
            GROUP BY NOTE_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the NOTE_NLP_ID field of the NOTE_NLP.' as check_description
  ,'NOTE_NLP' as cdm_table_name
  ,'NOTE_NLP_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_note_nlp_note_nlp_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_ID

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
            'NOTE_NLP.NOTE_NLP_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.NOTE_NLP cdmTable
            
        WHERE cdmTable.NOTE_NLP_ID IN ( 
            SELECT 
                NOTE_NLP_ID 
            FROM dbo.NOTE_NLP
            GROUP BY NOTE_NLP_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the OBSERVATION_ID field of the OBSERVATION.' as check_description
  ,'OBSERVATION' as cdm_table_name
  ,'OBSERVATION_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_observation_observation_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_ID

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
            'OBSERVATION.OBSERVATION_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.OBSERVATION cdmTable
            
        WHERE cdmTable.OBSERVATION_ID IN ( 
            SELECT 
                OBSERVATION_ID 
            FROM dbo.OBSERVATION
            GROUP BY OBSERVATION_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the OBSERVATION_PERIOD_ID field of the OBSERVATION_PERIOD.' as check_description
  ,'OBSERVATION_PERIOD' as cdm_table_name
  ,'OBSERVATION_PERIOD_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_observation_period_observation_period_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_ID

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
            'OBSERVATION_PERIOD.OBSERVATION_PERIOD_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.OBSERVATION_PERIOD cdmTable
            
        WHERE cdmTable.OBSERVATION_PERIOD_ID IN ( 
            SELECT 
                OBSERVATION_PERIOD_ID 
            FROM dbo.OBSERVATION_PERIOD
            GROUP BY OBSERVATION_PERIOD_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the PAYER_PLAN_PERIOD_ID field of the PAYER_PLAN_PERIOD.' as check_description
  ,'PAYER_PLAN_PERIOD' as cdm_table_name
  ,'PAYER_PLAN_PERIOD_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_payer_plan_period_payer_plan_period_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_ID

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
            'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
            
        WHERE cdmTable.PAYER_PLAN_PERIOD_ID IN ( 
            SELECT 
                PAYER_PLAN_PERIOD_ID 
            FROM dbo.PAYER_PLAN_PERIOD
            GROUP BY PAYER_PLAN_PERIOD_ID
            HAVING COUNT_BIG(*) > 1 
        )
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the PERSON_ID field of the PERSON.' as check_description
  ,'PERSON' as cdm_table_name
  ,'PERSON_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_person_person_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = PERSON_ID

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
            'PERSON.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PERSON cdmTable
            
        WHERE cdmTable.PERSON_ID IN ( 
            SELECT 
                PERSON_ID 
            FROM dbo.PERSON
            GROUP BY PERSON_ID
            HAVING COUNT_BIG(*) > 1 
        )
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PERSON cdmTable
        
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the PROCEDURE_OCCURRENCE_ID field of the PROCEDURE_OCCURRENCE.' as check_description
  ,'PROCEDURE_OCCURRENCE' as cdm_table_name
  ,'PROCEDURE_OCCURRENCE_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_procedure_occurrence_procedure_occurrence_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_OCCURRENCE_ID

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
            'PROCEDURE_OCCURRENCE.PROCEDURE_OCCURRENCE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
            
        WHERE cdmTable.PROCEDURE_OCCURRENCE_ID IN ( 
            SELECT 
                PROCEDURE_OCCURRENCE_ID 
            FROM dbo.PROCEDURE_OCCURRENCE
            GROUP BY PROCEDURE_OCCURRENCE_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the PROVIDER_ID field of the PROVIDER.' as check_description
  ,'PROVIDER' as cdm_table_name
  ,'PROVIDER_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_provider_provider_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
cdmFieldName = PROVIDER_ID

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
            'PROVIDER.PROVIDER_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PROVIDER cdmTable
            
        WHERE cdmTable.PROVIDER_ID IN ( 
            SELECT 
                PROVIDER_ID 
            FROM dbo.PROVIDER
            GROUP BY PROVIDER_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the RELATIONSHIP_ID field of the RELATIONSHIP.' as check_description
  ,'RELATIONSHIP' as cdm_table_name
  ,'RELATIONSHIP_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_relationship_relationship_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = RELATIONSHIP
cdmFieldName = RELATIONSHIP_ID

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
            'RELATIONSHIP.RELATIONSHIP_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.RELATIONSHIP cdmTable
            
        WHERE cdmTable.RELATIONSHIP_ID IN ( 
            SELECT 
                RELATIONSHIP_ID 
            FROM dbo.RELATIONSHIP
            GROUP BY RELATIONSHIP_ID
            HAVING COUNT_BIG(*) > 1 
        )
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.RELATIONSHIP cdmTable
        
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the SPECIMEN_ID field of the SPECIMEN.' as check_description
  ,'SPECIMEN' as cdm_table_name
  ,'SPECIMEN_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_specimen_specimen_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_ID

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
            'SPECIMEN.SPECIMEN_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.SPECIMEN cdmTable
            
        WHERE cdmTable.SPECIMEN_ID IN ( 
            SELECT 
                SPECIMEN_ID 
            FROM dbo.SPECIMEN
            GROUP BY SPECIMEN_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the VISIT_DETAIL_ID field of the VISIT_DETAIL.' as check_description
  ,'VISIT_DETAIL' as cdm_table_name
  ,'VISIT_DETAIL_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_visit_detail_visit_detail_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_ID

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
            'VISIT_DETAIL.VISIT_DETAIL_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_DETAIL cdmTable
            
        WHERE cdmTable.VISIT_DETAIL_ID IN ( 
            SELECT 
                VISIT_DETAIL_ID 
            FROM dbo.VISIT_DETAIL
            GROUP BY VISIT_DETAIL_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the VISIT_OCCURRENCE_ID field of the VISIT_OCCURRENCE.' as check_description
  ,'VISIT_OCCURRENCE' as cdm_table_name
  ,'VISIT_OCCURRENCE_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_visit_occurrence_visit_occurrence_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID

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
            'VISIT_OCCURRENCE.VISIT_OCCURRENCE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
        WHERE cdmTable.VISIT_OCCURRENCE_ID IN ( 
            SELECT 
                VISIT_OCCURRENCE_ID 
            FROM dbo.VISIT_OCCURRENCE
            GROUP BY VISIT_OCCURRENCE_ID
            HAVING COUNT_BIG(*) > 1 
        )
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
  ,'isPrimaryKey' as check_name
  ,'FIELD' as check_level
  ,'The number and percent of records that have a duplicate value in the VOCABULARY_ID field of the VOCABULARY.' as check_description
  ,'VOCABULARY' as cdm_table_name
  ,'VOCABULARY_ID' as cdm_field_name
  ,'NA' as concept_id
  ,'NA' as unit_concept_id
  ,'field_is_primary_key.sql' as sql_file
  ,'Conformance' as category
  ,'Relational' as subcategory
  ,'Verification' as context
  ,'' as warning
  ,'' as error
  ,'field_isprimarykey_vocabulary_vocabulary_id' as checkid
  ,0 as is_error
  ,0 as not_applicable
  ,CASE WHEN (cte.pct_violated_rows * 100) > 0 THEN 1 ELSE 0 END as failed
  ,CASE WHEN (cte.pct_violated_rows * 100) <= 0 THEN 1 ELSE 0 END as passed
  ,NULL as not_applicable_reason
  ,0 as threshold_value
  ,NULL as notes_value
FROM (
  
/*********
FIELD_IS_PRIMARY_KEY

Primary Key - verify that values in fields where isPrimaryKey == Yes are unique

Parameters used in this template:
schema = dbo
cdmTableName = VOCABULARY
cdmFieldName = VOCABULARY_ID

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
            'VOCABULARY.VOCABULARY_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VOCABULARY cdmTable
            
        WHERE cdmTable.VOCABULARY_ID IN ( 
            SELECT 
                VOCABULARY_ID 
            FROM dbo.VOCABULARY
            GROUP BY VOCABULARY_ID
            HAVING COUNT_BIG(*) > 1 
        )
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VOCABULARY cdmTable
        
) denominator


) cte

)
SELECT *
FROM cte_all
;

