import QtQuick
import QtQuick.Controls
import QtQuick.VirtualKeyboard
import QtQuick.Controls 2.1
import QtQuick.Layouts

Rectangle{
    id:top
    width: parent.width
    height: 43
    Layout.fillWidth: true
    color: "orange"

    RowLayout{
        id:about
        Image {
            id: logo
            source: "file"
        }

        //名字
        Text{
            id:name
            text: "闲暇音乐"
            font.family: "微软雅黑"
            font.pointSize: 24
            anchors.left: parent
        }




    }

    Item{
        id:one
        anchors.left: about.right
        width: 150
    }

    //前进后退
    RowLayout{
        anchors.left: one.right
        height: 42
        Button{
            text:"上一页"
           background: Rectangle{
               color: "white"
           }
           onClicked: {

           }
        }
        Button{
            text:"下一页"
            background: Rectangle{
                 color: "white"
            }
            onClicked: {

            }
        }
    }

    //搜索框
    RowLayout{
        id:cen
        width: 520
        anchors.centerIn:top

        TextField{
            id:search
            font.family: "微软雅黑"
            font.pointSize: 12
            selectByMouse: true
            selectionColor: "#999999"
            placeholderText: "请输入搜索关键词"
            background:Rectangle{
                color: "#000000"
                border.color: "black"
                opacity: 0.5
                implicitHeight: 30
                implicitWidth: 500
                radius: 10
            }
            //focus: true
        }
        Button{
            text: "search"
            background: Rectangle{
                radius: 50
            }
            onClicked: {

            }
        }
    }

    //登陆 最小化 退出
    RowLayout{
         height: 42
         Layout.fillHeight: true
         anchors.right: top.right
        Button{
            text: "登陆"
            onClicked: {

            }
        }

        Item {
            width: 50
//            ToolSeparator{
//               height: top.height
//            }
        }

        Button{
            text: "最小化"
            onClicked: {

            }
        }

        Button{
            text: "退出"
            onClicked: {
                Qt.quit()
            }
        }



    }

    }
