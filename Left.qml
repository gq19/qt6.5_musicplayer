import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.VirtualKeyboard
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtQml 2.5
import Qt5Compat.GraphicalEffects
import QtMultimedia

RowLayout{
    property var leftList: [
        {value:"推荐列表",qml:"DetailRecommendPageView"},
        {value:"本地音乐",qml:"DetailLocationPageView"},
        {value:"播放列表",qml:"DetailListPageView"},
        {value:"我的喜欢",qml:"DetailLovePageView"},
        {value:"历史记录",qml:"DetailHistoryPageView"}
    ]

    Frame{

        Layout.preferredWidth: 200
        Layout.fillHeight: true

//        background: Rectangle{
//            color: "red"
//            opacity: 2
//        }
        padding: 0


        ColumnLayout{
            anchors.fill: parent
            Item {
                Layout.topMargin: 15
                Layout.fillWidth: true
                Layout.preferredHeight: 150
               RadiusImage{
                   anchors.centerIn: parent
                   height: 190
                   width: 190
               }

            }


            ListView{
                id:leftMenu
                width: 200
                height: 400
                model:ListModel{
                    id:leftMenuModel
                }
                delegate:leftMenuDelegate
                highlight: Rectangle{
                    color:"red"
                }
            }

        }



        Component{
            id:leftMenuDelegate
            Rectangle{

                MouseArea{
                    anchors.fill: parent
                    hoverEnabled:true
                    onEntered: {

                    }
                    onExited: {

                    }

                    onClicked: {
                        repeater.itemAt(leftMenuDelegateItem.ListView.view.currentIndex).visible=false
                        leftMenuDelegateItem.ListView.view.currentIndex=index
                        var loader=repeater.itemAt(index)
                        loader.visible=true
                        loader.source=leftList[index].qml+".qml"

                    }
                }

                color: "#00AAAA"
                id:leftMenuDelegateItem
                height: 50
                width: 200
                RowLayout{

                    anchors.fill:parent
                    anchors.centerIn: parent
                    spacing: 15
                    Item {
                        width: 30
                    }
                    Text{
                        text: value
                        Layout.fillWidth: true
                        height: 50
                        font.pointSize: 12
                        //color: "#ffffff"
                    }
                }
            }
        }
        Component.onCompleted: {
            leftMenuModel.append(leftList)
            var loader=repeater.itemAt(0)
            loader.visible=true
            loader.source=leftList[0].qml+".qml"

        }
    }

    Repeater{
        id:repeater
        model:leftList.length
        Loader{
            visible: false
            Layout.fillWidth: true
            Layout.fillHeight: true

        }

    }


}


