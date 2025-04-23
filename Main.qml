import QtQuick
import Qt5Compat.GraphicalEffects

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item
    {
        anchors.centerIn: parent
        width: parent.width
        height: parent.height

        Image
        {
            id: nightBackground
            source: "https://images3.alphacoders.com/589/589870.jpg"
            sourceSize: Qt.size(parent.width, parent.height)
            smooth: true
            visible: false
        }

        Image
        {
            id: simbaLion
            source: "https://upload.wikimedia.org/wikipedia/en/9/94/Simba_%28_Disney_character_-_adult%29.png"
            sourceSize: Qt.size(parent.width, parent.height)
            smooth: true
            visible: false
        }

        Blend
        {
            anchors.fill: nightBackground
            source: nightBackground
            foregroundSource: simbaLion
            mode: "addition"
        }
    }
}
