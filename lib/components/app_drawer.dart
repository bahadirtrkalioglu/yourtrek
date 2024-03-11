import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:yourtrek/pages/home_page.dart';
import 'package:yourtrek/pages/menu_list_item_page.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({super.key});

  final List eventList = [
    ['https://tiyatrodergisi.com.tr/wp-content/uploads/2022/10/OLUM-TUZAGI-AFIS-e1667212040321-1170x843.jpg', 'Ölüm Tuzağı', 'Trabzon Devlet Tiyatrosu', '17.02.2023, Saat: 14.40'],
    ['https://cdnuploads.aa.com.tr/uploads/Contents/2019/07/04/thumbs_b_c_4acfe02905298d3f6f27f3befc38e308.jpg', 'Türk Yıldızları', 'Beşirli Sahil', '17.02.2023, Saat: 14.40'],
    ['https://img-s3.onedio.com/id-6298cbf80f572cd70e5733b2/rev-0/w-1200/h-589/f-jpg/s-3444825d4f1e4068f07969e28df2d3aac618da63.jpg', 'Cahrlie\'nin Çikolata\nFabrikası', 'KTÜ AKM Salonu', '17.02.2023, Saat: 14.40'],
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Username"),
            accountEmail: Text("username@user.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: ClipOval(
                child: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/1946/1946429.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                image: NetworkImage(
                    'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.cloudSun),
            title: Text("Hava"),
            onTap: () {},
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.calendarDay),
            title: Text("Etkinlikler"),
            onTap: () {
              Get.to(
                MenuListItemPage(appbarText: "Etkinlikler", displayList: eventList),
              );
            },
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.basketball),
            title: Text("Sportif Faaliyet"),
            onTap: () {},
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.bowlFood),
            title: Text("Yerel Ürün"),
            onTap: () {},
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.camera),
            title: Text("Şehir Kameraları"),
            onTap: () {},
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.bus),
            title: Text("Otobüs"),
            onTap: () {},
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.qrcode),
            title: Text("Karekodlar"),
            onTap: () {},
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.museum),
            title: Text("Müzeler"),
            onTap: () {},
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.solidMap),
            title: Text("Maps"),
            onTap: () {},
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.parking),
            title: Text("Otoparklar"),
            onTap: () {},
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.solidHospital),
            title: Text("Hastaneler"),
            onTap: () {},
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.utensils),
            title: Text("Lokantalar"),
            onTap: () {},
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.suitcase),
            title: Text("Gezilecek Yerler"),
            onTap: () {},
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.infoCircle),
            title: Text("Hakkımızda"),
            onTap: () {},
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.rightFromBracket),
            title: Text("Çıkış Yap"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
