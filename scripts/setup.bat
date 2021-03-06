@ECHO OFF

REM Copyright 2012 Google Inc. All Rights Reserved.
REM
REM blk-game Windows setup script
REM
REM This script sets up the repository and dependencies.
REM The dependencies are all global.

ECHO.
REM ============================================================================
REM Check for Python/node/etc
REM ============================================================================
ECHO Checking for dependencies...

REM TODO(benvanik): check python/node versions

ECHO WARNING: you need to make sure you have Python 2.6+ and node 0.8.4+!
ECHO WARNING: attempting to install pip - install it yourself if it fails!

easy_install pip

ECHO.
REM ============================================================================
REM Pull in GF
REM ============================================================================
ECHO Grabbing third_party/...

git submodule update --init --recursive

ECHO.
REM ============================================================================
REM Node modules
REM ============================================================================
ECHO Installing node modules...

CALL npm install

ECHO.
REM ============================================================================
REM GF setup (checks for python/easy_install/installs dependencies/etc)
REM ============================================================================
ECHO Running games-framework setup.sh...

CALL third_party\games-framework\scripts\setup.bat

ECHO.
