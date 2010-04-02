
import Qt 4.6

Rectangle {
    id: page

    width: gui.width; height: gui.height
    color: "Black"
    opacity: 0

    function pageOpen() {
        page.opacity = 1;
	if (navit.getDestination().length>0) {
		btnPoi.opacity=0.8;
	}

    }
    
    Component.onCompleted: pageOpen();    
    
    opacity: Behavior {
        NumberAnimation { id: opacityAnimation; duration: 300; alwaysRunToEnd: true }
    }

    Grid {
        columns: 3;rows: 1
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.bottom: parent.verticalCenter; anchors.bottomMargin: gui.height/16;
        spacing: gui.width/12
        ButtonIcon {
            id: btnView; text: "View on map"; icon: "gui_maps.svg"; onClicked: console.log("Implement me!");
        }
        ButtonIcon {
            id: btnRoadbook; text: "Roadbook"; icon: "gui_log.svg"; onClicked: console.log("Implement me!");
        }
        ButtonIcon {
            id: btnSettings; text: "Height profile"; icon: "peak.svg"; onClicked: console.log("Implement me!");
        }
    }

    Grid {
        columns: 2;rows: 1
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: parent.verticalCenter; anchors.topMargin: gui.height/16;
        spacing: gui.width/12
        ButtonIcon {
            id: btnPoi; text: "POIs near\nPosition"; icon: "attraction.svg"; onClicked: console.log("Implement me!");
	    opacity: 0;
        }
        ButtonIcon {
            id: btnStop; text: "Stop"; icon: "gui_stop.svg"; onClicked: console.log("Implement me!");
        }
    }

    Cellar {anchors.bottom: page.bottom; anchors.horizontalCenter: page.horizontalCenter; width: page.width }
}