import 'package:design_app/widgets/feature_product.dart';
import 'package:design_app/widgets/header_with_search.dart';
import 'package:design_app/widgets/recommend_product.dart';
import 'package:design_app/widgets/title_with_more.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMore(
            title: 'Recommeded',
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            // width: MediaQuery.of(context).size.width * 0.4,
            margin: EdgeInsets.only(left: 15, right: 15),
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => RecommendProduct()),
          ),
          TitleWithMore(title: "Featured"),
          Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => FeatureProduct()))

          // TitleWithMore()
        ],
      ),
    );
  }
}

// var jsonResponse = [
//   {
//     foodMenu: "Offers",
//     foods: [
//       {name: "Burger", price: 25.0, maxOffer: 3, minOrder: 2},
//       {name: "Hot Dog", price: 25.0, maxOffer: 3, minOrder: 2}
//     ]
//   },
//   {
//     foodMenu: "Sandwich",
//     foods: [
//       {name: "Chicken", price: 25.0, maxOffer: 3, minOrder: 2},
//       {name: "Veg", price: 25.0, maxOffer: 3, minOrder: 2}
//     ]
//   }
// ];
