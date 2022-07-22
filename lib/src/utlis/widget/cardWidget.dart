import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:test/src/utlis/assetConstant.dart';
import 'package:test/src/utlis/theme/color.dart';
import 'package:test/src/utlis/widget/commonTxt.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: gPrimaryWhiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      height: Get.height * 0.14,
      child: Row(children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CircleAvatar(
            radius: 40.0,
            backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CommonText(
                    text: 'Accepted',
                    color: Colors.blueAccent,
                    fontSize: 12,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    checkicon,
                    height: 14,
                    width: 14,
                  )
                ],
              ),
              const SizedBox(
                height: 9,
              ),
              const CommonText(
                text: 'Devin Shelton',
                fontSize: 16,
                weight: FontWeight.w500,
              ),
              const SizedBox(
                height: 9,
              ),
              const CommonText(
                text: 'Recieved at 12:00 AM',
                fontSize: 14,
                color: gPrimaryGreyColor,
                weight: FontWeight.w500,
              )
            ],
          ),
        )),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Colors.blueAccent,
          ),
          width: 20,
          alignment: Alignment.center,
          height: double.infinity,
          child: const Icon(
            Icons.keyboard_arrow_right,
            color: gPrimaryWhiteColor,
          ),
        )
      ]),
    );
  }
}
