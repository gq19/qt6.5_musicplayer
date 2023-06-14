import QtQuick
import QtQuick.Controls
import QtQuick.VirtualKeyboard
import QtQuick.Controls 2.1
import QtQuick.Layouts

Rectangle{
    id:top
    width: parent.width
    height: 50
    Layout.fillWidth: true
    color: "#00AAAA"

    //名字
    Text{
        id:name
        text: "闲暇音乐"
        font.family: "微软雅黑"
        font.pointSize: 24
        anchors.left: parent
        anchors.verticalCenter: parent.verticalCenter
    }

    Item{
        id:one
        anchors.left: name.right
        width: 150
    }

    //前进后退
    RowLayout{
        id:page_
        anchors.left: one.right
        height: 42
        anchors.verticalCenter: parent.verticalCenter
        Button{
            text:"后退"
           background: Rectangle{
               color: "white"
           }
           onClicked: {

           }
        }
        Button{
            text:"前进"
            background: Rectangle{
                 color: "white"
            }
            onClicked: {

            }
        }
    }
    Item {
        id:two
        anchors.left: page_.right
        width: 50
    }

    //搜索框
    RowLayout{
        id:cen
        width: 300
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: two.right

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
                implicitWidth: 300
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

    //登陆 最小化 简听模式 最大化 退出
    RowLayout{
        property string visibility_: "Minimized"
        anchors.verticalCenter: parent.verticalCenter
        height: 42
        Layout.fillHeight: true
        anchors.right: top.right
        Button{
            background: Rectangle{
                width: 50
            }
            text: "登陆"
            onClicked: {

            }
        }

        Item {
           width: 50
        }
        Button{
            background: Rectangle{
                width: 50
            }

            text: "简听模式"
            onClicked: {

            }
        }
        Item {
           width: 10
        }
        Button{
            text: "最小化"
            background: Rectangle{
                width: 50
            }
            onClicked: {
                window.hide()
            }
        }
        Item {
           width: 10
        }
//        Button{
//            id:resize
//            text: "还原"
//            background: Rectangle{
//                width: 50
//            }
//            onClicked: {
//                setWindowSize()
//                maxWindow.visible = true
//                resize.visible = false
//            }
//        }
        Button{
            id: maxWindow
            text: "最大化"
            background: Rectangle{
                width: 50
            }
                onClicked: {
//                    if(visibility === visibility_){
//                        visibility:"Maximized"
//                    }
//                    else
//                        visibility:visibility_
                    window.visibility = window.showMaximized()
//                    maxWindow.visible = false
//                    resize.visible = true
                }
        }
        Item {
           width: 10
        }
        Button{
            background: Rectangle{
                width: 50
            }
            text: "退出"
            onClicked: {
                Qt.quit()
            }
        }



    }

    }
