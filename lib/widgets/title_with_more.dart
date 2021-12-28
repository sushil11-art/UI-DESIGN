import 'package:flutter/material.dart';

class TitleWithMore extends StatelessWidget {
  final String? title;
  TitleWithMore({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              minimumSize: const Size(70, 30),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
            child: const Text('More'),
            // style: ButtonStyle(
            //   foregroundColor:
            //       MaterialStateProperty.all<Color>(Colors.blue),
            // ),
          )
        ],
      ),
    );
  }
}
