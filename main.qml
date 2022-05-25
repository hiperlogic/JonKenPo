import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 360
    height: 640
    visible: true
    title: qsTr("Jon Ken Po")

    property int winCount: 0
    property int lossCount: 0

    property string roxo: "#aa7ab6"
    property string verde: "#a5d386"

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: 0
        interactive: false

        HomePage {
            id: homePage
        }

        GamePage {
            id: gamePage
        }

        EndPage {
            id: endPage
        }

    }
}
