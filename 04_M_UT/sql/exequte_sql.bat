@echo off

psql -f createTable.sql -U postgres

psql -f insertInitData.sql -U postgres

psql -f sampleDate_workmanage.sql -U postgres

pause