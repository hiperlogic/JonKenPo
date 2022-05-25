import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 360
    height: 640
    visible: true
    title: qsTr("JonKenPo")

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
