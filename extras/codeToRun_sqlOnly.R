#' This is an example of how to run DQD in sqlOnlyIncrementalInsert mode
#' There are two main advantages of running DQD in  sqlOnlyIncrementalInsert mode:
#' - Create queries locally, before sending to server. This allows for inspection of code before execution.
#' - Faster. With sqlOnlyUnionCount > 1 multiple checks can be executed in parallel in one query.
install.packages("rJava", INSTALL_opts= "--no-multiarch")
install.packages("devtools")
devtools::install_github("OHDSI/DatabaseConnector", INSTALL_opts= "--no-multiarch")
devtools::install_github("OHDSI/DataQualityDashboard", INSTALL_opts= "--no-multiarch")

library(DataQualityDashboard)

downloadJdbcDrivers(dbms='sql server', pathToDriver="jdbc_driver/")

# ConnectionDetails object needed for sql dialect
dbmsConnectionDetails <- DatabaseConnector::createConnectionDetails(
  dbms = "sql server", # any valid options - such as 'redshift', 'sql server', etc.
  pathToDriver = "jdbc_driver/"
)

# Database parameters that are pre-filled in the written queries
# Use @-syntax if creating a template-sql at execution-time (e.g. "@cdmDatabaseSchema")
cdmDatabaseSchema <- "dbo" # the fully qualified database schema name of the CDM
resultsDatabaseSchema <- "dbo" # the fully qualified database schema name of the results schema (that you can write to)
writeTableName <- "dqdashboard_results"

sqlFolder <- "output/SQL_v1_54_insert_table"
cdmSourceName <- "Synthea" # a human readable name for your CDM source

sqlOnly <- TRUE
sqlOnlyUnionCount <- 2000  # Number of check sqls to union in a single query. A smaller number gives more control and progress information, a higher number typically gives a higher performance.  
sqlOnlyIncrementalInsert <- TRUE # If FALSE, then pre v2.3.0 format.  If TRUE, then wraps check query in cte with all metadata and inserts into result table

verboseMode <- TRUE

cdmVersion <- "5.4" # version of your CDM
checkLevels <- c("TABLE", "FIELD", "CONCEPT")
tablesToExclude <- c()
checkNames <- c("cdmTable", 
                "measurePersonCompleteness", 
                "measureConditionEraCompleteness",
                "cdmField",
                "isRequired",
                "cdmDatatype",
                "isPrimaryKey",
                "isForeignKey",
                "fkDomain",
                "fkClass",
                "isStandardValidConcept",
                "measureValueCompleteness",
                "standardConceptRecordCompleteness",
                "sourceConceptRecordCompleteness",
                "sourceValueCompleteness",
                "plausibleValueLow",
                "plausibleValueHigh",
                "plausibleTemporalAfter",
                "plausibleDuringLife",
                "withinVisitDates",
                "plausibleGender",
                "plausibleUnitConceptIds")

DataQualityDashboard::executeDqChecks(
  connectionDetails = dbmsConnectionDetails,
  cdmDatabaseSchema = cdmDatabaseSchema,
  resultsDatabaseSchema = resultsDatabaseSchema,
  writeTableName = writeTableName,
  cdmSourceName = cdmSourceName,
  sqlOnly = sqlOnly,
  sqlOnlyUnionCount = sqlOnlyUnionCount,
  sqlOnlyIncrementalInsert = sqlOnlyIncrementalInsert,
  outputFolder = sqlFolder,
  checkLevels = checkLevels,
  verboseMode = verboseMode,
  cdmVersion = cdmVersion,
  tablesToExclude = tablesToExclude,
  checkNames = checkNames
)
