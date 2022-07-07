import QtQuick 2.6
import Sailfish.Silica 1.0

Page {
    id: page
    property string img

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("Show Page 2")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        Rectangle
        {
            id: background
            anchors.fill: parent
            color: Theme.colorScheme == Theme.LightOnDark ? "black" : "white"
        }
        Canvas
        {
            id: drawingCanvasOne
            anchors
            {
                fill: parent
            }
            visible: true
            width:1080
            height:1920

            renderTarget: Canvas.Image
            onImageLoaded:
            {
                var ctx = drawingCanvasOne.getContext('2d')
                 ctx.drawImage( img, 0, 0)
                 drawingCanvasOne.requestPaint()

            }

            Component.onCompleted:
            {
                img = Qt.resolvedUrl("series20008.jpg")
                loadImage(img);
            }
        }

    }

}
