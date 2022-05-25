import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width:360
    height: 640

    ListView {
        id: optionListView
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        height: 50
        width: parent.width
        orientation: ListView.Horizontal
        model: ListModel {
            id: optionModel

            ListElement{
                img: "qrc:/Images/rockImg.png"
                value: "rock"
                lose: "paper"
            }

            ListElement{
                img: "qrc:/Images/paperImg.png"
                value: "paper"
                lose: "scissor"
            }

            ListElement{
                img: "qrc:/Images/scissorImg.png"
                value: "scissor"
                lose: "rock"
            }
        }

        delegate: Item {
            width: parent.width/3
            height: parent.height

            MouseArea{
                anchors.centerIn:parent
                width: 50
                height: 50
                onClicked: {
                    gameFrame.setCurrentIndex(1)
                    playerOption = value
                    botOption = optionModel.get(Math.floor(Math.random()*optionModel.count))
                    console.log(value)
                    console.log(botOption.value)
                    winCheck()
                }

                Image {
                    anchors.fill: parent
                    antialiasing: true
                    source: img
                }
            }


        }

    }

    MouseArea {
        anchors.centerIn: parent
        width: 200
        height: 200
        onClicked: {
            swipeView.setCurrentIndex(2)
        }

        Rectangle {
            anchors.fill: parent
            radius: 99
            color: verde

            Label{
                anchors.centerIn: parent
                font.bold: true
                font.pointSize: 25
                color: roxo
                text: qsTr("Parar Partida")
            }
        }
    }

    function winCheck(){
        if(playerOption === botOption.value){
            // draw
            winState=1
        } else if (playerOption === botOption.lose){
            //Win
            winState=2
            winCount++
        } else {
            //Lose
            winState=3
            lossCount++
        }

        gameFrame.setCurrentIndex(1)
    }

}
