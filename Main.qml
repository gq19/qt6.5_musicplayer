import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import myhttp 1.0
//主界面
ApplicationWindow {

    property int w_width: 1300
    property int w_height: 800

    id:window
    width: w_width
    height: w_height
    visible: true
    title: qsTr("音乐播放器")

    Http{
           id:http

       }

       Component.onCompleted: {
           textHttp()
       }

       function textHttp(){
           function onReply(reply){
               console.log(reply)
               http.onReplySignal.disconnect(onReply)

           }

           http.onReplySignal.connect(onReply)
           http.connet("banner")
             }



    ColumnLayout{
        anchors.fill: parent
        TopView{
            id:topView
        }
        spacing: 0  //取消ui的间隔

        HomeView{
            id:homeView

        }

        BottomView{
            id:bottomView

        }

    }

    //实现无边框
    flags: Qt.Window|Qt.FramelessWindowHint

    //移动
//    DragHandler{
//        onActiveChanged: {
//            if(active){
//                window.startSystemMove()
//            }
//        }
//    }
}
