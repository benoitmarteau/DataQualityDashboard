
/*********
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_CONCEPT_ID
fkDomain = Condition

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
            LEFT JOIN dbo.concept co
            ON cdmTable.CONDITION_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Condition')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_CONCEPT_ID
fkDomain = Condition

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
            LEFT JOIN dbo.concept co
            ON cdmTable.CONDITION_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Condition')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_TYPE_CONCEPT_ID
fkDomain = Type Concept

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
            LEFT JOIN dbo.concept co
            ON cdmTable.CONDITION_TYPE_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Type Concept')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DEATH
cdmFieldName = DEATH_TYPE_CONCEPT_ID
fkDomain = Type Concept

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
            LEFT JOIN dbo.concept co
            ON cdmTable.DEATH_TYPE_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Type Concept')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_CONCEPT_ID
fkDomain = Device

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
            LEFT JOIN dbo.concept co
            ON cdmTable.DEVICE_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Device')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_TYPE_CONCEPT_ID
fkDomain = Type Concept

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
            LEFT JOIN dbo.concept co
            ON cdmTable.DEVICE_TYPE_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Type Concept')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkDomain = Drug

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
            AND co.domain_id NOT IN ('Drug')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = UNIT_CONCEPT_ID
fkDomain = Unit

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
            LEFT JOIN dbo.concept co
            ON cdmTable.UNIT_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Unit')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_CONCEPT_ID
fkDomain = Drug

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
            AND co.domain_id NOT IN ('Drug')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_CONCEPT_ID
fkDomain = Drug

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
            LEFT JOIN dbo.concept co
            ON cdmTable.DRUG_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Drug')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_TYPE_CONCEPT_ID
fkDomain = Type Concept

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
            LEFT JOIN dbo.concept co
            ON cdmTable.DRUG_TYPE_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Type Concept')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = ROUTE_CONCEPT_ID
fkDomain = Route

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
            LEFT JOIN dbo.concept co
            ON cdmTable.ROUTE_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Route')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
fkDomain = Measurement

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
            LEFT JOIN dbo.concept co
            ON cdmTable.MEASUREMENT_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Measurement')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_TYPE_CONCEPT_ID
fkDomain = Type Concept

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
            LEFT JOIN dbo.concept co
            ON cdmTable.MEASUREMENT_TYPE_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Type Concept')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = UNIT_CONCEPT_ID
fkDomain = Unit

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
            LEFT JOIN dbo.concept co
            ON cdmTable.UNIT_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Unit')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_TYPE_CONCEPT_ID
fkDomain = Type Concept

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
            LEFT JOIN dbo.concept co
            ON cdmTable.NOTE_TYPE_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Type Concept')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_TYPE_CONCEPT_ID
fkDomain = Type Concept

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
            LEFT JOIN dbo.concept co
            ON cdmTable.OBSERVATION_TYPE_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Type Concept')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = OBSERVATION
cdmFieldName = UNIT_CONCEPT_ID
fkDomain = Unit

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
            LEFT JOIN dbo.concept co
            ON cdmTable.UNIT_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Unit')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = PERIOD_TYPE_CONCEPT_ID
fkDomain = Type Concept

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
            LEFT JOIN dbo.concept co
            ON cdmTable.PERIOD_TYPE_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Type Concept')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PERSON
cdmFieldName = GENDER_CONCEPT_ID
fkDomain = Gender

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
            LEFT JOIN dbo.concept co
            ON cdmTable.GENDER_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Gender')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PERSON
cdmFieldName = RACE_CONCEPT_ID
fkDomain = Race

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
            LEFT JOIN dbo.concept co
            ON cdmTable.RACE_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Race')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PERSON
cdmFieldName = ETHNICITY_CONCEPT_ID
fkDomain = Ethnicity

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
            LEFT JOIN dbo.concept co
            ON cdmTable.ETHNICITY_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Ethnicity')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_CONCEPT_ID
fkDomain = Procedure

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
            LEFT JOIN dbo.concept co
            ON cdmTable.PROCEDURE_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Procedure')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_TYPE_CONCEPT_ID
fkDomain = Type Concept

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
            LEFT JOIN dbo.concept co
            ON cdmTable.PROCEDURE_TYPE_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Type Concept')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = PROVIDER
cdmFieldName = GENDER_CONCEPT_ID
fkDomain = Gender

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
            LEFT JOIN dbo.concept co
            ON cdmTable.GENDER_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Gender')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_TYPE_CONCEPT_ID
fkDomain = Type Concept

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
            LEFT JOIN dbo.concept co
            ON cdmTable.SPECIMEN_TYPE_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Type Concept')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_CONCEPT_ID
fkDomain = Visit

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
            LEFT JOIN dbo.concept co
            ON cdmTable.VISIT_DETAIL_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Visit')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_TYPE_CONCEPT_ID
fkDomain = Type Concept

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
            LEFT JOIN dbo.concept co
            ON cdmTable.VISIT_DETAIL_TYPE_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Type Concept')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_CONCEPT_ID
fkDomain = Visit

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
            LEFT JOIN dbo.concept co
            ON cdmTable.VISIT_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Visit')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_TYPE_CONCEPT_ID
fkDomain = Type Concept

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
            LEFT JOIN dbo.concept co
            ON cdmTable.VISIT_TYPE_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Type Concept')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = ADMITTING_SOURCE_CONCEPT_ID
fkDomain = Visit

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
            'VISIT_OCCURRENCE.ADMITTING_SOURCE_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_OCCURRENCE cdmTable
            LEFT JOIN dbo.concept co
            ON cdmTable.ADMITTING_SOURCE_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Visit')
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
FIELD_FK_DOMAIN

Check that all standard concept IDs belong to the appropriate domain for a given table and field.

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = DISCHARGE_TO_CONCEPT_ID
fkDomain = Visit

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
            'VISIT_OCCURRENCE.DISCHARGE_TO_CONCEPT_ID' AS violating_field, 
            cdmTable.* 
        FROM dbo.VISIT_OCCURRENCE cdmTable
            LEFT JOIN dbo.concept co
            ON cdmTable.DISCHARGE_TO_CONCEPT_ID = co.concept_id
            
        WHERE co.concept_id != 0 
            AND co.domain_id NOT IN ('Visit')
        /*violatedRowsEnd*/
    ) violated_rows
) violated_row_count,
( 
    SELECT 
        COUNT_BIG(*) AS num_rows
    FROM dbo.VISIT_OCCURRENCE cdmTable
    
) denominator
;

