import 'package:flutter/material.dart';

import '../../../common-core/constants.dart';
import '../../../common-core/responsive.dart';
import '../../../common-core/widgets/components/main_button.dart';

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
                      'Planberry\nEffective time management',
                      textAlign: isMobile(context)
                          ? TextAlign.center
                          : TextAlign.start,
                      style: TextStyle(
                        fontSize: isDesktop(context) ? 64 : 32,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'The application allows you to effectively manage time',
                      textAlign: isMobile(context)
                          ? TextAlign.center
                          : TextAlign.start,
                      style: TextStyle(
                        fontSize: isDesktop(context) ? 36 : 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 10),
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
                child: SizedBox(
                    height: size.height * 0.7,
                    width: size.height * 0.7,
                    child: _buildImage1(context)),
              )
          ],
        ));
  }

  _buildImage1(BuildContext context) {
    return Image.asset(
      "assets/images/screens.png",
      fit: BoxFit.fitHeight,
      height: 14,
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
