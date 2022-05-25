import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width:360
    height: 640


    Rectangle {
        anchors.fill: parent
        color: verde
    }

    Label {
        anchors.top: parent.top
        anchors.topMargin: 100
        anchors.horizontalCenter: parent.horizontalCenter
        color: roxo
        font.bold: true
        font.pointSize: 15
        text: qsTr("Clique no Ícone ou Aguarde")
    }

    MouseArea {
        id: resultScreen
        height: 100
        width: 100
        anchors.centerIn: parent

        onClicked: {
            gameFrame.setCurrentIndex(0)
            winState=0
            playerOption=""
            botOption=""
        }

        Image {
            anchors.fill: parent
            antialiasing: true
            source: resultImages[winState]
            onSourceChanged: {
                if(winState!==0){
                    console.log("Timer Started "+winState)
                    resultTimer.start()
                }
            }
        }
    }
    Label{
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 20
        color: roxo
        font.bold: true
        text: qsTr("Vitórias")+":: "+winCount+" | "+lossCount+" ::"+qsTr("Derrotas")
    }

    Timer {
        id: resultTimer
        interval: 10000
        repeat: false
        running: false
        onTriggered: {
/*  The following code is on the onClick signal of the MouseArea. We can just "click it"
            gameFrame.setCurrentIndex(0)
            winState=0
            playerOption=""
            botOption=""
*/
            resultScreen.clicked(1)
        }
    }
}
