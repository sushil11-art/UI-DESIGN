import 'package:flutter/material.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      margin: const EdgeInsets.only(bottom: 20),
      child: Stack(
        children: [
          Container(
            height: size.height * 0.2 - 27,
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 56),
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('UI Design',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.green),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.search))
                  ],
                ),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 57,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(23),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.green,
                      blurRadius: 50, // soften the shadow
                      // spreadRadius: 5.0, //extend the shadow
                      offset: Offset(
                        0, // Move to right 10  horizontally
                        10, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
