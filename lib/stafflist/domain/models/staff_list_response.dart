import 'package:hive/hive.dart';
part 'staff_list_response.g.dart';
/// code : 200
/// msg : "Successfully."
/// staffListData : {"current_page":1,"employeeData":[{"id":1,"show":1,"status":1,"employeeProfiles":{"id":1,"employee_id":1,"code":"ARIS0005","gender":1,"fullname":"Trần Tuấn Nhật","firstname":"Nhật","lastname":"Trần","phone":"0933401669","email":"nhat.tran@arisvietnam.com","exp":"10"},"employeeImages":[{"id":1,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/58f5ac7981921.png"},{"id":2,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/590ae7b2f195a.jpg"}],"departments":[{"id":1,"name":"CEO"},{"id":2,"name":"BOM"},{"id":3,"name":"PMO DIVISION"},{"id":4,"name":"Business Division"},{"id":7,"name":"Accounting Division"},{"id":8,"name":"HR & Admin Division"},{"id":13,"name":"BSE DIVISION"},{"id":14,"name":"LABOR DIVISION"}]},{"id":2,"show":1,"status":1,"employeeProfiles":{"id":2,"employee_id":2,"code":"ARIS0007","gender":0,"fullname":"Nguyễn Thị Lan","firstname":"Lan","lastname":"Nguyễn","phone":"0933906061","email":"lan.nguyen@arisvietnam.com","exp":"0"},"employeeImages":[{"id":3,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/598c30d582bb4.jpg"},{"id":4,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/59802732cfe27.jpg"}],"departments":[{"id":7,"name":"Accounting Division"}]},{"id":5,"show":1,"status":1,"employeeProfiles":{"id":5,"employee_id":5,"code":"ARIS0024","gender":1,"fullname":"Vương Sĩ Nguyên","firstname":"Nguyên","lastname":"Vương","phone":"0938222787","email":"nguyen.vs@arisvietnam.com","exp":"0"},"employeeImages":[{"id":9,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5ce27682e5fca.jpg"},{"id":10,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/590bfccd57e15.png"}],"departments":[{"id":3,"name":"PMO DIVISION"},{"id":11,"name":"Design Division"},{"id":70,"name":"OPERATING SUPPORT"}]},{"id":6,"show":0,"status":1,"employeeProfiles":{"id":6,"employee_id":6,"code":"ARIS0028","gender":1,"fullname":"Nguyễn Văn Khá","firstname":"Khá","lastname":"Nguyễn","phone":"0832095586","email":"kha.nv@arisvietnam.com","exp":"0"},"employeeImages":[{"id":11,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/58f7110a6a08a.jpg"},{"id":12,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/590ae8f1df921.jpg"}],"departments":[{"id":2,"name":"BOM"},{"id":3,"name":"PMO DIVISION"},{"id":6,"name":"QC & INSPECTOR DIVISION"},{"id":10,"name":"MOBILE DIVISION"},{"id":19,"name":"BOM"},{"id":69,"name":"IT & SUPPORT"},{"id":71,"name":"INTERNSHIP"}]},{"id":7,"show":0,"status":1,"employeeProfiles":{"id":7,"employee_id":7,"code":"ARIS0030","gender":1,"fullname":"Nguyễn Tuấn Giang","firstname":"Giang","lastname":"Nguyễn","phone":"0985773486","email":"giang.nt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":13,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/58f713db1e1f7.jpg"},{"id":14,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/590bfeb036d3c.png"}],"departments":[{"id":15,"name":"TECH & SOLUTION DIVISION"},{"id":16,"name":"Android Team"}]},{"id":8,"show":1,"status":1,"employeeProfiles":{"id":8,"employee_id":8,"code":"ARIS0042","gender":1,"fullname":"Phan Minh Tuấn","firstname":"Tuấn","lastname":"Phan","phone":"0919153072","email":"tuan.pm@arisvietnam.com","exp":"0"},"employeeImages":[{"id":15,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/58f714131a6e5.jpg"},{"id":16,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/590bfec7629cd.png"}],"departments":[{"id":3,"name":"PMO DIVISION"},{"id":15,"name":"TECH & SOLUTION DIVISION"},{"id":16,"name":"Android Team"}]},{"id":9,"show":0,"status":1,"employeeProfiles":{"id":9,"employee_id":9,"code":"ARIS0047","gender":1,"fullname":"Aris Japan","firstname":"Jp","lastname":"Aris","phone":"0937796986","email":"nakabe@arisvietnam.com","exp":"0"},"employeeImages":[{"id":17,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"},{"id":18,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":9,"name":"Japan Division"}]},{"id":10,"show":1,"status":1,"employeeProfiles":{"id":10,"employee_id":10,"code":"ARIS0050","gender":1,"fullname":"Ken Hagiwara","firstname":"Hagiwara","lastname":"Ken","phone":null,"email":"hagiwara@arisvietnam.com","exp":"0"},"employeeImages":[{"id":19,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/58f716aa50b11.jpg"},{"id":20,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/590bfbd447dd0.png"}],"departments":[{"id":9,"name":"Japan Division"}]},{"id":13,"show":1,"status":1,"employeeProfiles":{"id":13,"employee_id":13,"code":"ARIS0068","gender":1,"fullname":"Lê Tuấn Anh","firstname":"Anh","lastname":"Lê","phone":"0937569560","email":"anh.lt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":25,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/58f71293c100d.jpg"},{"id":26,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5a1f66797ba2b.jpg"}],"departments":[{"id":3,"name":"PMO DIVISION"},{"id":15,"name":"TECH & SOLUTION DIVISION"},{"id":17,"name":"iOS Team"}]},{"id":14,"show":1,"status":1,"employeeProfiles":{"id":14,"employee_id":14,"code":"ARIS0071","gender":1,"fullname":"Phạm Xuân Khoa","firstname":"Khoa","lastname":"Phạm","phone":"01659662411","email":"khoa.px@arisvietnam.com","exp":"0"},"employeeImages":[{"id":27,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/58f7123b3030e.jpg"},{"id":28,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/590bfe0ed8c28.png"}],"departments":[{"id":2,"name":"BOM"},{"id":3,"name":"PMO DIVISION"},{"id":4,"name":"Business Division"},{"id":5,"name":"Development Division"},{"id":12,"name":"OFFSHORE DIVISION"},{"id":15,"name":"TECH & SOLUTION DIVISION"}]},{"id":15,"show":0,"status":1,"employeeProfiles":{"id":15,"employee_id":15,"code":"ARIS0074","gender":1,"fullname":"Nguyễn Quyết Tiến","firstname":"Tiến","lastname":"Nguyễn","phone":"0902138242","email":"tien.nq@arisvietnam.com","exp":"14"},"employeeImages":[{"id":29,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5b0636d9b8d69.jpg"},{"id":171,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle15_1_1620703878.png"}],"departments":[{"id":3,"name":"PMO DIVISION"},{"id":15,"name":"TECH & SOLUTION DIVISION"},{"id":29,"name":"DEVELOPMENT DIVISION"},{"id":72,"name":"INTERNSHIP"}]},{"id":16,"show":0,"status":1,"employeeProfiles":{"id":16,"employee_id":16,"code":"ARIS0087","gender":1,"fullname":"Vũ Hoàng Quân","firstname":"Quân","lastname":"Vũ","phone":"0937796986","email":"quan.v@arisvietnam.com","exp":"7"},"employeeImages":[{"id":31,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5a1d1b78e7df3.jpg"},{"id":169,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle16_1_1619417035.png"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"},{"id":15,"name":"TECH & SOLUTION DIVISION"}]},{"id":17,"show":0,"status":1,"employeeProfiles":{"id":17,"employee_id":17,"code":"ARIS0106","gender":0,"fullname":"Nguyễn Thanh Vân","firstname":"Vân","lastname":"Nguyễn","phone":"0935449717","email":"van.nt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":33,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5ce26a39869a3.jpg"},{"id":34,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5cde3a0d49f93.jpg"}],"departments":[{"id":4,"name":"Business Division"},{"id":13,"name":"BSE DIVISION"}]},{"id":21,"show":0,"status":1,"employeeProfiles":{"id":21,"employee_id":21,"code":"ARIS0112","gender":1,"fullname":"Đổng Công Danh","firstname":"Danh","lastname":"Đổng","phone":"0798808599","email":"danh.dc@arisvietnam.com","exp":"3"},"employeeImages":[{"id":41,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5cfe02aaf12e4.jpg"},{"id":172,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle21_1_1620704803.png"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":22,"show":0,"status":1,"employeeProfiles":{"id":22,"employee_id":22,"code":"ARIS0115","gender":1,"fullname":"Phạm Thanh Liêm","firstname":"Liêm","lastname":"Phạm","phone":"0377514336","email":"liem.pt@arisvietnam.com","exp":"7"},"employeeImages":[{"id":43,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5cfdf30492016.jpg"},{"id":44,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":23,"show":0,"status":1,"employeeProfiles":{"id":23,"employee_id":23,"code":"ARIS0116","gender":1,"fullname":"Tô Chí Cường","firstname":"Cường","lastname":"Tô","phone":"0945388033","email":"cuong.tc@arisvietnam.com","exp":"3"},"employeeImages":[{"id":45,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5cfe0285664b3.jpg"},{"id":46,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":25,"show":0,"status":1,"employeeProfiles":{"id":25,"employee_id":25,"code":"ARIS0124","gender":0,"fullname":"Vương Hoàng Bảo Hạnh","firstname":"Hạnh","lastname":"Vương","phone":"0933937546","email":"hanh.vhb@arisvietnam.com","exp":"0"},"employeeImages":[{"id":49,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5ce2769d6f954.jpg"},{"id":50,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5ce2769d761d0.jpg"}],"departments":[{"id":8,"name":"HR & Admin Division"}]},{"id":30,"show":0,"status":1,"employeeProfiles":{"id":30,"employee_id":30,"code":"ARIS0139","gender":1,"fullname":"Nguyễn Minh Trung","firstname":"Trung","lastname":"Nguyễn","phone":"0908005250","email":"trung.nm@arisvietnam.com","exp":"3"},"employeeImages":[{"id":59,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5cfe03e47a28f.jpg"},{"id":60,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":32,"show":0,"status":1,"employeeProfiles":{"id":32,"employee_id":32,"code":"ARIS0149","gender":1,"fullname":"Nguyễn Trung Hải","firstname":"Hải","lastname":"Nguyễn","phone":"0374560069","email":"hai.nt@arisvietnam.com","exp":"9"},"employeeImages":[{"id":63,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5cff6ad7507a1.jpg"},{"id":64,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":6,"name":"QC & INSPECTOR DIVISION"}]},{"id":35,"show":0,"status":1,"employeeProfiles":{"id":35,"employee_id":35,"code":"ARIS0165","gender":0,"fullname":"Đoàn Thị Vân Anh","firstname":"Anh","lastname":"Đoàn","phone":"0973891990","email":"anh.dtv@arisvietnam.com","exp":"0"},"employeeImages":[{"id":69,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f2f83cd61f.jpg"},{"id":70,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":39,"show":0,"status":1,"employeeProfiles":{"id":39,"employee_id":39,"code":"ARIS0170","gender":1,"fullname":"Hoàng Văn Sỹ","firstname":"Sỹ","lastname":"Hoàng","phone":"0986438165","email":"sy.hv@arisvietnam.com","exp":"6"},"employeeImages":[{"id":77,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f1ab703eca.jpg"},{"id":78,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":40,"show":0,"status":1,"employeeProfiles":{"id":40,"employee_id":40,"code":"ARIS0171","gender":1,"fullname":"Văn Hà Tuyên","firstname":"Tuyên","lastname":"Văn","phone":"0931686678","email":"tuyen.vh@arisvietnam.com","exp":"6"},"employeeImages":[{"id":79,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f1b4a42b48.jpg"},{"id":80,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":42,"show":0,"status":1,"employeeProfiles":{"id":42,"employee_id":42,"code":"ARIS0173","gender":1,"fullname":"Nguyễn Thanh Hoàng","firstname":"Hoàng","lastname":"Nguyễn","phone":"0909020813","email":"hoang.nth@arisvietnam.com","exp":"10"},"employeeImages":[{"id":83,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5d760a4c19c36.jpg"},{"id":84,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":48,"show":0,"status":1,"employeeProfiles":{"id":48,"employee_id":48,"code":"ARIS0183","gender":1,"fullname":"Phạm Hồng Hiếu","firstname":"Hiếu","lastname":"Phạm","phone":"0384076805","email":"hieu.ph@arisvietnam.com","exp":"2"},"employeeImages":[{"id":95,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f3b82bcfe4.jpg"},{"id":96,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"},{"id":14,"name":"LABOR DIVISION"}]},{"id":49,"show":0,"status":1,"employeeProfiles":{"id":49,"employee_id":49,"code":"ARIS0184","gender":1,"fullname":"Nguyễn Thành Đạt","firstname":"Đạt","lastname":"Nguyễn","phone":"0868616621","email":"dat.nth@arisvietnam.com","exp":"2"},"employeeImages":[{"id":97,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f1c5cc76d0.jpg"},{"id":98,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":51,"show":0,"status":1,"employeeProfiles":{"id":51,"employee_id":51,"code":"ARIS0186","gender":1,"fullname":"Vương Thế Huy","firstname":"Huy","lastname":"Vương","phone":"0384076805","email":"huy.vt@arisvietnam.com","exp":"2"},"employeeImages":[{"id":101,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f1e9154e6a.jpg"},{"id":170,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle51_1_1620360142.jpg"}],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":53,"show":0,"status":1,"employeeProfiles":{"id":53,"employee_id":53,"code":"ARIS0191","gender":0,"fullname":"Võ Xuân Quỳnh Liên","firstname":"Liên","lastname":"Võ","phone":"0585818645","email":"lien.vxq@arisvietnam.com","exp":"1"},"employeeImages":[{"id":105,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f3a24d00ec.jpg"},{"id":106,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":54,"show":0,"status":1,"employeeProfiles":{"id":54,"employee_id":54,"code":"ARIS0193","gender":1,"fullname":"Trần Đăng Duy","firstname":"Duy","lastname":"Trần","phone":"0909624183","email":"duy.td@arisvietnam.com","exp":"2"},"employeeImages":[{"id":107,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f3ac99b341.jpg"},{"id":245,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle54_1_1648726155.jpg"}],"departments":[{"id":14,"name":"LABOR DIVISION"}]},{"id":55,"show":0,"status":1,"employeeProfiles":{"id":55,"employee_id":55,"code":"ARIS0194","gender":1,"fullname":"Nguyễn Duy Thanh","firstname":"Thanh","lastname":"Nguyễn","phone":"0778069744","email":"thanh.nd@aris-vn.com","exp":null},"employeeImages":[{"id":109,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f3a3c19457.jpg"},{"id":268,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle55_1_1659432995.png"}],"departments":[{"id":17,"name":"iOS Team"}]},{"id":56,"show":0,"status":1,"employeeProfiles":{"id":56,"employee_id":56,"code":"ARIS0196","gender":1,"fullname":"Lê Trung Tú","firstname":"Tú","lastname":"Lê","phone":"0375761443","email":"tu.lt@arisvietnam.com","exp":"4"},"employeeImages":[{"id":111,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5f697069c4110.jpg"},{"id":112,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/603dd44116011.jpg"}],"departments":[{"id":6,"name":"QC & INSPECTOR DIVISION"}]},{"id":57,"show":0,"status":1,"employeeProfiles":{"id":57,"employee_id":57,"code":"ARIS0197","gender":0,"fullname":"Nguyễn Quỳnh Lam Uyên","firstname":"Uyên","lastname":"Nguyễn","phone":"0932966021","email":"uyen.nql@arisvietnam.com","exp":"3"},"employeeImages":[{"id":113,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f38c1a083f.jpg"},{"id":114,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":6,"name":"QC & INSPECTOR DIVISION"}]},{"id":59,"show":0,"status":1,"employeeProfiles":{"id":59,"employee_id":59,"code":"ARIS0199","gender":1,"fullname":"Nguyễn Hoài Nam","firstname":"Nam","lastname":"Nguyễn","phone":"0389932743","email":"nam.nh@arisvietnam.com","exp":"0"},"employeeImages":[{"id":117,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5f6970c6c69da.jpg"},{"id":118,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5f7193fde9e60.jpg"}],"departments":[{"id":16,"name":"Android Team"}]},{"id":60,"show":0,"status":1,"employeeProfiles":{"id":60,"employee_id":60,"code":"ARIS0202","gender":1,"fullname":"Nguyễn Nhất Nguyên","firstname":"Nguyên","lastname":"Nguyễn","phone":"0982380229","email":"nguyen.nn@arisvietnam.com","exp":"1"},"employeeImages":[{"id":264,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working60_0_1653896357.jpeg"},{"id":179,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle60_1_1620711749.jpg"}],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":61,"show":0,"status":1,"employeeProfiles":{"id":61,"employee_id":61,"code":"ARIS0203","gender":1,"fullname":"Nguyễn Hoàng Hưng","firstname":"Hưng","lastname":"Nguyễn","phone":"0975945582","email":"hung.nh@arisvietnam.com","exp":"0"},"employeeImages":[{"id":121,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5f6970de77a79.jpg"},{"id":122,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":4,"name":"Business Division"}]},{"id":63,"show":0,"status":1,"employeeProfiles":{"id":63,"employee_id":63,"code":"ARIS0208","gender":1,"fullname":"Vũ Minh Tâm","firstname":"Tâm","lastname":"Vũ","phone":"0522978530","email":"tam.vm@arisvietnam.com","exp":"0"},"employeeImages":[{"id":199,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working63_0_1621825517.jpg"}],"departments":[{"id":17,"name":"iOS Team"}]},{"id":64,"show":0,"status":1,"employeeProfiles":{"id":64,"employee_id":64,"code":"ARIS0209","gender":1,"fullname":"Trịnh Quốc Hiếu","firstname":"Hiếu","lastname":"Trịnh","phone":"0888918202","email":"hieu.tq@arisvietnam.com","exp":"0"},"employeeImages":[{"id":205,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working64_0_1621825640.jpg"},{"id":173,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle64_1_1620705151.jpg"}],"departments":[{"id":6,"name":"QC & INSPECTOR DIVISION"}]},{"id":66,"show":0,"status":1,"employeeProfiles":{"id":66,"employee_id":66,"code":"ARIS0212","gender":1,"fullname":"Nguyễn Hoàng An","firstname":"An","lastname":"Nguyễn","phone":"0904679354","email":"an.nh@arisvietnam.com","exp":"7"},"employeeImages":[{"id":219,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working66_0_1621839943.jpg"},{"id":131,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":17,"name":"iOS Team"}]},{"id":67,"show":0,"status":1,"employeeProfiles":{"id":67,"employee_id":67,"code":"ARIS0213","gender":0,"fullname":"Trương Cẩm Linh","firstname":"Linh","lastname":"Trương","phone":"0923012489","email":"linh.tc@arisvietnam.com","exp":"0"},"employeeImages":[{"id":203,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working67_0_1621825599.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":68,"show":0,"status":1,"employeeProfiles":{"id":68,"employee_id":68,"code":"ARIS0215","gender":1,"fullname":"Trương Tuấn Diệu","firstname":"Diệu","lastname":"Trương","phone":"0332746037","email":"dieu.tt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":220,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working68_0_1621839970.jpg"},{"id":134,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":16,"name":"Android Team"}]},{"id":71,"show":0,"status":1,"employeeProfiles":{"id":71,"employee_id":71,"code":"ARIS0218","gender":0,"fullname":"Ngô Thị Yến Sum","firstname":"Sum","lastname":"Ngô","phone":"0961191705","email":"sum.nty@arisvietnam.com","exp":"0"},"employeeImages":[{"id":200,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working71_0_1621825537.jpg"}],"departments":[{"id":6,"name":"QC & INSPECTOR DIVISION"}]},{"id":72,"show":0,"status":1,"employeeProfiles":{"id":72,"employee_id":72,"code":"ARIS0219","gender":1,"fullname":"Đinh Thế Hùng","firstname":"Hùng","lastname":"Đinh","phone":"0332794044","email":"hung.dt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":196,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working72_0_1621825407.jpg"}],"departments":[{"id":6,"name":"QC & INSPECTOR DIVISION"}]},{"id":79,"show":1,"status":1,"employeeProfiles":{"id":79,"employee_id":79,"code":"ARIS0220","gender":1,"fullname":"Nguyễn Văn Được","firstname":null,"lastname":null,"phone":"0937416678","email":"duoc.nv@arisvietnam.com","exp":"12"},"employeeImages":[{"id":206,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working79_0_1621825664.jpg"},{"id":176,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle79_1_1620705267.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"},{"id":15,"name":"TECH & SOLUTION DIVISION"}]},{"id":80,"show":1,"status":1,"employeeProfiles":{"id":80,"employee_id":80,"code":"ARIS0221","gender":1,"fullname":"Đồng Phương Quang","firstname":null,"lastname":null,"phone":"0376162700","email":"quang.dp@arisvietnam.com","exp":"0"},"employeeImages":[{"id":224,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working80_0_1646027056.jpg"}],"departments":[{"id":16,"name":"Android Team"}]},{"id":81,"show":1,"status":1,"employeeProfiles":{"id":81,"employee_id":81,"code":"ARIS0222","gender":1,"fullname":"Nguyễn Minh Hòa","firstname":null,"lastname":null,"phone":"0375214252","email":"hoa.nm@arisvietnam.com","exp":"0"},"employeeImages":[{"id":228,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working81_0_1646027316.jpg"}],"departments":[{"id":70,"name":"OPERATING SUPPORT"}]},{"id":88,"show":1,"status":1,"employeeProfiles":{"id":84,"employee_id":88,"code":"ARIS0225","gender":1,"fullname":"Bùi Đức Tấn Minh","firstname":null,"lastname":null,"phone":"0886610059","email":"minh.bdt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":209,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working88_0_1621834717.jpg"},{"id":190,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle88_1_1621334561.jpeg"}],"departments":[{"id":14,"name":"LABOR DIVISION"}]},{"id":89,"show":1,"status":1,"employeeProfiles":{"id":85,"employee_id":89,"code":"ARIS0226","gender":1,"fullname":"Trương Minh Anh Tuấn","firstname":null,"lastname":null,"phone":"0707006938","email":"tuan.tma@arisvietnam.com","exp":"0"},"employeeImages":[{"id":210,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working89_0_1621834815.jpg"},{"id":192,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle89_1_1621416355.jpg"}],"departments":[{"id":6,"name":"QC & INSPECTOR DIVISION"}]},{"id":90,"show":1,"status":1,"employeeProfiles":{"id":86,"employee_id":90,"code":"ARIS0227","gender":1,"fullname":"Huỳnh Minh Trí","firstname":null,"lastname":null,"phone":"0903724820","email":"tri.hm@arisvietnam.com","exp":"0"},"employeeImages":[{"id":211,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working90_0_1621834973.jpg"},{"id":191,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle90_1_1621334699.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":96,"show":1,"status":1,"employeeProfiles":{"id":92,"employee_id":96,"code":"ARIS0230","gender":1,"fullname":"Hồ Tuấn Phú","firstname":null,"lastname":null,"phone":"0388288210","email":"phu.ht@arisvietnam.com","exp":"0"},"employeeImages":[{"id":238,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working96_0_1646043393.png"}],"departments":[{"id":14,"name":"LABOR DIVISION"}]},{"id":99,"show":1,"status":1,"employeeProfiles":{"id":95,"employee_id":99,"code":"ARIS0233","gender":1,"fullname":"Võ Ngọc Hoàng Nam","firstname":null,"lastname":null,"phone":"0938495015","email":"nam.vnh@arisvietnam.com","exp":"0"},"employeeImages":[{"id":236,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working99_0_1646042422.jpg"}],"departments":[{"id":13,"name":"BSE DIVISION"}]},{"id":100,"show":1,"status":1,"employeeProfiles":{"id":96,"employee_id":100,"code":"ARIS0234","gender":0,"fullname":"Nguyễn Thị Anh Đào","firstname":null,"lastname":null,"phone":"0794935341","email":"dao.nta@arisvietnam.com","exp":"0"},"employeeImages":[{"id":229,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working100_0_1646027389.jpg"}],"departments":[{"id":70,"name":"OPERATING SUPPORT"}]},{"id":101,"show":1,"status":1,"employeeProfiles":{"id":97,"employee_id":101,"code":"ARIS0235","gender":1,"fullname":"Lê Văn Liễu","firstname":null,"lastname":null,"phone":"0973556844","email":"lieu.lv@arisvietnam.com","exp":"0"},"employeeImages":[{"id":231,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working101_0_1646031004.png"}],"departments":[{"id":70,"name":"OPERATING SUPPORT"}]},{"id":102,"show":1,"status":1,"employeeProfiles":{"id":98,"employee_id":102,"code":"ARIS0236","gender":1,"fullname":"Trần Hùng Đạt","firstname":null,"lastname":null,"phone":"0907440816","email":"dat.th@arisvietnam.com","exp":"0"},"employeeImages":[{"id":237,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working102_0_1646042451.jpg"}],"departments":[{"id":13,"name":"BSE DIVISION"}]},{"id":103,"show":1,"status":1,"employeeProfiles":{"id":99,"employee_id":103,"code":"ARIS0237","gender":1,"fullname":"Hoàng Hồng Quang Nhật","firstname":null,"lastname":null,"phone":"0786681197","email":"nhat.hhq@arisvietnam.com","exp":"0"},"employeeImages":[{"id":241,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working103_0_1646634081.jpg"}],"departments":[{"id":11,"name":"Design Division"}]},{"id":104,"show":1,"status":1,"employeeProfiles":{"id":100,"employee_id":104,"code":"ARIS0238","gender":1,"fullname":"Trần Nhật Quang","firstname":null,"lastname":null,"phone":"0972341932","email":"quang.tn@arisvietnam.com","exp":"0"},"employeeImages":[{"id":235,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working104_0_1646042400.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":105,"show":1,"status":1,"employeeProfiles":{"id":101,"employee_id":105,"code":"ARIS0239","gender":1,"fullname":"Huỳnh Sử Thành","firstname":null,"lastname":null,"phone":"0335024911","email":"thanh.hs@arisvietnam.com","exp":"0"},"employeeImages":[{"id":234,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working105_0_1646042379.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":109,"show":1,"status":1,"employeeProfiles":{"id":105,"employee_id":109,"code":"ARIS0243","gender":1,"fullname":"Nguyễn Văn Nam","firstname":null,"lastname":null,"phone":"0335795257","email":"nam.nv@arisvietnam.com","exp":"0"},"employeeImages":[{"id":223,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working109_0_1646019665.jpg"}],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":110,"show":1,"status":1,"employeeProfiles":{"id":106,"employee_id":110,"code":"ARIS0244","gender":1,"fullname":"Phạm Thế Hùng","firstname":null,"lastname":null,"phone":"0333511964","email":"hung.pt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":222,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working110_0_1646019381.JPEG"},{"id":250,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle110_1_1652271427.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"},{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":113,"show":1,"status":1,"employeeProfiles":{"id":109,"employee_id":113,"code":"ARIS0247","gender":1,"fullname":"Nguyễn Hoàng Huy","firstname":null,"lastname":null,"phone":"0932681825","email":"huy.nh@arisvietnam.com","exp":"0"},"employeeImages":[{"id":230,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working113_0_1646027878.jpg"}],"departments":[{"id":17,"name":"iOS Team"}]},{"id":114,"show":1,"status":1,"employeeProfiles":{"id":110,"employee_id":114,"code":"ARIS0248","gender":1,"fullname":"Trương Thanh Hùng","firstname":null,"lastname":null,"phone":"0343086424","email":"hung.th@arisvietnam.com","exp":"0"},"employeeImages":[{"id":239,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working114_0_1646045914.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":116,"show":1,"status":1,"employeeProfiles":{"id":112,"employee_id":116,"code":"ARIS0250","gender":1,"fullname":"Nguyễn Ngọc Long","firstname":null,"lastname":null,"phone":"0382242450","email":"long.nn@arisvietnam.com","exp":"0"},"employeeImages":[{"id":226,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working116_0_1646027103.jpg"}],"departments":[{"id":14,"name":"LABOR DIVISION"}]},{"id":117,"show":1,"status":1,"employeeProfiles":{"id":113,"employee_id":117,"code":"ARIS0251","gender":0,"fullname":"Trương Thị Phương","firstname":null,"lastname":null,"phone":"0943554936","email":"phuong.tt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":240,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working117_0_1646190510.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":118,"show":1,"status":1,"employeeProfiles":{"id":114,"employee_id":118,"code":"ARIS0252","gender":1,"fullname":"Đào Nhật Thành","firstname":null,"lastname":null,"phone":"0985690098","email":"thanh.dn@arisvietnam.com","exp":"0"},"employeeImages":[{"id":263,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working118_0_1653894911.jpg"}],"departments":[{"id":14,"name":"LABOR DIVISION"}]},{"id":119,"show":1,"status":1,"employeeProfiles":{"id":115,"employee_id":119,"code":"ARIS0253","gender":1,"fullname":"Huỳnh Thành Vinh","firstname":null,"lastname":null,"phone":"0335599297","email":"vinh.ht@arisvietnam.com","exp":"5"},"employeeImages":[{"id":267,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working119_0_1655199935.JPEG"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":121,"show":1,"status":1,"employeeProfiles":{"id":117,"employee_id":121,"code":"ARIS0255","gender":1,"fullname":"Lê Hoàng Nam","firstname":null,"lastname":null,"phone":"0986387269","email":"nam.lh@arisvietnam.com","exp":"0"},"employeeImages":[{"id":262,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working121_0_1653894889.jpg"}],"departments":[{"id":13,"name":"BSE DIVISION"}]},{"id":122,"show":1,"status":1,"employeeProfiles":{"id":118,"employee_id":122,"code":"ARIS0256","gender":0,"fullname":"Nguyễn Thị Hải Hậu","firstname":null,"lastname":null,"phone":"0399716588","email":"hau.nth@arisvietnam.com","exp":"0"},"employeeImages":[{"id":259,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working122_0_1653894787.jpg"}],"departments":[{"id":13,"name":"BSE DIVISION"}]},{"id":124,"show":1,"status":1,"employeeProfiles":{"id":120,"employee_id":124,"code":"ARIS0258","gender":0,"fullname":"Mai Đỗ Kim Châu","firstname":null,"lastname":null,"phone":"0842145808","email":"chau.mdk@arisvietnam.com","exp":"0"},"employeeImages":[{"id":261,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working124_0_1653894859.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":125,"show":1,"status":1,"employeeProfiles":{"id":121,"employee_id":125,"code":"ARIS0259","gender":0,"fullname":"Trần Thị Kim Oanh","firstname":null,"lastname":null,"phone":"0964104502","email":"oanh.ttk@arisvietnam.com","exp":"0"},"employeeImages":[{"id":260,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working125_0_1653894834.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":128,"show":1,"status":1,"employeeProfiles":{"id":124,"employee_id":128,"code":"ARIS0262","gender":0,"fullname":"Ngô Thị Bích Trâm","firstname":null,"lastname":null,"phone":"0355777680","email":"tram.ntb@arisvietnam.com","exp":"0"},"employeeImages":[{"id":266,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working128_0_1653961015.JPEG"}],"departments":[{"id":8,"name":"HR & Admin Division"}]},{"id":129,"show":1,"status":1,"employeeProfiles":{"id":125,"employee_id":129,"code":"ARIS0263","gender":1,"fullname":"Nguyễn Đức Duy (2000)","firstname":null,"lastname":null,"phone":"0398158788","email":"duy.ndu@arisvietnam.com","exp":"0"},"employeeImages":[],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":130,"show":1,"status":1,"employeeProfiles":{"id":126,"employee_id":130,"code":"ARIS0264","gender":0,"fullname":"Phạm Ngọc Mai","firstname":null,"lastname":null,"phone":"0986855402","email":"mai.pn@arisvietnam.com","exp":"0"},"employeeImages":[{"id":265,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working130_0_1653897333.jpg"}],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":131,"show":1,"status":1,"employeeProfiles":{"id":127,"employee_id":131,"code":"ARIS0265","gender":0,"fullname":"Hoàng Minh Huyền","firstname":null,"lastname":null,"phone":"0377008477","email":"huyen.hm@arisvietnam.com","exp":"0"},"employeeImages":[],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":132,"show":1,"status":1,"employeeProfiles":{"id":128,"employee_id":132,"code":"ARIS0266","gender":0,"fullname":"Nguyễn Thị Thảo Nguyên","firstname":null,"lastname":null,"phone":"0353198388","email":"nguyen.ntt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":254,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working132_0_1653894666.jpg"}],"departments":[{"id":71,"name":"INTERNSHIP"}]},{"id":133,"show":1,"status":1,"employeeProfiles":{"id":129,"employee_id":133,"code":"ARIS0267","gender":1,"fullname":"Ngô Trường Tuyển","firstname":null,"lastname":null,"phone":"0353256286","email":"tuyen.nt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":257,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working133_0_1653894738.jpg"}],"departments":[{"id":71,"name":"INTERNSHIP"}]},{"id":134,"show":1,"status":1,"employeeProfiles":{"id":130,"employee_id":134,"code":"ARIS0268","gender":1,"fullname":"Nguyễn Nhựt Linh","firstname":null,"lastname":null,"phone":"0961899088","email":"linh.nn@arisvietnam.com","exp":"0"},"employeeImages":[{"id":256,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working134_0_1653894711.jpg"}],"departments":[{"id":71,"name":"INTERNSHIP"}]},{"id":135,"show":1,"status":1,"employeeProfiles":{"id":131,"employee_id":135,"code":"ARIS0269","gender":1,"fullname":"Lê Kỳ Lương","firstname":null,"lastname":null,"phone":"0764820450","email":"luong.lk@arisvietnam.com","exp":"0"},"employeeImages":[{"id":255,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working135_0_1653894688.jpg"}],"departments":[{"id":71,"name":"INTERNSHIP"}]},{"id":136,"show":1,"status":1,"employeeProfiles":{"id":132,"employee_id":136,"code":"ARIS0270","gender":1,"fullname":"Nguyễn Sơn","firstname":null,"lastname":null,"phone":"0937701104","email":"son.n@arisvietnam.com","exp":"0"},"employeeImages":[{"id":252,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle136_1_1653894614.jpg"}],"departments":[{"id":71,"name":"INTERNSHIP"}]},{"id":137,"show":1,"status":1,"employeeProfiles":{"id":133,"employee_id":137,"code":"ARIS0271","gender":1,"fullname":"Trần Anh Quân","firstname":null,"lastname":null,"phone":"0344500717","email":"quan.ta@arisvietnam.com","exp":"0"},"employeeImages":[{"id":251,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle137_1_1653894574.jpg"}],"departments":[{"id":71,"name":"INTERNSHIP"}]},{"id":138,"show":1,"status":1,"employeeProfiles":{"id":134,"employee_id":138,"code":"ARIS0272","gender":0,"fullname":"Ngô Thu Hà","firstname":null,"lastname":null,"phone":"0342542386","email":"ha.nt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":253,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working138_0_1653894634.jpg"}],"departments":[{"id":71,"name":"INTERNSHIP"}]},{"id":139,"show":1,"status":1,"employeeProfiles":{"id":135,"employee_id":139,"code":"ARIS0273","gender":0,"fullname":"Đào Hoàng Thiên Ân","firstname":null,"lastname":null,"phone":"0901485263","email":"an.dht@arisvietnam.com","exp":"0"},"employeeImages":[{"id":258,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working139_0_1653894763.jpg"}],"departments":[{"id":13,"name":"BSE DIVISION"}]},{"id":141,"show":1,"status":1,"employeeProfiles":{"id":137,"employee_id":141,"code":"ARIS0275","gender":1,"fullname":"Trần Công Khang","firstname":null,"lastname":null,"phone":"0778002260","email":"khang.tc@arisvietnam.com","exp":"0"},"employeeImages":[],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]}],"first_page_url":"http://192.168.1.19:8088/api/employee/staff?per_page=999&page=1","from":1,"last_page":1,"last_page_url":"http://192.168.1.19:8088/api/employee/staff?per_page=999&page=1","links":[{"url":null,"label":"&laquo; Previous","active":false},{"url":"http://192.168.1.19:8088/api/employee/staff?per_page=999&page=1","label":"1","active":true},{"url":null,"label":"Next &raquo;","active":false}],"next_page_url":null,"path":"http://192.168.1.19:8088/api/employee/staff","per_page":999,"prev_page_url":null,"to":80,"total":80}

class StaffListResponse {
  StaffListResponse({
    int? code,
    String? msg,
    StaffListData? data,
  }) {
    _code = code;
    _msg = msg;
    _data = data;
  }

  StaffListResponse.fromJson(dynamic json) {
    _code = json['code'];
    _msg = json['msg'];
    _data = json['data'] != null ? StaffListData.fromJson(json['data']) : null;
  }

  int? _code;
  String? _msg;
  StaffListData? _data;

  StaffListResponse copyWith({
    int? code,
    String? msg,
    StaffListData? data,
  }) =>
      StaffListResponse(
        code: code ?? _code,
        msg: msg ?? _msg,
        data: data ?? _data,
      );

  int? get code => _code;

  String? get msg => _msg;

  StaffListData? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['msg'] = _msg;
    map['data'] = _data;
    return map;
  }
}

/// current_page : 1
/// employeeData : [{"id":1,"show":1,"status":1,"employeeProfiles":{"id":1,"employee_id":1,"code":"ARIS0005","gender":1,"fullname":"Trần Tuấn Nhật","firstname":"Nhật","lastname":"Trần","phone":"0933401669","email":"nhat.tran@arisvietnam.com","exp":"10"},"employeeImages":[{"id":1,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/58f5ac7981921.png"},{"id":2,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/590ae7b2f195a.jpg"}],"departments":[{"id":1,"name":"CEO"},{"id":2,"name":"BOM"},{"id":3,"name":"PMO DIVISION"},{"id":4,"name":"Business Division"},{"id":7,"name":"Accounting Division"},{"id":8,"name":"HR & Admin Division"},{"id":13,"name":"BSE DIVISION"},{"id":14,"name":"LABOR DIVISION"}]},{"id":2,"show":1,"status":1,"employeeProfiles":{"id":2,"employee_id":2,"code":"ARIS0007","gender":0,"fullname":"Nguyễn Thị Lan","firstname":"Lan","lastname":"Nguyễn","phone":"0933906061","email":"lan.nguyen@arisvietnam.com","exp":"0"},"employeeImages":[{"id":3,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/598c30d582bb4.jpg"},{"id":4,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/59802732cfe27.jpg"}],"departments":[{"id":7,"name":"Accounting Division"}]},{"id":5,"show":1,"status":1,"employeeProfiles":{"id":5,"employee_id":5,"code":"ARIS0024","gender":1,"fullname":"Vương Sĩ Nguyên","firstname":"Nguyên","lastname":"Vương","phone":"0938222787","email":"nguyen.vs@arisvietnam.com","exp":"0"},"employeeImages":[{"id":9,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5ce27682e5fca.jpg"},{"id":10,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/590bfccd57e15.png"}],"departments":[{"id":3,"name":"PMO DIVISION"},{"id":11,"name":"Design Division"},{"id":70,"name":"OPERATING SUPPORT"}]},{"id":6,"show":0,"status":1,"employeeProfiles":{"id":6,"employee_id":6,"code":"ARIS0028","gender":1,"fullname":"Nguyễn Văn Khá","firstname":"Khá","lastname":"Nguyễn","phone":"0832095586","email":"kha.nv@arisvietnam.com","exp":"0"},"employeeImages":[{"id":11,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/58f7110a6a08a.jpg"},{"id":12,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/590ae8f1df921.jpg"}],"departments":[{"id":2,"name":"BOM"},{"id":3,"name":"PMO DIVISION"},{"id":6,"name":"QC & INSPECTOR DIVISION"},{"id":10,"name":"MOBILE DIVISION"},{"id":19,"name":"BOM"},{"id":69,"name":"IT & SUPPORT"},{"id":71,"name":"INTERNSHIP"}]},{"id":7,"show":0,"status":1,"employeeProfiles":{"id":7,"employee_id":7,"code":"ARIS0030","gender":1,"fullname":"Nguyễn Tuấn Giang","firstname":"Giang","lastname":"Nguyễn","phone":"0985773486","email":"giang.nt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":13,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/58f713db1e1f7.jpg"},{"id":14,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/590bfeb036d3c.png"}],"departments":[{"id":15,"name":"TECH & SOLUTION DIVISION"},{"id":16,"name":"Android Team"}]},{"id":8,"show":1,"status":1,"employeeProfiles":{"id":8,"employee_id":8,"code":"ARIS0042","gender":1,"fullname":"Phan Minh Tuấn","firstname":"Tuấn","lastname":"Phan","phone":"0919153072","email":"tuan.pm@arisvietnam.com","exp":"0"},"employeeImages":[{"id":15,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/58f714131a6e5.jpg"},{"id":16,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/590bfec7629cd.png"}],"departments":[{"id":3,"name":"PMO DIVISION"},{"id":15,"name":"TECH & SOLUTION DIVISION"},{"id":16,"name":"Android Team"}]},{"id":9,"show":0,"status":1,"employeeProfiles":{"id":9,"employee_id":9,"code":"ARIS0047","gender":1,"fullname":"Aris Japan","firstname":"Jp","lastname":"Aris","phone":"0937796986","email":"nakabe@arisvietnam.com","exp":"0"},"employeeImages":[{"id":17,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"},{"id":18,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":9,"name":"Japan Division"}]},{"id":10,"show":1,"status":1,"employeeProfiles":{"id":10,"employee_id":10,"code":"ARIS0050","gender":1,"fullname":"Ken Hagiwara","firstname":"Hagiwara","lastname":"Ken","phone":null,"email":"hagiwara@arisvietnam.com","exp":"0"},"employeeImages":[{"id":19,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/58f716aa50b11.jpg"},{"id":20,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/590bfbd447dd0.png"}],"departments":[{"id":9,"name":"Japan Division"}]},{"id":13,"show":1,"status":1,"employeeProfiles":{"id":13,"employee_id":13,"code":"ARIS0068","gender":1,"fullname":"Lê Tuấn Anh","firstname":"Anh","lastname":"Lê","phone":"0937569560","email":"anh.lt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":25,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/58f71293c100d.jpg"},{"id":26,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5a1f66797ba2b.jpg"}],"departments":[{"id":3,"name":"PMO DIVISION"},{"id":15,"name":"TECH & SOLUTION DIVISION"},{"id":17,"name":"iOS Team"}]},{"id":14,"show":1,"status":1,"employeeProfiles":{"id":14,"employee_id":14,"code":"ARIS0071","gender":1,"fullname":"Phạm Xuân Khoa","firstname":"Khoa","lastname":"Phạm","phone":"01659662411","email":"khoa.px@arisvietnam.com","exp":"0"},"employeeImages":[{"id":27,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/58f7123b3030e.jpg"},{"id":28,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/590bfe0ed8c28.png"}],"departments":[{"id":2,"name":"BOM"},{"id":3,"name":"PMO DIVISION"},{"id":4,"name":"Business Division"},{"id":5,"name":"Development Division"},{"id":12,"name":"OFFSHORE DIVISION"},{"id":15,"name":"TECH & SOLUTION DIVISION"}]},{"id":15,"show":0,"status":1,"employeeProfiles":{"id":15,"employee_id":15,"code":"ARIS0074","gender":1,"fullname":"Nguyễn Quyết Tiến","firstname":"Tiến","lastname":"Nguyễn","phone":"0902138242","email":"tien.nq@arisvietnam.com","exp":"14"},"employeeImages":[{"id":29,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5b0636d9b8d69.jpg"},{"id":171,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle15_1_1620703878.png"}],"departments":[{"id":3,"name":"PMO DIVISION"},{"id":15,"name":"TECH & SOLUTION DIVISION"},{"id":29,"name":"DEVELOPMENT DIVISION"},{"id":72,"name":"INTERNSHIP"}]},{"id":16,"show":0,"status":1,"employeeProfiles":{"id":16,"employee_id":16,"code":"ARIS0087","gender":1,"fullname":"Vũ Hoàng Quân","firstname":"Quân","lastname":"Vũ","phone":"0937796986","email":"quan.v@arisvietnam.com","exp":"7"},"employeeImages":[{"id":31,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5a1d1b78e7df3.jpg"},{"id":169,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle16_1_1619417035.png"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"},{"id":15,"name":"TECH & SOLUTION DIVISION"}]},{"id":17,"show":0,"status":1,"employeeProfiles":{"id":17,"employee_id":17,"code":"ARIS0106","gender":0,"fullname":"Nguyễn Thanh Vân","firstname":"Vân","lastname":"Nguyễn","phone":"0935449717","email":"van.nt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":33,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5ce26a39869a3.jpg"},{"id":34,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5cde3a0d49f93.jpg"}],"departments":[{"id":4,"name":"Business Division"},{"id":13,"name":"BSE DIVISION"}]},{"id":21,"show":0,"status":1,"employeeProfiles":{"id":21,"employee_id":21,"code":"ARIS0112","gender":1,"fullname":"Đổng Công Danh","firstname":"Danh","lastname":"Đổng","phone":"0798808599","email":"danh.dc@arisvietnam.com","exp":"3"},"employeeImages":[{"id":41,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5cfe02aaf12e4.jpg"},{"id":172,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle21_1_1620704803.png"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":22,"show":0,"status":1,"employeeProfiles":{"id":22,"employee_id":22,"code":"ARIS0115","gender":1,"fullname":"Phạm Thanh Liêm","firstname":"Liêm","lastname":"Phạm","phone":"0377514336","email":"liem.pt@arisvietnam.com","exp":"7"},"employeeImages":[{"id":43,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5cfdf30492016.jpg"},{"id":44,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":23,"show":0,"status":1,"employeeProfiles":{"id":23,"employee_id":23,"code":"ARIS0116","gender":1,"fullname":"Tô Chí Cường","firstname":"Cường","lastname":"Tô","phone":"0945388033","email":"cuong.tc@arisvietnam.com","exp":"3"},"employeeImages":[{"id":45,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5cfe0285664b3.jpg"},{"id":46,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":25,"show":0,"status":1,"employeeProfiles":{"id":25,"employee_id":25,"code":"ARIS0124","gender":0,"fullname":"Vương Hoàng Bảo Hạnh","firstname":"Hạnh","lastname":"Vương","phone":"0933937546","email":"hanh.vhb@arisvietnam.com","exp":"0"},"employeeImages":[{"id":49,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5ce2769d6f954.jpg"},{"id":50,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5ce2769d761d0.jpg"}],"departments":[{"id":8,"name":"HR & Admin Division"}]},{"id":30,"show":0,"status":1,"employeeProfiles":{"id":30,"employee_id":30,"code":"ARIS0139","gender":1,"fullname":"Nguyễn Minh Trung","firstname":"Trung","lastname":"Nguyễn","phone":"0908005250","email":"trung.nm@arisvietnam.com","exp":"3"},"employeeImages":[{"id":59,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5cfe03e47a28f.jpg"},{"id":60,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":32,"show":0,"status":1,"employeeProfiles":{"id":32,"employee_id":32,"code":"ARIS0149","gender":1,"fullname":"Nguyễn Trung Hải","firstname":"Hải","lastname":"Nguyễn","phone":"0374560069","email":"hai.nt@arisvietnam.com","exp":"9"},"employeeImages":[{"id":63,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5cff6ad7507a1.jpg"},{"id":64,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":6,"name":"QC & INSPECTOR DIVISION"}]},{"id":35,"show":0,"status":1,"employeeProfiles":{"id":35,"employee_id":35,"code":"ARIS0165","gender":0,"fullname":"Đoàn Thị Vân Anh","firstname":"Anh","lastname":"Đoàn","phone":"0973891990","email":"anh.dtv@arisvietnam.com","exp":"0"},"employeeImages":[{"id":69,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f2f83cd61f.jpg"},{"id":70,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":39,"show":0,"status":1,"employeeProfiles":{"id":39,"employee_id":39,"code":"ARIS0170","gender":1,"fullname":"Hoàng Văn Sỹ","firstname":"Sỹ","lastname":"Hoàng","phone":"0986438165","email":"sy.hv@arisvietnam.com","exp":"6"},"employeeImages":[{"id":77,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f1ab703eca.jpg"},{"id":78,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":40,"show":0,"status":1,"employeeProfiles":{"id":40,"employee_id":40,"code":"ARIS0171","gender":1,"fullname":"Văn Hà Tuyên","firstname":"Tuyên","lastname":"Văn","phone":"0931686678","email":"tuyen.vh@arisvietnam.com","exp":"6"},"employeeImages":[{"id":79,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f1b4a42b48.jpg"},{"id":80,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":42,"show":0,"status":1,"employeeProfiles":{"id":42,"employee_id":42,"code":"ARIS0173","gender":1,"fullname":"Nguyễn Thanh Hoàng","firstname":"Hoàng","lastname":"Nguyễn","phone":"0909020813","email":"hoang.nth@arisvietnam.com","exp":"10"},"employeeImages":[{"id":83,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5d760a4c19c36.jpg"},{"id":84,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":48,"show":0,"status":1,"employeeProfiles":{"id":48,"employee_id":48,"code":"ARIS0183","gender":1,"fullname":"Phạm Hồng Hiếu","firstname":"Hiếu","lastname":"Phạm","phone":"0384076805","email":"hieu.ph@arisvietnam.com","exp":"2"},"employeeImages":[{"id":95,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f3b82bcfe4.jpg"},{"id":96,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"},{"id":14,"name":"LABOR DIVISION"}]},{"id":49,"show":0,"status":1,"employeeProfiles":{"id":49,"employee_id":49,"code":"ARIS0184","gender":1,"fullname":"Nguyễn Thành Đạt","firstname":"Đạt","lastname":"Nguyễn","phone":"0868616621","email":"dat.nth@arisvietnam.com","exp":"2"},"employeeImages":[{"id":97,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f1c5cc76d0.jpg"},{"id":98,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":51,"show":0,"status":1,"employeeProfiles":{"id":51,"employee_id":51,"code":"ARIS0186","gender":1,"fullname":"Vương Thế Huy","firstname":"Huy","lastname":"Vương","phone":"0384076805","email":"huy.vt@arisvietnam.com","exp":"2"},"employeeImages":[{"id":101,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f1e9154e6a.jpg"},{"id":170,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle51_1_1620360142.jpg"}],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":53,"show":0,"status":1,"employeeProfiles":{"id":53,"employee_id":53,"code":"ARIS0191","gender":0,"fullname":"Võ Xuân Quỳnh Liên","firstname":"Liên","lastname":"Võ","phone":"0585818645","email":"lien.vxq@arisvietnam.com","exp":"1"},"employeeImages":[{"id":105,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f3a24d00ec.jpg"},{"id":106,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":54,"show":0,"status":1,"employeeProfiles":{"id":54,"employee_id":54,"code":"ARIS0193","gender":1,"fullname":"Trần Đăng Duy","firstname":"Duy","lastname":"Trần","phone":"0909624183","email":"duy.td@arisvietnam.com","exp":"2"},"employeeImages":[{"id":107,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f3ac99b341.jpg"},{"id":245,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle54_1_1648726155.jpg"}],"departments":[{"id":14,"name":"LABOR DIVISION"}]},{"id":55,"show":0,"status":1,"employeeProfiles":{"id":55,"employee_id":55,"code":"ARIS0194","gender":1,"fullname":"Nguyễn Duy Thanh","firstname":"Thanh","lastname":"Nguyễn","phone":"0778069744","email":"thanh.nd@aris-vn.com","exp":null},"employeeImages":[{"id":109,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f3a3c19457.jpg"},{"id":268,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle55_1_1659432995.png"}],"departments":[{"id":17,"name":"iOS Team"}]},{"id":56,"show":0,"status":1,"employeeProfiles":{"id":56,"employee_id":56,"code":"ARIS0196","gender":1,"fullname":"Lê Trung Tú","firstname":"Tú","lastname":"Lê","phone":"0375761443","email":"tu.lt@arisvietnam.com","exp":"4"},"employeeImages":[{"id":111,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5f697069c4110.jpg"},{"id":112,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/603dd44116011.jpg"}],"departments":[{"id":6,"name":"QC & INSPECTOR DIVISION"}]},{"id":57,"show":0,"status":1,"employeeProfiles":{"id":57,"employee_id":57,"code":"ARIS0197","gender":0,"fullname":"Nguyễn Quỳnh Lam Uyên","firstname":"Uyên","lastname":"Nguyễn","phone":"0932966021","email":"uyen.nql@arisvietnam.com","exp":"3"},"employeeImages":[{"id":113,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5e6f38c1a083f.jpg"},{"id":114,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":6,"name":"QC & INSPECTOR DIVISION"}]},{"id":59,"show":0,"status":1,"employeeProfiles":{"id":59,"employee_id":59,"code":"ARIS0199","gender":1,"fullname":"Nguyễn Hoài Nam","firstname":"Nam","lastname":"Nguyễn","phone":"0389932743","email":"nam.nh@arisvietnam.com","exp":"0"},"employeeImages":[{"id":117,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5f6970c6c69da.jpg"},{"id":118,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5f7193fde9e60.jpg"}],"departments":[{"id":16,"name":"Android Team"}]},{"id":60,"show":0,"status":1,"employeeProfiles":{"id":60,"employee_id":60,"code":"ARIS0202","gender":1,"fullname":"Nguyễn Nhất Nguyên","firstname":"Nguyên","lastname":"Nguyễn","phone":"0982380229","email":"nguyen.nn@arisvietnam.com","exp":"1"},"employeeImages":[{"id":264,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working60_0_1653896357.jpeg"},{"id":179,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle60_1_1620711749.jpg"}],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":61,"show":0,"status":1,"employeeProfiles":{"id":61,"employee_id":61,"code":"ARIS0203","gender":1,"fullname":"Nguyễn Hoàng Hưng","firstname":"Hưng","lastname":"Nguyễn","phone":"0975945582","email":"hung.nh@arisvietnam.com","exp":"0"},"employeeImages":[{"id":121,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/5f6970de77a79.jpg"},{"id":122,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":4,"name":"Business Division"}]},{"id":63,"show":0,"status":1,"employeeProfiles":{"id":63,"employee_id":63,"code":"ARIS0208","gender":1,"fullname":"Vũ Minh Tâm","firstname":"Tâm","lastname":"Vũ","phone":"0522978530","email":"tam.vm@arisvietnam.com","exp":"0"},"employeeImages":[{"id":199,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working63_0_1621825517.jpg"}],"departments":[{"id":17,"name":"iOS Team"}]},{"id":64,"show":0,"status":1,"employeeProfiles":{"id":64,"employee_id":64,"code":"ARIS0209","gender":1,"fullname":"Trịnh Quốc Hiếu","firstname":"Hiếu","lastname":"Trịnh","phone":"0888918202","email":"hieu.tq@arisvietnam.com","exp":"0"},"employeeImages":[{"id":205,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working64_0_1621825640.jpg"},{"id":173,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle64_1_1620705151.jpg"}],"departments":[{"id":6,"name":"QC & INSPECTOR DIVISION"}]},{"id":66,"show":0,"status":1,"employeeProfiles":{"id":66,"employee_id":66,"code":"ARIS0212","gender":1,"fullname":"Nguyễn Hoàng An","firstname":"An","lastname":"Nguyễn","phone":"0904679354","email":"an.nh@arisvietnam.com","exp":"7"},"employeeImages":[{"id":219,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working66_0_1621839943.jpg"},{"id":131,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":17,"name":"iOS Team"}]},{"id":67,"show":0,"status":1,"employeeProfiles":{"id":67,"employee_id":67,"code":"ARIS0213","gender":0,"fullname":"Trương Cẩm Linh","firstname":"Linh","lastname":"Trương","phone":"0923012489","email":"linh.tc@arisvietnam.com","exp":"0"},"employeeImages":[{"id":203,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working67_0_1621825599.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":68,"show":0,"status":1,"employeeProfiles":{"id":68,"employee_id":68,"code":"ARIS0215","gender":1,"fullname":"Trương Tuấn Diệu","firstname":"Diệu","lastname":"Trương","phone":"0332746037","email":"dieu.tt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":220,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working68_0_1621839970.jpg"},{"id":134,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/dummy_avatar.png"}],"departments":[{"id":16,"name":"Android Team"}]},{"id":71,"show":0,"status":1,"employeeProfiles":{"id":71,"employee_id":71,"code":"ARIS0218","gender":0,"fullname":"Ngô Thị Yến Sum","firstname":"Sum","lastname":"Ngô","phone":"0961191705","email":"sum.nty@arisvietnam.com","exp":"0"},"employeeImages":[{"id":200,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working71_0_1621825537.jpg"}],"departments":[{"id":6,"name":"QC & INSPECTOR DIVISION"}]},{"id":72,"show":0,"status":1,"employeeProfiles":{"id":72,"employee_id":72,"code":"ARIS0219","gender":1,"fullname":"Đinh Thế Hùng","firstname":"Hùng","lastname":"Đinh","phone":"0332794044","email":"hung.dt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":196,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working72_0_1621825407.jpg"}],"departments":[{"id":6,"name":"QC & INSPECTOR DIVISION"}]},{"id":79,"show":1,"status":1,"employeeProfiles":{"id":79,"employee_id":79,"code":"ARIS0220","gender":1,"fullname":"Nguyễn Văn Được","firstname":null,"lastname":null,"phone":"0937416678","email":"duoc.nv@arisvietnam.com","exp":"12"},"employeeImages":[{"id":206,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working79_0_1621825664.jpg"},{"id":176,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle79_1_1620705267.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"},{"id":15,"name":"TECH & SOLUTION DIVISION"}]},{"id":80,"show":1,"status":1,"employeeProfiles":{"id":80,"employee_id":80,"code":"ARIS0221","gender":1,"fullname":"Đồng Phương Quang","firstname":null,"lastname":null,"phone":"0376162700","email":"quang.dp@arisvietnam.com","exp":"0"},"employeeImages":[{"id":224,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working80_0_1646027056.jpg"}],"departments":[{"id":16,"name":"Android Team"}]},{"id":81,"show":1,"status":1,"employeeProfiles":{"id":81,"employee_id":81,"code":"ARIS0222","gender":1,"fullname":"Nguyễn Minh Hòa","firstname":null,"lastname":null,"phone":"0375214252","email":"hoa.nm@arisvietnam.com","exp":"0"},"employeeImages":[{"id":228,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working81_0_1646027316.jpg"}],"departments":[{"id":70,"name":"OPERATING SUPPORT"}]},{"id":88,"show":1,"status":1,"employeeProfiles":{"id":84,"employee_id":88,"code":"ARIS0225","gender":1,"fullname":"Bùi Đức Tấn Minh","firstname":null,"lastname":null,"phone":"0886610059","email":"minh.bdt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":209,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working88_0_1621834717.jpg"},{"id":190,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle88_1_1621334561.jpeg"}],"departments":[{"id":14,"name":"LABOR DIVISION"}]},{"id":89,"show":1,"status":1,"employeeProfiles":{"id":85,"employee_id":89,"code":"ARIS0226","gender":1,"fullname":"Trương Minh Anh Tuấn","firstname":null,"lastname":null,"phone":"0707006938","email":"tuan.tma@arisvietnam.com","exp":"0"},"employeeImages":[{"id":210,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working89_0_1621834815.jpg"},{"id":192,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle89_1_1621416355.jpg"}],"departments":[{"id":6,"name":"QC & INSPECTOR DIVISION"}]},{"id":90,"show":1,"status":1,"employeeProfiles":{"id":86,"employee_id":90,"code":"ARIS0227","gender":1,"fullname":"Huỳnh Minh Trí","firstname":null,"lastname":null,"phone":"0903724820","email":"tri.hm@arisvietnam.com","exp":"0"},"employeeImages":[{"id":211,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working90_0_1621834973.jpg"},{"id":191,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle90_1_1621334699.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":96,"show":1,"status":1,"employeeProfiles":{"id":92,"employee_id":96,"code":"ARIS0230","gender":1,"fullname":"Hồ Tuấn Phú","firstname":null,"lastname":null,"phone":"0388288210","email":"phu.ht@arisvietnam.com","exp":"0"},"employeeImages":[{"id":238,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working96_0_1646043393.png"}],"departments":[{"id":14,"name":"LABOR DIVISION"}]},{"id":99,"show":1,"status":1,"employeeProfiles":{"id":95,"employee_id":99,"code":"ARIS0233","gender":1,"fullname":"Võ Ngọc Hoàng Nam","firstname":null,"lastname":null,"phone":"0938495015","email":"nam.vnh@arisvietnam.com","exp":"0"},"employeeImages":[{"id":236,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working99_0_1646042422.jpg"}],"departments":[{"id":13,"name":"BSE DIVISION"}]},{"id":100,"show":1,"status":1,"employeeProfiles":{"id":96,"employee_id":100,"code":"ARIS0234","gender":0,"fullname":"Nguyễn Thị Anh Đào","firstname":null,"lastname":null,"phone":"0794935341","email":"dao.nta@arisvietnam.com","exp":"0"},"employeeImages":[{"id":229,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working100_0_1646027389.jpg"}],"departments":[{"id":70,"name":"OPERATING SUPPORT"}]},{"id":101,"show":1,"status":1,"employeeProfiles":{"id":97,"employee_id":101,"code":"ARIS0235","gender":1,"fullname":"Lê Văn Liễu","firstname":null,"lastname":null,"phone":"0973556844","email":"lieu.lv@arisvietnam.com","exp":"0"},"employeeImages":[{"id":231,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working101_0_1646031004.png"}],"departments":[{"id":70,"name":"OPERATING SUPPORT"}]},{"id":102,"show":1,"status":1,"employeeProfiles":{"id":98,"employee_id":102,"code":"ARIS0236","gender":1,"fullname":"Trần Hùng Đạt","firstname":null,"lastname":null,"phone":"0907440816","email":"dat.th@arisvietnam.com","exp":"0"},"employeeImages":[{"id":237,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working102_0_1646042451.jpg"}],"departments":[{"id":13,"name":"BSE DIVISION"}]},{"id":103,"show":1,"status":1,"employeeProfiles":{"id":99,"employee_id":103,"code":"ARIS0237","gender":1,"fullname":"Hoàng Hồng Quang Nhật","firstname":null,"lastname":null,"phone":"0786681197","email":"nhat.hhq@arisvietnam.com","exp":"0"},"employeeImages":[{"id":241,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working103_0_1646634081.jpg"}],"departments":[{"id":11,"name":"Design Division"}]},{"id":104,"show":1,"status":1,"employeeProfiles":{"id":100,"employee_id":104,"code":"ARIS0238","gender":1,"fullname":"Trần Nhật Quang","firstname":null,"lastname":null,"phone":"0972341932","email":"quang.tn@arisvietnam.com","exp":"0"},"employeeImages":[{"id":235,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working104_0_1646042400.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":105,"show":1,"status":1,"employeeProfiles":{"id":101,"employee_id":105,"code":"ARIS0239","gender":1,"fullname":"Huỳnh Sử Thành","firstname":null,"lastname":null,"phone":"0335024911","email":"thanh.hs@arisvietnam.com","exp":"0"},"employeeImages":[{"id":234,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working105_0_1646042379.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":109,"show":1,"status":1,"employeeProfiles":{"id":105,"employee_id":109,"code":"ARIS0243","gender":1,"fullname":"Nguyễn Văn Nam","firstname":null,"lastname":null,"phone":"0335795257","email":"nam.nv@arisvietnam.com","exp":"0"},"employeeImages":[{"id":223,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working109_0_1646019665.jpg"}],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":110,"show":1,"status":1,"employeeProfiles":{"id":106,"employee_id":110,"code":"ARIS0244","gender":1,"fullname":"Phạm Thế Hùng","firstname":null,"lastname":null,"phone":"0333511964","email":"hung.pt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":222,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working110_0_1646019381.JPEG"},{"id":250,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle110_1_1652271427.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"},{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":113,"show":1,"status":1,"employeeProfiles":{"id":109,"employee_id":113,"code":"ARIS0247","gender":1,"fullname":"Nguyễn Hoàng Huy","firstname":null,"lastname":null,"phone":"0932681825","email":"huy.nh@arisvietnam.com","exp":"0"},"employeeImages":[{"id":230,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working113_0_1646027878.jpg"}],"departments":[{"id":17,"name":"iOS Team"}]},{"id":114,"show":1,"status":1,"employeeProfiles":{"id":110,"employee_id":114,"code":"ARIS0248","gender":1,"fullname":"Trương Thanh Hùng","firstname":null,"lastname":null,"phone":"0343086424","email":"hung.th@arisvietnam.com","exp":"0"},"employeeImages":[{"id":239,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working114_0_1646045914.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":116,"show":1,"status":1,"employeeProfiles":{"id":112,"employee_id":116,"code":"ARIS0250","gender":1,"fullname":"Nguyễn Ngọc Long","firstname":null,"lastname":null,"phone":"0382242450","email":"long.nn@arisvietnam.com","exp":"0"},"employeeImages":[{"id":226,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working116_0_1646027103.jpg"}],"departments":[{"id":14,"name":"LABOR DIVISION"}]},{"id":117,"show":1,"status":1,"employeeProfiles":{"id":113,"employee_id":117,"code":"ARIS0251","gender":0,"fullname":"Trương Thị Phương","firstname":null,"lastname":null,"phone":"0943554936","email":"phuong.tt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":240,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working117_0_1646190510.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":118,"show":1,"status":1,"employeeProfiles":{"id":114,"employee_id":118,"code":"ARIS0252","gender":1,"fullname":"Đào Nhật Thành","firstname":null,"lastname":null,"phone":"0985690098","email":"thanh.dn@arisvietnam.com","exp":"0"},"employeeImages":[{"id":263,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working118_0_1653894911.jpg"}],"departments":[{"id":14,"name":"LABOR DIVISION"}]},{"id":119,"show":1,"status":1,"employeeProfiles":{"id":115,"employee_id":119,"code":"ARIS0253","gender":1,"fullname":"Huỳnh Thành Vinh","firstname":null,"lastname":null,"phone":"0335599297","email":"vinh.ht@arisvietnam.com","exp":"5"},"employeeImages":[{"id":267,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working119_0_1655199935.JPEG"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":121,"show":1,"status":1,"employeeProfiles":{"id":117,"employee_id":121,"code":"ARIS0255","gender":1,"fullname":"Lê Hoàng Nam","firstname":null,"lastname":null,"phone":"0986387269","email":"nam.lh@arisvietnam.com","exp":"0"},"employeeImages":[{"id":262,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working121_0_1653894889.jpg"}],"departments":[{"id":13,"name":"BSE DIVISION"}]},{"id":122,"show":1,"status":1,"employeeProfiles":{"id":118,"employee_id":122,"code":"ARIS0256","gender":0,"fullname":"Nguyễn Thị Hải Hậu","firstname":null,"lastname":null,"phone":"0399716588","email":"hau.nth@arisvietnam.com","exp":"0"},"employeeImages":[{"id":259,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working122_0_1653894787.jpg"}],"departments":[{"id":13,"name":"BSE DIVISION"}]},{"id":124,"show":1,"status":1,"employeeProfiles":{"id":120,"employee_id":124,"code":"ARIS0258","gender":0,"fullname":"Mai Đỗ Kim Châu","firstname":null,"lastname":null,"phone":"0842145808","email":"chau.mdk@arisvietnam.com","exp":"0"},"employeeImages":[{"id":261,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working124_0_1653894859.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":125,"show":1,"status":1,"employeeProfiles":{"id":121,"employee_id":125,"code":"ARIS0259","gender":0,"fullname":"Trần Thị Kim Oanh","firstname":null,"lastname":null,"phone":"0964104502","email":"oanh.ttk@arisvietnam.com","exp":"0"},"employeeImages":[{"id":260,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working125_0_1653894834.jpg"}],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":128,"show":1,"status":1,"employeeProfiles":{"id":124,"employee_id":128,"code":"ARIS0262","gender":0,"fullname":"Ngô Thị Bích Trâm","firstname":null,"lastname":null,"phone":"0355777680","email":"tram.ntb@arisvietnam.com","exp":"0"},"employeeImages":[{"id":266,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working128_0_1653961015.JPEG"}],"departments":[{"id":8,"name":"HR & Admin Division"}]},{"id":129,"show":1,"status":1,"employeeProfiles":{"id":125,"employee_id":129,"code":"ARIS0263","gender":1,"fullname":"Nguyễn Đức Duy (2000)","firstname":null,"lastname":null,"phone":"0398158788","email":"duy.ndu@arisvietnam.com","exp":"0"},"employeeImages":[],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":130,"show":1,"status":1,"employeeProfiles":{"id":126,"employee_id":130,"code":"ARIS0264","gender":0,"fullname":"Phạm Ngọc Mai","firstname":null,"lastname":null,"phone":"0986855402","email":"mai.pn@arisvietnam.com","exp":"0"},"employeeImages":[{"id":265,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working130_0_1653897333.jpg"}],"departments":[{"id":29,"name":"DEVELOPMENT DIVISION"}]},{"id":131,"show":1,"status":1,"employeeProfiles":{"id":127,"employee_id":131,"code":"ARIS0265","gender":0,"fullname":"Hoàng Minh Huyền","firstname":null,"lastname":null,"phone":"0377008477","email":"huyen.hm@arisvietnam.com","exp":"0"},"employeeImages":[],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]},{"id":132,"show":1,"status":1,"employeeProfiles":{"id":128,"employee_id":132,"code":"ARIS0266","gender":0,"fullname":"Nguyễn Thị Thảo Nguyên","firstname":null,"lastname":null,"phone":"0353198388","email":"nguyen.ntt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":254,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working132_0_1653894666.jpg"}],"departments":[{"id":71,"name":"INTERNSHIP"}]},{"id":133,"show":1,"status":1,"employeeProfiles":{"id":129,"employee_id":133,"code":"ARIS0267","gender":1,"fullname":"Ngô Trường Tuyển","firstname":null,"lastname":null,"phone":"0353256286","email":"tuyen.nt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":257,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working133_0_1653894738.jpg"}],"departments":[{"id":71,"name":"INTERNSHIP"}]},{"id":134,"show":1,"status":1,"employeeProfiles":{"id":130,"employee_id":134,"code":"ARIS0268","gender":1,"fullname":"Nguyễn Nhựt Linh","firstname":null,"lastname":null,"phone":"0961899088","email":"linh.nn@arisvietnam.com","exp":"0"},"employeeImages":[{"id":256,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working134_0_1653894711.jpg"}],"departments":[{"id":71,"name":"INTERNSHIP"}]},{"id":135,"show":1,"status":1,"employeeProfiles":{"id":131,"employee_id":135,"code":"ARIS0269","gender":1,"fullname":"Lê Kỳ Lương","firstname":null,"lastname":null,"phone":"0764820450","email":"luong.lk@arisvietnam.com","exp":"0"},"employeeImages":[{"id":255,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working135_0_1653894688.jpg"}],"departments":[{"id":71,"name":"INTERNSHIP"}]},{"id":136,"show":1,"status":1,"employeeProfiles":{"id":132,"employee_id":136,"code":"ARIS0270","gender":1,"fullname":"Nguyễn Sơn","firstname":null,"lastname":null,"phone":"0937701104","email":"son.n@arisvietnam.com","exp":"0"},"employeeImages":[{"id":252,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle136_1_1653894614.jpg"}],"departments":[{"id":71,"name":"INTERNSHIP"}]},{"id":137,"show":1,"status":1,"employeeProfiles":{"id":133,"employee_id":137,"code":"ARIS0271","gender":1,"fullname":"Trần Anh Quân","firstname":null,"lastname":null,"phone":"0344500717","email":"quan.ta@arisvietnam.com","exp":"0"},"employeeImages":[{"id":251,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/freestyle137_1_1653894574.jpg"}],"departments":[{"id":71,"name":"INTERNSHIP"}]},{"id":138,"show":1,"status":1,"employeeProfiles":{"id":134,"employee_id":138,"code":"ARIS0272","gender":0,"fullname":"Ngô Thu Hà","firstname":null,"lastname":null,"phone":"0342542386","email":"ha.nt@arisvietnam.com","exp":"0"},"employeeImages":[{"id":253,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working138_0_1653894634.jpg"}],"departments":[{"id":71,"name":"INTERNSHIP"}]},{"id":139,"show":1,"status":1,"employeeProfiles":{"id":135,"employee_id":139,"code":"ARIS0273","gender":0,"fullname":"Đào Hoàng Thiên Ân","firstname":null,"lastname":null,"phone":"0901485263","email":"an.dht@arisvietnam.com","exp":"0"},"employeeImages":[{"id":258,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars/new/working139_0_1653894763.jpg"}],"departments":[{"id":13,"name":"BSE DIVISION"}]},{"id":141,"show":1,"status":1,"employeeProfiles":{"id":137,"employee_id":141,"code":"ARIS0275","gender":1,"fullname":"Trần Công Khang","firstname":null,"lastname":null,"phone":"0778002260","email":"khang.tc@arisvietnam.com","exp":"0"},"employeeImages":[],"departments":[{"id":12,"name":"OFFSHORE DIVISION"}]}]
/// first_page_url : "http://192.168.1.19:8088/api/employee/staff?per_page=999&page=1"
/// from : 1
/// last_page : 1
/// last_page_url : "http://192.168.1.19:8088/api/employee/staff?per_page=999&page=1"
/// links : [{"url":null,"label":"&laquo; Previous","active":false},{"url":"http://192.168.1.19:8088/api/employee/staff?per_page=999&page=1","label":"1","active":true},{"url":null,"label":"Next &raquo;","active":false}]
/// next_page_url : null
/// path : "http://192.168.1.19:8088/api/employee/staff"
/// per_page : 999
/// prev_page_url : null
/// to : 80
/// total : 80
@HiveType(typeId: 0, adapterName: "StaffListDetailDataAdapter")
class StaffListData {
  StaffListData({
    @HiveField(0) int? currentPage,
    @HiveField(1) List<EmployeeData>? employeeData,
    @HiveField(2) String? firstPageUrl,
    @HiveField(3) int? from,
    @HiveField(4) int? lastPage,
    @HiveField(5) String? lastPageUrl,
    @HiveField(6) List<Links>? links,
    @HiveField(7) String? nextPageUrl,
    @HiveField(8) String? path,
    @HiveField(9) int? perPage,
    @HiveField(10) String? prevPageUrl,
    @HiveField(11) int? to,
    @HiveField(12) int? total,
  }) {
    _currentPage = currentPage;
    _employeeData = employeeData;
    _firstPageUrl = firstPageUrl;
    _from = from;
    _lastPage = lastPage;
    _lastPageUrl = lastPageUrl;
    _links = links;
    _nextPageUrl = nextPageUrl;
    _path = path;
    _perPage = perPage;
    _prevPageUrl = prevPageUrl;
    _to = to;
    _total = total;
  }

  StaffListData.fromJson(dynamic json) {
    _currentPage = json['current_page'];
    if (json['data'] != null) {
      _employeeData = [];
      json['data'].forEach((v) {
        _employeeData?.add(EmployeeData.fromJson(v));
      });
    }
    _firstPageUrl = json['first_page_url'];
    _from = json['from'];
    _lastPage = json['last_page'];
    _lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      _links = [];
      json['links'].forEach((v) {
        _links?.add(Links.fromJson(v));
      });
    }
    _nextPageUrl = json['next_page_url'];
    _path = json['path'];
    _perPage = json['per_page'];
    _prevPageUrl = json['prev_page_url'];
    _to = json['to'];
    _total = json['total'];
  }

  int? _currentPage;
  List<EmployeeData>? _employeeData;
  String? _firstPageUrl;
  int? _from;
  int? _lastPage;
  String? _lastPageUrl;
  List<Links>? _links;
  String? _nextPageUrl;
  String? _path;
  int? _perPage;
  String? _prevPageUrl;
  int? _to;
  int? _total;

  StaffListData copyWith({
    int? currentPage,
    List<EmployeeData>? employeeData,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    String? lastPageUrl,
    List<Links>? links,
    String? nextPageUrl,
    String? path,
    int? perPage,
    String? prevPageUrl,
    int? to,
    int? total,
  }) =>
      StaffListData(
        currentPage: currentPage ?? _currentPage,
        employeeData: employeeData ?? _employeeData,
        firstPageUrl: firstPageUrl ?? _firstPageUrl,
        from: from ?? _from,
        lastPage: lastPage ?? _lastPage,
        lastPageUrl: lastPageUrl ?? _lastPageUrl,
        links: links ?? _links,
        nextPageUrl: nextPageUrl ?? _nextPageUrl,
        path: path ?? _path,
        perPage: perPage ?? _perPage,
        prevPageUrl: prevPageUrl ?? _prevPageUrl,
        to: to ?? _to,
        total: total ?? _total,
      );

  int? get currentPage => _currentPage;

  List<EmployeeData>? get employeeData => _employeeData;

  String? get firstPageUrl => _firstPageUrl;

  int? get from => _from;

  int? get lastPage => _lastPage;

  String? get lastPageUrl => _lastPageUrl;

  List<Links>? get links => _links;

  dynamic get nextPageUrl => _nextPageUrl;

  String? get path => _path;

  int? get perPage => _perPage;

  dynamic get prevPageUrl => _prevPageUrl;

  int? get to => _to;

  int? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = _currentPage;
    if (_employeeData != null) {
      map['data'] = _employeeData?.map((v) => v.toJson()).toList();
    }
    map['first_page_url'] = _firstPageUrl;
    map['from'] = _from;
    map['last_page'] = _lastPage;
    map['last_page_url'] = _lastPageUrl;
    if (_links != null) {
      map['links'] = _links?.map((v) => v.toJson()).toList();
    }
    map['next_page_url'] = _nextPageUrl;
    map['path'] = _path;
    map['per_page'] = _perPage;
    map['prev_page_url'] = _prevPageUrl;
    map['to'] = _to;
    map['total'] = _total;
    return map;
  }
}

/// url : null
/// label : "&laquo; Previous"
/// active : false
@HiveType(typeId: 5, adapterName: "LinksAdapter")
class Links {
  Links({
    @HiveField(0) String? url,
    @HiveField(1) String? label,
    @HiveField(2) bool? active,
  }) {
    _url = url;
    _label = label;
    _active = active;
  }

  Links.fromJson(dynamic json) {
    _url = json['url'];
    _label = json['label'];
    _active = json['active'];
  }

  String? _url;
  String? _label;
  bool? _active;

  Links copyWith({
    String? url,
    String? label,
    bool? active,
  }) =>
      Links(
        url: url ?? _url,
        label: label ?? _label,
        active: active ?? _active,
      );

  String? get url => _url;

  String? get label => _label;

  bool? get active => _active;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['label'] = _label;
    map['active'] = _active;
    return map;
  }
}

/// id : 1
/// show : 1
/// status : 1
/// employeeProfiles : {"id":1,"employee_id":1,"code":"ARIS0005","gender":1,"fullname":"Trần Tuấn Nhật","firstname":"Nhật","lastname":"Trần","phone":"0933401669","email":"nhat.tran@arisvietnam.com","exp":"10"}
/// employeeImages : [{"id":1,"type":0,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/58f5ac7981921.png"},{"id":2,"type":1,"image_url":"http://192.168.1.19:8088/uploads/avatars//img/590ae7b2f195a.jpg"}]
/// departments : [{"id":1,"name":"CEO"},{"id":2,"name":"BOM"},{"id":3,"name":"PMO DIVISION"},{"id":4,"name":"Business Division"},{"id":7,"name":"Accounting Division"},{"id":8,"name":"HR & Admin Division"},{"id":13,"name":"BSE DIVISION"},{"id":14,"name":"LABOR DIVISION"}]
@HiveType(typeId: 1, adapterName: "EmployeeDataAdapter")
class EmployeeData {
  EmployeeData({
    @HiveField(0) int? id,
    @HiveField(1) int? show,
    @HiveField(2) int? status,
    @HiveField(3) EmployeeProfiles? employeeProfiles,
    @HiveField(4) List<EmployeeImages>? employeeImages,
    @HiveField(5) List<Departments>? departments,
  }) {
    _id = id;
    _show = show;
    _status = status;
    _employeeProfiles = employeeProfiles;
    _employeeImages = employeeImages;
    _departments = departments;
  }

  EmployeeData.fromJson(dynamic json) {
    _id = json['id'];
    _show = json['show'];
    _status = json['status'];
    _employeeProfiles = json['employeeProfiles'] != null
        ? EmployeeProfiles.fromJson(json['employeeProfiles'])
        : null;
    if (json['employeeImages'] != null) {
      _employeeImages = [];
      json['employeeImages'].forEach((v) {
        _employeeImages?.add(EmployeeImages.fromJson(v));
      });
    }
    if (json['departments'] != null) {
      _departments = [];
      json['departments'].forEach((v) {
        _departments?.add(Departments.fromJson(v));
      });
    }
  }

  int? _id;
  int? _show;
  int? _status;
  EmployeeProfiles? _employeeProfiles;
  List<EmployeeImages>? _employeeImages;
  List<Departments>? _departments;

  EmployeeData copyWith({
    int? id,
    int? show,
    int? status,
    EmployeeProfiles? employeeProfiles,
    List<EmployeeImages>? employeeImages,
    List<Departments>? departments,
  }) =>
      EmployeeData(
        id: id ?? _id,
        show: show ?? _show,
        status: status ?? _status,
        employeeProfiles: employeeProfiles ?? _employeeProfiles,
        employeeImages: employeeImages ?? _employeeImages,
        departments: departments ?? _departments,
      );

  int? get id => _id;

  int? get show => _show;

  int? get status => _status;

  EmployeeProfiles? get employeeProfiles => _employeeProfiles;

  List<EmployeeImages>? get employeeImages => _employeeImages;

  List<Departments>? get departments => _departments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['show'] = _show;
    map['status'] = _status;
    if (_employeeProfiles != null) {
      map['employeeProfiles'] = _employeeProfiles?.toJson();
    }
    if (_employeeImages != null) {
      map['employeeImages'] = _employeeImages?.map((v) => v.toJson()).toList();
    }
    if (_departments != null) {
      map['departments'] = _departments?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 1
/// name : "CEO"
@HiveType(typeId: 4, adapterName: "DepartmentAdapter")
class Departments {
  Departments({
    @HiveField(0) int? id,
    @HiveField(1) String? name,
  }) {
    _id = id;
    _name = name;
  }

  Departments.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }

  int? _id;
  String? _name;

  Departments copyWith({
    int? id,
    String? name,
  }) =>
      Departments(
        id: id ?? _id,
        name: name ?? _name,
      );

  int? get id => _id;

  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }
}

/// id : 1
/// type : 0
/// image_url : "http://192.168.1.19:8088/uploads/avatars//img/58f5ac7981921.png"
@HiveType(typeId: 3, adapterName: "EmployeeImagesAdapter")
class EmployeeImages {
  EmployeeImages({
    @HiveField(0) int? id,
    @HiveField(1) int? type,
    @HiveField(2) String? imageUrl,
  }) {
    _id = id;
    _type = type;
    _imageUrl = imageUrl;
  }

  EmployeeImages.fromJson(dynamic json) {
    _id = json['id'];
    _type = json['type'];
    _imageUrl = json['image_url'];
  }

  int? _id;
  int? _type;
  String? _imageUrl;

  EmployeeImages copyWith({
    int? id,
    int? type,
    String? imageUrl,
  }) =>
      EmployeeImages(
        id: id ?? _id,
        type: type ?? _type,
        imageUrl: imageUrl ?? _imageUrl,
      );

  int? get id => _id;

  int? get type => _type;

  String? get imageUrl => _imageUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['type'] = _type;
    map['image_url'] = _imageUrl;
    return map;
  }
}

/// id : 1
/// employee_id : 1
/// code : "ARIS0005"
/// gender : 1
/// fullname : "Trần Tuấn Nhật"
/// firstname : "Nhật"
/// lastname : "Trần"
/// phone : "0933401669"
/// email : "nhat.tran@arisvietnam.com"
/// exp : "10"
@HiveType(typeId: 2, adapterName: "EmployeeProfilesAdapter")
class EmployeeProfiles {
  EmployeeProfiles({
    @HiveField(0) int? id,
    @HiveField(1) int? employeeId,
    @HiveField(2) String? code,
    @HiveField(3) int? gender,
    @HiveField(4) String? fullname,
    @HiveField(5) String? firstname,
    @HiveField(6) String? lastname,
    @HiveField(7) String? phone,
    @HiveField(8) String? email,
    @HiveField(9) String? exp,
  }) {
    _id = id;
    _employeeId = employeeId;
    _code = code;
    _gender = gender;
    _fullname = fullname;
    _firstname = firstname;
    _lastname = lastname;
    _phone = phone;
    _email = email;
    _exp = exp;
  }

  EmployeeProfiles.fromJson(dynamic json) {
    _id = json['id'];
    _employeeId = json['employee_id'];
    _code = json['code'];
    _gender = json['gender'];
    _fullname = json['fullname'];
    _firstname = json['firstname'];
    _lastname = json['lastname'];
    _phone = json['phone'];
    _email = json['email'];
    _exp = json['exp'];
  }

  int? _id;
  int? _employeeId;
  String? _code;
  int? _gender;
  String? _fullname;
  String? _firstname;
  String? _lastname;
  String? _phone;
  String? _email;
  String? _exp;

  EmployeeProfiles copyWith({
    int? id,
    int? employeeId,
    String? code,
    int? gender,
    String? fullname,
    String? firstname,
    String? lastname,
    String? phone,
    String? email,
    String? exp,
  }) =>
      EmployeeProfiles(
        id: id ?? _id,
        employeeId: employeeId ?? _employeeId,
        code: code ?? _code,
        gender: gender ?? _gender,
        fullname: fullname ?? _fullname,
        firstname: firstname ?? _firstname,
        lastname: lastname ?? _lastname,
        phone: phone ?? _phone,
        email: email ?? _email,
        exp: exp ?? _exp,
      );

  int? get id => _id;

  int? get employeeId => _employeeId;

  String? get code => _code;

  int? get gender => _gender;

  String? get fullname => _fullname;

  String? get firstname => _firstname;

  String? get lastname => _lastname;

  String? get phone => _phone;

  String? get email => _email;

  String? get exp => _exp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['employee_id'] = _employeeId;
    map['code'] = _code;
    map['gender'] = _gender;
    map['fullname'] = _fullname;
    map['firstname'] = _firstname;
    map['lastname'] = _lastname;
    map['phone'] = _phone;
    map['email'] = _email;
    map['exp'] = _exp;
    return map;
  }
}
