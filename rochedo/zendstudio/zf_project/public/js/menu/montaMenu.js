sniffBrowsers();

menuItemBullet = new bulletPoint("http://localhost:10088/rochedo_project/public/js/menu/bullets/one/menu_off.gif","http://localhost:10088/rochedo_project/public/js/menu/bullets/one/menu_on.gif");
labelBullet = new bulletPoint("http://localhost:10088/rochedo_project/public/js/menu/bullets/one/header_off.gif","http://localhost:10088/rochedo_project/public/js/menu/bullets/one/header_on.gif");
subMenuBullet = new bulletPoint("http://localhost:10088/rochedo_project/public/js/menu/bullets/one/sub_header_off.gif","http://localhost:10088/rochedo_project/public/js/menu/bullets/one/sub_header_on.gif");

myTest = new menuBar('myTest',480, 'horizontal', '#cccccc', '#cccccc');
myTest.addLabel('labelBullet', 'About Us', 1, 120, '#ffffff', '#0000aa', '', 'left');
myTest.addLabel('labelBullet', 'Products', 2, 120, '#ffffff', '#0000aa', '', 'left');
myTest.addLabel('labelBullet', 'Services', 3, 120, '#ffffff', '#0000aa', '', 'left');
myTest.addLabel('labelBullet', 'Support', 4, 120, '#ffffff', '#0000aa', 'test3.asp', 'left');
myTest.height = 16;

menus[1] = new menu(135, 'vertical', '#cccccc', '#cccccc');
menus[1].height = 25;
menus[1].addItem('menuItemBullet', 'Our History', null, 135, '#ffffff', '#0000aa', 'test1.asp', 'left');
menus[1].addItem('menuItemBullet', 'Investor Information', null, 135, '#ffffff', '#0000aa', 'test2.asp', 'left');
menus[1].addItem('menuItemBullet', 'Recruitment', null, 135, '#ffffff', '#0000aa', 'test3.asp', 'left');
menus[1].writeMenu();

menus[2] = new menu(121, 'vertical', '#cccccc', '#cccccc');
menus[2].height = 25;
menus[2].addItem('menuItemBullet', 'Widgets', null, 121, '#ffffff', '#0000aa', 'test1.asp', 'left');
menus[2].addItem('subMenuBullet', 'Gadgets', 5, 121, '#ffffff', '#0000aa', 'test2.asp', 'left');
menus[2].addItem('subMenuBullet', 'Gizmos', 6, 121, '#ffffff', '#0000aa', 'test3.asp', 'left');
menus[2].writeMenu();

menus[3] = new menu(125, 'vertical', '#cccccc', '#cccccc');
menus[3].height = 25;
menus[3].addItem('menuItemBullet', 'Design', null, 125, '#ffffff', '#0000aa', 'test1.asp', 'left');
menus[3].addItem('menuItemBullet', 'Consultancy', null, 125, '#ffffff', '#0000aa', 'test2.asp', 'left');
menus[3].addItem('menuItemBullet', 'Installation', null, 125, '#ffffff', '#0000aa', 'test3.asp', 'left');
menus[3].writeMenu();

menus[4] = new menu(125, 'vertical', '#cccccc', '#cccccc');
menus[4].height = 25;
menus[4].addItem('menuItemBullet', 'FAQs', null, 125, '#ffffff', '#0000aa', 'test1.asp', 'left');
menus[4].addItem('subMenuBullet', 'Contact Support', 7, 125, '#ffffff', '#0000aa', 'test2.asp', 'left');
menus[4].addItem('menuItemBullet', 'Troubleshooting', null, 125, '#ffffff', '#0000aa', 'test3.asp', 'left');
menus[4].writeMenu();

menus[5] = new menu(125, 'vertical', '#cccccc', '#cccccc');
menus[5].height = 25;
menus[5].addItem('menuItemBullet', 'Home Gadgets', null, 135, '#ffffff', '#0000aa', 'test1.asp', 'left');
menus[5].addItem('menuItemBullet', 'Office Gadgets', null, 135, '#ffffff', '#0000aa', 'test2.asp', 'left');
menus[5].addItem('menuItemBullet', 'Other Gadgets', null, 135, '#ffffff', '#0000aa', 'test3.asp', 'left');
menus[5].writeMenu();

menus[6] = new menu(125, 'vertical', '#cccccc', '#cccccc');
menus[6].height = 25;
menus[6].addItem('menuItemBullet', 'Home Gizmos', null, 135, '#ffffff', '#0000aa', 'test1.asp', 'left');
menus[6].addItem('menuItemBullet', 'Office Gizmos', null, 135, '#ffffff', '#0000aa', 'test2.asp', 'left');
menus[6].addItem('menuItemBullet', 'Other Gizmos', null, 135, '#ffffff', '#0000aa', 'test3.asp', 'left');
menus[6].writeMenu();



menus[7] = new menu(125, 'vertical', '#cccccc', '#cccccc');
menus[7].height = 25;
menus[7].addItem('menuItemBullet', 'Widget Support', null, 125, '#ffffff', '#0000aa', 'test1.asp', 'left');
menus[7].addItem('menuItemBullet', 'Gadget Support', null, 125, '#ffffff', '#0000aa', 'test2.asp', 'left');
menus[7].addItem('menuItemBullet', 'Gizmo Support', null, 125, '#ffffff', '#0000aa', 'test3.asp', 'left');
menus[7].writeMenu();


menus[1].align='left';
menus[2].align='left';
menus[3].align='left';
menus[4].align='right';
menus[5].align='right';
menus[6].align='right';
menus[7].align='right';

myTest.writeMenuBar();

