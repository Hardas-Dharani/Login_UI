import 'package:flutter/material.dart';
import 'package:test/src/presentation/authScreen/view/loginViewMobile.dart';
import 'package:test/src/utlis/widget/responsive.dart';

class SignMain extends StatelessWidget {
  const SignMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Responsive(
            mobile: SignMobileView(),
            tablet: SignMobileView(),
            desktop: Container()),
      ),
    );
  }
}
