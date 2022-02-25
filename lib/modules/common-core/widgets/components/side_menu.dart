import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../../../app-core/app_bloc/app_bloc.dart';
import 'menu_item.dart';

class SideMenu extends StatelessWidget {

  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              NavItem(
                title: 'Home',
                tapEvent: () {},
              ),

              SizedBox(height: 10),

              NavItem(
                title: 'Donate',
                tapEvent: () {},
              ),

              SizedBox(height: 10),
              
              NavItem(
                title: 'Contact Us',
                tapEvent: () {},
              ),

              SizedBox(height: 10),
              
              NavItem(
                title: 'Login',
                tapEvent: () {},
              ),

              SizedBox(height: 10),
              
              NavItem(
                title: S.of(context).lang_desc,
                tapEvent: () {
                  BlocProvider.of<AppBloc>(context).swapLanguage();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}