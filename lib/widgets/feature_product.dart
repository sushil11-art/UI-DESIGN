import 'package:design_app/screens/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeatureProduct extends StatelessWidget {
  const FeatureProduct({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.off(ProductDetails());
      },
      child: Container(
          margin: const EdgeInsets.only(left: 15),
          height: MediaQuery.of(context).size.height * 0.1,
          // width: ,
          width: MediaQuery.of(context).size.width * 0.8,
          // child: Image.asset("assets/images/plant1.jpg")
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // borderRadius: BorderRadius.c(),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/plant4.jpg")))),
    );
  }
}
