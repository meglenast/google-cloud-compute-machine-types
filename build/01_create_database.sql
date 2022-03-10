/*
 * Create SQLite3 database for GCE machine type informations
 */

DROP TABLE IF EXISTS "machinetypes";
CREATE TABLE "machinetypes" (
	"name"                         TEXT NOT NULL DEFAULT '',
	'description'                  TEXT NOT NULL DEFAULT '',
	'location'                     TEXT NOT NULL DEFAULT '',
	'region'                       TEXT NOT NULL DEFAULT '',
	'zone'                         TEXT NOT NULL DEFAULT '',
	'guestCpus'                    INT  NOT NULL DEFAULT '0',
	'isSharedCpu'                  TEXT NOT NULL DEFAULT 'false',
	'memoryGiB'                    REAL NOT NULL DEFAULT '0.0',
	'guestAcceleratorCount'        INT  NOT NULL DEFAULT '0',
	'guestAcceleratorType'         TEXT NOT NULL DEFAULT '',
	'maximumPersistentDisks'       INT  NOT NULL DEFAULT '0',
	'maximumPersistentDisksSizeGb' INT  NOT NULL DEFAULT '0',
	PRIMARY KEY("name", "zone")
);

DROP TABLE IF EXISTS "zones";
CREATE TABLE "zones" (
	"name"                  TEXT NOT NULL DEFAULT '',
	'availableCpuPlatforms' TEXT NOT NULL DEFAULT '',
	PRIMARY KEY("name")
);

DROP TABLE IF EXISTS "instances";
CREATE TABLE "instances" (
	"name"                      TEXT NOT NULL DEFAULT '',
	"series"                    TEXT DEFAULT 'TODO',
	"family"                    TEXT DEFAULT 'TODO',
	"description"               TEXT DEFAULT '',
	"location"                  TEXT NOT NULL DEFAULT '',
	"region"                    TEXT NOT NULL DEFAULT '',
	"regionLocation"            TEXT NOT NULL DEFAULT '',
	"zoneCount"                 REAL DEFAULT '0.0',
	"zones"                     TEXT DEFAULT '',
	"vCpus"                     REAL DEFAULT '0.0',
	"sharedCpu"                 TEXT DEFAULT 'false',
	"intel"                     REAL DEFAULT '0.0',
	"amd"                       REAL DEFAULT '0.0',
	"cpuPlatformCount"          REAL DEFAULT '0.0',
	"cpuPlatform"               TEXT DEFAULT '',
	"cpuBaseClock"              REAL DEFAULT '0.0',
	"cpuTurboClock"             REAL DEFAULT '0.0',
	"cpuSingleMaxTurboClock"    REAL DEFAULT '0.0',
	"availableCpuPlatformCount" REAL DEFAULT '0.0',
	"availableCpuPlatform"      TEXT DEFAULT '',
	"coremarkScore"             REAL DEFAULT '0.0',
	"standardDeviation"         REAL DEFAULT '0.0',
	"sampleCount"               REAL DEFAULT '0.0',
	"memoryGiB"                 REAL DEFAULT '0.0',
	"acceleratorCount"          REAL DEFAULT '0.0',
	"acceleratorType"           TEXT DEFAULT '',
	"disks"                     REAL DEFAULT '0.0',
	"disksSizeGb"               REAL DEFAULT '0.0',
	"localSsd"                  REAL DEFAULT '0.0',
	"bandwidth"                 REAL DEFAULT '0.0',
	"tier1"                     REAL DEFAULT '0.0',
	"sap"                       REAL DEFAULT '0.0',
	"saps"                      REAL DEFAULT '0.0',
	"hana"                      REAL DEFAULT '0.0',
	"sud"                       REAL DEFAULT '0.0',
	"spot"                      REAL DEFAULT '0.0',
	"hour"                      REAL DEFAULT '0.0',
	"month"                     REAL DEFAULT '0.0',
	"month1yCud"                REAL DEFAULT '0.0',
	"month3yCud"                REAL DEFAULT '0.0',
	"monthSles"                 REAL DEFAULT '0.0',
	"monthSlesSap"              REAL DEFAULT '0.0',
	"monthSlesSap1yCud"         REAL DEFAULT '0.0',
	"monthSlesSap3yCud"         REAL DEFAULT '0.0',
	"monthRhel"                 REAL DEFAULT '0.0',
	"monthRhelSap"              REAL DEFAULT '0.0',
	"monthWindows"              REAL DEFAULT '0.0',
	PRIMARY KEY("name", "region")
);