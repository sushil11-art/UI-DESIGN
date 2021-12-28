import 'package:design_app/screens/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecommendProduct extends StatelessWidget {
  const RecommendProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height*0.15,
      // width
      child: Column(
        children: [
          InkWell(
            onTap: () {
              // ignore: prefer_const_constructors
              Get.off(ProductDetails());
            },
            child: Container(
                margin: const EdgeInsets.only(left: 15),
                height: MediaQuery.of(context).size.height * 0.30,
                // width: ,
                width: MediaQuery.of(context).size.width * 0.40,
                // child: Image.asset("assets/images/plant1.jpg")
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    // borderRadius: BorderRadius.c(),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/plant2.jpg")))),
          ),
          InkWell(
            onTap: () {
              // ignore: prefer_const_constructors
              Get.off(ProductDetails());
            },
            child: Container(
              // width: double.maxFinite,
              margin: const EdgeInsets.only(left: 15),
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.only(
                  //     bottomLeft: Radius.circular(8),
                  //     bottomRight: Radius.circular(8)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green,
                      blurRadius: 50, // soften the shadow
                      // spreadRadius: 5.0, //extend the shadow
                      offset: Offset(
                        0, // Move to right 10  horizontally
                        10, // Move to bottom 10 Vertically
                      ),
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        child: Text(
                          'Sunflower',
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Flexible(
                        child: Text('Rs.400',
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.green)),
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Flexible(
                        child: Text('Bhaktapur',
                            // overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.green)),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
