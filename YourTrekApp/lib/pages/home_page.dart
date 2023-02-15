import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yourtrek/components/app_bottom_bar.dart';
import 'package:yourtrek/components/app_drawer.dart';
import 'package:yourtrek/components/open_drawer_button.dart';
import 'package:yourtrek/components/service_button.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List homeShowingPlaces = [
    [
      'https://seralakehotel.com/wp-content/uploads/2018/05/trabzon-ayasofya-camii-1.jpg.webp',
      'Ayasofya Camii'
    ],
    [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/e8/10/d3/sumela-manastiri.jpg?w=1200&h=1200&s=1',
      'Sümela Manastırı'
    ],
    [
      'https://www.cephanelik.com.tr/dosyalar/page_4/1556081634_1.jpg',
      'Cephanelik'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomAppBottomBar(),
      key: _scaffoldKey,
      endDrawer: AppDrawer(),
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Trabzon\'u\nKeşfedin',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Uygun fiyatlara güzel',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        Text(
                          'turistik yerler bulun!',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                    OpenDrawerButton(onPressed: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    }),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Trabzon'da En İyi Yerler",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: (MediaQuery.of(context).size.width * 2 / 3) * 3 / 5,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: homeShowingPlaces.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15),
                        width: MediaQuery.of(context).size.width * 2 / 3,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(homeShowingPlaces[index][0]),
                              fit: BoxFit.cover,
                              opacity: 0.7),
                        ),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              homeShowingPlaces[index][1],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Hizmetler",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ServiceButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.cloudSun),
                      buttonText: "Hava",
                    ),
                    SizedBox(width: 8,),
                    ServiceButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.planeDeparture),
                      buttonText: "Uçuş",
                    ),
                    SizedBox(width: 8,),
                    ServiceButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.newspaper),
                      buttonText: "Haber",
                    ),
                    SizedBox(width: 8,),
                    ServiceButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.noteSticky),
                      buttonText: "Notlar",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
