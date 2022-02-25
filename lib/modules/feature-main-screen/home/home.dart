import 'package:flutter/material.dart';
import 'package:flutter_planberry_site/modules/feature-main-screen/home/widgets/main_top.dart';

import '../../common-core/constants.dart';
import '../../common-core/widgets/components/footer.dart';
import '../../common-core/widgets/components/header.dart';
import '../../common-core/widgets/components/side_menu.dart';
import '../../common-core/widgets/curve/clippers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 300),
        child: SideMenu(),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          color: kPostSecondaryColor,
          constraints: BoxConstraints(minHeight: size.height),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              PreferredSize(
                preferredSize: const Size.fromHeight(70),
                child: Container(
                  child: const Header(),
                  color: kSecondaryColor,
                ),
              ),
              Stack(
                children: [
                  CustomPaint(
                    size: const Size(double.infinity, 900),
                    painter: RPSCustomPainter(),
                  ),
                  ClipPath(
                    clipper: BigClipper(),
                    child: Container(
                      height: 800,
                      width: double.infinity,
                      color: kSecondaryColor,
                    ),
                  ),
                  const MainTop(),
                ],
              ),
              Container(
                padding: EdgeInsets.only(bottom: 60),
                child: const Footer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
