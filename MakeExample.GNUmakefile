# src of xcrun xcode-select xcodebuild
XCSRCDIR="/usr/bin"
# where all project files will be generated
#OSXSRCPATH="/Users/homeuser/Desktop"
NEWPROJECTNAME="mynewiosapp/"
APPDELEGATEFILENAME="AppDelegate"
SWIFTFILEEXTENSION=".swift"
APPDELEGATESTRINGTEXT="import UIKit\n\n@UIApplicationMain\nclass AppDelegate: UIResponder, UIApplicationDelegate {\n\n\tvar window: UIWindow?\n\n\tfunc application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {\n\t\t// Override point for customization after application launch.\n\t\treturn true\n\t}\n\n\tfunc applicationWillResignActive(_ application: UIApplication) {\n\n\n\t}\n\n\tfunc applicationDidEnterBackground(_ application: UIApplication) {\n\n\n\t}\n\n\tfunc applicationWillEnterForeground(_ application: UIApplication) {\n\n\t}\n\n\n\tfunc applicationDidBecomeActive(_ application: UIApplication) {\n\n\t}\n\n\tfunc applicationWillTerminate(_ application: UIApplication) {\n\n\t}\n\n}"
XASSETSDIR="/Assets.xcassets"
APPICONDIR="/AppIcon.appiconset"
PROJECTEXTENSION=".xcodeproj"



all:
	#BUILDING ALL DIRECTORY TREES
	mkdir -p $(NEWPROJECTNAME)
	mkdir -p $(NEWPROJECTNAME)$()
	mkdir -p $(NEWPROJECTNAME)$(NEWPROJECTNAME)$(XASSETSDIR)$(APPICONDIR)

	echo $(APPDELEGATESTRINGTEXT) | tee $(NEWPROJECTNAME)$(NEWPROJECTNAME)$(APPDELEGATEFILENAME)$(SWIFTFILEEXTENSION)

clean:
	rm -rf $(NEWPROJECTNAME)