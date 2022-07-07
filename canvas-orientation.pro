# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = canvas-orientation

CONFIG += sailfishapp_qml

DISTFILES += qml/canvas-orientation.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/SecondPage.qml \
    qml/pages/iframe_0001.jpg \
    qml/pages/iframe_0006.jpg \
    qml/pages/iframe_0009.jpg \
    qml/pages/series20008.jpg \
    qml/pages/series20009.jpg \
    rpm/canvas-orientation.changes.in \
    rpm/canvas-orientation.changes.run.in \
    rpm/canvas-orientation.spec \
    rpm/canvas-orientation.yaml \
    translations/*.ts \
    canvas-orientation.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/canvas-orientation-de.ts
