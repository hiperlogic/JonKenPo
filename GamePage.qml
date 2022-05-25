import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: gamePage
    width: 360
    height: 640

    property string playerOption: ""
    property var botOption: ""
    property int winState: 0  //0: invalid || 1: Draw || 2: player win || 3: player lose

    property var resultImages: ["","qrc:/Images/drawImg.png","qrc:/Images/winImg.png","qrc:/Images/losImg.png"]

    Rectangle {
        anchors.fill: parent
        color: roxo
    }

    SwipeView {
        id: gameFrame
        anchors.fill: parent
        currentIndex: 0
        interactive: false

        PlayerPhase {
            id: playerPhase
        }

        ResultPhase {
            id: resultPhase
        }

    }
}
