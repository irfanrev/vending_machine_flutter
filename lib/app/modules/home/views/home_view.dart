import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vending_mechine/app/models/drink.dart';
import 'package:vending_mechine/app/modules/home/views/detail.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text('Vending Machine UNSIKA'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: drinkList.length,
          itemBuilder: (context, index) {
            final Drink drink = drinkList[index];

            return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Detail(drink: drink))),
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10),
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 130,
                        color: Colors.white,
                        child: Image.asset(drink.img),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            drink.nama,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            drink.harga,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            );
          },
        ));
  }
}
