import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common-core/responsive.dart';
import '../../../utils/launch_utils.dart';

class MainTop extends StatelessWidget {
  const MainTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: !isMobile(context) ? 40 : 0,
                  left: !isMobile(context) ? 60 : 0,
                ),
                child: Column(
                  mainAxisAlignment: !isMobile(context)
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.center,
                  crossAxisAlignment: !isMobile(context)
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: <Widget>[
                    if (isMobile(context))
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Container(
                          constraints: BoxConstraints(minHeight: 300),
                          height: size.height * 0.3,
                          child: _buildImage1(context),
                        ),
                      ),
                    Text(
                      S.of(context).main_title,
                      textAlign: isMobile(context)
                          ? TextAlign.center
                          : TextAlign.start,
                      style: TextStyle(
                        fontSize: isDesktop(context) ? 38 : 32,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      S.of(context).main_subtitle,
                      textAlign: isMobile(context)
                          ? TextAlign.center
                          : TextAlign.start,
                      style: TextStyle(
                        fontSize: isDesktop(context) ? 20 : 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Wrap(
                      runSpacing: 10,
                      children: <Widget>[
                        _buildStoreButton(
                          context: context,
                          path: "assets/images/get_on_google.png",
                          onClick: () {
                            launchURL(
                                "https://play.google.com/store/apps/details?id=com.boyma.planberry");
                          },
                        ),
                        const SizedBox(width: 10),
                        _buildStoreButton(
                          context: context,
                          path: "assets/images/get_on_appstore.png",
                          onClick: () {
                            launchURL(
                                "https://apps.apple.com/us/app/planberry/id1592919442?platform=iphone");
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            if (isDesktop(context) || isTab(context))
              Expanded(
                child: Center(
                  child: SizedBox(
                    width: 350,
                    child: _buildImage1(context),
                  ),
                ),
              )
          ],
        ));
  }

  Widget _buildImage1(BuildContext context) {
    return AnimateIfVisible(
      key: const Key('_buildImage1'),
      duration: const Duration(milliseconds: 500),
      builder: (
        BuildContext context,
        Animation<double> animation,
      ) =>
          SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 0.1),
          end: Offset.zero,
        ).animate(animation),
        child: FadeTransition(
          opacity: Tween<double>(
            begin: 0,
            end: 1,
          ).animate(animation),
          child: Image.asset(
            "assets/images/screens.png",
            fit: (isDesktop(context) || isTab(context))
                ? BoxFit.fitWidth
                : BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }

  _buildStoreButton({
    required BuildContext context,
    required String path,
    required Function onClick,
  }) {
    return InkWell(
      onTap: () {
        onClick();
      },
      child: Image.asset(
        path,
        fit: BoxFit.fitWidth,
        width: isMobile(context) ? 150 : 220,
      ),
    );
  }
}
