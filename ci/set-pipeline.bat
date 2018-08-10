@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Pipeline script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set ALIAS=lite
set PIPELINE_NAME=cities-service

fly -t "%ALIAS%" sp -p "%PIPELINE_NAME%" -c pipeline.yml -l "credentials.yml"
fly -t "%ALIAS%" up -p "%PIPELINE_NAME%"
fly -t "%ALIAS%" trigger-job -j %PIPELINE_NAME%/run-acceptance-tests -w