
/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.CARE_SITE_ID) = 0 
			OR (ISNUMERIC(cdmTable.CARE_SITE_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.CARE_SITE_ID) AS varchar)) != 0))
			AND cdmTable.CARE_SITE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CARE_SITE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
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
		WHERE 
			(ISNUMERIC(cdmTable.PLACE_OF_SERVICE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.PLACE_OF_SERVICE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PLACE_OF_SERVICE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.PLACE_OF_SERVICE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CARE_SITE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = CARE_SITE
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
			'CARE_SITE.LOCATION_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.CARE_SITE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.LOCATION_ID) = 0 
			OR (ISNUMERIC(cdmTable.LOCATION_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.LOCATION_ID) AS varchar)) != 0))
			AND cdmTable.LOCATION_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CARE_SITE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.CONDITION_ERA_ID) = 0 
			OR (ISNUMERIC(cdmTable.CONDITION_ERA_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.CONDITION_ERA_ID) AS varchar)) != 0))
			AND cdmTable.CONDITION_ERA_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_ERA
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'CONDITION_ERA.PERSON_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.CONDITION_ERA cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PERSON_ID) = 0 
			OR (ISNUMERIC(cdmTable.PERSON_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PERSON_ID) AS varchar)) != 0))
			AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_ERA
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.CONDITION_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.CONDITION_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.CONDITION_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.CONDITION_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_ERA
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_OCCURRENCE_COUNT
**********/


SELECT 
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
			'CONDITION_ERA.CONDITION_OCCURRENCE_COUNT' AS violating_field, 
			cdmTable.* 
		FROM dbo.CONDITION_ERA cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.CONDITION_OCCURRENCE_COUNT) = 0 
			OR (ISNUMERIC(cdmTable.CONDITION_OCCURRENCE_COUNT) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.CONDITION_OCCURRENCE_COUNT) AS varchar)) != 0))
			AND cdmTable.CONDITION_OCCURRENCE_COUNT IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_ERA
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.CONDITION_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.CONDITION_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.CONDITION_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.CONDITION_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.CONDITION_TYPE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.CONDITION_TYPE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.CONDITION_TYPE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.CONDITION_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
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
		WHERE 
			(ISNUMERIC(cdmTable.CONDITION_STATUS_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.CONDITION_STATUS_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.CONDITION_STATUS_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.CONDITION_STATUS_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
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
			'CONDITION_OCCURRENCE.PROVIDER_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.CONDITION_OCCURRENCE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PROVIDER_ID) = 0 
			OR (ISNUMERIC(cdmTable.PROVIDER_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PROVIDER_ID) AS varchar)) != 0))
			AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
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
			'CONDITION_OCCURRENCE.VISIT_OCCURRENCE_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.CONDITION_OCCURRENCE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_OCCURRENCE_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_OCCURRENCE_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_OCCURRENCE_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
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
			'CONDITION_OCCURRENCE.VISIT_DETAIL_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.CONDITION_OCCURRENCE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_DETAIL_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_DETAIL_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_DETAIL_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_SOURCE_CONCEPT_ID
**********/


SELECT 
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
			'CONDITION_OCCURRENCE.CONDITION_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.CONDITION_OCCURRENCE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.CONDITION_SOURCE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.CONDITION_SOURCE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.CONDITION_SOURCE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.CONDITION_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.COST_TYPE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.COST_TYPE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.COST_TYPE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.COST_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.COST
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = CURRENCY_CONCEPT_ID
**********/


SELECT 
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
			'COST.CURRENCY_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.COST cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.CURRENCY_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.CURRENCY_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.CURRENCY_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.CURRENCY_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.COST
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = REVENUE_CODE_CONCEPT_ID
**********/


SELECT 
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
			'COST.REVENUE_CODE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.COST cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.REVENUE_CODE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.REVENUE_CODE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.REVENUE_CODE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.REVENUE_CODE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.COST
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = COST
cdmFieldName = DRG_CONCEPT_ID
**********/


SELECT 
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
			'COST.DRG_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.COST cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.DRG_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.DRG_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DRG_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.DRG_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.COST
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
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
		WHERE 
			(ISNUMERIC(cdmTable.CAUSE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.CAUSE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.CAUSE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.CAUSE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEATH
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = DEATH
cdmFieldName = CAUSE_SOURCE_CONCEPT_ID
**********/


SELECT 
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
			'DEATH.CAUSE_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DEATH cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.CAUSE_SOURCE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.CAUSE_SOURCE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.CAUSE_SOURCE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.CAUSE_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEATH
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
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
		WHERE 
			(ISNUMERIC(cdmTable.DEATH_TYPE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.DEATH_TYPE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DEATH_TYPE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.DEATH_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEATH
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'DEATH.PERSON_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DEATH cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PERSON_ID) = 0 
			OR (ISNUMERIC(cdmTable.PERSON_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PERSON_ID) AS varchar)) != 0))
			AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEATH
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.DEVICE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.DEVICE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DEVICE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.DEVICE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.DEVICE_TYPE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.DEVICE_TYPE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DEVICE_TYPE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.DEVICE_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = QUANTITY
**********/


SELECT 
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
			'DEVICE_EXPOSURE.QUANTITY' AS violating_field, 
			cdmTable.* 
		FROM dbo.DEVICE_EXPOSURE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.QUANTITY) = 0 
			OR (ISNUMERIC(cdmTable.QUANTITY) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.QUANTITY) AS varchar)) != 0))
			AND cdmTable.QUANTITY IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
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
			'DEVICE_EXPOSURE.PROVIDER_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DEVICE_EXPOSURE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PROVIDER_ID) = 0 
			OR (ISNUMERIC(cdmTable.PROVIDER_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PROVIDER_ID) AS varchar)) != 0))
			AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
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
			'DEVICE_EXPOSURE.VISIT_OCCURRENCE_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DEVICE_EXPOSURE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_OCCURRENCE_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_OCCURRENCE_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_OCCURRENCE_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
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
			'DEVICE_EXPOSURE.VISIT_DETAIL_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DEVICE_EXPOSURE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_DETAIL_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_DETAIL_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_DETAIL_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_SOURCE_CONCEPT_ID
**********/


SELECT 
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
			'DEVICE_EXPOSURE.DEVICE_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DEVICE_EXPOSURE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.DEVICE_SOURCE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.DEVICE_SOURCE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DEVICE_SOURCE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.DEVICE_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.DOSE_ERA_ID) = 0 
			OR (ISNUMERIC(cdmTable.DOSE_ERA_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DOSE_ERA_ID) AS varchar)) != 0))
			AND cdmTable.DOSE_ERA_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DOSE_ERA
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'DOSE_ERA.PERSON_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DOSE_ERA cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PERSON_ID) = 0 
			OR (ISNUMERIC(cdmTable.PERSON_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PERSON_ID) AS varchar)) != 0))
			AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DOSE_ERA
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.DRUG_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.DRUG_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DRUG_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.DRUG_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DOSE_ERA
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.UNIT_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.UNIT_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.UNIT_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.UNIT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DOSE_ERA
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.DRUG_ERA_ID) = 0 
			OR (ISNUMERIC(cdmTable.DRUG_ERA_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DRUG_ERA_ID) AS varchar)) != 0))
			AND cdmTable.DRUG_ERA_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_ERA
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'DRUG_ERA.PERSON_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DRUG_ERA cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PERSON_ID) = 0 
			OR (ISNUMERIC(cdmTable.PERSON_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PERSON_ID) AS varchar)) != 0))
			AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_ERA
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.DRUG_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.DRUG_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DRUG_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.DRUG_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_ERA
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_EXPOSURE_COUNT
**********/


SELECT 
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
			'DRUG_ERA.DRUG_EXPOSURE_COUNT' AS violating_field, 
			cdmTable.* 
		FROM dbo.DRUG_ERA cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.DRUG_EXPOSURE_COUNT) = 0 
			OR (ISNUMERIC(cdmTable.DRUG_EXPOSURE_COUNT) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DRUG_EXPOSURE_COUNT) AS varchar)) != 0))
			AND cdmTable.DRUG_EXPOSURE_COUNT IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_ERA
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = GAP_DAYS
**********/


SELECT 
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
			'DRUG_ERA.GAP_DAYS' AS violating_field, 
			cdmTable.* 
		FROM dbo.DRUG_ERA cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.GAP_DAYS) = 0 
			OR (ISNUMERIC(cdmTable.GAP_DAYS) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.GAP_DAYS) AS varchar)) != 0))
			AND cdmTable.GAP_DAYS IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_ERA
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.DRUG_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.DRUG_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DRUG_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.DRUG_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.DRUG_TYPE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.DRUG_TYPE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DRUG_TYPE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.DRUG_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = REFILLS
**********/


SELECT 
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
			'DRUG_EXPOSURE.REFILLS' AS violating_field, 
			cdmTable.* 
		FROM dbo.DRUG_EXPOSURE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.REFILLS) = 0 
			OR (ISNUMERIC(cdmTable.REFILLS) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.REFILLS) AS varchar)) != 0))
			AND cdmTable.REFILLS IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DAYS_SUPPLY
**********/


SELECT 
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
			'DRUG_EXPOSURE.DAYS_SUPPLY' AS violating_field, 
			cdmTable.* 
		FROM dbo.DRUG_EXPOSURE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.DAYS_SUPPLY) = 0 
			OR (ISNUMERIC(cdmTable.DAYS_SUPPLY) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DAYS_SUPPLY) AS varchar)) != 0))
			AND cdmTable.DAYS_SUPPLY IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
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
		WHERE 
			(ISNUMERIC(cdmTable.ROUTE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.ROUTE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.ROUTE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.ROUTE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
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
			'DRUG_EXPOSURE.PROVIDER_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DRUG_EXPOSURE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PROVIDER_ID) = 0 
			OR (ISNUMERIC(cdmTable.PROVIDER_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PROVIDER_ID) AS varchar)) != 0))
			AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
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
			'DRUG_EXPOSURE.VISIT_OCCURRENCE_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DRUG_EXPOSURE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_OCCURRENCE_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_OCCURRENCE_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_OCCURRENCE_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
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
			'DRUG_EXPOSURE.VISIT_DETAIL_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DRUG_EXPOSURE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_DETAIL_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_DETAIL_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_DETAIL_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_SOURCE_CONCEPT_ID
**********/


SELECT 
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
			'DRUG_EXPOSURE.DRUG_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.DRUG_EXPOSURE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.DRUG_SOURCE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.DRUG_SOURCE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DRUG_SOURCE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.DRUG_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'FACT_RELATIONSHIP.DOMAIN_CONCEPT_ID_1' AS violating_field, 
			cdmTable.* 
		FROM dbo.FACT_RELATIONSHIP cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.DOMAIN_CONCEPT_ID_1) = 0 
			OR (ISNUMERIC(cdmTable.DOMAIN_CONCEPT_ID_1) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DOMAIN_CONCEPT_ID_1) AS varchar)) != 0))
			AND cdmTable.DOMAIN_CONCEPT_ID_1 IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.FACT_RELATIONSHIP
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'FACT_RELATIONSHIP.FACT_ID_1' AS violating_field, 
			cdmTable.* 
		FROM dbo.FACT_RELATIONSHIP cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.FACT_ID_1) = 0 
			OR (ISNUMERIC(cdmTable.FACT_ID_1) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.FACT_ID_1) AS varchar)) != 0))
			AND cdmTable.FACT_ID_1 IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.FACT_RELATIONSHIP
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'FACT_RELATIONSHIP.DOMAIN_CONCEPT_ID_2' AS violating_field, 
			cdmTable.* 
		FROM dbo.FACT_RELATIONSHIP cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.DOMAIN_CONCEPT_ID_2) = 0 
			OR (ISNUMERIC(cdmTable.DOMAIN_CONCEPT_ID_2) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DOMAIN_CONCEPT_ID_2) AS varchar)) != 0))
			AND cdmTable.DOMAIN_CONCEPT_ID_2 IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.FACT_RELATIONSHIP
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'FACT_RELATIONSHIP.FACT_ID_2' AS violating_field, 
			cdmTable.* 
		FROM dbo.FACT_RELATIONSHIP cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.FACT_ID_2) = 0 
			OR (ISNUMERIC(cdmTable.FACT_ID_2) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.FACT_ID_2) AS varchar)) != 0))
			AND cdmTable.FACT_ID_2 IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.FACT_RELATIONSHIP
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'FACT_RELATIONSHIP.RELATIONSHIP_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.FACT_RELATIONSHIP cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.RELATIONSHIP_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.RELATIONSHIP_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.RELATIONSHIP_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.RELATIONSHIP_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.FACT_RELATIONSHIP
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.LOCATION_ID) = 0 
			OR (ISNUMERIC(cdmTable.LOCATION_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.LOCATION_ID) AS varchar)) != 0))
			AND cdmTable.LOCATION_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.LOCATION
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.MEASUREMENT_ID) = 0 
			OR (ISNUMERIC(cdmTable.MEASUREMENT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.MEASUREMENT_ID) AS varchar)) != 0))
			AND cdmTable.MEASUREMENT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'MEASUREMENT.PERSON_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.MEASUREMENT cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PERSON_ID) = 0 
			OR (ISNUMERIC(cdmTable.PERSON_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PERSON_ID) AS varchar)) != 0))
			AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.MEASUREMENT_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.MEASUREMENT_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.MEASUREMENT_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.MEASUREMENT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.MEASUREMENT_TYPE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.MEASUREMENT_TYPE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.MEASUREMENT_TYPE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.MEASUREMENT_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
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
		WHERE 
			(ISNUMERIC(cdmTable.OPERATOR_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.OPERATOR_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.OPERATOR_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.OPERATOR_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = VALUE_AS_CONCEPT_ID
**********/


SELECT 
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
			'MEASUREMENT.VALUE_AS_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.MEASUREMENT cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.VALUE_AS_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.VALUE_AS_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VALUE_AS_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.VALUE_AS_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
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
		WHERE 
			(ISNUMERIC(cdmTable.UNIT_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.UNIT_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.UNIT_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.UNIT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
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
			'MEASUREMENT.PROVIDER_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.MEASUREMENT cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PROVIDER_ID) = 0 
			OR (ISNUMERIC(cdmTable.PROVIDER_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PROVIDER_ID) AS varchar)) != 0))
			AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
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
			'MEASUREMENT.VISIT_OCCURRENCE_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.MEASUREMENT cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_OCCURRENCE_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_OCCURRENCE_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_OCCURRENCE_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
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
			'MEASUREMENT.VISIT_DETAIL_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.MEASUREMENT cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_DETAIL_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_DETAIL_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_DETAIL_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_SOURCE_CONCEPT_ID
**********/


SELECT 
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
			'MEASUREMENT.MEASUREMENT_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.MEASUREMENT cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.MEASUREMENT_SOURCE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.MEASUREMENT_SOURCE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.MEASUREMENT_SOURCE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.MEASUREMENT_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.NOTE_ID) = 0 
			OR (ISNUMERIC(cdmTable.NOTE_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.NOTE_ID) AS varchar)) != 0))
			AND cdmTable.NOTE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'NOTE.PERSON_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.NOTE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PERSON_ID) = 0 
			OR (ISNUMERIC(cdmTable.PERSON_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PERSON_ID) AS varchar)) != 0))
			AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.NOTE_TYPE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.NOTE_TYPE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.NOTE_TYPE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.NOTE_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.NOTE_CLASS_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.NOTE_CLASS_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.NOTE_CLASS_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.NOTE_CLASS_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.ENCODING_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.ENCODING_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.ENCODING_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.ENCODING_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.LANGUAGE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.LANGUAGE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.LANGUAGE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.LANGUAGE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
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
			'NOTE.PROVIDER_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.NOTE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PROVIDER_ID) = 0 
			OR (ISNUMERIC(cdmTable.PROVIDER_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PROVIDER_ID) AS varchar)) != 0))
			AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
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
			'NOTE.VISIT_OCCURRENCE_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.NOTE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_OCCURRENCE_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_OCCURRENCE_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_OCCURRENCE_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
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
			'NOTE.VISIT_DETAIL_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.NOTE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_DETAIL_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_DETAIL_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_DETAIL_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.NOTE_NLP_ID) = 0 
			OR (ISNUMERIC(cdmTable.NOTE_NLP_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.NOTE_NLP_ID) AS varchar)) != 0))
			AND cdmTable.NOTE_NLP_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE_NLP
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'NOTE_NLP.NOTE_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.NOTE_NLP cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.NOTE_ID) = 0 
			OR (ISNUMERIC(cdmTable.NOTE_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.NOTE_ID) AS varchar)) != 0))
			AND cdmTable.NOTE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE_NLP
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
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
		WHERE 
			(ISNUMERIC(cdmTable.SECTION_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.SECTION_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.SECTION_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.SECTION_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE_NLP
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
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
		WHERE 
			(ISNUMERIC(cdmTable.NOTE_NLP_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.NOTE_NLP_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.NOTE_NLP_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.NOTE_NLP_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE_NLP
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = NOTE_NLP_SOURCE_CONCEPT_ID
**********/


SELECT 
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
			'NOTE_NLP.NOTE_NLP_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.NOTE_NLP cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.NOTE_NLP_SOURCE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.NOTE_NLP_SOURCE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.NOTE_NLP_SOURCE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.NOTE_NLP_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE_NLP
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.OBSERVATION_ID) = 0 
			OR (ISNUMERIC(cdmTable.OBSERVATION_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.OBSERVATION_ID) AS varchar)) != 0))
			AND cdmTable.OBSERVATION_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'OBSERVATION.PERSON_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.OBSERVATION cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PERSON_ID) = 0 
			OR (ISNUMERIC(cdmTable.PERSON_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PERSON_ID) AS varchar)) != 0))
			AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.OBSERVATION_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.OBSERVATION_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.OBSERVATION_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.OBSERVATION_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.OBSERVATION_TYPE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.OBSERVATION_TYPE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.OBSERVATION_TYPE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.OBSERVATION_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
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
		WHERE 
			(ISNUMERIC(cdmTable.QUALIFIER_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.QUALIFIER_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.QUALIFIER_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.QUALIFIER_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
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
		WHERE 
			(ISNUMERIC(cdmTable.UNIT_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.UNIT_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.UNIT_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.UNIT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
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
			'OBSERVATION.PROVIDER_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.OBSERVATION cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PROVIDER_ID) = 0 
			OR (ISNUMERIC(cdmTable.PROVIDER_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PROVIDER_ID) AS varchar)) != 0))
			AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
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
			'OBSERVATION.VISIT_OCCURRENCE_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.OBSERVATION cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_OCCURRENCE_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_OCCURRENCE_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_OCCURRENCE_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
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
			'OBSERVATION.VISIT_DETAIL_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.OBSERVATION cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_DETAIL_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_DETAIL_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_DETAIL_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_SOURCE_CONCEPT_ID
**********/


SELECT 
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
			'OBSERVATION.OBSERVATION_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.OBSERVATION cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.OBSERVATION_SOURCE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.OBSERVATION_SOURCE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.OBSERVATION_SOURCE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.OBSERVATION_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.OBSERVATION_PERIOD_ID) = 0 
			OR (ISNUMERIC(cdmTable.OBSERVATION_PERIOD_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.OBSERVATION_PERIOD_ID) AS varchar)) != 0))
			AND cdmTable.OBSERVATION_PERIOD_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION_PERIOD
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'OBSERVATION_PERIOD.PERSON_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.OBSERVATION_PERIOD cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PERSON_ID) = 0 
			OR (ISNUMERIC(cdmTable.PERSON_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PERSON_ID) AS varchar)) != 0))
			AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION_PERIOD
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.PAYER_PLAN_PERIOD_ID) = 0 
			OR (ISNUMERIC(cdmTable.PAYER_PLAN_PERIOD_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PAYER_PLAN_PERIOD_ID) AS varchar)) != 0))
			AND cdmTable.PAYER_PLAN_PERIOD_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PAYER_PLAN_PERIOD
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'PAYER_PLAN_PERIOD.PERSON_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PAYER_PLAN_PERIOD cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PERSON_ID) = 0 
			OR (ISNUMERIC(cdmTable.PERSON_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PERSON_ID) AS varchar)) != 0))
			AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PAYER_PLAN_PERIOD
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_CONCEPT_ID
**********/


SELECT 
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
			'PAYER_PLAN_PERIOD.PAYER_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PAYER_PLAN_PERIOD cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PAYER_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.PAYER_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PAYER_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.PAYER_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PAYER_PLAN_PERIOD
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_SOURCE_CONCEPT_ID
**********/


SELECT 
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
			'PAYER_PLAN_PERIOD.PAYER_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PAYER_PLAN_PERIOD cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PAYER_SOURCE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.PAYER_SOURCE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PAYER_SOURCE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.PAYER_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PAYER_PLAN_PERIOD
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_CONCEPT_ID
**********/


SELECT 
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
			'PAYER_PLAN_PERIOD.PLAN_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PAYER_PLAN_PERIOD cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PLAN_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.PLAN_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PLAN_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.PLAN_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PAYER_PLAN_PERIOD
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PLAN_SOURCE_CONCEPT_ID
**********/


SELECT 
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
			'PAYER_PLAN_PERIOD.PLAN_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PAYER_PLAN_PERIOD cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PLAN_SOURCE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.PLAN_SOURCE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PLAN_SOURCE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.PLAN_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PAYER_PLAN_PERIOD
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_CONCEPT_ID
**********/


SELECT 
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
			'PAYER_PLAN_PERIOD.SPONSOR_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PAYER_PLAN_PERIOD cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.SPONSOR_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.SPONSOR_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.SPONSOR_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.SPONSOR_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PAYER_PLAN_PERIOD
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = SPONSOR_SOURCE_CONCEPT_ID
**********/


SELECT 
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
			'PAYER_PLAN_PERIOD.SPONSOR_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PAYER_PLAN_PERIOD cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.SPONSOR_SOURCE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.SPONSOR_SOURCE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.SPONSOR_SOURCE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.SPONSOR_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PAYER_PLAN_PERIOD
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_CONCEPT_ID
**********/


SELECT 
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
			'PAYER_PLAN_PERIOD.STOP_REASON_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PAYER_PLAN_PERIOD cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.STOP_REASON_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.STOP_REASON_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.STOP_REASON_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.STOP_REASON_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PAYER_PLAN_PERIOD
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = STOP_REASON_SOURCE_CONCEPT_ID
**********/


SELECT 
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
			'PAYER_PLAN_PERIOD.STOP_REASON_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PAYER_PLAN_PERIOD cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.STOP_REASON_SOURCE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.STOP_REASON_SOURCE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.STOP_REASON_SOURCE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.STOP_REASON_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PAYER_PLAN_PERIOD
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.PERSON_ID) = 0 
			OR (ISNUMERIC(cdmTable.PERSON_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PERSON_ID) AS varchar)) != 0))
			AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PERSON
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.GENDER_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.GENDER_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.GENDER_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.GENDER_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PERSON
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'PERSON.YEAR_OF_BIRTH' AS violating_field, 
			cdmTable.* 
		FROM dbo.PERSON cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.YEAR_OF_BIRTH) = 0 
			OR (ISNUMERIC(cdmTable.YEAR_OF_BIRTH) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.YEAR_OF_BIRTH) AS varchar)) != 0))
			AND cdmTable.YEAR_OF_BIRTH IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PERSON
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = MONTH_OF_BIRTH
**********/


SELECT 
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
			'PERSON.MONTH_OF_BIRTH' AS violating_field, 
			cdmTable.* 
		FROM dbo.PERSON cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.MONTH_OF_BIRTH) = 0 
			OR (ISNUMERIC(cdmTable.MONTH_OF_BIRTH) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.MONTH_OF_BIRTH) AS varchar)) != 0))
			AND cdmTable.MONTH_OF_BIRTH IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PERSON
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = DAY_OF_BIRTH
**********/


SELECT 
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
			'PERSON.DAY_OF_BIRTH' AS violating_field, 
			cdmTable.* 
		FROM dbo.PERSON cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.DAY_OF_BIRTH) = 0 
			OR (ISNUMERIC(cdmTable.DAY_OF_BIRTH) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DAY_OF_BIRTH) AS varchar)) != 0))
			AND cdmTable.DAY_OF_BIRTH IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PERSON
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.RACE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.RACE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.RACE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.RACE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PERSON
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.ETHNICITY_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.ETHNICITY_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.ETHNICITY_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.ETHNICITY_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PERSON
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
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
			'PERSON.LOCATION_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PERSON cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.LOCATION_ID) = 0 
			OR (ISNUMERIC(cdmTable.LOCATION_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.LOCATION_ID) AS varchar)) != 0))
			AND cdmTable.LOCATION_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PERSON
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
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
			'PERSON.PROVIDER_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PERSON cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PROVIDER_ID) = 0 
			OR (ISNUMERIC(cdmTable.PROVIDER_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PROVIDER_ID) AS varchar)) != 0))
			AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PERSON
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
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
			'PERSON.CARE_SITE_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PERSON cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.CARE_SITE_ID) = 0 
			OR (ISNUMERIC(cdmTable.CARE_SITE_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.CARE_SITE_ID) AS varchar)) != 0))
			AND cdmTable.CARE_SITE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PERSON
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.PROCEDURE_OCCURRENCE_ID) = 0 
			OR (ISNUMERIC(cdmTable.PROCEDURE_OCCURRENCE_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PROCEDURE_OCCURRENCE_ID) AS varchar)) != 0))
			AND cdmTable.PROCEDURE_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'PROCEDURE_OCCURRENCE.PERSON_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PROCEDURE_OCCURRENCE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PERSON_ID) = 0 
			OR (ISNUMERIC(cdmTable.PERSON_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PERSON_ID) AS varchar)) != 0))
			AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.PROCEDURE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.PROCEDURE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PROCEDURE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.PROCEDURE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.PROCEDURE_TYPE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.PROCEDURE_TYPE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PROCEDURE_TYPE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.PROCEDURE_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
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
		WHERE 
			(ISNUMERIC(cdmTable.MODIFIER_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.MODIFIER_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.MODIFIER_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.MODIFIER_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = QUANTITY
**********/


SELECT 
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
			'PROCEDURE_OCCURRENCE.QUANTITY' AS violating_field, 
			cdmTable.* 
		FROM dbo.PROCEDURE_OCCURRENCE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.QUANTITY) = 0 
			OR (ISNUMERIC(cdmTable.QUANTITY) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.QUANTITY) AS varchar)) != 0))
			AND cdmTable.QUANTITY IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
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
			'PROCEDURE_OCCURRENCE.PROVIDER_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PROCEDURE_OCCURRENCE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PROVIDER_ID) = 0 
			OR (ISNUMERIC(cdmTable.PROVIDER_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PROVIDER_ID) AS varchar)) != 0))
			AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
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
			'PROCEDURE_OCCURRENCE.VISIT_OCCURRENCE_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PROCEDURE_OCCURRENCE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_OCCURRENCE_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_OCCURRENCE_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_OCCURRENCE_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
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
			'PROCEDURE_OCCURRENCE.VISIT_DETAIL_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PROCEDURE_OCCURRENCE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_DETAIL_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_DETAIL_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_DETAIL_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_SOURCE_CONCEPT_ID
**********/


SELECT 
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
			'PROCEDURE_OCCURRENCE.PROCEDURE_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PROCEDURE_OCCURRENCE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PROCEDURE_SOURCE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.PROCEDURE_SOURCE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PROCEDURE_SOURCE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.PROCEDURE_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.PROVIDER_ID) = 0 
			OR (ISNUMERIC(cdmTable.PROVIDER_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PROVIDER_ID) AS varchar)) != 0))
			AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROVIDER
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
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
		WHERE 
			(ISNUMERIC(cdmTable.SPECIALTY_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.SPECIALTY_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.SPECIALTY_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.SPECIALTY_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROVIDER
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
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
			'PROVIDER.CARE_SITE_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PROVIDER cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.CARE_SITE_ID) = 0 
			OR (ISNUMERIC(cdmTable.CARE_SITE_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.CARE_SITE_ID) AS varchar)) != 0))
			AND cdmTable.CARE_SITE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROVIDER
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
cdmFieldName = YEAR_OF_BIRTH
**********/


SELECT 
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
			'PROVIDER.YEAR_OF_BIRTH' AS violating_field, 
			cdmTable.* 
		FROM dbo.PROVIDER cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.YEAR_OF_BIRTH) = 0 
			OR (ISNUMERIC(cdmTable.YEAR_OF_BIRTH) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.YEAR_OF_BIRTH) AS varchar)) != 0))
			AND cdmTable.YEAR_OF_BIRTH IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROVIDER
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
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
		WHERE 
			(ISNUMERIC(cdmTable.GENDER_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.GENDER_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.GENDER_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.GENDER_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROVIDER
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
cdmFieldName = SPECIALTY_SOURCE_CONCEPT_ID
**********/


SELECT 
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
			'PROVIDER.SPECIALTY_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PROVIDER cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.SPECIALTY_SOURCE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.SPECIALTY_SOURCE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.SPECIALTY_SOURCE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.SPECIALTY_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROVIDER
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = PROVIDER
cdmFieldName = GENDER_SOURCE_CONCEPT_ID
**********/


SELECT 
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
			'PROVIDER.GENDER_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.PROVIDER cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.GENDER_SOURCE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.GENDER_SOURCE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.GENDER_SOURCE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.GENDER_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROVIDER
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.SPECIMEN_ID) = 0 
			OR (ISNUMERIC(cdmTable.SPECIMEN_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.SPECIMEN_ID) AS varchar)) != 0))
			AND cdmTable.SPECIMEN_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.SPECIMEN
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'SPECIMEN.PERSON_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.SPECIMEN cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PERSON_ID) = 0 
			OR (ISNUMERIC(cdmTable.PERSON_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PERSON_ID) AS varchar)) != 0))
			AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.SPECIMEN
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.SPECIMEN_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.SPECIMEN_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.SPECIMEN_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.SPECIMEN_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.SPECIMEN
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.SPECIMEN_TYPE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.SPECIMEN_TYPE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.SPECIMEN_TYPE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.SPECIMEN_TYPE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.SPECIMEN
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
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
		WHERE 
			(ISNUMERIC(cdmTable.UNIT_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.UNIT_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.UNIT_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.UNIT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.SPECIMEN
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
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
		WHERE 
			(ISNUMERIC(cdmTable.ANATOMIC_SITE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.ANATOMIC_SITE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.ANATOMIC_SITE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.ANATOMIC_SITE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.SPECIMEN
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
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
		WHERE 
			(ISNUMERIC(cdmTable.DISEASE_STATUS_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.DISEASE_STATUS_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DISEASE_STATUS_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.DISEASE_STATUS_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.SPECIMEN
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_DETAIL_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_DETAIL_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_DETAIL_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_DETAIL_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_DETAIL
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'VISIT_DETAIL.PERSON_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_DETAIL cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PERSON_ID) = 0 
			OR (ISNUMERIC(cdmTable.PERSON_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PERSON_ID) AS varchar)) != 0))
			AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_DETAIL
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_DETAIL_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_DETAIL_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_DETAIL_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_DETAIL_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_DETAIL
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
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
			'VISIT_DETAIL.PROVIDER_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_DETAIL cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PROVIDER_ID) = 0 
			OR (ISNUMERIC(cdmTable.PROVIDER_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PROVIDER_ID) AS varchar)) != 0))
			AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_DETAIL
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
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
			'VISIT_DETAIL.CARE_SITE_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_DETAIL cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.CARE_SITE_ID) = 0 
			OR (ISNUMERIC(cdmTable.CARE_SITE_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.CARE_SITE_ID) AS varchar)) != 0))
			AND cdmTable.CARE_SITE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_DETAIL
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_OCCURRENCE_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_OCCURRENCE_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_OCCURRENCE_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
FROM
(
	SELECT 
		COUNT_BIG(violated_rows.violating_field) AS num_violated_rows
	FROM
	(
		/*violatedRowsBegin*/
		SELECT 
			'VISIT_OCCURRENCE.PERSON_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_OCCURRENCE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PERSON_ID) = 0 
			OR (ISNUMERIC(cdmTable.PERSON_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PERSON_ID) AS varchar)) != 0))
			AND cdmTable.PERSON_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

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
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
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
			'VISIT_OCCURRENCE.PROVIDER_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_OCCURRENCE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PROVIDER_ID) = 0 
			OR (ISNUMERIC(cdmTable.PROVIDER_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PROVIDER_ID) AS varchar)) != 0))
			AND cdmTable.PROVIDER_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
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
			'VISIT_OCCURRENCE.CARE_SITE_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_OCCURRENCE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.CARE_SITE_ID) = 0 
			OR (ISNUMERIC(cdmTable.CARE_SITE_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.CARE_SITE_ID) AS varchar)) != 0))
			AND cdmTable.CARE_SITE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_SOURCE_CONCEPT_ID
**********/


SELECT 
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
			'VISIT_OCCURRENCE.VISIT_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_OCCURRENCE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.VISIT_SOURCE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.VISIT_SOURCE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.VISIT_SOURCE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.VISIT_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = ADMITTING_SOURCE_CONCEPT_ID
**********/


SELECT 
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
			'VISIT_OCCURRENCE.ADMITTING_SOURCE_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_OCCURRENCE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.ADMITTING_SOURCE_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.ADMITTING_SOURCE_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.ADMITTING_SOURCE_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.ADMITTING_SOURCE_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = DISCHARGE_TO_CONCEPT_ID
**********/


SELECT 
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
			'VISIT_OCCURRENCE.DISCHARGE_TO_CONCEPT_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_OCCURRENCE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.DISCHARGE_TO_CONCEPT_ID) = 0 
			OR (ISNUMERIC(cdmTable.DISCHARGE_TO_CONCEPT_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.DISCHARGE_TO_CONCEPT_ID) AS varchar)) != 0))
			AND cdmTable.DISCHARGE_TO_CONCEPT_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE
) denominator
;


/*********
FIELD_CDM_DATATYPE

In some SQL dialects, check that integer fields only contain digits.
In others, check that integer fields are numeric and contain no decimal points

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = PRECEDING_VISIT_OCCURRENCE_ID
**********/


SELECT 
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
			'VISIT_OCCURRENCE.PRECEDING_VISIT_OCCURRENCE_ID' AS violating_field, 
			cdmTable.* 
		FROM dbo.VISIT_OCCURRENCE cdmTable
		WHERE 
			(ISNUMERIC(cdmTable.PRECEDING_VISIT_OCCURRENCE_ID) = 0 
			OR (ISNUMERIC(cdmTable.PRECEDING_VISIT_OCCURRENCE_ID) = 1 
				AND CHARINDEX('.', CAST(ABS(cdmTable.PRECEDING_VISIT_OCCURRENCE_ID) AS varchar)) != 0))
			AND cdmTable.PRECEDING_VISIT_OCCURRENCE_ID IS NOT NULL
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
( 
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE
) denominator
;

