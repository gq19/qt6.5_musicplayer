import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.VirtualKeyboard
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtQml 2.5
import Qt5Compat.GraphicalEffects

Item{
    Image {
        id:i
        smooth: true
        width: parent.width
        height: parent.height
        fillMode: Image.PreserveAspectCrop
        antialiasing: true
        source: "qrc:/new/prefix1/images/1.jpg"
        anchors.centerIn: parent
        visible: false
    }
    Rectangle{
        id:r
        color: "black"
        radius: 100
        visible: false
        antialiasing: true
        smooth: true
        anchors.fill: parent
    }

    OpacityMask{
        source: i
        anchors.fill: i
        maskSource: r
        visible: true
        antialiasing: true
    }

}
