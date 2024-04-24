
/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CDM_SOURCE
cdmFieldName = CDM_RELEASE_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'CDM_SOURCE.CDM_RELEASE_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.CDM_SOURCE cdmTable
        
    	
      	    WHERE cast(cdmTable.CDM_RELEASE_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CDM_SOURCE cdmTable
    
  	WHERE CDM_RELEASE_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CDM_SOURCE
cdmFieldName = SOURCE_RELEASE_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'CDM_SOURCE.SOURCE_RELEASE_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.CDM_SOURCE cdmTable
        
    	
      	    WHERE cast(cdmTable.SOURCE_RELEASE_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CDM_SOURCE cdmTable
    
  	WHERE SOURCE_RELEASE_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = COHORT
cdmFieldName = COHORT_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'COHORT.COHORT_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.COHORT cdmTable
        
    	
      	    WHERE cast(cdmTable.COHORT_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.COHORT cdmTable
    
  	WHERE COHORT_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = COHORT
cdmFieldName = COHORT_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'COHORT.COHORT_START_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.COHORT cdmTable
        
    	
      	    WHERE cast(cdmTable.COHORT_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.COHORT cdmTable
    
  	WHERE COHORT_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'CONDITION_ERA.CONDITION_ERA_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.CONDITION_ERA cdmTable
        
    	
      	    WHERE cast(cdmTable.CONDITION_ERA_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_ERA cdmTable
    
  	WHERE CONDITION_ERA_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_ERA
cdmFieldName = CONDITION_ERA_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'CONDITION_ERA.CONDITION_ERA_START_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.CONDITION_ERA cdmTable
        
    	
      	    WHERE cast(cdmTable.CONDITION_ERA_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_ERA cdmTable
    
  	WHERE CONDITION_ERA_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'CONDITION_OCCURRENCE.CONDITION_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.CONDITION_OCCURRENCE cdmTable
        
    	
      	    WHERE cast(cdmTable.CONDITION_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE cdmTable
    
  	WHERE CONDITION_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_END_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'CONDITION_OCCURRENCE.CONDITION_END_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.CONDITION_OCCURRENCE cdmTable
        
    	
      	    WHERE cast(cdmTable.CONDITION_END_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE cdmTable
    
  	WHERE CONDITION_END_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'CONDITION_OCCURRENCE.CONDITION_START_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.CONDITION_OCCURRENCE cdmTable
        
    	
      	    WHERE cast(cdmTable.CONDITION_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE cdmTable
    
  	WHERE CONDITION_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = CONDITION_OCCURRENCE
cdmFieldName = CONDITION_START_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'CONDITION_OCCURRENCE.CONDITION_START_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.CONDITION_OCCURRENCE cdmTable
        
    	
      	    WHERE cast(cdmTable.CONDITION_START_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.CONDITION_OCCURRENCE cdmTable
    
  	WHERE CONDITION_START_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEATH
cdmFieldName = DEATH_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'DEATH.DEATH_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DEATH cdmTable
        
    	
      	    WHERE cast(cdmTable.DEATH_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEATH cdmTable
    
  	WHERE DEATH_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEATH
cdmFieldName = DEATH_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'DEATH.DEATH_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DEATH cdmTable
        
    	
      	    WHERE cast(cdmTable.DEATH_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEATH cdmTable
    
  	WHERE DEATH_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'DEVICE_EXPOSURE.DEVICE_EXPOSURE_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DEVICE_EXPOSURE cdmTable
        
    	
      	    WHERE cast(cdmTable.DEVICE_EXPOSURE_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE cdmTable
    
  	WHERE DEVICE_EXPOSURE_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_END_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'DEVICE_EXPOSURE.DEVICE_EXPOSURE_END_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DEVICE_EXPOSURE cdmTable
        
    	
      	    WHERE cast(cdmTable.DEVICE_EXPOSURE_END_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE cdmTable
    
  	WHERE DEVICE_EXPOSURE_END_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'DEVICE_EXPOSURE.DEVICE_EXPOSURE_START_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DEVICE_EXPOSURE cdmTable
        
    	
      	    WHERE cast(cdmTable.DEVICE_EXPOSURE_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE cdmTable
    
  	WHERE DEVICE_EXPOSURE_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DEVICE_EXPOSURE
cdmFieldName = DEVICE_EXPOSURE_START_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'DEVICE_EXPOSURE.DEVICE_EXPOSURE_START_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DEVICE_EXPOSURE cdmTable
        
    	
      	    WHERE cast(cdmTable.DEVICE_EXPOSURE_START_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DEVICE_EXPOSURE cdmTable
    
  	WHERE DEVICE_EXPOSURE_START_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'DOSE_ERA.DOSE_ERA_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DOSE_ERA cdmTable
        
    	
      	    WHERE cast(cdmTable.DOSE_ERA_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DOSE_ERA cdmTable
    
  	WHERE DOSE_ERA_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DOSE_ERA
cdmFieldName = DOSE_ERA_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'DOSE_ERA.DOSE_ERA_START_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DOSE_ERA cdmTable
        
    	
      	    WHERE cast(cdmTable.DOSE_ERA_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DOSE_ERA cdmTable
    
  	WHERE DOSE_ERA_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'DRUG_ERA.DRUG_ERA_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DRUG_ERA cdmTable
        
    	
      	    WHERE cast(cdmTable.DRUG_ERA_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_ERA cdmTable
    
  	WHERE DRUG_ERA_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_ERA
cdmFieldName = DRUG_ERA_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'DRUG_ERA.DRUG_ERA_START_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DRUG_ERA cdmTable
        
    	
      	    WHERE cast(cdmTable.DRUG_ERA_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_ERA cdmTable
    
  	WHERE DRUG_ERA_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DAYS_SUPPLY
plausibleValueHigh = 365

**********/

SELECT 
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
        
    	
      	    WHERE cdmTable.DAYS_SUPPLY > 365
		
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
    
  	WHERE DAYS_SUPPLY IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'DRUG_EXPOSURE.DRUG_EXPOSURE_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DRUG_EXPOSURE cdmTable
        
    	
      	    WHERE cast(cdmTable.DRUG_EXPOSURE_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
    
  	WHERE DRUG_EXPOSURE_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_END_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'DRUG_EXPOSURE.DRUG_EXPOSURE_END_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DRUG_EXPOSURE cdmTable
        
    	
      	    WHERE cast(cdmTable.DRUG_EXPOSURE_END_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
    
  	WHERE DRUG_EXPOSURE_END_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'DRUG_EXPOSURE.DRUG_EXPOSURE_START_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DRUG_EXPOSURE cdmTable
        
    	
      	    WHERE cast(cdmTable.DRUG_EXPOSURE_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
    
  	WHERE DRUG_EXPOSURE_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = DRUG_EXPOSURE_START_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'DRUG_EXPOSURE.DRUG_EXPOSURE_START_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DRUG_EXPOSURE cdmTable
        
    	
      	    WHERE cast(cdmTable.DRUG_EXPOSURE_START_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
    
  	WHERE DRUG_EXPOSURE_START_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = QUANTITY
plausibleValueHigh = 1095

**********/

SELECT 
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
            'DRUG_EXPOSURE.QUANTITY' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DRUG_EXPOSURE cdmTable
        
    	
      	    WHERE cdmTable.QUANTITY > 1095
		
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
    
  	WHERE QUANTITY IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = REFILLS
plausibleValueHigh = 24

**********/

SELECT 
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
        
    	
      	    WHERE cdmTable.REFILLS > 24
		
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
    
  	WHERE REFILLS IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = DRUG_EXPOSURE
cdmFieldName = VERBATIM_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'DRUG_EXPOSURE.VERBATIM_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.DRUG_EXPOSURE cdmTable
        
    	
      	    WHERE cast(cdmTable.VERBATIM_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.DRUG_EXPOSURE cdmTable
    
  	WHERE VERBATIM_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = EPISODE
cdmFieldName = EPISODE_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'EPISODE.EPISODE_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.EPISODE cdmTable
        
    	
      	    WHERE cast(cdmTable.EPISODE_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.EPISODE cdmTable
    
  	WHERE EPISODE_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = EPISODE
cdmFieldName = EPISODE_END_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'EPISODE.EPISODE_END_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.EPISODE cdmTable
        
    	
      	    WHERE cast(cdmTable.EPISODE_END_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.EPISODE cdmTable
    
  	WHERE EPISODE_END_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = EPISODE
cdmFieldName = EPISODE_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'EPISODE.EPISODE_START_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.EPISODE cdmTable
        
    	
      	    WHERE cast(cdmTable.EPISODE_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.EPISODE cdmTable
    
  	WHERE EPISODE_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = EPISODE
cdmFieldName = EPISODE_START_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'EPISODE.EPISODE_START_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.EPISODE cdmTable
        
    	
      	    WHERE cast(cdmTable.EPISODE_START_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.EPISODE cdmTable
    
  	WHERE EPISODE_START_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'MEASUREMENT.MEASUREMENT_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.MEASUREMENT cdmTable
        
    	
      	    WHERE cast(cdmTable.MEASUREMENT_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT cdmTable
    
  	WHERE MEASUREMENT_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = MEASUREMENT
cdmFieldName = MEASUREMENT_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'MEASUREMENT.MEASUREMENT_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.MEASUREMENT cdmTable
        
    	
      	    WHERE cast(cdmTable.MEASUREMENT_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.MEASUREMENT cdmTable
    
  	WHERE MEASUREMENT_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'NOTE.NOTE_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.NOTE cdmTable
        
    	
      	    WHERE cast(cdmTable.NOTE_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE cdmTable
    
  	WHERE NOTE_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = NOTE
cdmFieldName = NOTE_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'NOTE.NOTE_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.NOTE cdmTable
        
    	
      	    WHERE cast(cdmTable.NOTE_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE cdmTable
    
  	WHERE NOTE_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = NOTE_NLP
cdmFieldName = NLP_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'NOTE_NLP.NLP_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.NOTE_NLP cdmTable
        
    	
      	    WHERE cast(cdmTable.NLP_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.NOTE_NLP cdmTable
    
  	WHERE NLP_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'OBSERVATION.OBSERVATION_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.OBSERVATION cdmTable
        
    	
      	    WHERE cast(cdmTable.OBSERVATION_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION cdmTable
    
  	WHERE OBSERVATION_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION
cdmFieldName = OBSERVATION_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'OBSERVATION.OBSERVATION_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.OBSERVATION cdmTable
        
    	
      	    WHERE cast(cdmTable.OBSERVATION_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION cdmTable
    
  	WHERE OBSERVATION_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'OBSERVATION_PERIOD.OBSERVATION_PERIOD_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.OBSERVATION_PERIOD cdmTable
        
    	
      	    WHERE cast(cdmTable.OBSERVATION_PERIOD_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION_PERIOD cdmTable
    
  	WHERE OBSERVATION_PERIOD_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = OBSERVATION_PERIOD
cdmFieldName = OBSERVATION_PERIOD_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'OBSERVATION_PERIOD.OBSERVATION_PERIOD_START_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.OBSERVATION_PERIOD cdmTable
        
    	
      	    WHERE cast(cdmTable.OBSERVATION_PERIOD_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.OBSERVATION_PERIOD cdmTable
    
  	WHERE OBSERVATION_PERIOD_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.PAYER_PLAN_PERIOD cdmTable
        
    	
      	    WHERE cast(cdmTable.PAYER_PLAN_PERIOD_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PAYER_PLAN_PERIOD cdmTable
    
  	WHERE PAYER_PLAN_PERIOD_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PAYER_PLAN_PERIOD
cdmFieldName = PAYER_PLAN_PERIOD_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'PAYER_PLAN_PERIOD.PAYER_PLAN_PERIOD_START_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.PAYER_PLAN_PERIOD cdmTable
        
    	
      	    WHERE cast(cdmTable.PAYER_PLAN_PERIOD_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PAYER_PLAN_PERIOD cdmTable
    
  	WHERE PAYER_PLAN_PERIOD_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = BIRTH_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'PERSON.BIRTH_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.PERSON cdmTable
        
    	
      	    WHERE cast(cdmTable.BIRTH_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PERSON cdmTable
    
  	WHERE BIRTH_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = DAY_OF_BIRTH
plausibleValueHigh = 31

**********/

SELECT 
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
        
    	
      	    WHERE cdmTable.DAY_OF_BIRTH > 31
		
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PERSON cdmTable
    
  	WHERE DAY_OF_BIRTH IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = MONTH_OF_BIRTH
plausibleValueHigh = 12

**********/

SELECT 
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
        
    	
      	    WHERE cdmTable.MONTH_OF_BIRTH > 12
		
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PERSON cdmTable
    
  	WHERE MONTH_OF_BIRTH IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PERSON
cdmFieldName = YEAR_OF_BIRTH
plausibleValueHigh = YEAR(GETDATE())+1

**********/

SELECT 
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
        
    	
      	    WHERE cdmTable.YEAR_OF_BIRTH > YEAR(GETDATE())+1
		
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PERSON cdmTable
    
  	WHERE YEAR_OF_BIRTH IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'PROCEDURE_OCCURRENCE.PROCEDURE_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
    	
      	    WHERE cast(cdmTable.PROCEDURE_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    
  	WHERE PROCEDURE_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'PROCEDURE_OCCURRENCE.PROCEDURE_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
    	
      	    WHERE cast(cdmTable.PROCEDURE_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    
  	WHERE PROCEDURE_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'PROCEDURE_OCCURRENCE.PROCEDURE_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
    	
      	    WHERE cast(cdmTable.PROCEDURE_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    
  	WHERE PROCEDURE_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = PROCEDURE_OCCURRENCE
cdmFieldName = PROCEDURE_END_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'PROCEDURE_OCCURRENCE.PROCEDURE_END_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.PROCEDURE_OCCURRENCE cdmTable
        
    	
      	    WHERE cast(cdmTable.PROCEDURE_END_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.PROCEDURE_OCCURRENCE cdmTable
    
  	WHERE PROCEDURE_END_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'SPECIMEN.SPECIMEN_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.SPECIMEN cdmTable
        
    	
      	    WHERE cast(cdmTable.SPECIMEN_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.SPECIMEN cdmTable
    
  	WHERE SPECIMEN_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = SPECIMEN
cdmFieldName = SPECIMEN_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'SPECIMEN.SPECIMEN_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.SPECIMEN cdmTable
        
    	
      	    WHERE cast(cdmTable.SPECIMEN_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.SPECIMEN cdmTable
    
  	WHERE SPECIMEN_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'VISIT_DETAIL.VISIT_DETAIL_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.VISIT_DETAIL cdmTable
        
    	
      	    WHERE cast(cdmTable.VISIT_DETAIL_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_DETAIL cdmTable
    
  	WHERE VISIT_DETAIL_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_END_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'VISIT_DETAIL.VISIT_DETAIL_END_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.VISIT_DETAIL cdmTable
        
    	
      	    WHERE cast(cdmTable.VISIT_DETAIL_END_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_DETAIL cdmTable
    
  	WHERE VISIT_DETAIL_END_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'VISIT_DETAIL.VISIT_DETAIL_START_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.VISIT_DETAIL cdmTable
        
    	
      	    WHERE cast(cdmTable.VISIT_DETAIL_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_DETAIL cdmTable
    
  	WHERE VISIT_DETAIL_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_DETAIL
cdmFieldName = VISIT_DETAIL_START_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'VISIT_DETAIL.VISIT_DETAIL_START_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.VISIT_DETAIL cdmTable
        
    	
      	    WHERE cast(cdmTable.VISIT_DETAIL_START_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_DETAIL cdmTable
    
  	WHERE VISIT_DETAIL_START_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'VISIT_OCCURRENCE.VISIT_END_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.VISIT_OCCURRENCE cdmTable
        
    	
      	    WHERE cast(cdmTable.VISIT_END_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE cdmTable
    
  	WHERE VISIT_END_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_END_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'VISIT_OCCURRENCE.VISIT_END_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.VISIT_OCCURRENCE cdmTable
        
    	
      	    WHERE cast(cdmTable.VISIT_END_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE cdmTable
    
  	WHERE VISIT_END_DATETIME IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATE
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'VISIT_OCCURRENCE.VISIT_START_DATE' AS violating_field, 
		    cdmTable.*
    	FROM dbo.VISIT_OCCURRENCE cdmTable
        
    	
      	    WHERE cast(cdmTable.VISIT_START_DATE as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE cdmTable
    
  	WHERE VISIT_START_DATE IS NOT NULL
) denominator
;


/*********
PLAUSIBLE_VALUE_HIGH
get number of records and the proportion to total number of eligible records that exceed this threshold

Parameters used in this template:
schema = dbo
cdmTableName = VISIT_OCCURRENCE
cdmFieldName = VISIT_START_DATETIME
plausibleValueHigh = DATEADD(dd,1,GETDATE())

**********/

SELECT 
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
            'VISIT_OCCURRENCE.VISIT_START_DATETIME' AS violating_field, 
		    cdmTable.*
    	FROM dbo.VISIT_OCCURRENCE cdmTable
        
    	
      	    WHERE cast(cdmTable.VISIT_START_DATETIME as date) > cast(DATEADD(dd,1,GETDATE()) as date)
    	
		/*violatedRowsEnd*/
	) violated_rows
) violated_row_count,
(
	SELECT 
		COUNT_BIG(*) AS num_rows
	FROM dbo.VISIT_OCCURRENCE cdmTable
    
  	WHERE VISIT_START_DATETIME IS NOT NULL
) denominator
;

