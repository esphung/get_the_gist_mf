# where all project files will be generated
#OSXSRCPATH="/Users/homeuser/Desktop"
NEWPROJECTNAME="mynewiosapp"
APPDELEGATEFILENAME="/AppDelegate"
SWIFTFILEEXTENSION=".swift"
XCODEPROJEXTENSION=".xcodeproj"
APPDELEGATESTRINGTEXT="import UIKit\n\n@UIApplicationMain\nclass AppDelegate: UIResponder, UIApplicationDelegate {\n\n\tvar window: UIWindow?\n\n\tfunc application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {\n\t\t// Override point for customization after application launch.\n\t\treturn true\n\t}\n\n\tfunc applicationWillResignActive(_ application: UIApplication) {\n\n\n\t}\n\n\tfunc applicationDidEnterBackground(_ application: UIApplication) {\n\n\n\t}\n\n\tfunc applicationWillEnterForeground(_ application: UIApplication) {\n\n\t}\n\n\n\tfunc applicationDidBecomeActive(_ application: UIApplication) {\n\n\t}\n\n\tfunc applicationWillTerminate(_ application: UIApplication) {\n\n\t}\n\n}"
XASSETSDIR="/Assets.xcassets"
APPICONDIR="/AppIcon.appiconset"
JSNCONTFILE="/Contents"
JSNFILEEXT=".json"
JSONTEXT="I am a jsn file"
VIEWCTRLFILEBASE="/ViewController"
VIEWCTRLTEXT="Hello View Controller"
INFOPLISTFILE="/Info"
PLISTEXTENSION=".plist"
INFOPLISTCONTENT="Hello Plist"
TESTSDIR="Tests"
UITESTDIREXT="UITests"



all:
	#BUILDING ALL DIRECTORY TREE
	mkdir -p $(NEWPROJECTNAME)
	mkdir -p $(NEWPROJECTNAME)$(XASSETSDIR)$(APPICONDIR)
	mkdir -p $(NEWPROJECTNAME)$(TESTSDIREXTENSION)
	mkdir -p $(NEWPROJECTNAME)$(UITESTDIREXT)
	mkdir -p $(NEWPROJECTNAME)$(XCODEPROJEXTENSION)
	echo $(JSONTEXT) | tee $(NEWPROJECTNAME)$(XASSETSDIR)$(APPICONDIR)$(JSNCONTFILE)$(JSNFILEEXT)
	echo $(APPDELEGATESTRINGTEXT) | tee $(NEWPROJECTNAME)$(APPDELEGATEFILENAME)$(SWIFTFILEEXTENSION)
	echo $(VIEWCTRLTEXT) | tee $(NEWPROJECTNAME)$(VIEWCTRLFILEBASE)$(SWIFTFILEEXTENSION)
	echo $(INFOPLISTCONTENT) | tee $(NEWPROJECTNAME)$(INFOPLISTFILE)$(PLISTEXTENSION)
	#cat > sample.txt
clean:
	rm -rf $(NEWPROJECTNAME)$(TESTSDIR)
	rm -rf $(NEWPROJECTNAME)$(UITESTDIREXT)
	rm -rf $(NEWPROJECTNAME)$(XCODEPROJEXTENSION)
	rm -rf $(NEWPROJECTNAME)$(XASSETSDIR)$(APPICONDIR)
	#find . ! -name 'Makefile' -type d -exec rm -rf {} +
	rm -rf $(NEWPROJECTNAME)
