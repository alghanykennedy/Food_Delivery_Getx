import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fooddelivery/app/modules/checkout/views/checkout_view.dart';
import 'package:fooddelivery/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  final CartController cart = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Cart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => ListView.builder(
                  itemCount: cart.models.length,
                  itemBuilder: ((context, index) {
                    final model = cart.models[index];
                    print(model.quantity.toString());
                    return Column(
                      children: [
                        Slidable(
                          // Specify a key if the Slidable is dismissible.
                          key: ValueKey(0),
                          // The end action pane is the one at the right or the bottom side.
                          endActionPane: ActionPane(
                            motion: ScrollMotion(),
                            children: [
                              CustomSlidableAction(
                                  padding: EdgeInsets.only(left: 15),
                                  onPressed: ((context) {}),
                                  child: CircleAvatar(
                                    radius: 26,
                                    backgroundColor: Colors.red,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite),
                                      color: Colors.white,
                                    ),
                                  )),
                              CustomSlidableAction(
                                  padding: EdgeInsets.only(right: 30),
                                  onPressed: ((context) {}),
                                  child: CircleAvatar(
                                    radius: 26,
                                    backgroundColor: Colors.red,
                                  )),
                            ],
                          ),
                          child: buildListTile(model),
                        ),
                      ],
                    );
                  })),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => CheckoutView());
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 100,
                vertical: 25,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.orange,
              ),
              child: Text(
                "Add to cart",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }

  Widget buildListTile(MyModel model) => ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        leading: CircleAvatar(
          radius: 30,
          child: Image.asset(model.image),
        ),
        title: Row(
          children: [
            Column(
              children: [
                Text(
                  model.name,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  model.price.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Spacer(),
            Container(
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.orange),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: IconButton(
                      icon: Icon(Icons.remove),
                      color: Colors.white,
                      onPressed: () => cart.decrement(model),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    model.quantity.toString(),
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () => cart.increment(model),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
}

class MyModel {
  final String name;
  final String image;
  final double price;
  int quantity;

  MyModel({
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
  });
}
