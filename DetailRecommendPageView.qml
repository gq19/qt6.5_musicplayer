import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQml

ScrollView {
    clip:true
    ColumnLayout{
            anchors.centerIn: parent
            Layout.preferredWidth: window.width
            Layout.preferredHeight: window.width*0.35
            Layout.fillWidth: true
            Layout.fillHeight: true
    //        width: parent.width
    //        height: (parent.height-100)/2
    //        ahchor.right: parent.right
    //        anchors.top: parent.top
            Banner{
                bannerList:[
                    "qrc:/images/5.jpg",
                    "qrc:/images/6.jpgg",
                    "qrc:/images/7.jpg",
                    "qrc:/images/8.jpg",
                    "qrc:/images/9.jpg"
                ]
            }
        }

}
