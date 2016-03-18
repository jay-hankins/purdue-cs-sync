echo "==========================================================================="
echo "======================== running sync to data ============================="
echo "==========================================================================="
rsync -avP ./ <career-account-name>@data.cs.purdue.edu:/homes/<career account name>/cs/cs252/`pwd | rev | cut -d '/' -f1 | rev`/
osascript -e 'display notification "CS files synced successfully" with title "Watcher"'
afplay "/System/Library/Sounds/Hero.aiff"
echo "==========================================================================="
echo "============================== waiting ===================================="
echo "==========================================================================="
echo "\n\n"
