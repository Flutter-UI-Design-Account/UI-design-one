import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final String info;

  TipsCard({@required this.info});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage('assets/images/rr.png'),
        ),
        subtitle: Text(info),
      ),
    );
  }
}
