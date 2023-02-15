import 'package:flutter/material.dart';

class ListItemInfo extends StatelessWidget {
  final List buttonList;
  final String imagePath;
  final String appBarTitle;
  const ListItemInfo(
      {super.key, required this.buttonList, required this.imagePath, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color(0xFF308C89),
        title: Text(appBarTitle),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 1 / 2,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                        image: NetworkImage(imagePath), fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: 35,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1 / 2,
                  child: ListView.builder(
                    itemCount: buttonList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: buttonList[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
