

rm -rf /Applications/Eclipse\ Java.app
rm -rf eclipse-workspace/
rm -rf eclipse-ws/

brew uninstall --cask eclipse-java

bf@mbp ~> rm -rf .eclipse/


cd Library/Preferences/
rm -rf /Library/Preferences/epp.package.committers.plist



bf@mbp ~> cd Library/Preferences/

bf@mbp ~/L/Preferences> rm -rf epp.package.committers.plist 

bf@mbp ~/L/Preferences> rm -rf epp.package.java.plist 

bf@mbp ~/L/Preferences> rm -rf epp.package.jee.plist 

bf@mbp ~/L/Preferences> rm -rf epp.package^C

bf@mbp ~/L/Preferences> cd ..

bf@mbp ~/Library> rm -rf Saved\ Application\ State/epp.package.committers.savedState/

bf@mbp ~/Library> rm -rf Saved\ Application\ State/epp.package.java.savedState/

bf@mbp ~/Library> rm -rf Saved\ Application\ State/epp.package.^C

bf@mbp ~/Library>