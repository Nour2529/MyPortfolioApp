import 'package:flutter/material.dart';
import 'package:personal_website/common/responsive/responsive.dart';

import 'map.dart';

class ExperienceContainer extends StatelessWidget {
  ExperienceContainer({
    Key? key,
    required this.experienceName,
    required this.experienceDescription,
    required this.experienceDuration,
    required this.company,
  }) : super(key: key);

  final String experienceName;
  final String experienceDescription;
  final String experienceDuration;
  final String company;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 15,
                width: 15,
                margin: EdgeInsets.only(right: 10),
                decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              ),
              Text(
                experienceName,

              )
            ],
          ),

          Container(
            margin: EdgeInsets.only(left: 6, top: 10),
            decoration: BoxDecoration(
                border: Border(left: BorderSide(width: 2, color: Colors.grey))),
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 8.0),
              padding: const EdgeInsets.all(8.0),

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.calendar_month,
                            color: Colors.grey,
                            size: 15.0,
                          ),
                          SizedBox(width: 6),
                          Text(
                            experienceDuration,
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: (){
                          MapUtils.openMap(34.836272, 10.754578);
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.place,
                              color: Colors.grey,
                              size: 15.0,
                            ),
                            SizedBox(width: 6),
                            Text(
                              company,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text(experienceDescription),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

