
/*********
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.PLACE_OF_SERVICE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.CDM_VERSION_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.DEFINITION_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.SUBJECT_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.CONDITION_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.CONDITION_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.CONDITION_STATUS_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.CONDITION_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.COST_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.CAUSE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.DEATH_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.DEVICE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.DEVICE_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.UNIT_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.DRUG_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.UNIT_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.DRUG_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.DRUG_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.DRUG_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.ROUTE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.EPISODE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.EPISODE_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.EPISODE_EVENT_FIELD_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.COUNTRY_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.MEAS_EVENT_FIELD_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.MEASUREMENT_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.MEASUREMENT_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.OPERATOR_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.UNIT_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.ENCODING_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.LANGUAGE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.NOTE_CLASS_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.NOTE_EVENT_FIELD_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.NOTE_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.NOTE_NLP_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.SECTION_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.OBS_EVENT_FIELD_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.OBSERVATION_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.OBSERVATION_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.QUALIFIER_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.UNIT_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.PERIOD_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'PERSON.ETHNICITY_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PERSON cdmTable
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.ETHNICITY_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'PERSON.GENDER_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PERSON cdmTable
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.GENDER_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

Parameters used in this template:
schema = dbo
vocabDatabaseSchema = dbo
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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'PERSON.RACE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PERSON cdmTable
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.RACE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.MODIFIER_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.PROCEDURE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.PROCEDURE_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.GENDER_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.SPECIALTY_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.TARGET_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.ANATOMIC_SITE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.DISEASE_STATUS_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.SPECIMEN_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.SPECIMEN_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.UNIT_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.ADMITTED_FROM_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.DISCHARGED_TO_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.VISIT_DETAIL_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.VISIT_DETAIL_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.ADMITTED_FROM_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.DISCHARGED_TO_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.VISIT_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
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
FIELD_IS_STANDARD_VALID_CONCEPT

all standard concept id fields are standard and valid

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
			
	  	JOIN dbo.concept co 
	  	    ON cdmTable.VISIT_TYPE_CONCEPT_ID = co.concept_id
		WHERE co.concept_id != 0 
			AND (co.standard_concept != 'S' OR co.invalid_reason IS NOT NULL)
		/*violatedRowsEnd*/
  ) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE cdmTable
		
) denominator
;

