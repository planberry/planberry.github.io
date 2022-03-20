import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../../../app-core/app_bloc/app_bloc.dart';
import '../../../utils/launch_utils.dart';
import '../../constants.dart';
import '../../responsive.dart';

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
              children: [...menuItems(context)],
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

List<Widget> menuItems(BuildContext context) => [
      NavItem(
        title: S.of(context).our_channel,
        tapEvent: () {
          launchURL("https://t.me/planberry");
        },
      ),
      NavItem(
        title: S.of(context).our_email,
        tapEvent: () {
          launchEmailSender("planberry.contact.center@gmail.com");
        },
      ),
      NavItem(
        title: S.of(context).lang_desc,
        tapEvent: () {
          BlocProvider.of<AppBloc>(context).swapLanguage();
        },
      ),
    ];

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ...menuItems(context).map(
                (e) => Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: e,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({Key? key, required this.title, required this.tapEvent})
      : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title,
          style:
              const TextStyle(color: kTextColor, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
