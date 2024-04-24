
/*********
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = CARE_SITE
cdmFieldName = LOCATION_ID
fkTableName = LOCATION
fkFieldName = LOCATION_ID

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
            'CARE_SITE.LOCATION_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CARE_SITE cdmTable
            
            LEFT JOIN 
                
                
                dbo.LOCATION fkTable 
                ON cdmTable.LOCATION_ID = fkTable.LOCATION_ID
        WHERE fkTable.LOCATION_ID IS NULL 
            AND cdmTable.LOCATION_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CARE_SITE
cdmFieldName = PLACE_OF_SERVICE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'CARE_SITE.PLACE_OF_SERVICE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CARE_SITE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.PLACE_OF_SERVICE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.PLACE_OF_SERVICE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_VERSION_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'CDM_SOURCE.CDM_VERSION_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CDM_SOURCE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.CDM_VERSION_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.CDM_VERSION_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = COHORT_DEFINITION
cdmFieldName = COHORT_DEFINITION_ID
fkTableName = COHORT
fkFieldName = COHORT_DEFINITION_ID

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
            'COHORT_DEFINITION.COHORT_DEFINITION_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.COHORT_DEFINITION cdmTable
            
            LEFT JOIN 
                
                dbo.COHORT fkTable
                 
                ON cdmTable.COHORT_DEFINITION_ID = fkTable.COHORT_DEFINITION_ID
        WHERE fkTable.COHORT_DEFINITION_ID IS NULL 
            AND cdmTable.COHORT_DEFINITION_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = COHORT_DEFINITION
cdmFieldName = DEFINITION_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'COHORT_DEFINITION.DEFINITION_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.COHORT_DEFINITION cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DEFINITION_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DEFINITION_TYPE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = COHORT_DEFINITION
cdmFieldName = SUBJECT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'COHORT_DEFINITION.SUBJECT_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.COHORT_DEFINITION cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.SUBJECT_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.SUBJECT_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONCEPT
cdmFieldName = CONCEPT_CLASS_ID
fkTableName = CONCEPT_CLASS
fkFieldName = CONCEPT_CLASS_ID

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
            'CONCEPT.CONCEPT_CLASS_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONCEPT cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT_CLASS fkTable
                
                 
                ON cdmTable.CONCEPT_CLASS_ID = fkTable.CONCEPT_CLASS_ID
        WHERE fkTable.CONCEPT_CLASS_ID IS NULL 
            AND cdmTable.CONCEPT_CLASS_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONCEPT
cdmFieldName = DOMAIN_ID
fkTableName = DOMAIN
fkFieldName = DOMAIN_ID

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
            'CONCEPT.DOMAIN_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONCEPT cdmTable
            
            LEFT JOIN 
                dbo.DOMAIN fkTable
                
                 
                ON cdmTable.DOMAIN_ID = fkTable.DOMAIN_ID
        WHERE fkTable.DOMAIN_ID IS NULL 
            AND cdmTable.DOMAIN_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONCEPT
cdmFieldName = VOCABULARY_ID
fkTableName = VOCABULARY
fkFieldName = VOCABULARY_ID

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
            'CONCEPT.VOCABULARY_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONCEPT cdmTable
            
            LEFT JOIN 
                dbo.VOCABULARY fkTable
                
                 
                ON cdmTable.VOCABULARY_ID = fkTable.VOCABULARY_ID
        WHERE fkTable.VOCABULARY_ID IS NULL 
            AND cdmTable.VOCABULARY_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONCEPT_ANCESTOR
cdmFieldName = ANCESTOR_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'CONCEPT_ANCESTOR.ANCESTOR_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONCEPT_ANCESTOR cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.ANCESTOR_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.ANCESTOR_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONCEPT_ANCESTOR
cdmFieldName = DESCENDANT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'CONCEPT_ANCESTOR.DESCENDANT_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONCEPT_ANCESTOR cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DESCENDANT_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DESCENDANT_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONCEPT_CLASS
cdmFieldName = CONCEPT_CLASS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'CONCEPT_CLASS.CONCEPT_CLASS_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONCEPT_CLASS cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.CONCEPT_CLASS_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.CONCEPT_CLASS_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONCEPT_RELATIONSHIP
cdmFieldName = CONCEPT_ID_1
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'CONCEPT_RELATIONSHIP.CONCEPT_ID_1' AS violating_field, 
            cdmTable.*
        FROM dbo.CONCEPT_RELATIONSHIP cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.CONCEPT_ID_1 = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.CONCEPT_ID_1 IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONCEPT_RELATIONSHIP
cdmFieldName = CONCEPT_ID_2
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'CONCEPT_RELATIONSHIP.CONCEPT_ID_2' AS violating_field, 
            cdmTable.*
        FROM dbo.CONCEPT_RELATIONSHIP cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.CONCEPT_ID_2 = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.CONCEPT_ID_2 IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONCEPT_RELATIONSHIP
cdmFieldName = RELATIONSHIP_ID
fkTableName = RELATIONSHIP
fkFieldName = RELATIONSHIP_ID

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
            'CONCEPT_RELATIONSHIP.RELATIONSHIP_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONCEPT_RELATIONSHIP cdmTable
            
            LEFT JOIN 
                dbo.RELATIONSHIP fkTable
                
                 
                ON cdmTable.RELATIONSHIP_ID = fkTable.RELATIONSHIP_ID
        WHERE fkTable.RELATIONSHIP_ID IS NULL 
            AND cdmTable.RELATIONSHIP_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONCEPT_SYNONYM
cdmFieldName = CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'CONCEPT_SYNONYM.CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONCEPT_SYNONYM cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONCEPT_SYNONYM
cdmFieldName = LANGUAGE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'CONCEPT_SYNONYM.LANGUAGE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONCEPT_SYNONYM cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.LANGUAGE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.LANGUAGE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'CONDITION_ERA.CONDITION_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_ERA cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.CONDITION_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.CONDITION_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = CONDITION_ERA
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID

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
            'CONDITION_ERA.PERSON_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_ERA cdmTable
            
            LEFT JOIN 
                
                
                dbo.PERSON fkTable 
                ON cdmTable.PERSON_ID = fkTable.PERSON_ID
        WHERE fkTable.PERSON_ID IS NULL 
            AND cdmTable.PERSON_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'CONDITION_OCCURRENCE.CONDITION_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_OCCURRENCE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.CONDITION_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.CONDITION_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'CONDITION_OCCURRENCE.CONDITION_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_OCCURRENCE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.CONDITION_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.CONDITION_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_STATUS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'CONDITION_OCCURRENCE.CONDITION_STATUS_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_OCCURRENCE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.CONDITION_STATUS_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.CONDITION_STATUS_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'CONDITION_OCCURRENCE.CONDITION_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_OCCURRENCE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.CONDITION_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.CONDITION_TYPE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID

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
            'CONDITION_OCCURRENCE.PERSON_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_OCCURRENCE cdmTable
            
            LEFT JOIN 
                
                
                dbo.PERSON fkTable 
                ON cdmTable.PERSON_ID = fkTable.PERSON_ID
        WHERE fkTable.PERSON_ID IS NULL 
            AND cdmTable.PERSON_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID

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
            'CONDITION_OCCURRENCE.PROVIDER_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_OCCURRENCE cdmTable
            
            LEFT JOIN 
                
                
                dbo.PROVIDER fkTable 
                ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
        WHERE fkTable.PROVIDER_ID IS NULL 
            AND cdmTable.PROVIDER_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID

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
            'CONDITION_OCCURRENCE.VISIT_DETAIL_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_OCCURRENCE cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_DETAIL fkTable 
                ON cdmTable.VISIT_DETAIL_ID = fkTable.VISIT_DETAIL_ID
        WHERE fkTable.VISIT_DETAIL_ID IS NULL 
            AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID

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
            'CONDITION_OCCURRENCE.VISIT_OCCURRENCE_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.CONDITION_OCCURRENCE cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_OCCURRENCE fkTable 
                ON cdmTable.VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
        WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
            AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = COST
cdmFieldName = COST_DOMAIN_ID
fkTableName = DOMAIN
fkFieldName = DOMAIN_ID

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
            'COST.COST_DOMAIN_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.COST cdmTable
            
            LEFT JOIN 
                dbo.DOMAIN fkTable
                
                 
                ON cdmTable.COST_DOMAIN_ID = fkTable.DOMAIN_ID
        WHERE fkTable.DOMAIN_ID IS NULL 
            AND cdmTable.COST_DOMAIN_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = COST
cdmFieldName = COST_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'COST.COST_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.COST cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.COST_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.COST_TYPE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = COST
cdmFieldName = CURRENCY_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'COST.CURRENCY_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.COST cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.CURRENCY_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.CURRENCY_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = COST
cdmFieldName = DRG_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'COST.DRG_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.COST cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DRG_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DRG_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = COST
cdmFieldName = REVENUE_CODE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'COST.REVENUE_CODE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.COST cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.REVENUE_CODE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.REVENUE_CODE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DEATH
cdmFieldName = CAUSE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DEATH.CAUSE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DEATH cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.CAUSE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.CAUSE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DEATH
cdmFieldName = CAUSE_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DEATH.CAUSE_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DEATH cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.CAUSE_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.CAUSE_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DEATH
cdmFieldName = DEATH_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DEATH.DEATH_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DEATH cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DEATH_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DEATH_TYPE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = DEATH
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID

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
            'DEATH.PERSON_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DEATH cdmTable
            
            LEFT JOIN 
                
                
                dbo.PERSON fkTable 
                ON cdmTable.PERSON_ID = fkTable.PERSON_ID
        WHERE fkTable.PERSON_ID IS NULL 
            AND cdmTable.PERSON_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DEVICE_EXPOSURE.DEVICE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DEVICE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DEVICE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DEVICE_EXPOSURE.DEVICE_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DEVICE_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DEVICE_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DEVICE_EXPOSURE.DEVICE_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DEVICE_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DEVICE_TYPE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID

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
            'DEVICE_EXPOSURE.PERSON_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
            
            LEFT JOIN 
                
                
                dbo.PERSON fkTable 
                ON cdmTable.PERSON_ID = fkTable.PERSON_ID
        WHERE fkTable.PERSON_ID IS NULL 
            AND cdmTable.PERSON_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = DEVICE_EXPOSURE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID

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
            'DEVICE_EXPOSURE.PROVIDER_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
            
            LEFT JOIN 
                
                
                dbo.PROVIDER fkTable 
                ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
        WHERE fkTable.PROVIDER_ID IS NULL 
            AND cdmTable.PROVIDER_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DEVICE_EXPOSURE.UNIT_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.UNIT_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.UNIT_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = UNIT_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DEVICE_EXPOSURE.UNIT_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.UNIT_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.UNIT_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = DEVICE_EXPOSURE
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID

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
            'DEVICE_EXPOSURE.VISIT_DETAIL_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_DETAIL fkTable 
                ON cdmTable.VISIT_DETAIL_ID = fkTable.VISIT_DETAIL_ID
        WHERE fkTable.VISIT_DETAIL_ID IS NULL 
            AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = DEVICE_EXPOSURE
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID

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
            'DEVICE_EXPOSURE.VISIT_OCCURRENCE_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DEVICE_EXPOSURE cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_OCCURRENCE fkTable 
                ON cdmTable.VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
        WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
            AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DOMAIN
cdmFieldName = DOMAIN_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DOMAIN.DOMAIN_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DOMAIN cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DOMAIN_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DOMAIN_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DOSE_ERA.DRUG_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DOSE_ERA cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DRUG_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DRUG_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = DOSE_ERA
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID

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
            'DOSE_ERA.PERSON_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DOSE_ERA cdmTable
            
            LEFT JOIN 
                
                
                dbo.PERSON fkTable 
                ON cdmTable.PERSON_ID = fkTable.PERSON_ID
        WHERE fkTable.PERSON_ID IS NULL 
            AND cdmTable.PERSON_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DOSE_ERA.UNIT_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DOSE_ERA cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.UNIT_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.UNIT_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DRUG_ERA.DRUG_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_ERA cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DRUG_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DRUG_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = DRUG_ERA
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID

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
            'DRUG_ERA.PERSON_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_ERA cdmTable
            
            LEFT JOIN 
                
                
                dbo.PERSON fkTable 
                ON cdmTable.PERSON_ID = fkTable.PERSON_ID
        WHERE fkTable.PERSON_ID IS NULL 
            AND cdmTable.PERSON_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DRUG_EXPOSURE.DRUG_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DRUG_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DRUG_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DRUG_EXPOSURE.DRUG_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DRUG_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DRUG_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DRUG_EXPOSURE.DRUG_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DRUG_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DRUG_TYPE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = DRUG_EXPOSURE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID

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
            'DRUG_EXPOSURE.PERSON_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
            
            LEFT JOIN 
                
                
                dbo.PERSON fkTable 
                ON cdmTable.PERSON_ID = fkTable.PERSON_ID
        WHERE fkTable.PERSON_ID IS NULL 
            AND cdmTable.PERSON_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = DRUG_EXPOSURE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID

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
            'DRUG_EXPOSURE.PROVIDER_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
            
            LEFT JOIN 
                
                
                dbo.PROVIDER fkTable 
                ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
        WHERE fkTable.PROVIDER_ID IS NULL 
            AND cdmTable.PROVIDER_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DRUG_EXPOSURE.ROUTE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.ROUTE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.ROUTE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = DRUG_EXPOSURE
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID

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
            'DRUG_EXPOSURE.VISIT_DETAIL_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_DETAIL fkTable 
                ON cdmTable.VISIT_DETAIL_ID = fkTable.VISIT_DETAIL_ID
        WHERE fkTable.VISIT_DETAIL_ID IS NULL 
            AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = DRUG_EXPOSURE
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID

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
            'DRUG_EXPOSURE.VISIT_OCCURRENCE_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_EXPOSURE cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_OCCURRENCE fkTable 
                ON cdmTable.VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
        WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
            AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_STRENGTH
cdmFieldName = AMOUNT_UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DRUG_STRENGTH.AMOUNT_UNIT_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_STRENGTH cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.AMOUNT_UNIT_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.AMOUNT_UNIT_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_STRENGTH
cdmFieldName = DENOMINATOR_UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DRUG_STRENGTH.DENOMINATOR_UNIT_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_STRENGTH cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DENOMINATOR_UNIT_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DENOMINATOR_UNIT_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_STRENGTH
cdmFieldName = DRUG_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DRUG_STRENGTH.DRUG_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_STRENGTH cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DRUG_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DRUG_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_STRENGTH
cdmFieldName = INGREDIENT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DRUG_STRENGTH.INGREDIENT_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_STRENGTH cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.INGREDIENT_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.INGREDIENT_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_STRENGTH
cdmFieldName = NUMERATOR_UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'DRUG_STRENGTH.NUMERATOR_UNIT_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.DRUG_STRENGTH cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.NUMERATOR_UNIT_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.NUMERATOR_UNIT_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = EPISODE
cdmFieldName = EPISODE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'EPISODE.EPISODE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.EPISODE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.EPISODE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.EPISODE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = EPISODE
cdmFieldName = EPISODE_OBJECT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'EPISODE.EPISODE_OBJECT_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.EPISODE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.EPISODE_OBJECT_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.EPISODE_OBJECT_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = EPISODE
cdmFieldName = EPISODE_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'EPISODE.EPISODE_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.EPISODE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.EPISODE_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.EPISODE_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = EPISODE
cdmFieldName = EPISODE_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'EPISODE.EPISODE_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.EPISODE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.EPISODE_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.EPISODE_TYPE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = EPISODE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID

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
            'EPISODE.PERSON_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.EPISODE cdmTable
            
            LEFT JOIN 
                
                
                dbo.PERSON fkTable 
                ON cdmTable.PERSON_ID = fkTable.PERSON_ID
        WHERE fkTable.PERSON_ID IS NULL 
            AND cdmTable.PERSON_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = EPISODE_EVENT
cdmFieldName = EPISODE_EVENT_FIELD_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'EPISODE_EVENT.EPISODE_EVENT_FIELD_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.EPISODE_EVENT cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.EPISODE_EVENT_FIELD_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.EPISODE_EVENT_FIELD_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = EPISODE_EVENT
cdmFieldName = EPISODE_ID
fkTableName = EPISODE
fkFieldName = EPISODE_ID

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
            'EPISODE_EVENT.EPISODE_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.EPISODE_EVENT cdmTable
            
            LEFT JOIN 
                
                
                dbo.EPISODE fkTable 
                ON cdmTable.EPISODE_ID = fkTable.EPISODE_ID
        WHERE fkTable.EPISODE_ID IS NULL 
            AND cdmTable.EPISODE_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_1
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'FACT_RELATIONSHIP.DOMAIN_CONCEPT_ID_1' AS violating_field, 
            cdmTable.*
        FROM dbo.FACT_RELATIONSHIP cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DOMAIN_CONCEPT_ID_1 = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DOMAIN_CONCEPT_ID_1 IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = DOMAIN_CONCEPT_ID_2
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'FACT_RELATIONSHIP.DOMAIN_CONCEPT_ID_2' AS violating_field, 
            cdmTable.*
        FROM dbo.FACT_RELATIONSHIP cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DOMAIN_CONCEPT_ID_2 = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DOMAIN_CONCEPT_ID_2 IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = FACT_RELATIONSHIP
cdmFieldName = RELATIONSHIP_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'FACT_RELATIONSHIP.RELATIONSHIP_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.FACT_RELATIONSHIP cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.RELATIONSHIP_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.RELATIONSHIP_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = LOCATION
cdmFieldName = COUNTRY_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'LOCATION.COUNTRY_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.LOCATION cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.COUNTRY_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.COUNTRY_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEAS_EVENT_FIELD_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'MEASUREMENT.MEAS_EVENT_FIELD_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.MEASUREMENT cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.MEAS_EVENT_FIELD_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.MEAS_EVENT_FIELD_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'MEASUREMENT.MEASUREMENT_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.MEASUREMENT cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.MEASUREMENT_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.MEASUREMENT_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'MEASUREMENT.MEASUREMENT_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.MEASUREMENT cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.MEASUREMENT_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.MEASUREMENT_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'MEASUREMENT.MEASUREMENT_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.MEASUREMENT cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.MEASUREMENT_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.MEASUREMENT_TYPE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = OPERATOR_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'MEASUREMENT.OPERATOR_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.MEASUREMENT cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.OPERATOR_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.OPERATOR_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = MEASUREMENT
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID

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
            'MEASUREMENT.PERSON_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.MEASUREMENT cdmTable
            
            LEFT JOIN 
                
                
                dbo.PERSON fkTable 
                ON cdmTable.PERSON_ID = fkTable.PERSON_ID
        WHERE fkTable.PERSON_ID IS NULL 
            AND cdmTable.PERSON_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = MEASUREMENT
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID

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
            'MEASUREMENT.PROVIDER_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.MEASUREMENT cdmTable
            
            LEFT JOIN 
                
                
                dbo.PROVIDER fkTable 
                ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
        WHERE fkTable.PROVIDER_ID IS NULL 
            AND cdmTable.PROVIDER_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'MEASUREMENT.UNIT_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.MEASUREMENT cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.UNIT_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.UNIT_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'MEASUREMENT.UNIT_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.MEASUREMENT cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.UNIT_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.UNIT_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = VALUE_AS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'MEASUREMENT.VALUE_AS_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.MEASUREMENT cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.VALUE_AS_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.VALUE_AS_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = MEASUREMENT
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID

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
            'MEASUREMENT.VISIT_DETAIL_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.MEASUREMENT cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_DETAIL fkTable 
                ON cdmTable.VISIT_DETAIL_ID = fkTable.VISIT_DETAIL_ID
        WHERE fkTable.VISIT_DETAIL_ID IS NULL 
            AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = MEASUREMENT
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID

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
            'MEASUREMENT.VISIT_OCCURRENCE_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.MEASUREMENT cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_OCCURRENCE fkTable 
                ON cdmTable.VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
        WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
            AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = METADATA
cdmFieldName = METADATA_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'METADATA.METADATA_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.METADATA cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.METADATA_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.METADATA_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = METADATA
cdmFieldName = METADATA_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'METADATA.METADATA_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.METADATA cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.METADATA_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.METADATA_TYPE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = METADATA
cdmFieldName = VALUE_AS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'METADATA.VALUE_AS_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.METADATA cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.VALUE_AS_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.VALUE_AS_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = NOTE
cdmFieldName = ENCODING_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'NOTE.ENCODING_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.NOTE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.ENCODING_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.ENCODING_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = NOTE
cdmFieldName = LANGUAGE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'NOTE.LANGUAGE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.NOTE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.LANGUAGE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.LANGUAGE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_CLASS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'NOTE.NOTE_CLASS_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.NOTE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.NOTE_CLASS_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.NOTE_CLASS_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_EVENT_FIELD_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'NOTE.NOTE_EVENT_FIELD_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.NOTE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.NOTE_EVENT_FIELD_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.NOTE_EVENT_FIELD_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'NOTE.NOTE_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.NOTE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.NOTE_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.NOTE_TYPE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = NOTE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID

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
            'NOTE.PERSON_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.NOTE cdmTable
            
            LEFT JOIN 
                
                
                dbo.PERSON fkTable 
                ON cdmTable.PERSON_ID = fkTable.PERSON_ID
        WHERE fkTable.PERSON_ID IS NULL 
            AND cdmTable.PERSON_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = NOTE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID

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
            'NOTE.PROVIDER_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.NOTE cdmTable
            
            LEFT JOIN 
                
                
                dbo.PROVIDER fkTable 
                ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
        WHERE fkTable.PROVIDER_ID IS NULL 
            AND cdmTable.PROVIDER_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = NOTE
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID

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
            'NOTE.VISIT_DETAIL_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.NOTE cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_DETAIL fkTable 
                ON cdmTable.VISIT_DETAIL_ID = fkTable.VISIT_DETAIL_ID
        WHERE fkTable.VISIT_DETAIL_ID IS NULL 
            AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = NOTE
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID

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
            'NOTE.VISIT_OCCURRENCE_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.NOTE cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_OCCURRENCE fkTable 
                ON cdmTable.VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
        WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
            AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'NOTE_NLP.NOTE_NLP_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.NOTE_NLP cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.NOTE_NLP_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.NOTE_NLP_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'NOTE_NLP.NOTE_NLP_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.NOTE_NLP cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.NOTE_NLP_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.NOTE_NLP_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = SECTION_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'NOTE_NLP.SECTION_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.NOTE_NLP cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.SECTION_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.SECTION_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBS_EVENT_FIELD_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'OBSERVATION.OBS_EVENT_FIELD_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.OBS_EVENT_FIELD_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.OBS_EVENT_FIELD_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'OBSERVATION.OBSERVATION_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.OBSERVATION_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.OBSERVATION_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'OBSERVATION.OBSERVATION_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.OBSERVATION_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.OBSERVATION_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'OBSERVATION.OBSERVATION_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.OBSERVATION_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.OBSERVATION_TYPE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = OBSERVATION
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID

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
            'OBSERVATION.PERSON_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION cdmTable
            
            LEFT JOIN 
                
                
                dbo.PERSON fkTable 
                ON cdmTable.PERSON_ID = fkTable.PERSON_ID
        WHERE fkTable.PERSON_ID IS NULL 
            AND cdmTable.PERSON_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = OBSERVATION
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID

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
            'OBSERVATION.PROVIDER_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION cdmTable
            
            LEFT JOIN 
                
                
                dbo.PROVIDER fkTable 
                ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
        WHERE fkTable.PROVIDER_ID IS NULL 
            AND cdmTable.PROVIDER_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = QUALIFIER_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'OBSERVATION.QUALIFIER_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.QUALIFIER_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.QUALIFIER_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'OBSERVATION.UNIT_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.UNIT_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.UNIT_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = VALUE_AS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'OBSERVATION.VALUE_AS_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.VALUE_AS_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.VALUE_AS_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = OBSERVATION
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID

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
            'OBSERVATION.VISIT_DETAIL_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_DETAIL fkTable 
                ON cdmTable.VISIT_DETAIL_ID = fkTable.VISIT_DETAIL_ID
        WHERE fkTable.VISIT_DETAIL_ID IS NULL 
            AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = OBSERVATION
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID

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
            'OBSERVATION.VISIT_OCCURRENCE_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_OCCURRENCE fkTable 
                ON cdmTable.VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
        WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
            AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERIOD_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'OBSERVATION_PERIOD.PERIOD_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION_PERIOD cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.PERIOD_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.PERIOD_TYPE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID

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
            'OBSERVATION_PERIOD.PERSON_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.OBSERVATION_PERIOD cdmTable
            
            LEFT JOIN 
                
                
                dbo.PERSON fkTable 
                ON cdmTable.PERSON_ID = fkTable.PERSON_ID
        WHERE fkTable.PERSON_ID IS NULL 
            AND cdmTable.PERSON_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PAYER_PLAN_PERIOD.PAYER_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.PAYER_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.PAYER_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PAYER_PLAN_PERIOD.PAYER_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.PAYER_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.PAYER_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID

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
            'PAYER_PLAN_PERIOD.PERSON_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
            
            LEFT JOIN 
                
                
                dbo.PERSON fkTable 
                ON cdmTable.PERSON_ID = fkTable.PERSON_ID
        WHERE fkTable.PERSON_ID IS NULL 
            AND cdmTable.PERSON_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PAYER_PLAN_PERIOD.PLAN_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.PLAN_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.PLAN_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PAYER_PLAN_PERIOD.PLAN_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.PLAN_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.PLAN_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PAYER_PLAN_PERIOD.SPONSOR_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.SPONSOR_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.SPONSOR_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PAYER_PLAN_PERIOD.SPONSOR_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.SPONSOR_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.SPONSOR_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PAYER_PLAN_PERIOD.STOP_REASON_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.STOP_REASON_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.STOP_REASON_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PAYER_PLAN_PERIOD.STOP_REASON_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PAYER_PLAN_PERIOD cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.STOP_REASON_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.STOP_REASON_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = PERSON
cdmFieldName = CARE_SITE_ID
fkTableName = CARE_SITE
fkFieldName = CARE_SITE_ID

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
            'PERSON.CARE_SITE_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PERSON cdmTable
            
            LEFT JOIN 
                
                
                dbo.CARE_SITE fkTable 
                ON cdmTable.CARE_SITE_ID = fkTable.CARE_SITE_ID
        WHERE fkTable.CARE_SITE_ID IS NULL 
            AND cdmTable.CARE_SITE_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PERSON
cdmFieldName = ETHNICITY_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PERSON.ETHNICITY_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PERSON cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.ETHNICITY_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.ETHNICITY_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PERSON
cdmFieldName = ETHNICITY_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PERSON.ETHNICITY_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PERSON cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.ETHNICITY_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.ETHNICITY_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PERSON
cdmFieldName = GENDER_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PERSON.GENDER_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PERSON cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.GENDER_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.GENDER_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PERSON
cdmFieldName = GENDER_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PERSON.GENDER_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PERSON cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.GENDER_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.GENDER_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = PERSON
cdmFieldName = LOCATION_ID
fkTableName = LOCATION
fkFieldName = LOCATION_ID

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
            'PERSON.LOCATION_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PERSON cdmTable
            
            LEFT JOIN 
                
                
                dbo.LOCATION fkTable 
                ON cdmTable.LOCATION_ID = fkTable.LOCATION_ID
        WHERE fkTable.LOCATION_ID IS NULL 
            AND cdmTable.LOCATION_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = PERSON
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID

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
            'PERSON.PROVIDER_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PERSON cdmTable
            
            LEFT JOIN 
                
                
                dbo.PROVIDER fkTable 
                ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
        WHERE fkTable.PROVIDER_ID IS NULL 
            AND cdmTable.PROVIDER_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PERSON
cdmFieldName = RACE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PERSON.RACE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PERSON cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.RACE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.RACE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PERSON
cdmFieldName = RACE_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PERSON.RACE_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PERSON cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.RACE_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.RACE_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = MODIFIER_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PROCEDURE_OCCURRENCE.MODIFIER_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.MODIFIER_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.MODIFIER_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID

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
            'PROCEDURE_OCCURRENCE.PERSON_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
            
            LEFT JOIN 
                
                
                dbo.PERSON fkTable 
                ON cdmTable.PERSON_ID = fkTable.PERSON_ID
        WHERE fkTable.PERSON_ID IS NULL 
            AND cdmTable.PERSON_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PROCEDURE_OCCURRENCE.PROCEDURE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.PROCEDURE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.PROCEDURE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PROCEDURE_OCCURRENCE.PROCEDURE_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.PROCEDURE_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.PROCEDURE_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PROCEDURE_OCCURRENCE.PROCEDURE_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.PROCEDURE_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.PROCEDURE_TYPE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID

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
            'PROCEDURE_OCCURRENCE.PROVIDER_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
            
            LEFT JOIN 
                
                
                dbo.PROVIDER fkTable 
                ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
        WHERE fkTable.PROVIDER_ID IS NULL 
            AND cdmTable.PROVIDER_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID

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
            'PROCEDURE_OCCURRENCE.VISIT_DETAIL_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_DETAIL fkTable 
                ON cdmTable.VISIT_DETAIL_ID = fkTable.VISIT_DETAIL_ID
        WHERE fkTable.VISIT_DETAIL_ID IS NULL 
            AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID

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
            'PROCEDURE_OCCURRENCE.VISIT_OCCURRENCE_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PROCEDURE_OCCURRENCE cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_OCCURRENCE fkTable 
                ON cdmTable.VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
        WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
            AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = PROVIDER
cdmFieldName = CARE_SITE_ID
fkTableName = CARE_SITE
fkFieldName = CARE_SITE_ID

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
            'PROVIDER.CARE_SITE_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PROVIDER cdmTable
            
            LEFT JOIN 
                
                
                dbo.CARE_SITE fkTable 
                ON cdmTable.CARE_SITE_ID = fkTable.CARE_SITE_ID
        WHERE fkTable.CARE_SITE_ID IS NULL 
            AND cdmTable.CARE_SITE_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PROVIDER
cdmFieldName = GENDER_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PROVIDER.GENDER_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PROVIDER cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.GENDER_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.GENDER_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PROVIDER
cdmFieldName = GENDER_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PROVIDER.GENDER_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PROVIDER cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.GENDER_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.GENDER_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PROVIDER.SPECIALTY_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PROVIDER cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.SPECIALTY_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.SPECIALTY_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'PROVIDER.SPECIALTY_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.PROVIDER cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.SPECIALTY_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.SPECIALTY_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = RELATIONSHIP
cdmFieldName = RELATIONSHIP_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'RELATIONSHIP.RELATIONSHIP_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.RELATIONSHIP cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.RELATIONSHIP_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.RELATIONSHIP_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'SOURCE_TO_CONCEPT_MAP.SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = TARGET_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'SOURCE_TO_CONCEPT_MAP.TARGET_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.TARGET_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.TARGET_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = SOURCE_TO_CONCEPT_MAP
cdmFieldName = TARGET_VOCABULARY_ID
fkTableName = VOCABULARY
fkFieldName = VOCABULARY_ID

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
            'SOURCE_TO_CONCEPT_MAP.TARGET_VOCABULARY_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.SOURCE_TO_CONCEPT_MAP cdmTable
            
            LEFT JOIN 
                dbo.VOCABULARY fkTable
                
                 
                ON cdmTable.TARGET_VOCABULARY_ID = fkTable.VOCABULARY_ID
        WHERE fkTable.VOCABULARY_ID IS NULL 
            AND cdmTable.TARGET_VOCABULARY_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = SPECIMEN
cdmFieldName = ANATOMIC_SITE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'SPECIMEN.ANATOMIC_SITE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.SPECIMEN cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.ANATOMIC_SITE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.ANATOMIC_SITE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = SPECIMEN
cdmFieldName = DISEASE_STATUS_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'SPECIMEN.DISEASE_STATUS_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.SPECIMEN cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DISEASE_STATUS_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DISEASE_STATUS_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = SPECIMEN
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID

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
            'SPECIMEN.PERSON_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.SPECIMEN cdmTable
            
            LEFT JOIN 
                
                
                dbo.PERSON fkTable 
                ON cdmTable.PERSON_ID = fkTable.PERSON_ID
        WHERE fkTable.PERSON_ID IS NULL 
            AND cdmTable.PERSON_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'SPECIMEN.SPECIMEN_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.SPECIMEN cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.SPECIMEN_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.SPECIMEN_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'SPECIMEN.SPECIMEN_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.SPECIMEN cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.SPECIMEN_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.SPECIMEN_TYPE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = SPECIMEN
cdmFieldName = UNIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'SPECIMEN.UNIT_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.SPECIMEN cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.UNIT_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.UNIT_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = ADMITTED_FROM_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'VISIT_DETAIL.ADMITTED_FROM_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.ADMITTED_FROM_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.ADMITTED_FROM_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = VISIT_DETAIL
cdmFieldName = CARE_SITE_ID
fkTableName = CARE_SITE
fkFieldName = CARE_SITE_ID

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
            'VISIT_DETAIL.CARE_SITE_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
            
            LEFT JOIN 
                
                
                dbo.CARE_SITE fkTable 
                ON cdmTable.CARE_SITE_ID = fkTable.CARE_SITE_ID
        WHERE fkTable.CARE_SITE_ID IS NULL 
            AND cdmTable.CARE_SITE_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = DISCHARGED_TO_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'VISIT_DETAIL.DISCHARGED_TO_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DISCHARGED_TO_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DISCHARGED_TO_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = VISIT_DETAIL
cdmFieldName = PARENT_VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID

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
            'VISIT_DETAIL.PARENT_VISIT_DETAIL_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_DETAIL fkTable 
                ON cdmTable.PARENT_VISIT_DETAIL_ID = fkTable.VISIT_DETAIL_ID
        WHERE fkTable.VISIT_DETAIL_ID IS NULL 
            AND cdmTable.PARENT_VISIT_DETAIL_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = VISIT_DETAIL
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID

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
            'VISIT_DETAIL.PERSON_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
            
            LEFT JOIN 
                
                
                dbo.PERSON fkTable 
                ON cdmTable.PERSON_ID = fkTable.PERSON_ID
        WHERE fkTable.PERSON_ID IS NULL 
            AND cdmTable.PERSON_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = VISIT_DETAIL
cdmFieldName = PRECEDING_VISIT_DETAIL_ID
fkTableName = VISIT_DETAIL
fkFieldName = VISIT_DETAIL_ID

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
            'VISIT_DETAIL.PRECEDING_VISIT_DETAIL_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_DETAIL fkTable 
                ON cdmTable.PRECEDING_VISIT_DETAIL_ID = fkTable.VISIT_DETAIL_ID
        WHERE fkTable.VISIT_DETAIL_ID IS NULL 
            AND cdmTable.PRECEDING_VISIT_DETAIL_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = VISIT_DETAIL
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID

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
            'VISIT_DETAIL.PROVIDER_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
            
            LEFT JOIN 
                
                
                dbo.PROVIDER fkTable 
                ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
        WHERE fkTable.PROVIDER_ID IS NULL 
            AND cdmTable.PROVIDER_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'VISIT_DETAIL.VISIT_DETAIL_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.VISIT_DETAIL_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.VISIT_DETAIL_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'VISIT_DETAIL.VISIT_DETAIL_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.VISIT_DETAIL_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.VISIT_DETAIL_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'VISIT_DETAIL.VISIT_DETAIL_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.VISIT_DETAIL_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.VISIT_DETAIL_TYPE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID

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
            'VISIT_DETAIL.VISIT_OCCURRENCE_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_DETAIL cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_OCCURRENCE fkTable 
                ON cdmTable.VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
        WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
            AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = ADMITTED_FROM_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'VISIT_OCCURRENCE.ADMITTED_FROM_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.ADMITTED_FROM_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.ADMITTED_FROM_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = VISIT_OCCURRENCE
cdmFieldName = CARE_SITE_ID
fkTableName = CARE_SITE
fkFieldName = CARE_SITE_ID

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
            'VISIT_OCCURRENCE.CARE_SITE_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
            LEFT JOIN 
                
                
                dbo.CARE_SITE fkTable 
                ON cdmTable.CARE_SITE_ID = fkTable.CARE_SITE_ID
        WHERE fkTable.CARE_SITE_ID IS NULL 
            AND cdmTable.CARE_SITE_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = DISCHARGED_TO_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'VISIT_OCCURRENCE.DISCHARGED_TO_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.DISCHARGED_TO_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.DISCHARGED_TO_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PERSON_ID
fkTableName = PERSON
fkFieldName = PERSON_ID

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
            'VISIT_OCCURRENCE.PERSON_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
            LEFT JOIN 
                
                
                dbo.PERSON fkTable 
                ON cdmTable.PERSON_ID = fkTable.PERSON_ID
        WHERE fkTable.PERSON_ID IS NULL 
            AND cdmTable.PERSON_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PRECEDING_VISIT_OCCURRENCE_ID
fkTableName = VISIT_OCCURRENCE
fkFieldName = VISIT_OCCURRENCE_ID

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
            'VISIT_OCCURRENCE.PRECEDING_VISIT_OCCURRENCE_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
            LEFT JOIN 
                
                
                dbo.VISIT_OCCURRENCE fkTable 
                ON cdmTable.PRECEDING_VISIT_OCCURRENCE_ID = fkTable.VISIT_OCCURRENCE_ID
        WHERE fkTable.VISIT_OCCURRENCE_ID IS NULL 
            AND cdmTable.PRECEDING_VISIT_OCCURRENCE_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo

cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PROVIDER_ID
fkTableName = PROVIDER
fkFieldName = PROVIDER_ID

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
            'VISIT_OCCURRENCE.PROVIDER_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
            LEFT JOIN 
                
                
                dbo.PROVIDER fkTable 
                ON cdmTable.PROVIDER_ID = fkTable.PROVIDER_ID
        WHERE fkTable.PROVIDER_ID IS NULL 
            AND cdmTable.PROVIDER_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'VISIT_OCCURRENCE.VISIT_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.VISIT_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.VISIT_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_SOURCE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'VISIT_OCCURRENCE.VISIT_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.VISIT_SOURCE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.VISIT_SOURCE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_TYPE_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'VISIT_OCCURRENCE.VISIT_TYPE_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VISIT_OCCURRENCE cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.VISIT_TYPE_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.VISIT_TYPE_CONCEPT_ID IS NOT NULL
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
IS_FOREIGN_KEY

Foreign key check.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VOCABULARY
cdmFieldName = VOCABULARY_CONCEPT_ID
fkTableName = CONCEPT
fkFieldName = CONCEPT_ID

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
            'VOCABULARY.VOCABULARY_CONCEPT_ID' AS violating_field, 
            cdmTable.*
        FROM dbo.VOCABULARY cdmTable
            
            LEFT JOIN 
                dbo.CONCEPT fkTable
                
                 
                ON cdmTable.VOCABULARY_CONCEPT_ID = fkTable.CONCEPT_ID
        WHERE fkTable.CONCEPT_ID IS NULL 
            AND cdmTable.VOCABULARY_CONCEPT_ID IS NOT NULL
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
(
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VOCABULARY cdmTable
        
) denominator
;

