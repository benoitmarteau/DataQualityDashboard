/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CARE_SITE.PLACE_OF_SERVICE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CARE_SITE cdmTable
        
        WHERE cdmTable.PLACE_OF_SERVICE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.CARE_SITE cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_ERA.CONDITION_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONDITION_ERA cdmTable
        
        WHERE cdmTable.CONDITION_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_ERA cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_OCCURRENCE.CONDITION_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONDITION_OCCURRENCE cdmTable
        
        WHERE cdmTable.CONDITION_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_OCCURRENCE cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_OCCURRENCE.CONDITION_STATUS_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONDITION_OCCURRENCE cdmTable
        
        WHERE cdmTable.CONDITION_STATUS_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_OCCURRENCE cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_OCCURRENCE.CONDITION_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONDITION_OCCURRENCE cdmTable
        
        WHERE cdmTable.CONDITION_TYPE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_OCCURRENCE cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'COST.COST_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.COST cdmTable
        
        WHERE cdmTable.COST_TYPE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.COST cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DEATH.CAUSE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DEATH cdmTable
        
        WHERE cdmTable.CAUSE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.DEATH cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DEATH.DEATH_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DEATH cdmTable
        
        WHERE cdmTable.DEATH_TYPE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.DEATH cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DEVICE_EXPOSURE.DEVICE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DEVICE_EXPOSURE cdmTable
        
        WHERE cdmTable.DEVICE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DEVICE_EXPOSURE.DEVICE_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DEVICE_EXPOSURE cdmTable
        
        WHERE cdmTable.DEVICE_TYPE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DEVICE_EXPOSURE.UNIT_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DEVICE_EXPOSURE cdmTable
        
        WHERE cdmTable.UNIT_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DOSE_ERA.DRUG_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DOSE_ERA cdmTable
        
        WHERE cdmTable.DRUG_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.DOSE_ERA cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DOSE_ERA.UNIT_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DOSE_ERA cdmTable
        
        WHERE cdmTable.UNIT_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.DOSE_ERA cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_ERA.DRUG_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_ERA cdmTable
        
        WHERE cdmTable.DRUG_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_ERA cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.DRUG_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_EXPOSURE cdmTable
        
        WHERE cdmTable.DRUG_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.DRUG_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_EXPOSURE cdmTable
        
        WHERE cdmTable.DRUG_TYPE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.ROUTE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_EXPOSURE cdmTable
        
        WHERE cdmTable.ROUTE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'EPISODE.EPISODE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.EPISODE cdmTable
        
        WHERE cdmTable.EPISODE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.EPISODE cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_1

**********/

SELECT 
    num_violated_rows, 
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
            'FACT_RELATIONSHIP.DOMAIN_CONCEPT_ID_1' AS violating_field, 
            cdmTable.* 
        FROM dbo.FACT_RELATIONSHIP cdmTable
        
        WHERE cdmTable.DOMAIN_CONCEPT_ID_1 = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.FACT_RELATIONSHIP cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_2

**********/

SELECT 
    num_violated_rows, 
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
            'FACT_RELATIONSHIP.DOMAIN_CONCEPT_ID_2' AS violating_field, 
            cdmTable.* 
        FROM dbo.FACT_RELATIONSHIP cdmTable
        
        WHERE cdmTable.DOMAIN_CONCEPT_ID_2 = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.FACT_RELATIONSHIP cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = RELATIONSHIP_CONCEPT_ID

**********/

SELECT 
    num_violated_rows, 
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
            'FACT_RELATIONSHIP.RELATIONSHIP_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.FACT_RELATIONSHIP cdmTable
        
        WHERE cdmTable.RELATIONSHIP_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.FACT_RELATIONSHIP cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'LOCATION.COUNTRY_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.LOCATION cdmTable
        
        WHERE cdmTable.COUNTRY_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.LOCATION cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'MEASUREMENT.MEASUREMENT_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.MEASUREMENT cdmTable
        
        WHERE cdmTable.MEASUREMENT_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.MEASUREMENT cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'MEASUREMENT.MEASUREMENT_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.MEASUREMENT cdmTable
        
        WHERE cdmTable.MEASUREMENT_TYPE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.MEASUREMENT cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'MEASUREMENT.UNIT_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.MEASUREMENT cdmTable
        
        WHERE cdmTable.UNIT_CONCEPT_ID = 0 AND cdmTable.value_as_number IS NOT NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.MEASUREMENT cdmTable
    
    WHERE cdmTable.value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'OBSERVATION.OBSERVATION_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.OBSERVATION cdmTable
        
        WHERE cdmTable.OBSERVATION_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'OBSERVATION.OBSERVATION_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.OBSERVATION cdmTable
        
        WHERE cdmTable.OBSERVATION_TYPE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records * for the OBSERVATION.unit_concept_id and MEASUREMENT.unit_concept_id the numerator and denominator are limited to records where value_as_number IS NOT NULL

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'OBSERVATION.UNIT_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.OBSERVATION cdmTable
        
        WHERE cdmTable.UNIT_CONCEPT_ID = 0 AND cdmTable.value_as_number IS NOT NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION cdmTable
    
    WHERE cdmTable.value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'OBSERVATION_PERIOD.PERIOD_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.OBSERVATION_PERIOD cdmTable
        
        WHERE cdmTable.PERIOD_TYPE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION_PERIOD cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = PERSON
cdmFieldName = ETHNICITY_CONCEPT_ID

**********/

SELECT 
    num_violated_rows, 
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
            'PERSON.ETHNICITY_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PERSON cdmTable
        
        WHERE cdmTable.ETHNICITY_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.PERSON cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = PERSON
cdmFieldName = GENDER_CONCEPT_ID

**********/

SELECT 
    num_violated_rows, 
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
            'PERSON.GENDER_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PERSON cdmTable
        
        WHERE cdmTable.GENDER_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.PERSON cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = PERSON
cdmFieldName = RACE_CONCEPT_ID

**********/

SELECT 
    num_violated_rows, 
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
            'PERSON.RACE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PERSON cdmTable
        
        WHERE cdmTable.RACE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.PERSON cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'PROCEDURE_OCCURRENCE.MODIFIER_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
        WHERE cdmTable.MODIFIER_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'PROCEDURE_OCCURRENCE.PROCEDURE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
        WHERE cdmTable.PROCEDURE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'PROCEDURE_OCCURRENCE.PROCEDURE_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
        WHERE cdmTable.PROCEDURE_TYPE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'PROVIDER.GENDER_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PROVIDER cdmTable
        
        WHERE cdmTable.GENDER_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.PROVIDER cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'PROVIDER.SPECIALTY_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PROVIDER cdmTable
        
        WHERE cdmTable.SPECIALTY_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.PROVIDER cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'SPECIMEN.SPECIMEN_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.SPECIMEN cdmTable
        
        WHERE cdmTable.SPECIMEN_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.SPECIMEN cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'SPECIMEN.SPECIMEN_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.SPECIMEN cdmTable
        
        WHERE cdmTable.SPECIMEN_TYPE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.SPECIMEN cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'SPECIMEN.UNIT_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.SPECIMEN cdmTable
        
        WHERE cdmTable.UNIT_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.SPECIMEN cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_DETAIL.ADMITTED_FROM_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_DETAIL cdmTable
        
        WHERE cdmTable.ADMITTED_FROM_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_DETAIL.DISCHARGED_TO_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_DETAIL cdmTable
        
        WHERE cdmTable.DISCHARGED_TO_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_DETAIL.VISIT_DETAIL_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_DETAIL cdmTable
        
        WHERE cdmTable.VISIT_DETAIL_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_DETAIL.VISIT_DETAIL_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_DETAIL cdmTable
        
        WHERE cdmTable.VISIT_DETAIL_TYPE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_OCCURRENCE.ADMITTED_FROM_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_OCCURRENCE cdmTable
        
        WHERE cdmTable.ADMITTED_FROM_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_OCCURRENCE.DISCHARGED_TO_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_OCCURRENCE cdmTable
        
        WHERE cdmTable.DISCHARGED_TO_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_OCCURRENCE.VISIT_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_OCCURRENCE cdmTable
        
        WHERE cdmTable.VISIT_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
    
    
) denominator
;

/*********
CONCEPT_RECORD_COMPLETENESS
number of 0s / total number of records 

Parameters used in this template:
cdmDatabaseSchema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_OCCURRENCE.VISIT_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_OCCURRENCE cdmTable
        
        WHERE cdmTable.VISIT_TYPE_CONCEPT_ID = 0 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
    
    
) denominator
;

