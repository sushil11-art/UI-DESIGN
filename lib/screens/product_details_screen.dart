import 'package:design_app/widgets/image_icons.dart';
import 'package:design_app/widgets/title_price.dart';
import 'package:flutter/material.dart';

// class ProductDetails extends StatelessWidget {
//   const ProductDetails({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             ImageAndIcons(size: size),
//             TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
//             SizedBox(height: 20),
//             Row(
//               children: <Widget>[
//                 SizedBox(
//                   width: size.width / 2,
//                   height: 84,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       // backr: Colors.green,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.only(
//                           topRight: Radius.circular(20),
//                         ),
//                       ),
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       "Buy Now",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     child: Text("Description"),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//     ;
//   }
// }

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/plant1.jpg"))),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 253, 208, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
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
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                // height: double.minPositive,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Allovera',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 20, right: 20, bottom: 20),
                          child: SingleChildScrollView(
                            child: Container(
                              child: Text(
                                'The Aloe plant is employed as a dietary supplement in a variety of foods and as an ingredient in cosmetic products. The widespread human exposure and its potential toxic and carcinogenic activities raise safety concerns. Chemical analysis reveals that the Aloe plant contains various polysaccharides and phenolic chemicals, notably anthraquinones.Aloe stimulates fibroblast which produces the collagen and elastin fibers making the skin more elastic and less wrinkled. It also has cohesive effects on the superficial flaking epidermal cells by sticking them together, which softens the skin. The amino acids also soften hardened skin cells and zinc acts as an astringent to tighten pores.',
                                overflow: TextOverflow.fade,
                                softWrap: true,
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.wb_sunny,
                                  color: Colors.green,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_outline,
                                  color: Colors.green,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.mediation_rounded,
                                  color: Colors.green,
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        // padding: const EdgeInsets.all(8.0),
                        padding:
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child: Container(
                          // margin: EdgeInsets.fromLTRB(35, 10, 35, 10),
                          // padding: EdgeInsets.top(),
                          // padding:
                          //     EdgeInsets.only(left: 20, right: 20, bottom: 20),
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: const Center(
                              child: Text(' Buy Now',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20))),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.shopping_bag),
      ),
    );
  }
}
