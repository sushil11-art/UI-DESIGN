import 'package:flutter/material.dart';

class ImageAndIcons extends StatelessWidget {
  final Size size;

  ImageAndIcons({required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 60),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          // Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),
                    IconButton(onPressed: () {}, icon: Icon(Icons.wb_sunny))
                    // IconCard(icon: "assets/icons/sun.svg"),
                    // IconCard(icon: "assets/icons/icon_2.svg"),
                    // IconCard(icon: "assets/icons/icon_3.svg"),
                    // IconCard(icon: "assets/icons/icon_4.svg"),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: Colors.green,
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/plant1.jpg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
