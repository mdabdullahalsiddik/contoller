import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/contolar/home_contoller.dart';
import 'package:myapp/static/all_color.dart';
import 'package:myapp/static/all_style.dart';
import 'package:myapp/static/all_text.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController homeController = Get.put(HomeController());
  TextEditingController controllers = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColor.orangecolor,
        title: AllText.appbartext,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: AllColor.orangecolor,
                  child: Obx(
                    () => Center(
                      child: Text(
                        homeController.city.value,
                        style: AllStyle.appbarstyle,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextField(
                    controller: controllers,
                    decoration: InputDecoration(
                      hintText: AllText.hint_text,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: AllColor.orangecolor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: AllColor.orangecolor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      homeController.cityName(controllers.text);
                      controllers.clear();
                    },
                    child: AllText.bottomtext,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(AllColor.orangecolor)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
