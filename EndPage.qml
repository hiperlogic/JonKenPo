import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: endPage
    width: 360
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
        font.pointSize: 25
        text: qsTr("Bom Jogo!")
    }

    Image {
        anchors.centerIn: parent
        width: 200
        height: 200
        antialiasing: true
        source: "qrc:/Images/Images/LOGO_GAMEGESIS_TRANSPARENTE_COM_BORDA.png"
    }

    Label {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 20
        color: roxo
        font.bold: true
        text: qsTr("Vitórias")+":: "+winCount+" | "+lossCount+" ::"+qsTr("Derrotas")
    }

}
