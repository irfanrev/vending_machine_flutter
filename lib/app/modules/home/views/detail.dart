import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:vending_mechine/app/models/drink.dart';
import 'package:vending_mechine/app/modules/home/controllers/home_controller.dart';

class Detail extends GetView<HomeController> {
  final Drink drink;

  Detail({required this.drink});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.grey[100],
          ),
          Text('Minuman'),
          Text('stok'),
          TextField(),
          ElevatedButton(onPressed: () {}, child: Text('Beli'))
        ],
      ),
    );
  }
}
