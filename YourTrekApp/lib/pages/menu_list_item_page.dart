import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:yourtrek/components/gesture_button.dart';
import 'package:yourtrek/pages/list_item_info.dart';

class MenuListItemPage extends StatefulWidget {
  final String appbarText;
  final List displayList;
  const MenuListItemPage(
      {super.key, required this.appbarText, required this.displayList});

  @override
  State<MenuListItemPage> createState() => _MenuListItemPageState();
}

class _MenuListItemPageState extends State<MenuListItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color(0xFF308C89),
        title: Text(widget.appbarText),
      ),
      body: ListView.builder(
        itemCount: widget.displayList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 25.0, left: 25.0, top: 20),
            child: GestureDetector(
              onTap: () {
                Get.to(ListItemInfo(
                  appBarTitle: widget.displayList[index][1],
                  imagePath: widget.displayList[index][0],
                  buttonList: [
                    GestureButton(buttonText: "TARİF")
                  ],
                ));
              },
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: MediaQuery.of(context).size.width * 3 / 8,
                          height: (MediaQuery.of(context).size.width * 2 / 8),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      widget.displayList[index][0]),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          children: [
                            Text(
                              widget.displayList[index][1],
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.displayList[index][2],
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              widget.displayList[index][3],
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 1.5,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
