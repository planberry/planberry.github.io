import 'package:flutter/material.dart';
import 'package:flutter_planberry_site/modules/feature-main-screen/home/widgets/second_main_row.dart';
import 'package:flutter_planberry_site/modules/feature-main-screen/home/widgets/first_main_row.dart';

import '../../common-core/constants.dart';
import '../../common-core/widgets/components/footer.dart';
import '../../common-core/widgets/components/header.dart';
import '../../common-core/widgets/curve/clippers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 300),
        child: const SideMenu(),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          color: kPostSecondaryColor,
          constraints: BoxConstraints(minHeight: size.height),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
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
              const SecondMainRow(),
              Container(
                padding: const EdgeInsets.only(bottom: 0),
                child: const Footer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
