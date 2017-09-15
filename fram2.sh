#--dist-|                          /====\
#       |-RootDir-|               /      \
#                 |-Contents-|-MacOS--|(PROGDIR <-- 😎)
#                            |        |---xx.sh
#                            |  
#                            |-Resource--|
#                                        |--Info.plist

# the absolute path of the app package
cd "$PROGDIR"/../../    #到达 RootDir 层
AppPackageFolder=`pwd`  #获取当前目录   /xx/xx/dist/RootDir

# the base path of the app package
cd ..
AppPackageRoot=`pwd`   #获取项目根目录  /xx/xx/dist

# set Apple's Java folder
AppleJavaFolder="${AppPackageFolder}"/Contents/Resources/Java

# set Apple's Resources folder
AppleResourcesFolder="${AppPackageFolder}"/Contents/Resources

# set Oracle's Java folder
OracleJavaFolder="${AppPackageFolder}"/Contents/Java

# set Oracle's Resources folder
OracleResourcesFolder="${AppPackageFolder}"/Contents/Resources

# set path to Info.plist in bundle
InfoPlistFile="${AppPackageFolder}"/Contents/Info.plist

# set the default JVM Version to a null string
JVMVersion=""