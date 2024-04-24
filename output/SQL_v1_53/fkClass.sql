
/*********
FK_CLASS

Check that drug concepts in DRUG_ERA.drug_concept_id, DOSE_ERA.drug_concept_id, 
and DRUG_STRENGTH.ingredient_concept_id are of class 'Ingredient'. 

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkClass = Ingredient

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
            LEFT JOIN dbo.concept co
                ON cdmTable.DRUG_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND (co.concept_class_id != 'Ingredient') 
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
FK_CLASS

Check that drug concepts in DRUG_ERA.drug_concept_id, DOSE_ERA.drug_concept_id, 
and DRUG_STRENGTH.ingredient_concept_id are of class 'Ingredient'. 

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkClass = Ingredient

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
            LEFT JOIN dbo.concept co
                ON cdmTable.DRUG_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND (co.concept_class_id != 'Ingredient') 
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.DRUG_ERA cdmTable
        
) denominator
;

