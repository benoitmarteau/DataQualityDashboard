
/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION_PERIOD

**********/


SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.OBSERVATION_PERIOD cdmTable2 
			    ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
) denominator
;


/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE

**********/


SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.VISIT_OCCURRENCE cdmTable2 
			    ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
) denominator
;


/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL

**********/


SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.VISIT_DETAIL cdmTable2 
			    ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
) denominator
;


/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE

**********/


SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.CONDITION_OCCURRENCE cdmTable2 
			    ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
) denominator
;


/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE

**********/


SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.DRUG_EXPOSURE cdmTable2 
			    ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
) denominator
;


/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE

**********/


SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.PROCEDURE_OCCURRENCE cdmTable2 
			    ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
) denominator
;


/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE

**********/


SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.DEVICE_EXPOSURE cdmTable2 
			    ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
) denominator
;


/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT

**********/


SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.MEASUREMENT cdmTable2 
			    ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
) denominator
;


/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION

**********/


SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.OBSERVATION cdmTable2 
			    ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
) denominator
;


/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

Parameters used in this template:
schema = dbo
cdmTableName = DEATH

**********/


SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.DEATH cdmTable2 
			    ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
) denominator
;


/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

Parameters used in this template:
schema = dbo
cdmTableName = NOTE

**********/


SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.NOTE cdmTable2 
			    ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
) denominator
;


/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN

**********/


SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.SPECIMEN cdmTable2 
			    ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
) denominator
;


/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD

**********/


SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.PAYER_PLAN_PERIOD cdmTable2 
			    ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
) denominator
;


/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA

**********/


SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.DRUG_ERA cdmTable2 
			    ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
) denominator
;


/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA

**********/


SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.DOSE_ERA cdmTable2 
			    ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
) denominator
;


/*********
Table Level:  
MEASURE_PERSON_COMPLETENESS
Determine what #/% of persons have at least one record in the cdmTable

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA

**********/


SELECT 
	num_violated_rows, 
	CASE 
		WHEN denominator.num_rows = 0 THEN 0 
		ELSE 1.0*num_violated_rows/denominator.num_rows 
	END AS pct_violated_rows, 
    denominator.num_rows AS num_denominator_rows
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.person_id) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			cdmTable.* 
		FROM dbo.person cdmTable
		
			LEFT JOIN dbo.CONDITION_ERA cdmTable2 
			    ON cdmTable.person_id = cdmTable2.person_id
		WHERE cdmTable2.person_id IS NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.person cdmTable
	
) denominator
;

