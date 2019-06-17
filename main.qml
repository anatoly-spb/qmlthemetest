import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.12

import mymodule 1.0

ApplicationWindow {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Material.theme: themeSwitch.checked ? Material.Dark : Material.Light

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            text: "="
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {

            }
        }
    }

    ColumnLayout {
        CheckBox {
            id: themeSwitch
            checked: root.Material.theme === Material.Dark
            text: "Dark"
        }

        MyLabel {
            text: "Label"
        }

        MyButton {
        }
    }
}
