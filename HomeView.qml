import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQml


RowLayout{

    property var qmlList: [
        {icon:"recommend-white",value:"推荐内容",qml:"DetailRecommendPageView"},
        {icon:"cloud-white",value:"搜索音乐",qml:"DetailSearchPageView"},
        {icon:"local-white",value:"本地音乐",qml:"DetailLocalPageView"},
        {icon:"history-white",value:"播放历史",qml:"DetailHistoryPageView"},
        {icon:"favorite-big-white",value:"我喜欢的",qml:"DetailFavoritePageView"},
        //{icon:"favorite-big-white",value:"专辑歌单",qml:"DetailPlayListPageView"}
    ]


    //左边框
    Frame{

        Layout.preferredWidth: 200
        Layout.fillHeight: true
        background: Rectangle{ //透明取消边框线条
            color: "#00000000"
        }

        padding: 0 //取消元素内间隔


        ColumnLayout{
            anchors.fill: parent

            Item{
                Layout.fillWidth: true
                Layout.preferredHeight: 150
                MusicRoundImage{
                    anchors.centerIn:parent  //放在中心
                    height: 100
                    width:100
                    borderRadius: 100
                }
            }

            ListView{
                id:menuView
                height: parent.height
                Layout.fillHeight: true
                Layout.fillWidth: true
                model:ListModel{
                    id:menuViewModel
                }
                delegate:menuViewDelegate
            }
        }

        Component{
            id:menuViewDelegate
            Rectangle{
                id:menuViewDelegateItem
                height: 50
                width: 200
                color: "#00AAAA"
                RowLayout{
                    anchors.fill: parent
                    anchors.centerIn: parent
                    spacing:15
                    Item{ //占位 使字体居中
                        width: 30
                    }

                    Image{//图标大小
                        source: "qrc:/images/"+icon
                        Layout.preferredHeight: 20
                        Layout.preferredWidth: 20
                    }

                    Text{//左侧字体
                        text:value
                        Layout.fillWidth: true
                        height:50
                        font.family: "微软雅黑"
                        font.pointSize: 12
                        color: "#ffffff"
                    }
                }

                MouseArea{//鼠标悬停显示其他颜色
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: {
                        color="#aa73a7ab"
                    }
                    onExited: {
                        color="#00AAAA"
                    }
                }
            }
        }

        Component.onCompleted: {
            menuViewModel.append(qmlList)
        }
    }


}

