import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: homePage
    width: 360
    height: 640

    Rectangle {
        anchors.fill: parent
        color: "black"
    }

    Image {
        id: logoGamegesis
        source: "qrc:/Images/Images/LOGO_GAMEGESIS_TRANSPARENTE_COM_BORDA.png"
        anchors.top: parent.top
        antialiasing: true
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 150
        width: 150
        height: 150
    }

    RoundButton {
        id: btnStartGame
        anchors.centerIn: parent
        width: 200
        font.bold: true
        font.pointSize: 15
        text: qsTr("Iniciar")

        palette.buttonText: "white"

        background: Rectangle {
            anchors.fill: parent
            radius: 99
            color: roxo
            border.width: 2
            border.color: "white"
        }

        onClicked: {
            swipeView.setCurrentIndex(1)
        }
    }

    Label {
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter
        color: verde
        font.bold: true
        text: qsTr("Vitórias")+":: "+winCount+" | "+lossCount+" ::"+qsTr("Derrotas")
    }

    Label{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 100
        text: qsTr("Jon Ken Po")
        color: verde
        font.pointSize: 25
        font.bold: true
    }
}
