

bf@mbp ~> rm -rf /Applications/Eclipse\ Java.app

bf@mbp ~> rm -rf eclipse-workspace/

bf@mbp ~> rm -rf eclipse-ws/

bf@mbp ~> brew uninstall --cask eclipse-java

bf@mbp ~> rm -rf .eclipse/

bf@mbp ~> cd Library/Preferences/

bf@mbp ~/L/Preferences> rm -rf epp.package.committers.plist 

bf@mbp ~/L/Preferences> rm -rf epp.package.java.plist 

bf@mbp ~/L/Preferences> rm -rf epp.package.jee.plist 

bf@mbp ~/L/Preferences> rm -rf epp.package^C

bf@mbp ~/L/Preferences> cd ..

bf@mbp ~/Library> rm -rf Saved\ Application\ State/epp.package.committers.savedState/

bf@mbp ~/Library> rm -rf Saved\ Application\ State/epp.package.java.savedState/
