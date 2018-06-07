import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 1050
    height: 780
    minimumWidth: 1050
    minimumHeight: 780
    color: "#000000"
    title: qsTr("GSE Controls Progress")

    Grid {
        id: gr1
        anchors.fill: parent
        Rectangle {
            id: hwdesc
            width: parent.width-20
            height: parent.height/4-5
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 10
            color: "#3d3d3d"
            border.color: "white"
            border.width: 1
            Row {
                id: row
                width: parent.width
                height: parent.height
                Column {
                    width: 250
                    height: parent.height
                    anchors.right: hwpdesc.left
                    anchors.rightMargin: 0
                    Text {
                        id: hwt1
                        x: 0
                        y: 0
                        width: parent.width
                        height: 30
                        color: "#ffffff"
                        text: qsTr("Hardware")
                        font.pixelSize: 22
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                    }
                    Text {
                        id: hwt2
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("1)Hardware design")
                        horizontalAlignment: Text.AlignLeft
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: hwt3
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("2)Purchasing")
                        horizontalAlignment: Text.AlignLeft
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: hwt4
                        x: 0
                        y: 0
                        width: parent.width
                       height: 25
                       color: "#ffffff"
                        text: qsTr("3)Design approval(Internal)")
                        horizontalAlignment: Text.AlignLeft
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: hwt5
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("4)Customer approval(external)")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: hwt6
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("5)Build")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                }
                Column {
                    id: hwpdesc
                    width: 155
                    height: parent.height
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: hwdesc.top
                    anchors.topMargin: 0
                    anchors.left: hwdesc.right
                    anchors.leftMargin: 0
                    Text {
                        id: hwp1
                        x: 0
                        y: 0
                        width: parent.width
                        height: 30
                        color: "#ffffff"
                        text: qsTr("- "+this.total+"/30%")
                        textFormat: Text.PlainText
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 22
                        property int total
                        function update() {
                            var work = 0
                            if(hwpchk2.checked){work += 35}
                            if(hwpchk3.checked){work += 15}
                            if(hwpchk4.checked){work += 15}
                            if(hwpchk5.checked){work += 20}
                            if(hwpchk6.checked){work += 15}
                            if(work==100){hwpchk1.checked=true}
                            this.total=(work*0.3)
                        }
                    }
                    Text {
                        id: hwp2
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("    - 35%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: hwp3
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("    - 15%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: hwp4
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("    - 15%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: hwp5
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("    - 20%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: hwp6
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("    - 15%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                }
                Column {
                    id: hwpchk
                    width: 200
                    height: parent.height
                    anchors.top: hwpdesc.top
                    anchors.topMargin: 0
                    anchors.left: hwpdesc.right
                    anchors.leftMargin: 0
                    CheckBox {
                        id: hwpchk1
                        y: 0
                        width: 20
                        height: 30
                        text: qsTr("")
                        font.pointSize: 22
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked){
                                hwpchk2.checked=false
                                hwpchk3.checked=false
                                hwpchk4.checked=false
                                hwpchk5.checked=false
                                hwpchk6.checked=false
                            }
                            if(this.checked){
                                hwpchk2.checked=true
                                hwpchk3.checked=true
                                hwpchk4.checked=true
                                hwpchk5.checked=true
                                hwpchk6.checked=true
                            }
                            hwp1.update()
                        }
                    }
                    CheckBox {
                        id: hwpchk2
                        x: 0
                        y: 0
                        width: 20
                        height: 25
                        text: qsTr("")
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked) {
                                hwpchk1.checked=false;
                            }
                            hwp1.update()
                        }
                    }
                    CheckBox {
                        id: hwpchk3
                        x: 0
                        y: 0
                        width: 20
                        height: 25
                        text: qsTr("")
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked) {
                                hwpchk1.checked=false;
                            }
                            hwp1.update()
                        }
                    }
                    CheckBox {
                        id: hwpchk4
                        x: 0
                        y: 0
                        width: 20
                        height: 25
                        text: qsTr("")
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked) {
                                hwpchk1.checked=false;
                            }
                            hwp1.update()
                        }
                    }
                    CheckBox {
                        id: hwpchk5
                        x: 0
                        y: 0
                        width: 20
                        height: 25
                        text: qsTr("")
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked) {
                                hwpchk1.checked=false;
                            }
                            hwp1.update()
                        }
                    }
                    CheckBox {
                        id: hwpchk6
                        x: 0
                        y: 0
                        width: 20
                        height: 25
                        text: qsTr("")
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked) {
                                hwpchk1.checked=false;
                            }
                            hwp1.update()
                        }
                    }
                }
                Rectangle {
                    id: overalldesc
                    height: totaltext.height+2
                    anchors.left: hwpchk.right
                    anchors.leftMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    anchors.top: parent.top
                    anchors.topMargin: 10
                    color: "#3d3d3d"
                    border.width: 1
                    border.color: "white"
                    Column {
                        anchors.fill: parent
                        Text {
                            id: totaltext
                            color: "#12ff0d"
                            text: "Total Percent Complete: "+this.total+"%"
                            horizontalAlignment: Text.AlignLeft
                            anchors.top: parent.top
                            anchors.topMargin: 0
                            anchors.left: parent.left
                            anchors.leftMargin: 0
                            anchors.right: parent.right
                            anchors.rightMargin: 0
                            wrapMode: Text.NoWrap
                            fontSizeMode: Text.HorizontalFit
                            font.pixelSize: 25
                            property int total
                            height: 30
                            total: hwp1.total+sfp1.total+spp1.total+rop1.total
                        }
                    }
                }
            }
        }
        Rectangle {
            id: sfdesc
            width: parent.width-20
            height: parent.height/4-5
            anchors.top: hwdesc.bottom
            anchors.topMargin: 0
            anchors.left: hwdesc.left
            anchors.leftMargin: 0
            color: "#3d3d3d"
            border.color: "white"
            border.width: 1
            Row {
                id: row1
                width: parent.width
                height: parent.height
                Column {
                    width: 250
                    height: parent.height
                    anchors.right: sfpdesc.left
                    anchors.rightMargin: 0
                    Text {
                        id: sft1
                        x: 0
                        y: 0
                        width: parent.width
                        height: 30
                        color: "#ffffff"
                        text: qsTr("Software")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 22
                    }
                    Text {
                        id: sft2
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("1)Input & Output Mapping")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: sft3
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("2)Offline programming")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: sft4
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("3)Node Commissioning")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: sft5
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("4)Online testing & function validation")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: sft6
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("5)Production HMI")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                }
                Column {
                    id: sfpdesc
                    width: 155
                    height: parent.height/4-5
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: sfdesc.top
                    anchors.topMargin: 0
                    anchors.left: sfdesc.right
                    anchors.leftMargin: 0
                    Text {
                        id: sfp1
                        x: 0
                        y: 0
                        width: parent.width
                        height: 30
                        color: "#ffffff"
                        text: qsTr("- "+this.total+"/50%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 22
                        property int total
                        function update() {
                            var work = 0
                            if(sfpchk2.checked){work += 20}
                            if(sfpchk3.checked){work += 30}
                            if(sfpchk4.checked){work += 30}
                            if(sfpchk5.checked){work += 10}
                            if(sfpchk6.checked){work += 10}
                            if(work==100){sfpchk1.checked=true}
                            this.total=(work*0.5)
                        }
                    }
                    Text {
                        id: sfp2
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("    - 20%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: sfp3
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("    - 30%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: sfp4
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("    - 30%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: sfp5
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("    - 10%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: sfp6
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("    - 10%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                }
                Column {
                    id: sfpchk
                    width: 200
                    height: parent.height
                    anchors.top: sfpdesc.top
                    anchors.topMargin: 0
                    anchors.left: sfpdesc.right
                    anchors.leftMargin: 0
                    CheckBox {
                        id: sfpchk1
                        y: 0
                        width: 20
                        height: 30
                        text: qsTr("")
                        font.pointSize: 22
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked){
                                sfpchk2.checked=false
                                sfpchk3.checked=false
                                sfpchk4.checked=false
                                sfpchk5.checked=false
                                sfpchk6.checked=false
                            }
                            if(this.checked){
                                sfpchk2.checked=true
                                sfpchk3.checked=true
                                sfpchk4.checked=true
                                sfpchk5.checked=true
                                sfpchk6.checked=true
                            }
                            sfp1.update()
                        }
                    }
                    CheckBox {
                        id: sfpchk2
                        x: 0
                        y: 0
                        width: 20
                        height: 25
                        text: qsTr("")
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked) {
                                sfpchk1.checked=false;
                            }
                            sfp1.update()
                        }
                    }
                    CheckBox {
                        id: sfpchk3
                        x: 0
                        y: 0
                        width: 20
                        height: 25
                        text: qsTr("")
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked) {
                                sfpchk1.checked=false;
                            }
                            sfp1.update()
                        }
                    }
                    CheckBox {
                        id: sfpchk4
                        x: 0
                        y: 0
                        width: 20
                        height: 25
                        text: qsTr("")
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked) {
                                sfpchk1.checked=false;
                            }
                            sfp1.update()
                        }
                    }
                    CheckBox {
                        id: sfpchk5
                        x: 0
                        y: 0
                        width: 20
                        height: 25
                        text: qsTr("")
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked) {
                                sfpchk1.checked=false;
                            }
                            sfp1.update()
                        }
                    }
                    CheckBox {
                        id: sfpchk6
                        x: 0
                        y: 0
                        width: 20
                        height: 25
                        text: qsTr("")
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked) {
                                sfpchk1.checked=false;
                            }
                            sfp1.update()
                        }
                    }
                }
            }
        }
        Rectangle {
            id: spdesc
            width: parent.width-20
            height: parent.height/4-5
            anchors.top: rodesc.bottom
            anchors.topMargin: 0
            anchors.left: rodesc.left
            anchors.leftMargin: 0
            color: "#3d3d3d"
            border.color: "white"
            border.width: 1
            Row {
                id: row3
                width: parent.width
                height: parent.height
                Column {
                    width: 250
                    height: parent.height
                    anchors.right: sppdesc.left
                    anchors.rightMargin: 0
                    Text {
                        id: spt1
                        x: 0
                        y: 0
                        width: parent.width
                        height: 30
                        color: "#ffffff"
                        text: qsTr("Support")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 22
                    }
                    Text {
                        id: spt2
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("2)On-site support")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: spt3
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("3)Post-Install support")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                }
                Column {
                    id: sppdesc
                    width: 155
                    height: parent.height/4-5
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: spdesc.top
                    anchors.topMargin: 0
                    anchors.left: spdesc.right
                    anchors.leftMargin: 0
                    Text {
                        id: spp1
                        x: 0
                        y: 0
                        width: parent.width
                        height: 30
                        color: "#ffffff"
                        text: qsTr("- "+this.total+"/10%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 22
                        property int total
                        function update() {
                            var work = 0
                            if(sppchk2.checked){work += 70}
                            if(sppchk3.checked){work += 10}
                            if(sppchk4.checked){work += 20}
                            if(work==100){sppchk1.checked=true}
                            this.total=(work*0.1)
                        }
                    }
                    Text {
                        id: spp2
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("    - 70%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: spp3
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("    - 10%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: spp4
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("    - 20%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                }
                Column {
                    id: sppchk
                    width: 200
                    height: parent.height/4-5
                    anchors.top: sppdesc.top
                    anchors.topMargin: 0
                    anchors.left: sppdesc.right
                    anchors.leftMargin: 0
                    CheckBox {
                        id: sppchk1
                        y: 0
                        width: 20
                        height: 30
                        text: qsTr("")
                        font.pointSize: 22
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked){
                                sppchk2.checked=false
                                sppchk3.checked=false
                                sppchk4.checked=false
                            }
                            if(this.checked){
                                sppchk2.checked=true
                                sppchk3.checked=true
                                sppchk4.checked=true
                            }
                            spp1.update()
                        }
                    }
                    CheckBox {
                        id: sppchk2
                        x: 0
                        y: 0
                        width: 20
                        height: 25
                        text: qsTr("")
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked) {
                                sppchk1.checked=false;
                            }
                            spp1.update()
                        }
                    }
                    CheckBox {
                        id: sppchk3
                        x: 0
                        y: 0
                        width: 20
                        height: 25
                        text: qsTr("")
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked) {
                                sppchk1.checked=false;
                            }
                            spp1.update()
                        }
                    }
                    CheckBox {
                        id: sppchk4
                        x: 0
                        y: 0
                        width: 20
                        height: 25
                        text: qsTr("")
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked) {
                                sppchk1.checked=false;
                            }
                            spp1.update()
                        }
                    }
                }
            }
        }
        Rectangle {
            id: rodesc
            width: parent.width-20
            height: parent.height/4-5
            color: "#3d3d3d"
            anchors.left: sfdesc.left
            anchors.leftMargin: 0
            anchors.top: sfdesc.bottom
            anchors.topMargin: 0
            border.color: "white"
            border.width: 1
            Row {
                id: row2
                width: parent.width
                height: parent.height
                Column {
                    width: 250
                    height: parent.height
                    anchors.right: ropdesc.left
                    anchors.rightMargin: 0
                    Text {
                        id: rot1
                        x: 0
                        y: 0
                        width: parent.width
                        height: 30
                        color: "#ffffff"
                        text: qsTr("Runoff")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 22
                    }
                    Text {
                        id: rot2
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("1)Internal run-off")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: rot3
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("2)Customer run-off and final sign off")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                }
                Column {
                    id: ropdesc
                    width: 155
                    height: parent.height
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: rodesc.top
                    anchors.topMargin: 0
                    anchors.left: rodesc.right
                    anchors.leftMargin: 0
                    Text {
                        id: rop1
                        x: 0
                        y: 0
                        width: parent.width
                        height: 30
                        color: "#ffffff"
                        text: qsTr("- "+this.total+"/10%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 22
                        property int total
                        function update() {
                            var work = 0
                            if(ropchk2.checked){work += 90}
                            if(ropchk3.checked){work += 10}
                            if(work==100){ropchk1.checked=true}
                            this.total=(work*0.1)
                        }
                    }
                    Text {
                        id: rop2
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("    - 90%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                    Text {
                        id: rop3
                        x: 0
                        y: 0
                        width: parent.width
                        height: 25
                        color: "#ffffff"
                        text: qsTr("    - 10%")
                        wrapMode: Text.NoWrap
                        fontSizeMode: Text.HorizontalFit
                        font.pixelSize: 15
                    }
                }
                Column {
                    id: ropchk
                    width: 200
                    height: parent.height
                    anchors.top: ropdesc.top
                    anchors.topMargin: 0
                    anchors.left: ropdesc.right
                    anchors.leftMargin: 0
                    CheckBox {
                        id: ropchk1
                        y: 0
                        width: 20
                        height: 30
                        text: qsTr("")
                        font.pointSize: 22
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked){
                                ropchk2.checked=false
                                ropchk3.checked=false
                            }
                            if(this.checked){
                                ropchk2.checked=true
                                ropchk3.checked=true
                            }
                            rop1.update()
                        }
                    }
                    CheckBox {
                        id: ropchk2
                        x: 0
                        y: 0
                        width: 20
                        height: 25
                        text: qsTr("")
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked) {
                                ropchk1.checked=false;
                            }
                            rop1.update()
                        }
                    }
                    CheckBox {
                        id: ropchk3
                        x: 0
                        y: 0
                        width: 20
                        height: 25
                        text: qsTr("")
                        antialiasing: true
                        hoverEnabled: false
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        topPadding: 0
                        checked: false
                        onClicked: {
                            if(!this.checked) {
                                ropchk1.checked=false;
                            }
                            rop1.update()
                        }
                    }
                }
            }
        }
    }
}
