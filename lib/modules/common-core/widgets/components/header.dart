import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../../../app-core/app_bloc/app_bloc.dart';
import '../../responsive.dart';
import 'menu_item.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.fitHeight,
            height: 44,
          ),
          const SizedBox(width: 10),
          Image.asset(
            "assets/images/logotext.png",
            fit: BoxFit.fitWidth,
            width: 90,
          ),
          const Spacer(),
          if (!isMobile(context))
            Row(
              children: [
                NavItem(
                  title: 'Home',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Donate',
                  tapEvent: () {},
                ),
                NavItem(
                  title: 'Contact Us',
                  tapEvent: () {},
                ),
                NavItem(
                  title: S.of(context).lang_desc,
                  tapEvent: () {
                    BlocProvider.of<AppBloc>(context).swapLanguage();
                  },
                ),
              ],
            ),
          if (isMobile(context))
            IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                })
        ],
      ),
    );
  }
}
