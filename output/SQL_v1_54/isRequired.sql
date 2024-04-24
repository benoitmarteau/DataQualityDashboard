
/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CARE_SITE.CARE_SITE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CARE_SITE cdmTable
            
        WHERE cdmTable.CARE_SITE_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CARE_SITE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_HOLDER

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
            'CDM_SOURCE.CDM_HOLDER' AS violating_field, 
            cdmTable.* 
        FROM dbo.CDM_SOURCE cdmTable
            
        WHERE cdmTable.CDM_HOLDER IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CDM_SOURCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_RELEASE_DATE

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
            'CDM_SOURCE.CDM_RELEASE_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.CDM_SOURCE cdmTable
            
        WHERE cdmTable.CDM_RELEASE_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CDM_SOURCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_SOURCE_ABBREVIATION

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
            'CDM_SOURCE.CDM_SOURCE_ABBREVIATION' AS violating_field, 
            cdmTable.* 
        FROM dbo.CDM_SOURCE cdmTable
            
        WHERE cdmTable.CDM_SOURCE_ABBREVIATION IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CDM_SOURCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_SOURCE_NAME

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
            'CDM_SOURCE.CDM_SOURCE_NAME' AS violating_field, 
            cdmTable.* 
        FROM dbo.CDM_SOURCE cdmTable
            
        WHERE cdmTable.CDM_SOURCE_NAME IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CDM_SOURCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CDM_SOURCE.CDM_VERSION_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CDM_SOURCE cdmTable
            
        WHERE cdmTable.CDM_VERSION_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CDM_SOURCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CDM_SOURCE
cdmFieldName = SOURCE_RELEASE_DATE

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
            'CDM_SOURCE.SOURCE_RELEASE_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.CDM_SOURCE cdmTable
            
        WHERE cdmTable.SOURCE_RELEASE_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CDM_SOURCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CDM_SOURCE
cdmFieldName = VOCABULARY_VERSION

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
            'CDM_SOURCE.VOCABULARY_VERSION' AS violating_field, 
            cdmTable.* 
        FROM dbo.CDM_SOURCE cdmTable
            
        WHERE cdmTable.VOCABULARY_VERSION IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CDM_SOURCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = COHORT
cdmFieldName = COHORT_DEFINITION_ID

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
            'COHORT.COHORT_DEFINITION_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.COHORT cdmTable
            
        WHERE cdmTable.COHORT_DEFINITION_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.COHORT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = COHORT
cdmFieldName = COHORT_END_DATE

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
            'COHORT.COHORT_END_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.COHORT cdmTable
            
        WHERE cdmTable.COHORT_END_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.COHORT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = COHORT
cdmFieldName = COHORT_START_DATE

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
            'COHORT.COHORT_START_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.COHORT cdmTable
            
        WHERE cdmTable.COHORT_START_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.COHORT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = COHORT
cdmFieldName = SUBJECT_ID

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
            'COHORT.SUBJECT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.COHORT cdmTable
            
        WHERE cdmTable.SUBJECT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.COHORT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = COHORT_DEFINITION
cdmFieldName = COHORT_DEFINITION_ID

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
            'COHORT_DEFINITION.COHORT_DEFINITION_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.COHORT_DEFINITION cdmTable
            
        WHERE cdmTable.COHORT_DEFINITION_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.COHORT_DEFINITION cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = COHORT_DEFINITION
cdmFieldName = COHORT_DEFINITION_NAME

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
            'COHORT_DEFINITION.COHORT_DEFINITION_NAME' AS violating_field, 
            cdmTable.* 
        FROM dbo.COHORT_DEFINITION cdmTable
            
        WHERE cdmTable.COHORT_DEFINITION_NAME IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.COHORT_DEFINITION cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'COHORT_DEFINITION.DEFINITION_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.COHORT_DEFINITION cdmTable
            
        WHERE cdmTable.DEFINITION_TYPE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.COHORT_DEFINITION cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'COHORT_DEFINITION.SUBJECT_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.COHORT_DEFINITION cdmTable
            
        WHERE cdmTable.SUBJECT_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.COHORT_DEFINITION cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT
cdmFieldName = CONCEPT_CLASS_ID

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
            'CONCEPT.CONCEPT_CLASS_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT cdmTable
            
        WHERE cdmTable.CONCEPT_CLASS_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT
cdmFieldName = CONCEPT_CODE

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
            'CONCEPT.CONCEPT_CODE' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT cdmTable
            
        WHERE cdmTable.CONCEPT_CODE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CONCEPT.CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT cdmTable
            
        WHERE cdmTable.CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT
cdmFieldName = CONCEPT_NAME

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
            'CONCEPT.CONCEPT_NAME' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT cdmTable
            
        WHERE cdmTable.CONCEPT_NAME IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT
cdmFieldName = DOMAIN_ID

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
            'CONCEPT.DOMAIN_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT cdmTable
            
        WHERE cdmTable.DOMAIN_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT
cdmFieldName = VALID_END_DATE

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
            'CONCEPT.VALID_END_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT cdmTable
            
        WHERE cdmTable.VALID_END_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT
cdmFieldName = VALID_START_DATE

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
            'CONCEPT.VALID_START_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT cdmTable
            
        WHERE cdmTable.VALID_START_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT
cdmFieldName = VOCABULARY_ID

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
            'CONCEPT.VOCABULARY_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT cdmTable
            
        WHERE cdmTable.VOCABULARY_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_ANCESTOR
cdmFieldName = ANCESTOR_CONCEPT_ID

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
            'CONCEPT_ANCESTOR.ANCESTOR_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT_ANCESTOR cdmTable
            
        WHERE cdmTable.ANCESTOR_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT_ANCESTOR cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_ANCESTOR
cdmFieldName = DESCENDANT_CONCEPT_ID

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
            'CONCEPT_ANCESTOR.DESCENDANT_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT_ANCESTOR cdmTable
            
        WHERE cdmTable.DESCENDANT_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT_ANCESTOR cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_ANCESTOR
cdmFieldName = MAX_LEVELS_OF_SEPARATION

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
            'CONCEPT_ANCESTOR.MAX_LEVELS_OF_SEPARATION' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT_ANCESTOR cdmTable
            
        WHERE cdmTable.MAX_LEVELS_OF_SEPARATION IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT_ANCESTOR cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_ANCESTOR
cdmFieldName = MIN_LEVELS_OF_SEPARATION

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
            'CONCEPT_ANCESTOR.MIN_LEVELS_OF_SEPARATION' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT_ANCESTOR cdmTable
            
        WHERE cdmTable.MIN_LEVELS_OF_SEPARATION IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT_ANCESTOR cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_CLASS
cdmFieldName = CONCEPT_CLASS_CONCEPT_ID

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
            'CONCEPT_CLASS.CONCEPT_CLASS_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT_CLASS cdmTable
            
        WHERE cdmTable.CONCEPT_CLASS_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT_CLASS cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CONCEPT_CLASS.CONCEPT_CLASS_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT_CLASS cdmTable
            
        WHERE cdmTable.CONCEPT_CLASS_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT_CLASS cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_CLASS
cdmFieldName = CONCEPT_CLASS_NAME

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
            'CONCEPT_CLASS.CONCEPT_CLASS_NAME' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT_CLASS cdmTable
            
        WHERE cdmTable.CONCEPT_CLASS_NAME IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT_CLASS cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_RELATIONSHIP
cdmFieldName = CONCEPT_ID_1

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
            'CONCEPT_RELATIONSHIP.CONCEPT_ID_1' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT_RELATIONSHIP cdmTable
            
        WHERE cdmTable.CONCEPT_ID_1 IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT_RELATIONSHIP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_RELATIONSHIP
cdmFieldName = CONCEPT_ID_2

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
            'CONCEPT_RELATIONSHIP.CONCEPT_ID_2' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT_RELATIONSHIP cdmTable
            
        WHERE cdmTable.CONCEPT_ID_2 IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT_RELATIONSHIP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_RELATIONSHIP
cdmFieldName = RELATIONSHIP_ID

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
            'CONCEPT_RELATIONSHIP.RELATIONSHIP_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT_RELATIONSHIP cdmTable
            
        WHERE cdmTable.RELATIONSHIP_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT_RELATIONSHIP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_RELATIONSHIP
cdmFieldName = VALID_END_DATE

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
            'CONCEPT_RELATIONSHIP.VALID_END_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT_RELATIONSHIP cdmTable
            
        WHERE cdmTable.VALID_END_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT_RELATIONSHIP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_RELATIONSHIP
cdmFieldName = VALID_START_DATE

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
            'CONCEPT_RELATIONSHIP.VALID_START_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT_RELATIONSHIP cdmTable
            
        WHERE cdmTable.VALID_START_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT_RELATIONSHIP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_SYNONYM
cdmFieldName = CONCEPT_ID

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
            'CONCEPT_SYNONYM.CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT_SYNONYM cdmTable
            
        WHERE cdmTable.CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT_SYNONYM cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_SYNONYM
cdmFieldName = CONCEPT_SYNONYM_NAME

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
            'CONCEPT_SYNONYM.CONCEPT_SYNONYM_NAME' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT_SYNONYM cdmTable
            
        WHERE cdmTable.CONCEPT_SYNONYM_NAME IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT_SYNONYM cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONCEPT_SYNONYM
cdmFieldName = LANGUAGE_CONCEPT_ID

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
            'CONCEPT_SYNONYM.LANGUAGE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONCEPT_SYNONYM cdmTable
            
        WHERE cdmTable.LANGUAGE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONCEPT_SYNONYM cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.CONDITION_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_ERA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_END_DATE

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
            'CONDITION_ERA.CONDITION_ERA_END_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONDITION_ERA cdmTable
            
        WHERE cdmTable.CONDITION_ERA_END_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_ERA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_ERA.CONDITION_ERA_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONDITION_ERA cdmTable
            
        WHERE cdmTable.CONDITION_ERA_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_ERA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_ERA.CONDITION_ERA_START_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONDITION_ERA cdmTable
            
        WHERE cdmTable.CONDITION_ERA_START_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_ERA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = PERSON_ID

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
            'CONDITION_ERA.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONDITION_ERA cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_ERA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.CONDITION_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_OCCURRENCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_OCCURRENCE.CONDITION_OCCURRENCE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONDITION_OCCURRENCE cdmTable
            
        WHERE cdmTable.CONDITION_OCCURRENCE_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_OCCURRENCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'CONDITION_OCCURRENCE.CONDITION_START_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONDITION_OCCURRENCE cdmTable
            
        WHERE cdmTable.CONDITION_START_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_OCCURRENCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.CONDITION_TYPE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_OCCURRENCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = PERSON_ID

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
            'CONDITION_OCCURRENCE.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.CONDITION_OCCURRENCE cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.CONDITION_OCCURRENCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = COST_DOMAIN_ID

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
            'COST.COST_DOMAIN_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.COST cdmTable
            
        WHERE cdmTable.COST_DOMAIN_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.COST cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = COST_EVENT_ID

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
            'COST.COST_EVENT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.COST cdmTable
            
        WHERE cdmTable.COST_EVENT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.COST cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'COST.COST_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.COST cdmTable
            
        WHERE cdmTable.COST_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.COST cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.COST_TYPE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.COST cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = DEATH
cdmFieldName = DEATH_DATE

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
            'DEATH.DEATH_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.DEATH cdmTable
            
        WHERE cdmTable.DEATH_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEATH cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = DEATH
cdmFieldName = PERSON_ID

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
            'DEATH.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DEATH cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEATH cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.DEVICE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DEVICE_EXPOSURE.DEVICE_EXPOSURE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DEVICE_EXPOSURE cdmTable
            
        WHERE cdmTable.DEVICE_EXPOSURE_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DEVICE_EXPOSURE.DEVICE_EXPOSURE_START_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.DEVICE_EXPOSURE cdmTable
            
        WHERE cdmTable.DEVICE_EXPOSURE_START_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.DEVICE_TYPE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PERSON_ID

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
            'DEVICE_EXPOSURE.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DEVICE_EXPOSURE cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DEVICE_EXPOSURE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = DOMAIN
cdmFieldName = DOMAIN_CONCEPT_ID

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
            'DOMAIN.DOMAIN_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DOMAIN cdmTable
            
        WHERE cdmTable.DOMAIN_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DOMAIN cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DOMAIN.DOMAIN_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DOMAIN cdmTable
            
        WHERE cdmTable.DOMAIN_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DOMAIN cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = DOMAIN
cdmFieldName = DOMAIN_NAME

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
            'DOMAIN.DOMAIN_NAME' AS violating_field, 
            cdmTable.* 
        FROM dbo.DOMAIN cdmTable
            
        WHERE cdmTable.DOMAIN_NAME IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DOMAIN cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_END_DATE

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
            'DOSE_ERA.DOSE_ERA_END_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.DOSE_ERA cdmTable
            
        WHERE cdmTable.DOSE_ERA_END_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DOSE_ERA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DOSE_ERA.DOSE_ERA_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DOSE_ERA cdmTable
            
        WHERE cdmTable.DOSE_ERA_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DOSE_ERA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DOSE_ERA.DOSE_ERA_START_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.DOSE_ERA cdmTable
            
        WHERE cdmTable.DOSE_ERA_START_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DOSE_ERA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_VALUE

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
            'DOSE_ERA.DOSE_VALUE' AS violating_field, 
            cdmTable.* 
        FROM dbo.DOSE_ERA cdmTable
            
        WHERE cdmTable.DOSE_VALUE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DOSE_ERA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.DRUG_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DOSE_ERA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = PERSON_ID

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
            'DOSE_ERA.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DOSE_ERA cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DOSE_ERA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.UNIT_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DOSE_ERA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.DRUG_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_ERA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_END_DATE

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
            'DRUG_ERA.DRUG_ERA_END_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_ERA cdmTable
            
        WHERE cdmTable.DRUG_ERA_END_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_ERA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_ERA.DRUG_ERA_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_ERA cdmTable
            
        WHERE cdmTable.DRUG_ERA_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_ERA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_ERA.DRUG_ERA_START_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_ERA cdmTable
            
        WHERE cdmTable.DRUG_ERA_START_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_ERA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = PERSON_ID

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
            'DRUG_ERA.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_ERA cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_ERA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.DRUG_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.DRUG_EXPOSURE_END_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_EXPOSURE cdmTable
            
        WHERE cdmTable.DRUG_EXPOSURE_END_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.DRUG_EXPOSURE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_EXPOSURE cdmTable
            
        WHERE cdmTable.DRUG_EXPOSURE_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'DRUG_EXPOSURE.DRUG_EXPOSURE_START_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_EXPOSURE cdmTable
            
        WHERE cdmTable.DRUG_EXPOSURE_START_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.DRUG_TYPE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = PERSON_ID

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
            'DRUG_EXPOSURE.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_EXPOSURE cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_EXPOSURE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_STRENGTH
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
            'DRUG_STRENGTH.DRUG_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_STRENGTH cdmTable
            
        WHERE cdmTable.DRUG_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_STRENGTH cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_STRENGTH
cdmFieldName = INGREDIENT_CONCEPT_ID

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
            'DRUG_STRENGTH.INGREDIENT_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_STRENGTH cdmTable
            
        WHERE cdmTable.INGREDIENT_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_STRENGTH cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_STRENGTH
cdmFieldName = VALID_END_DATE

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
            'DRUG_STRENGTH.VALID_END_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_STRENGTH cdmTable
            
        WHERE cdmTable.VALID_END_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_STRENGTH cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_STRENGTH
cdmFieldName = VALID_START_DATE

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
            'DRUG_STRENGTH.VALID_START_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.DRUG_STRENGTH cdmTable
            
        WHERE cdmTable.VALID_START_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_STRENGTH cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.EPISODE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.EPISODE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'EPISODE.EPISODE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.EPISODE cdmTable
            
        WHERE cdmTable.EPISODE_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.EPISODE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = EPISODE
cdmFieldName = EPISODE_OBJECT_CONCEPT_ID

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
            'EPISODE.EPISODE_OBJECT_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.EPISODE cdmTable
            
        WHERE cdmTable.EPISODE_OBJECT_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.EPISODE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = EPISODE
cdmFieldName = EPISODE_START_DATE

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
            'EPISODE.EPISODE_START_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.EPISODE cdmTable
            
        WHERE cdmTable.EPISODE_START_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.EPISODE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'EPISODE.EPISODE_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.EPISODE cdmTable
            
        WHERE cdmTable.EPISODE_TYPE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.EPISODE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = EPISODE
cdmFieldName = PERSON_ID

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
            'EPISODE.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.EPISODE cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.EPISODE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'EPISODE_EVENT.EPISODE_EVENT_FIELD_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.EPISODE_EVENT cdmTable
            
        WHERE cdmTable.EPISODE_EVENT_FIELD_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.EPISODE_EVENT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = EPISODE_EVENT
cdmFieldName = EPISODE_ID

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
            'EPISODE_EVENT.EPISODE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.EPISODE_EVENT cdmTable
            
        WHERE cdmTable.EPISODE_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.EPISODE_EVENT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = EPISODE_EVENT
cdmFieldName = EVENT_ID

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
            'EPISODE_EVENT.EVENT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.EPISODE_EVENT cdmTable
            
        WHERE cdmTable.EVENT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.EPISODE_EVENT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.DOMAIN_CONCEPT_ID_1 IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.FACT_RELATIONSHIP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.DOMAIN_CONCEPT_ID_2 IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.FACT_RELATIONSHIP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = FACT_ID_1

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
            'FACT_RELATIONSHIP.FACT_ID_1' AS violating_field, 
            cdmTable.* 
        FROM dbo.FACT_RELATIONSHIP cdmTable
            
        WHERE cdmTable.FACT_ID_1 IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.FACT_RELATIONSHIP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = FACT_ID_2

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
            'FACT_RELATIONSHIP.FACT_ID_2' AS violating_field, 
            cdmTable.* 
        FROM dbo.FACT_RELATIONSHIP cdmTable
            
        WHERE cdmTable.FACT_ID_2 IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.FACT_RELATIONSHIP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.RELATIONSHIP_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.FACT_RELATIONSHIP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'LOCATION.LOCATION_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.LOCATION cdmTable
            
        WHERE cdmTable.LOCATION_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.LOCATION cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.MEASUREMENT_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.MEASUREMENT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATE

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
            'MEASUREMENT.MEASUREMENT_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.MEASUREMENT cdmTable
            
        WHERE cdmTable.MEASUREMENT_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.MEASUREMENT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'MEASUREMENT.MEASUREMENT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.MEASUREMENT cdmTable
            
        WHERE cdmTable.MEASUREMENT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.MEASUREMENT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.MEASUREMENT_TYPE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.MEASUREMENT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = PERSON_ID

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
            'MEASUREMENT.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.MEASUREMENT cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.MEASUREMENT cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = METADATA
cdmFieldName = METADATA_CONCEPT_ID

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
            'METADATA.METADATA_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.METADATA cdmTable
            
        WHERE cdmTable.METADATA_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.METADATA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'METADATA.METADATA_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.METADATA cdmTable
            
        WHERE cdmTable.METADATA_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.METADATA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = METADATA
cdmFieldName = METADATA_TYPE_CONCEPT_ID

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
            'METADATA.METADATA_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.METADATA cdmTable
            
        WHERE cdmTable.METADATA_TYPE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.METADATA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = METADATA
cdmFieldName = NAME

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
            'METADATA.NAME' AS violating_field, 
            cdmTable.* 
        FROM dbo.METADATA cdmTable
            
        WHERE cdmTable.NAME IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.METADATA cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'NOTE.ENCODING_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.NOTE cdmTable
            
        WHERE cdmTable.ENCODING_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.NOTE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'NOTE.LANGUAGE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.NOTE cdmTable
            
        WHERE cdmTable.LANGUAGE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.NOTE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'NOTE.NOTE_CLASS_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.NOTE cdmTable
            
        WHERE cdmTable.NOTE_CLASS_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.NOTE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_DATE

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
            'NOTE.NOTE_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.NOTE cdmTable
            
        WHERE cdmTable.NOTE_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.NOTE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'NOTE.NOTE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.NOTE cdmTable
            
        WHERE cdmTable.NOTE_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.NOTE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_TEXT

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
            'NOTE.NOTE_TEXT' AS violating_field, 
            cdmTable.* 
        FROM dbo.NOTE cdmTable
            
        WHERE cdmTable.NOTE_TEXT IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.NOTE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'NOTE.NOTE_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.NOTE cdmTable
            
        WHERE cdmTable.NOTE_TYPE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.NOTE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = PERSON_ID

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
            'NOTE.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.NOTE cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.NOTE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = LEXICAL_VARIANT

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
            'NOTE_NLP.LEXICAL_VARIANT' AS violating_field, 
            cdmTable.* 
        FROM dbo.NOTE_NLP cdmTable
            
        WHERE cdmTable.LEXICAL_VARIANT IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.NOTE_NLP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = NLP_DATE

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
            'NOTE_NLP.NLP_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.NOTE_NLP cdmTable
            
        WHERE cdmTable.NLP_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.NOTE_NLP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_ID

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
            'NOTE_NLP.NOTE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.NOTE_NLP cdmTable
            
        WHERE cdmTable.NOTE_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.NOTE_NLP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'NOTE_NLP.NOTE_NLP_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.NOTE_NLP cdmTable
            
        WHERE cdmTable.NOTE_NLP_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.NOTE_NLP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.OBSERVATION_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATE

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
            'OBSERVATION.OBSERVATION_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.OBSERVATION cdmTable
            
        WHERE cdmTable.OBSERVATION_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'OBSERVATION.OBSERVATION_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.OBSERVATION cdmTable
            
        WHERE cdmTable.OBSERVATION_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.OBSERVATION_TYPE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = PERSON_ID

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
            'OBSERVATION.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.OBSERVATION cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'OBSERVATION_PERIOD.OBSERVATION_PERIOD_END_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.OBSERVATION_PERIOD cdmTable
            
        WHERE cdmTable.OBSERVATION_PERIOD_END_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION_PERIOD cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'OBSERVATION_PERIOD.OBSERVATION_PERIOD_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.OBSERVATION_PERIOD cdmTable
            
        WHERE cdmTable.OBSERVATION_PERIOD_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION_PERIOD cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'OBSERVATION_PERIOD.OBSERVATION_PERIOD_START_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.OBSERVATION_PERIOD cdmTable
            
        WHERE cdmTable.OBSERVATION_PERIOD_START_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION_PERIOD cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.PERIOD_TYPE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION_PERIOD cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERSON_ID

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
            'OBSERVATION_PERIOD.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.OBSERVATION_PERIOD cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.OBSERVATION_PERIOD cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_END_DATE

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
            'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_END_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
            
        WHERE cdmTable.PAYER_PLAN_PERIOD_END_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PAYER_PLAN_PERIOD cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
            
        WHERE cdmTable.PAYER_PLAN_PERIOD_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PAYER_PLAN_PERIOD cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_START_DATE

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
            'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_START_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
            
        WHERE cdmTable.PAYER_PLAN_PERIOD_START_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PAYER_PLAN_PERIOD cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PERSON_ID

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
            'PAYER_PLAN_PERIOD.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PAYER_PLAN_PERIOD cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.ETHNICITY_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PERSON cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.GENDER_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PERSON cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'PERSON.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PERSON cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PERSON cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.RACE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PERSON cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = YEAR_OF_BIRTH

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
            'PERSON.YEAR_OF_BIRTH' AS violating_field, 
            cdmTable.* 
        FROM dbo.PERSON cdmTable
            
        WHERE cdmTable.YEAR_OF_BIRTH IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PERSON cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PERSON_ID

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
            'PROCEDURE_OCCURRENCE.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.PROCEDURE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'PROCEDURE_OCCURRENCE.PROCEDURE_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
            
        WHERE cdmTable.PROCEDURE_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'PROCEDURE_OCCURRENCE.PROCEDURE_OCCURRENCE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
            
        WHERE cdmTable.PROCEDURE_OCCURRENCE_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.PROCEDURE_TYPE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'PROVIDER.PROVIDER_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.PROVIDER cdmTable
            
        WHERE cdmTable.PROVIDER_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.PROVIDER cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = RELATIONSHIP
cdmFieldName = DEFINES_ANCESTRY

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
            'RELATIONSHIP.DEFINES_ANCESTRY' AS violating_field, 
            cdmTable.* 
        FROM dbo.RELATIONSHIP cdmTable
            
        WHERE cdmTable.DEFINES_ANCESTRY IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.RELATIONSHIP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = RELATIONSHIP
cdmFieldName = IS_HIERARCHICAL

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
            'RELATIONSHIP.IS_HIERARCHICAL' AS violating_field, 
            cdmTable.* 
        FROM dbo.RELATIONSHIP cdmTable
            
        WHERE cdmTable.IS_HIERARCHICAL IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.RELATIONSHIP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = RELATIONSHIP
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
            'RELATIONSHIP.RELATIONSHIP_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.RELATIONSHIP cdmTable
            
        WHERE cdmTable.RELATIONSHIP_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.RELATIONSHIP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'RELATIONSHIP.RELATIONSHIP_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.RELATIONSHIP cdmTable
            
        WHERE cdmTable.RELATIONSHIP_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.RELATIONSHIP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = RELATIONSHIP
cdmFieldName = RELATIONSHIP_NAME

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
            'RELATIONSHIP.RELATIONSHIP_NAME' AS violating_field, 
            cdmTable.* 
        FROM dbo.RELATIONSHIP cdmTable
            
        WHERE cdmTable.RELATIONSHIP_NAME IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.RELATIONSHIP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = RELATIONSHIP
cdmFieldName = REVERSE_RELATIONSHIP_ID

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
            'RELATIONSHIP.REVERSE_RELATIONSHIP_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.RELATIONSHIP cdmTable
            
        WHERE cdmTable.REVERSE_RELATIONSHIP_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.RELATIONSHIP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = SOURCE_CODE

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
            'SOURCE_TO_CONCEPT_MAP.SOURCE_CODE' AS violating_field, 
            cdmTable.* 
        FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
            
        WHERE cdmTable.SOURCE_CODE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = SOURCE_CONCEPT_ID

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
            'SOURCE_TO_CONCEPT_MAP.SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
            
        WHERE cdmTable.SOURCE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = SOURCE_VOCABULARY_ID

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
            'SOURCE_TO_CONCEPT_MAP.SOURCE_VOCABULARY_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
            
        WHERE cdmTable.SOURCE_VOCABULARY_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'SOURCE_TO_CONCEPT_MAP.TARGET_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
            
        WHERE cdmTable.TARGET_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = TARGET_VOCABULARY_ID

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
            'SOURCE_TO_CONCEPT_MAP.TARGET_VOCABULARY_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
            
        WHERE cdmTable.TARGET_VOCABULARY_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = VALID_END_DATE

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
            'SOURCE_TO_CONCEPT_MAP.VALID_END_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
            
        WHERE cdmTable.VALID_END_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = VALID_START_DATE

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
            'SOURCE_TO_CONCEPT_MAP.VALID_START_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
            
        WHERE cdmTable.VALID_START_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = PERSON_ID

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
            'SPECIMEN.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.SPECIMEN cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.SPECIMEN cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.SPECIMEN_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.SPECIMEN cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATE

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
            'SPECIMEN.SPECIMEN_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.SPECIMEN cdmTable
            
        WHERE cdmTable.SPECIMEN_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.SPECIMEN cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'SPECIMEN.SPECIMEN_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.SPECIMEN cdmTable
            
        WHERE cdmTable.SPECIMEN_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.SPECIMEN cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.SPECIMEN_TYPE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.SPECIMEN cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = PERSON_ID

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
            'VISIT_DETAIL.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_DETAIL cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.VISIT_DETAIL_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_DETAIL.VISIT_DETAIL_END_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_DETAIL cdmTable
            
        WHERE cdmTable.VISIT_DETAIL_END_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_DETAIL.VISIT_DETAIL_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_DETAIL cdmTable
            
        WHERE cdmTable.VISIT_DETAIL_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_DETAIL.VISIT_DETAIL_START_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_DETAIL cdmTable
            
        WHERE cdmTable.VISIT_DETAIL_START_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.VISIT_DETAIL_TYPE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_OCCURRENCE_ID

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
            'VISIT_DETAIL.VISIT_OCCURRENCE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_DETAIL cdmTable
            
        WHERE cdmTable.VISIT_OCCURRENCE_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_DETAIL cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PERSON_ID

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
            'VISIT_OCCURRENCE.PERSON_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
        WHERE cdmTable.PERSON_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.VISIT_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_OCCURRENCE.VISIT_END_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
        WHERE cdmTable.VISIT_END_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_OCCURRENCE.VISIT_OCCURRENCE_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
        WHERE cdmTable.VISIT_OCCURRENCE_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VISIT_OCCURRENCE.VISIT_START_DATE' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
        WHERE cdmTable.VISIT_START_DATE IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
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
            
        WHERE cdmTable.VISIT_TYPE_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = VOCABULARY
cdmFieldName = VOCABULARY_CONCEPT_ID

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
            'VOCABULARY.VOCABULARY_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VOCABULARY cdmTable
            
        WHERE cdmTable.VOCABULARY_CONCEPT_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VOCABULARY cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

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
FROM (
    SELECT 
        COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
    FROM (
        /*violatedRowsBegin*/
        SELECT 
            'VOCABULARY.VOCABULARY_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VOCABULARY cdmTable
            
        WHERE cdmTable.VOCABULARY_ID IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VOCABULARY cdmTable
        
) denominator
;


/*********
FIELD_IS_REQUIRED

Check that values in fields where isRequired == TRUE are non-null

Parameters used in this template:
schema = dbo
cdmTableName = VOCABULARY
cdmFieldName = VOCABULARY_NAME

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
            'VOCABULARY.VOCABULARY_NAME' AS violating_field, 
            cdmTable.* 
        FROM dbo.VOCABULARY cdmTable
            
        WHERE cdmTable.VOCABULARY_NAME IS NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VOCABULARY cdmTable
        
) denominator
;

