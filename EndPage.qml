import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: endPage
    width: 360
    height: 640

    Rectangle {
        anchors.fill: parent
        color: roxo
    }

    Label {
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 100
        anchors.horizontalCenter: parent.horizontalCenter
        color: verde
        font.bold: true
        font.pointSize: 25
        text: qsTr("Vitórias")+":: "+winCount+" | "+lossCount+" ::"+qsTr("Derrotas")
    }

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
}
