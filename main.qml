import QtQuick 2.9
import QtQuick.Controls 2.2
import FileIO 1.0

ApplicationWindow {
    id: applicationWindow
    property string version
    version: "Ver " + "0.1.0"
    visible: true
    width: 1050
    height: 780
    minimumWidth: 1050
    minimumHeight: 780
    color: "#000000"
    title: qsTr("GSE Controls Progress " + totaltext.total + "% - " + gr1.job)

    FileIO {
        id: jobfile
        source: job.text.split(".")[0] + job.text.split(".")[1] + ".gcp"
        onError: console.log(msg)
    }

    Grid {
        id: gr1
        anchors.fill: parent
        function clearChecks() {
            hwpchk1.clearChecks()
            sfpchk1.clearChecks()
            sppchk1.clearChecks()
            ropchk1.clearChecks()
        }
        property bool write
        write: {
            if(writebutton.checked) {
                hwpchk1.disableChecks()
                sfpchk1.disableChecks()
                sppchk1.disableChecks()
                ropchk1.disableChecks()
            }
            if(!writebutton.checked) {
                hwpchk1.enableChecks()
                sfpchk1.enableChecks()
                sppchk1.enableChecks()
                ropchk1.enableChecks()
            }
            console.log(writebutton.checked)
            return writebutton.checked
        }
        property int job
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
                    width: 170
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
                        function disableChecks() {
                            hwpchk1.enabled = false
                            hwpchk2.enabled = false
                            hwpchk3.enabled = false
                            hwpchk4.enabled = false
                            hwpchk5.enabled = false
                            hwpchk6.enabled = false
                        }
                        function enableChecks() {
                            hwpchk1.enabled = true
                            hwpchk2.enabled = true
                            hwpchk3.enabled = true
                            hwpchk4.enabled = true
                            hwpchk5.enabled = true
                            hwpchk6.enabled = true
                        }
                        function clearChecks() {
                            hwpchk1.checked = 0
                            hwpchk2.checked = 0
                            hwpchk3.checked = 0
                            hwpchk4.checked = 0
                            hwpchk5.checked = 0
                            hwpchk6.checked = 0
                        }
                        onClicked: {
                            if(!this.checked) {
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
                        onCheckedChanged: {
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
                        onCheckedChanged: {
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
                        onCheckedChanged: {
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
                        onCheckedChanged: {
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
                        onCheckedChanged: {
                            if(!this.checked) {
                                hwpchk1.checked=false;
                            }
                            hwp1.update()
                        }
                    }
                }
                Rectangle {
                    id: overalldesc
                    width: 235
                    height: totaltext.height+jobtext.height+jobbutton.height+writebutton.height+10
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
                        id: column
                        width: parent.width
                        height: parent.height
                        Text {
                            id: totaltext
                            color: "#12ff0d"
                            text: "Total Percent Complete: "+this.total+"%"
                            anchors.top: parent.top
                            anchors.topMargin: 3
                            horizontalAlignment: Text.AlignHCenter
                            anchors.left: parent.left
                            anchors.leftMargin: 0
                            anchors.right: parent.right
                            anchors.rightMargin: 0
                            wrapMode: Text.NoWrap
                            fontSizeMode: Text.FixedSize
                            font.pixelSize: 18
                            property int total
                            height: 30
                            total: {
                                var ttl = (hwp1.total+sfp1.total+spp1.total+rop1.total)
                                var wrtfile
                                wrtfile=(hwpchk1.checked+",")
                                wrtfile+=(hwpchk2.checked+",")
                                wrtfile+=(hwpchk3.checked+",")
                                wrtfile+=(hwpchk4.checked+",")
                                wrtfile+=(hwpchk5.checked+",")
                                wrtfile+=(hwpchk6.checked+",")

                                wrtfile+=(sfpchk1.checked+",")
                                wrtfile+=(sfpchk2.checked+",")
                                wrtfile+=(sfpchk3.checked+",")
                                wrtfile+=(sfpchk4.checked+",")
                                wrtfile+=(sfpchk5.checked+",")
                                wrtfile+=(sfpchk6.checked+",")

                                wrtfile+=(sppchk1.checked+",")
                                wrtfile+=(sppchk2.checked+",")
                                wrtfile+=(sppchk3.checked+",")
                                wrtfile+=(sppchk4.checked+",")

                                wrtfile+=(ropchk1.checked+",")
                                wrtfile+=(ropchk2.checked+",")
                                wrtfile+=(ropchk3.checked)
                                if(!gr1.write) { jobfile.write(wrtfile) }
                                return (hwp1.total+sfp1.total+spp1.total+rop1.total)
                            }
                        }
                        Text {
                            id: jobtext
                            color: "white"
                            font.bold: false
                            font.pixelSize: 14
                            height: 30
                            text: qsTr("Job: " + job.text)
                            anchors.top: totaltext.bottom
                            anchors.left: totaltext.left
                            anchors.leftMargin: 20
                            horizontalAlignment: Text.AlignHCenter
                        }
                        Button {
                            id: jobbutton
                            text: qsTr("Change Job")
                            height: 40
                            anchors.left: jobtext.left
                            anchors.top: jobtext.bottom
                            onClicked: {
                                jobup.open()
                            }
                        }
                        Button {
                            id: writebutton
                            text: {
                                if(!this.checked) {
                                    return qsTr("Disable Auto-Save")
                                }
                                if(this.checked) {
                                    return qsTr(" Enable Auto-Save")
                                }
                            }
                            checkable: true
                            checked: true
                            height: 40
                            anchors.left: jobbutton.left
                            anchors.top: jobbutton.bottom
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
                        function disableChecks() {
                            sfpchk1.enabled = false
                            sfpchk2.enabled = false
                            sfpchk3.enabled = false
                            sfpchk4.enabled = false
                            sfpchk5.enabled = false
                            sfpchk6.enabled = false
                        }
                        function enableChecks() {
                            sfpchk1.enabled = true
                            sfpchk2.enabled = true
                            sfpchk3.enabled = true
                            sfpchk4.enabled = true
                            sfpchk5.enabled = true
                            sfpchk6.enabled = true
                        }
                        function clearChecks() {
                            sfpchk1.checked = 0
                            sfpchk2.checked = 0
                            sfpchk3.checked = 0
                            sfpchk4.checked = 0
                            sfpchk5.checked = 0
                            sfpchk6.checked = 0
                        }
                        onClicked: {
                            if(!this.checked) {
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
                        onCheckedChanged: {
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
                        onCheckedChanged: {
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
                        onCheckedChanged: {
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
                        onCheckedChanged: {
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
                        onCheckedChanged: {
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
                        function disableChecks() {
                            sppchk1.enabled = false
                            sppchk2.enabled = false
                            sppchk3.enabled = false
                            sppchk4.enabled = false
                        }
                        function enableChecks() {
                            sppchk1.enabled = true
                            sppchk2.enabled = true
                            sppchk3.enabled = true
                            sppchk4.enabled = true
                        }
                        function clearChecks() {
                            sppchk1.checked = 0
                            sppchk2.checked = 0
                            sppchk3.checked = 0
                            sppchk4.checked = 0
                        }
                        onClicked: {
                            if(!this.checked) {
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
                        onCheckedChanged: {
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
                        onCheckedChanged: {
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
                        onCheckedChanged: {
                            if(!this.checked) {
                                sppchk1.checked=false;
                            }
                            spp1.update()
                        }
                    }
                }
                Rectangle {
                    id: verRect
                    anchors.bottom: parent.bottom
                    anchors.right: parent.right
                    width: verTxt.width+10
                    height: verTxt.height
                    color: white
                    Text {
                        id: verTxt
                        color: black
                        text: applicationWindow.version
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
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
                        function disableChecks() {
                            ropchk1.enabled = false
                            ropchk2.enabled = false
                            ropchk3.enabled = false
                        }
                        function enableChecks() {
                            ropchk1.enabled = true
                            ropchk2.enabled = true
                            ropchk3.enabled = true
                        }
                        function clearChecks() {
                            ropchk1.checked = 0
                            ropchk2.checked = 0
                            ropchk3.checked = 0
                        }
                        onClicked: {
                            if(!this.checked) {
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
                        onCheckedChanged: {
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
                        onCheckedChanged: {
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
    Popup {
        id: jobup
        width: 300
        height: 200
        topMargin: (gr1.height/2) - (this.height/2)
        bottomMargin: (gr1.height/2) - (this.height/2)
        leftMargin: (gr1.width/2) - (this.width/2)
        rightMargin: (gr1.width/2) - (this.width/2)
        focus: function(fcs) {
            console.log(fcs)
            return fcs
        }

        onOpened: {
            jobup.focus = false
            jobup.focus = true
            job.focus = true
            job.update()
            job.selectAll()
        }
        onClosed: {
            if(!jobfile.read()) {
                confirmcreate.open()
                this.focus = false
                job.focus = false
                confirmcreate.focus = true
                return
            }
            var jobstuff = jobfile.read()
            var working = jobstuff.split(",")
            var info = working
            for(var x=0;x<working.length;x++) {
                if(working[x]==="true") {
                    info[x]=1
                } if(working[x]==="false") {
                    info[x]=0
                }
            }

            hwpchk1.checked = info[0]
            hwpchk2.checked = info[1]
            hwpchk3.checked = info[2]
            hwpchk4.checked = info[3]
            hwpchk5.checked = info[4]
            hwpchk6.checked = info[5]

            sfpchk1.checked = info[6]
            sfpchk2.checked = info[7]
            sfpchk3.checked = info[8]
            sfpchk4.checked = info[9]
            sfpchk5.checked = info[10]
            sfpchk6.checked = info[11]

            sppchk1.checked = info[12]
            sppchk2.checked = info[13]
            sppchk3.checked = info[14]
            sppchk4.checked = info[15]

            ropchk1.checked = info[16]
            ropchk2.checked = info[17]
            ropchk3.checked = info[18]

            hwp1.update()
            sfp1.update()
            spp1.update()
            rop1.update()
            this.focus = false
            job.focus = false
            gr1.job = job.text
        }

        Column {
            id: column1
            width: jobup.width
            height: jobtxt.height+job.height+Button.height
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            Text {
                id: jobtxt
                height: 20
                color: "white"
                text: qsTr("Please enter job # Below")
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Rectangle {
                width: 80
                height: 20
                anchors.horizontalCenter: parent.horizontalCenter
                TextInput {
                    id: job
                    width: parent.width
                    height: parent.height
                    inputMask: "D999.99"
                    anchors.horizontalCenter: parent.horizontalCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 18
                    onFocusChanged: update()
                    Keys.onEnterPressed: {
                        jobup.close()
                    }

                    validator: function() {
                        if(!this.acceptableInput) {
                            this.remove(this.text.length-1, this.text.length)
                        }
                    }
                    function update() {
                        this.cursorPosition = 0
                        this.cursorVisible = 1
                        this.focus = true
                        jobup.focus = true
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: parent.update()
                    }
                }
            }
            Button {
                text: qsTr("Submit")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    jobup.close()
                }
            }
        }
    }

    Popup {
        id: confirmcreate
        width: 300
        height: 200
        topMargin: (gr1.height/2) - (this.height/2)
        bottomMargin: (gr1.height/2) - (this.height/2)
        leftMargin: (gr1.width/2) - (this.width/2)
        rightMargin: (gr1.width/2) - (this.width/2)
        visible: false
        onOpened: {
            this.focus = true
        }
        property bool choice
        onClosed: {
            if(this.choice) {
                writebutton.checked = false
                jobfile.write("false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false")
                gr1.clearChecks()
            }
            if(!this.choice) {
                jobup.open()
            }
            confirmcreate.focus = false
        }
        Column {
            id: column2
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            Text {
                color: "white"
                text: qsTr("No save exists for this job yet.")
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                color: "white"
                text: qsTr("Would you like to create a new job?")
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                Button {
                    text: qsTr("Yes")
                    onClicked: {
                        confirmcreate.choice = 1
                        confirmcreate.close()
                    }
                }
                Button {
                    text: qsTr("No")
                    onClicked: {
                        confirmcreate.choice = 0
                        confirmcreate.close()
                    }
                }
            }
        }
    }

    Component.onCompleted: {
        jobup.open()
    }
}
