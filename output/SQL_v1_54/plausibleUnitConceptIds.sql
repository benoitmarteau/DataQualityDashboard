/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3006315
plausibleUnitConceptIds = 8784,8848,8961,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3006315
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8784,8848,8961,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3006315
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3004410
plausibleUnitConceptIds = 8554,8737,9225,9579

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3004410
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554,8737,9225,9579) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3004410
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 40487382
plausibleUnitConceptIds = 8784,8848,8961

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 40487382
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8784,8848,8961) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 40487382
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3013721
plausibleUnitConceptIds = 8645,8923

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3013721
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8645,8923) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3013721
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3019198
plausibleUnitConceptIds = 8784,8848,8961,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3019198
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8784,8848,8961,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3019198
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3034426
plausibleUnitConceptIds = 8555

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3034426
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8555) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3034426
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3043688
plausibleUnitConceptIds = 8713

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3043688
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8713) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3043688
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3046485
plausibleUnitConceptIds = 8523,8554,8596,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3046485
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8523,8554,8596,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3046485
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4216098
plausibleUnitConceptIds = 8784,8848,8961,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4216098
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8784,8848,8961,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4216098
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4245152
plausibleUnitConceptIds = 8736,8753,9557

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4245152
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8736,8753,9557) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4245152
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 43055141
plausibleUnitConceptIds = -1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 43055141
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 43055141
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3006923
plausibleUnitConceptIds = 8645,8923

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3006923
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8645,8923) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3006923
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3021044
plausibleUnitConceptIds = 8837

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3021044
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8837) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3021044
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3024171
plausibleUnitConceptIds = 8483,8541

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3024171
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8483,8541) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3024171
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3027114
plausibleUnitConceptIds = 8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3027114
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3027114
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 40762499
plausibleUnitConceptIds = 8554,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 40762499
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 40762499
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3000963
plausibleUnitConceptIds = 8636,8713

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3000963
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8636,8713) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3000963
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3001604
plausibleUnitConceptIds = 8848,8961,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3001604
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8848,8961,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3001604
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3019069
plausibleUnitConceptIds = 8554

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3019069
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3019069
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3022509
plausibleUnitConceptIds = 8765

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3022509
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8765) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3022509
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3028288
plausibleUnitConceptIds = 8840,9028

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3028288
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8840,9028) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3028288
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4148615
plausibleUnitConceptIds = 8784,8848,8961

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4148615
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8784,8848,8961) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4148615
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 44806420
plausibleUnitConceptIds = 720870,8795

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 44806420
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (720870,8795) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 44806420
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3028437
plausibleUnitConceptIds = 8840,9028

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3028437
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8840,9028) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3028437
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3016991
plausibleUnitConceptIds = 8837

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3016991
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8837) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3016991
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3026925
plausibleUnitConceptIds = 8820,8845

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3026925
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8820,8845) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3026925
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3028615
plausibleUnitConceptIds = 8784,8816,8848,8961,9436,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3028615
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8784,8816,8848,8961,9436,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3028615
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3051205
plausibleUnitConceptIds = 8786

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3051205
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8786) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3051205
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4098046
plausibleUnitConceptIds = 8554

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4098046
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4098046
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3005131
plausibleUnitConceptIds = 8840,9028

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3005131
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8840,9028) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3005131
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3011163
plausibleUnitConceptIds = 8523,8529,8554,8596,8606,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3011163
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8523,8529,8554,8596,8606,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3011163
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3044491
plausibleUnitConceptIds = 8576,8840,9028

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3044491
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8576,8840,9028) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3044491
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4017361
plausibleUnitConceptIds = 8753,8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4017361
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8753,8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4017361
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3006504
plausibleUnitConceptIds = 8554

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3006504
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3006504
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3000483
plausibleUnitConceptIds = 8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3000483
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3000483
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3033543
plausibleUnitConceptIds = 8523,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3033543
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8523,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3033543
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3045716
plausibleUnitConceptIds = 8753,9557

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3045716
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8753,9557) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3045716
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4101713
plausibleUnitConceptIds = 8636,8736,8753,8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4101713
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8636,8736,8753,8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4101713
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4103762
plausibleUnitConceptIds = 8753,9557

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4103762
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8753,9557) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4103762
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3001008
plausibleUnitConceptIds = 8765,8786,8889

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3001008
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8765,8786,8889) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3001008
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3009744
plausibleUnitConceptIds = 8564,8636,8713

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3009744
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8564,8636,8713) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3009744
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3013115
plausibleUnitConceptIds = 8848,8961,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3013115
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8848,8961,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3013115
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3019550
plausibleUnitConceptIds = 8753,9557

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3019550
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8753,9557) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3019550
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3020416
plausibleUnitConceptIds = 44777575,8734,8815

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3020416
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (44777575,8734,8815) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3020416
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3035583
plausibleUnitConceptIds = 8786,8889

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3035583
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8786,8889) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3035583
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3035995
plausibleUnitConceptIds = 8645,8923

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3035995
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8645,8923) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3035995
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3038553
plausibleUnitConceptIds = 9531

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3038553
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (9531) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3038553
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 35610320
plausibleUnitConceptIds = 8876

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 35610320
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8876) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 35610320
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3001490
plausibleUnitConceptIds = 8784,8848,8961,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3001490
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8784,8848,8961,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3001490
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4195214
plausibleUnitConceptIds = 8523,8554,8596,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4195214
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8523,8554,8596,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4195214
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 36306178
plausibleUnitConceptIds = 720870,8795

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 36306178
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (720870,8795) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 36306178
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 37393850
plausibleUnitConceptIds = 8636,8713

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 37393850
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8636,8713) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 37393850
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3004501
plausibleUnitConceptIds = 8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3004501
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3004501
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3008598
plausibleUnitConceptIds = 8817

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3008598
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8817) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3008598
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3018010
plausibleUnitConceptIds = 8554,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3018010
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3018010
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3022192
plausibleUnitConceptIds = 8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3022192
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3022192
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4151768
plausibleUnitConceptIds = 9448,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4151768
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (9448,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4151768
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4197602
plausibleUnitConceptIds = 8719,9040,9093

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4197602
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8719,9040,9093) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4197602
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 46236952
plausibleUnitConceptIds = 720870,8795

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 46236952
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (720870,8795) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 46236952
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3006906
plausibleUnitConceptIds = 8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3006906
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3006906
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3007070
plausibleUnitConceptIds = 8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3007070
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3007070
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3020460
plausibleUnitConceptIds = 8751,8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3020460
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8751,8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3020460
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3023314
plausibleUnitConceptIds = 44777604,8554

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3023314
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (44777604,8554) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3023314
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3035941
plausibleUnitConceptIds = 8564,9655

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3035941
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8564,9655) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3035941
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3037072
plausibleUnitConceptIds = 8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3037072
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3037072
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4151358
plausibleUnitConceptIds = 44777604,8554

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4151358
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (44777604,8554) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4151358
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4194332
plausibleUnitConceptIds = 8784,8848,8961,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4194332
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8784,8848,8961,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4194332
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3001123
plausibleUnitConceptIds = 8583

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3001123
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8583) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3001123
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3012888
plausibleUnitConceptIds = 8876

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3012888
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8876) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3012888
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3013707
plausibleUnitConceptIds = 8752

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3013707
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8752) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3013707
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3037511
plausibleUnitConceptIds = 8554

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3037511
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3037511
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3040168
plausibleUnitConceptIds = 8848,8961,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3040168
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8848,8961,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3040168
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4097430
plausibleUnitConceptIds = 8753,9557

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4097430
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8753,9557) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4097430
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3005424
plausibleUnitConceptIds = 8617

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3005424
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8617) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3005424
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3013603
plausibleUnitConceptIds = 8748,8842

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3013603
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8748,8842) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3013603
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3020509
plausibleUnitConceptIds = 8523,8554,8596,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3020509
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8523,8554,8596,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3020509
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3036277
plausibleUnitConceptIds = 8582,9327,9330,9546

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3036277
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8582,9327,9330,9546) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3036277
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4301868
plausibleUnitConceptIds = 8483,8541,8581

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4301868
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8483,8541,8581) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4301868
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 40762636
plausibleUnitConceptIds = 8554

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 40762636
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 40762636
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 40765040
plausibleUnitConceptIds = 8842,8845

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 40765040
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8842,8845) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 40765040
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3024386
plausibleUnitConceptIds = 8583

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3024386
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8583) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3024386
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3009201
plausibleUnitConceptIds = 44777578,8719,9040,9093

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3009201
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (44777578,8719,9040,9093) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3009201
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3024731
plausibleUnitConceptIds = 8583

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3024731
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8583) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3024731
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3050479
plausibleUnitConceptIds = 8554,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3050479
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3050479
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4012479
plausibleUnitConceptIds = 8636,8753,8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4012479
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8636,8753,8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4012479
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4152194
plausibleUnitConceptIds = 8876

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4152194
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8876) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4152194
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 37393840
plausibleUnitConceptIds = 44777604,8523,8554,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 37393840
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (44777604,8523,8554,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 37393840
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3000593
plausibleUnitConceptIds = 8845

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3000593
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8845) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3000593
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3002888
plausibleUnitConceptIds = 8583

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3002888
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8583) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3002888
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3010910
plausibleUnitConceptIds = 8647,8785,8815,8931

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3010910
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8647,8785,8815,8931) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3010910
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3013290
plausibleUnitConceptIds = 8876

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3013290
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8876) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3013290
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3027970
plausibleUnitConceptIds = 8636,8713,8950

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3027970
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8636,8713,8950) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3027970
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4239408
plausibleUnitConceptIds = 8483,8541,8581

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4239408
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8483,8541,8581) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4239408
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3010813
plausibleUnitConceptIds = 44777588,8848,8961,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3010813
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (44777588,8848,8961,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3010813
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3023103
plausibleUnitConceptIds = 8753,9557

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3023103
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8753,9557) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3023103
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4030871
plausibleUnitConceptIds = 8734,8815,8931,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4030871
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8734,8815,8931,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4030871
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4154790
plausibleUnitConceptIds = 8876

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4154790
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8876) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4154790
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4217013
plausibleUnitConceptIds = 8876

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4217013
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8876) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4217013
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3001318
plausibleUnitConceptIds = 8554,8596,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3001318
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554,8596,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3001318
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3004249
plausibleUnitConceptIds = 8876

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3004249
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8876) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3004249
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3009596
plausibleUnitConceptIds = 8576,8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3009596
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8576,8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3009596
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3025315
plausibleUnitConceptIds = 8739,9346,9373,9529

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3025315
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8739,9346,9373,9529) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3025315
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3053283
plausibleUnitConceptIds = 720870,8795

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3053283
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (720870,8795) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3053283
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4008265
plausibleUnitConceptIds = 8736,8753,8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4008265
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8736,8753,8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4008265
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 36303797
plausibleUnitConceptIds = 720870,8795

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 36303797
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (720870,8795) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 36303797
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 37398460
plausibleUnitConceptIds = 32995,8645,8923

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 37398460
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (32995,8645,8923) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 37398460
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3013682
plausibleUnitConceptIds = 8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3013682
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3013682
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3026361
plausibleUnitConceptIds = 32706,8785,8815,8931

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3026361
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (32706,8785,8815,8931) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3026361
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3027018
plausibleUnitConceptIds = 8483,8541,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3027018
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8483,8541,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3027018
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4013965
plausibleUnitConceptIds = 8554

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4013965
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4013965
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3013429
plausibleUnitConceptIds = 8784,8816,8848,8961,9436,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3013429
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8784,8816,8848,8961,9436,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3013429
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3023599
plausibleUnitConceptIds = 8583

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3023599
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8583) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3023599
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3036588
plausibleUnitConceptIds = 8525,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3036588
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8525,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3036588
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4298431
plausibleUnitConceptIds = 8848,8961

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4298431
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8848,8961) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4298431
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3017732
plausibleUnitConceptIds = 8848,8961,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3017732
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8848,8961,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3017732
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3024561
plausibleUnitConceptIds = 8636,8713

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3024561
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8636,8713) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3024561
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3034639
plausibleUnitConceptIds = 8713,8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3034639
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8713,8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3034639
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3013650
plausibleUnitConceptIds = 8784,8848,8961,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3013650
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8784,8848,8961,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3013650
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3021886
plausibleUnitConceptIds = 8636,8713,8950

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3021886
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8636,8713,8950) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3021886
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4254663
plausibleUnitConceptIds = 8848

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4254663
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8848) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4254663
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3001420
plausibleUnitConceptIds = 8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3001420
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3001420
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3007461
plausibleUnitConceptIds = 8848,8961,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3007461
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8848,8961,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3007461
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3012030
plausibleUnitConceptIds = 8564

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3012030
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8564) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3012030
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 40764999
plausibleUnitConceptIds = 720870,8795

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 40764999
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (720870,8795) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 40764999
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3008893
plausibleUnitConceptIds = 8817

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3008893
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8817) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3008893
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3016723
plausibleUnitConceptIds = 8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3016723
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3016723
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3026910
plausibleUnitConceptIds = 8645,8923

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3026910
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8645,8923) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3026910
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3033575
plausibleUnitConceptIds = 8784,8816,8848,8961,9436,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3033575
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8784,8816,8848,8961,9436,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3033575
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3041084
plausibleUnitConceptIds = 8848,8961,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3041084
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8848,8961,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3041084
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4184637
plausibleUnitConceptIds = 8554,8632,8737

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4184637
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554,8632,8737) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4184637
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4313591
plausibleUnitConceptIds = 8483,8541

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4313591
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8483,8541) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4313591
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 37393851
plausibleUnitConceptIds = 8583

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 37393851
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8583) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 37393851
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 1619025
plausibleUnitConceptIds = 720870,8795

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 1619025
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (720870,8795) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 1619025
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3013869
plausibleUnitConceptIds = 8554

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3013869
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3013869
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3035472
plausibleUnitConceptIds = 8554,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3035472
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3035472
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3039000
plausibleUnitConceptIds = 8753,9557

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3039000
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8753,9557) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3039000
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3000905
plausibleUnitConceptIds = 8816,8848,8961,9436,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3000905
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8816,8848,8961,9436,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3000905
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3015632
plausibleUnitConceptIds = 8753,9557

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3015632
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8753,9557) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3015632
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3032710
plausibleUnitConceptIds = 8554,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3032710
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3032710
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4197971
plausibleUnitConceptIds = 8554,8632,8737

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4197971
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554,8632,8737) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4197971
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 42869452
plausibleUnitConceptIds = 8554,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 42869452
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 42869452
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3002109
plausibleUnitConceptIds = 8523,8596,8606,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3002109
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8523,8596,8606,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3002109
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3004327
plausibleUnitConceptIds = 8784,8816,8848,8961,9436,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3004327
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8784,8816,8848,8961,9436,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3004327
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3006322
plausibleUnitConceptIds = 586323

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3006322
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (586323) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3006322
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3008342
plausibleUnitConceptIds = 8554

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3008342
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3008342
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3020630
plausibleUnitConceptIds = 8636,8713

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3020630
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8636,8713) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3020630
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3001122
plausibleUnitConceptIds = 8748,8842

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3001122
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8748,8842) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3001122
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3009542
plausibleUnitConceptIds = 8554

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3009542
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3009542
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3010189
plausibleUnitConceptIds = 8765,8786

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3010189
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8765,8786) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3010189
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3010457
plausibleUnitConceptIds = 8554

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3010457
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3010457
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4192368
plausibleUnitConceptIds = 8583

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4192368
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8583) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4192368
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3014576
plausibleUnitConceptIds = 8753,9557

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3014576
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8753,9557) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3014576
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3024128
plausibleUnitConceptIds = 8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3024128
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3024128
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3018311
plausibleUnitConceptIds = 8523,8554,8596,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3018311
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8523,8554,8596,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3018311
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3020891
plausibleUnitConceptIds = 586323,9289

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3020891
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (586323,9289) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3020891
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3037556
plausibleUnitConceptIds = 8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3037556
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3037556
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 37399332
plausibleUnitConceptIds = 44777578,9040

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 37399332
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (44777578,9040) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 37399332
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3011904
plausibleUnitConceptIds = 8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3011904
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3011904
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3019897
plausibleUnitConceptIds = 8554,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3019897
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3019897
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3025255
plausibleUnitConceptIds = 8786

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3025255
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8786) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3025255
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4076704
plausibleUnitConceptIds = 8753,8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4076704
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8753,8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4076704
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4172647
plausibleUnitConceptIds = 8848,8961,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4172647
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8848,8961,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4172647
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 37393531
plausibleUnitConceptIds = 32995,8645,8923

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 37393531
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (32995,8645,8923) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 37393531
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 40771529
plausibleUnitConceptIds = 8554,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 40771529
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 40771529
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3000034
plausibleUnitConceptIds = 8576,8723,8751,8840,8859

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3000034
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8576,8723,8751,8840,8859) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3000034
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3035124
plausibleUnitConceptIds = 8786,8889

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3035124
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8786,8889) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3035124
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3002030
plausibleUnitConceptIds = 8554,8848

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3002030
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554,8848) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3002030
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3019170
plausibleUnitConceptIds = 44777578,8719,8860,9040,9093,9550

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3019170
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (44777578,8719,8860,9040,9093,9550) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3019170
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3020149
plausibleUnitConceptIds = 8842

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3020149
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8842) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3020149
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3022174
plausibleUnitConceptIds = 8647,8784,8785,8848,8961

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3022174
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8647,8784,8785,8848,8961) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3022174
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3024929
plausibleUnitConceptIds = 8816,8848,8961,9436,9444

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3024929
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8816,8848,8961,9436,9444) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3024929
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3049187
plausibleUnitConceptIds = 720870,8795

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3049187
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (720870,8795) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3049187
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 37398676
plausibleUnitConceptIds = 8848

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 37398676
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8848) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 37398676
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4112223
plausibleUnitConceptIds = 8523,8596,-1

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4112223
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8523,8596,-1) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4112223
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3017250
plausibleUnitConceptIds = 8576,8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3017250
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8576,8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3017250
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 4191837
plausibleUnitConceptIds = 8840

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 4191837
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8840) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 4191837
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3022096
plausibleUnitConceptIds = 8554

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3022096
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8554) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3022096
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3034485
plausibleUnitConceptIds = 8523,8723,8838,9017,9072

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3034485
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8523,8723,8838,9017,9072) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3034485
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 44790183
plausibleUnitConceptIds = 720870,8795

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 44790183
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (720870,8795) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 44790183
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3002400
plausibleUnitConceptIds = 8749,8837

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3002400
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8749,8837) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3002400
	  	AND value_as_number IS NOT NULL
) denominator
;

/*********
CONCEPT LEVEL check:
PLAUSIBLE_UNIT_CONCEPT_IDS - find any MEASUREMENT records that are associated with an incorrect UNIT_CONCEPT_ID

Parameters used in this template:
cdmDatabaseSchema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_CONCEPT_ID
conceptId = 3003338
plausibleUnitConceptIds = 8713

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
	  COUNT_BIG(*) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
		  m.* 
		FROM dbo.MEASUREMENT m
  		
		WHERE m.MEASUREMENT_CONCEPT_ID = 3003338
		  	AND COALESCE (m.unit_concept_id, -1) NOT IN (8713) -- '-1' stands for the cases when unit_concept_id is null
		  	AND m.value_as_number IS NOT NULL 
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
	  COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT m
  	
	WHERE m.MEASUREMENT_CONCEPT_ID = 3003338
	  	AND value_as_number IS NOT NULL
) denominator
;

