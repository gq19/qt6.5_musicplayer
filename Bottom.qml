import QtQuick
import QtQuick.Controls
import QtQuick.VirtualKeyboard
import QtQuick.Controls 2.1
import QtQuick.Layouts

Rectangle{
    Layout.fillWidth:true
    height: 60
    color: "#00AAAA"
    RowLayout{
        anchors.fill: parent
        Item{
            Layout.preferredWidth: parent.width/60
            Layout.fillWidth: true
        }
        Button{
            Layout.fillHeight: true
            Layout.topMargin: 20
            Layout.rightMargin: 20
//                text:"上"
                background: Rectangle{
                    color: "#00AAAA"
                    width: 20
                    height: 20
                    Image {
                        visible: true
                        anchors.fill: parent
                        source: "qrc:/new/prefix1/images/previous-track-button.png"
                    }
                    radius: 100
                }
                onClicked: {

                }
        }

        Button{
            Layout.fillHeight: true
            Layout.topMargin: 20
                text: "播放"
                background: Rectangle{
                    width: 20
                    height: 20
//                    Image {
//                        anchors.fill: parent
//                        source: "qrc:/new/prefix1/images/1.jpg"
//                    }
                    radius: 50
                }
                onClicked: {

                }
        }
        Button{

            Layout.rightMargin: 20
//                text:"下"
            Layout.fillHeight: true
            Layout.topMargin: 20
                background: Rectangle{
                    color: "#00AAAA"
                    width: 20
                    height: 20
                    Image {
                        anchors.fill: parent
                        source: "qrc:/new/prefix1/images/play-and-pause-button.png"
                    }
                    radius: 100
                }
                onClicked: {

                }
            }

        Item{
            Layout.preferredWidth: parent.width/2
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.topMargin: 25
            Text{
                id:name
                anchors.left: slider.left
                anchors.bottom: slider.top
//                        anchors.bottomMargin: 5
                anchors.leftMargin: 5
                font.family: "微软雅黑"
                color: "#ffffff"
                text: "音乐"
            }
            Text{
                id:time
                anchors.right: slider.right
                anchors.bottom: slider.top
                anchors.rightMargin: 5
                font.family: "微软雅黑"
                color: "#ffffff"
                text: "时间"
            }

            Slider{
                id:slider
                width: parent.width
                Layout.fillWidth: true
                height: 25
                background:Rectangle{
                    x:slider.leftPadding
                    y:slider.topPadding+(slider.availableHeight-height)/2
                    width:slider.availableWidth
                    height: 4
                    radius: 2
                    color: "#e9f4ff"
                    Rectangle{
                        width: slider.visualPosition*parent.width
                        height: parent.height
                        color:"#73a7ab"
                        radius: 2
                    }
                }
                handle:Rectangle{
                    x:slider.leftPadding+(slider.availableWidth-width)*slider.visualPosition
                    y:slider.topPadding+(slider.availableHeight-height)/2
                    width: 15
                    height: 15
                    radius: 5
                    color:"#f0f0f0"
                    border.color:"#73a7ab"
                    border.width: 1.5
                }
            }
        }
        Button{//
                text: "喜欢"
                background: Rectangle{
                    radius: 50
                }
                onClicked: {

                }
        }
        Button{//
                text: "词"
                background: Rectangle{
                    radius: 50
                }
                onClicked: {

                }
        }
        Button{//
                text: "播放方式"
                background: Rectangle{
                    radius: 50
                }
                onClicked: {

                }
        }
        Item{//右边留白
            Layout.preferredWidth: parent.width/15
            Layout.fillHeight: true
        }
    }
}
