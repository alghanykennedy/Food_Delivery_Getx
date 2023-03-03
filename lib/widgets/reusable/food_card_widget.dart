import 'package:flutter/material.dart';
import 'package:fooddelivery/app/modules/detail_product/views/detail_product_view.dart';
import 'package:get/get.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key? key,
    this.image = '',
    this.imageUrl = '',
    required this.text,
  }) : super(key: key);
  final String image, imageUrl, text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => DetailProductView());
      },
      child: SizedBox(
        height: 300,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: 185,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 4),
                        color: Color(0xFF393F3F).withOpacity(0.07),
                        blurRadius: 40)
                  ],
                ),
                child: Center(
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 20,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(65),
                  color: Colors.grey[500]!.withOpacity(0.3),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 4),
                        color: Color(0xFF393F3F).withOpacity(0.07),
                        blurRadius: 40)
                  ],
                ),
                child: imageUrl == ''
                    ? CircleAvatar(backgroundImage: AssetImage(image))
                    : CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
