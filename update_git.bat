@echo off
echo ==========================================
echo       Updating Git Repository...
echo ==========================================
echo.

:: Add all changes
git add .

:: Prompt for commit message
set /p commit_msg="Enter commit message (Press Enter for default: Update website): "

if "%commit_msg%"=="" (
    set commit_msg=Update website content - %date% %time%
)

:: Commit changes
git commit -m "%commit_msg%"

:: Push to remote main branch
echo.
echo Pushing to GitHub...
git push -u origin main

echo.
echo ==========================================
echo       Git Update Completed Successfully!
echo ==========================================
pause
