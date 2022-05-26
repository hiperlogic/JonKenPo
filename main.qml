import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.LocalStorage 2.15
import "qrc:/CODE/Database.js" as JonKenPoSettings

ApplicationWindow {
    width: 360
    height: 640
    visible: true
    title: qsTr("Jon Ken Po")

    property int winCount: JonKenPoSettings.dbGet("playerWin")
    property int lossCount: JonKenPoSettings.dbGet("playerLoss")

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

    Component.onCompleted: {
        JonKenPoSettings.dbInit()
    }
}
