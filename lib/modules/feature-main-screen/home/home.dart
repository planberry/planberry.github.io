import 'package:auto_animated/auto_animated.dart';
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
      body: AnimateIfVisibleWrapper(
        child: SingleChildScrollView(
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
                    AnimateIfVisible(
                      key: Key('item.1'),
                      duration: Duration(milliseconds: 500),
                      builder: (
                        BuildContext context,
                        Animation<double> animation,
                      ) =>
                          FadeTransition(
                        opacity: Tween<double>(
                          begin: 0,
                          end: 1,
                        ).animate(animation),
                        child: const MainTop(),
                      ),
                    ),
                  ],
                ),
                AnimateIfVisible(
                  key: Key('item.2'),
                  duration: Duration(milliseconds: 500),
                  builder: (
                    BuildContext context,
                    Animation<double> animation,
                  ) =>
                      SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset(0, 0.1),
                      end: Offset.zero,
                    ).animate(animation),
                    child: FadeTransition(
                      opacity: Tween<double>(
                        begin: 0,
                        end: 1,
                      ).animate(animation),
                      child: const SecondMainRow(),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Footer(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
