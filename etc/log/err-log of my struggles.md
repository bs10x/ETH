

[[var]]



problem with homebrew install --cask eclipse-java
### Problem:

- when i install eclipse using homebrew, it displays "NewApplication" in the top left as app name
- when i open the app, the splash screen is inverted on on its axis




bf@mbp ~> rm -rf /Applications/Eclipse\ Java.app
bf@mbp ~> rm -rf eclipse-workspace/
bf@mbp ~> brew uninstall --cask eclipse-java
bf@mbp ~> rm -rf .eclipse/
bf@mbp ~> cd Library/Preferences/
bf@mbp ~/L/Preferences> rm -rf epp.package.java.plist 
	(bf@mbp ~/L/Preferences> rm -rf epp.package.jee.plist)
	(bf@mbp ~/L/Preferences> rm -rf epp.package.committers.plist)
bf@mbp ~/L/Preferences> cd ..
bf@mbp ~/Library> rm -rf Saved\ Application\ State/epp.package.java.savedState/
	(bf@mbp ~/Library> rm -rf Saved\ Application\ State/epp.package.committers.savedState/)







increase animation speed of hide/show dock:

bf@mbp ~> defaults write com.apple.dock autohide-delay -float 0;killall Dock
bf@mbp ~> defaults write com.apple.dock autohide-time-modifier -float 0.3;killall Dock





crontab on nas:
```
* * * * * /nas/bfeitknecht/homepage/dev/testing.sh >> /nas/bfeitknecht/homepage/dev/cron.log 2>&1
```


**first test crontab:**
	Mon Oct 30 02:20:01 PM CET 2023
	Mon Oct 30 06:18:02 PM CET 2023

**second test crontab ran:**
	(a little bit before actually)
	Wed Nov  1 03:10:01 PM CET 2023
	Wed Nov  1 08:34:01 PM CET 2023

–> about ~4, 5 hours





every 3h, run persistence script (reset cron jobs, read cronjob from file)

// persistence.sh
```
# navigate to "dev/" 
cd ~/homepage/dev/

# remove the old crontab
crontab -r

# create a new crontab from "persistance-template.txt"
crontab -e persistence-template.txt
```




// persistence-template.txt
```
# run "minute.sh" every minute and log all to minute.log
* * * * * /nas/bfeitknecht/homepage/dev/minute.sh >> /nas/bfeitknecht/homepage/dev/minute.log 2>&1

# run "persistence.sh" every three hours and log errors to "persistence.log"
0 */3 * * * /nas/bfeitknecht/homepage/dev/persistence.sh >> /nas/bfeitknecht/homepage/dev/persistence.log 2>&1
```
