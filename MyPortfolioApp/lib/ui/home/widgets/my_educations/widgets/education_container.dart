import 'package:flutter/material.dart';
import 'package:personal_website/common/responsive/responsive.dart';

class EducationContainer extends StatelessWidget {
  const EducationContainer({
    Key? key,
    required this.post,
    required this.institute,
    required this.duration,
  }) : super(key: key);

  final String post;
  final String institute;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Padding(
        padding: EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(
          Icons.circle,
          size: 12.0,
        ),
      ),
      title: Text(
        post,
      ),
      subtitle: Text("$institute ($duration)"),
    );}
}

