//--- Common
var isHorizontal=1;
var smColumns=1;
var smOrientation=0;
var smViewType=0;
var dmRTL=0;
var pressedItem=-1;
var itemCursor="default";
var itemTarget="_blank";
var statusString="link";
var blankImage="data-samples/images/blank.gif";

//--- Dimensions
var menuWidth="400px";
var menuHeight="";
var smWidth="";
var smHeight="";

//--- Positioning
var absolutePos=0;
var posX="0";
var posY="0";
var topDX=0;
var topDY=1;
var DX=1;
var DY=0;

//--- Font
var fontStyle="normal 11px Tahoma, Arial";
var fontColor=["#000000","#000000"];
var fontDecoration=["none","none"];
var fontColorDisabled="#AAAAAA";

//--- Appearance
var menuBackColor="#C2DDE4";
var menuBackImage="";
var menuBackRepeat="repeat";
var menuBorderColor="#4996A9";
var menuBorderWidth=1;
var menuBorderStyle="solid";

//--- Item Appearance
var itemBackColor=["#C2DDE4","#FFFFFF"];
var itemBackImage=["",""];
var itemBorderWidth=1;
var itemBorderColor=["#C2DDE4","#2B5762"];
var itemBorderStyle=["solid","solid"];
var itemSpacing=2;
var itemPadding="3px 7px 3px 7px ";
var itemAlignTop="left";
var itemAlign="left";
var subMenuAlign="";

//--- Icons
var iconTopWidth=24;
var iconTopHeight=24;
var iconWidth=16;
var iconHeight=16;
var arrowWidth=11;
var arrowHeight=11;
var arrowImageMain=["arrow_main1.gif","arrow_main1.gif"];
var arrowImageSub=["arrow_sub1.gif","arrow_sub1.gif"];

//--- Separators
var separatorImage="";
var separatorWidth="100%";
var separatorHeight="3";
var separatorAlignment="left";
var separatorVImage="";
var separatorVWidth="3";
var separatorVHeight="100%";
var separatorPadding="0px";

//--- Floatable Menu
var floatable=0;
var floatIterations=6;
var floatableX=1;
var floatableY=1;

//--- Movable Menu
var movable=0;
var moveWidth=12;
var moveHeight=20;
var moveColor="#AA0000";
var moveImage="";
var moveCursor="default";
var smMovable=0;
var closeBtnW=15;
var closeBtnH=15;
var closeBtn="";

//--- Transitional Effects & Filters
var transparency="90";
var transition=33;
var transOptions="";
var transDuration=300;
var transDuration2=200;
var shadowLen=3;
var shadowColor="#BBBBBB";
var shadowTop=1;

//--- CSS Support (CSS-based Menu)
var cssStyle=0;
var cssSubmenu="";
var cssItem=["",""];
var cssItemText=["",""];

//--- Advanced
var dmObjectsCheck=0;
var saveNavigationPath=1;
var showByClick=0;
var noWrap=1;
var pathPrefix_img="data-samples/images/";
var pathPrefix_link="data-samples/";
var smShowPause=200;
var smHidePause=1000;
var smSmartScroll=1;
var topSmartScroll=0;
var smHideOnClick=1;
var dm_writeAll=0;

//--- AJAX-like Technology
var dmAJAX=0;
var dmAJAXCount=0;

//--- Dynamic Menu
var dynamic=1;

//--- Keystrokes Support
var keystrokes=1;
var dm_focus=1;
var dm_actKey=113;

var itemStyles = [
    ["fontStyle=bold 11px Tahoma","fontColor=#1A5B00,#1A5B00","itemBorderWidth=1","itemBorderStyle=solid,solid","itemBackColor=#ACF88B,#ACF88B","itemBorderColor=#329309,#329309"],
    ["fontStyle=normal 10px Trebushet MS, Tahoma","fontColor=#000000,#000000","itemBorderWidth=1","itemBorderStyle=solid,solid","itemBackColor=#FFFFFF,#FFFFFF","itemBorderColor=#1B92E9,#1B92E9"],
    ["fontStyle=bold 11px Tahoma","fontColor=#FFFFFF,#FFFFFF","itemBorderWidth=1","itemBorderStyle=solid,solid","itemBackColor=#FF9684,#FF9684","itemBorderColor=#EC7575,#EC7575"],
    ["fontStyle=bold 11px Tahoma","fontColor=#00646C,#00646C","itemBorderWidth=1","itemBorderStyle=solid,solid","itemBackColor=#84F9FF,#84F9FF","itemBorderColor=#00B8C1,#00B8C1"],
];

var menuItems = [

    ["Home","testlink.htm"],
    ["Product Info",""],
        ["|Features","testlink.htm"],
        ["|Installation",""],
            ["||Description of Files","testlink.htm"],
            ["||How To Setup","testlink.htm"],
        ["|Parameters Info","testlink.htm"],
        ["|Dynamic Functions","testlink.htm"],
        ["|Supported Browsers",""],
            ["||Windows OS",""],
                ["|||Internet Explorer",""],
                ["|||Firefox",""],
                ["|||Mozilla",""],
                ["|||Opera",""],
                ["|||Netscape Navigator",""],
            ["||MAC OS",""],
                ["|||Firefox",""],
                ["|||Safari",""],
                ["|||Internet Explorer",""],
            ["||Unix/Linux OS",""],
                ["|||Firefox",""],
                ["|||Konqueror",""],
    ["Samples",""],
        ["|Sample 1","testlink.htm"],
        ["|Sample 2","testlink.htm"],
        ["|Sample 3","testlink.htm"],
        ["|Sample 4","testlink.htm"],
        ["|Sample 5","testlink.htm"],
        ["|Sample 6","testlink.htm"],
    ["Purchase","testlink.htm"],
    ["Contact Us","testlink.htm"],
];

dm_init();
