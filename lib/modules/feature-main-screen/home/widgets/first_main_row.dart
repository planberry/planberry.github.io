import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common-core/responsive.dart';

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
                        child: SizedBox(
                            height: size.height * 0.3,
                            width: size.height * 0.3,
                            child: _buildImage1(context)),
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
                      "Управление временем — целая наука. Тайм - менеджмент — это техники и методы для управления временем. Это самоорганизация и управление собой. Тайм-менеджмент помогает человеку или компании планировать время и экономить ресурсы. Попробуй планировать вместе с приложением",
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
                          context,
                          "assets/images/get_on_google.png",
                        ),
                        const SizedBox(width: 10),
                        _buildStoreButton(
                          context,
                          "assets/images/get_on_appstore.png",
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
              child: Image.asset(
                "assets/images/screens.png",
                fit: (isDesktop(context) || isTab(context))
                    ? BoxFit.fitWidth
                    : BoxFit.fitHeight,
              ),
            ),
          ),
    );
    return Image.asset(
      "assets/images/screens.png",
      fit: (isDesktop(context) || isTab(context))
          ? BoxFit.fitWidth
          : BoxFit.fitHeight,
    );
  }

  _buildStoreButton(BuildContext context, String path) {
    return Image.asset(
      path,
      fit: BoxFit.fitWidth,
      width: isMobile(context) ? 150 : 220,
    );
  }
}
