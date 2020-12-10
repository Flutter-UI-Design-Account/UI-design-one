import 'package:flutter/material.dart';


class IconAndText extends StatelessWidget {
  final IconData icon;
  final String description;

  IconAndText({@required this.icon, @required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xFFF15752),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Icon(
              //Icons.email,
              icon,
              size: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Flexible(
            child: Text(
              description,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
