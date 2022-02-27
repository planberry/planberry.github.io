import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common-core/responsive.dart';

class SecondMainRow extends StatelessWidget {
  const SecondMainRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey,
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            S.of(context).review_title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isDesktop(context) ? 26 : 20,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 36),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: [
              ItemFuncView(
                icon: _buildMatIcon(context, Icons.edit),
                title: S.of(context).creative_design,
              ),
              ItemFuncView(
                icon: _buildMatIcon(context, Icons.insert_chart),
                title: S.of(context).visual_statistics,
              ),
              ItemFuncView(
                icon: _buildMatIcon(context, Icons.settings),
                title: S.of(context).flexible_setup,
              ),
              ItemFuncView(
                icon: _buildMatIcon(context, Icons.local_phone),
                title: S.of(context).fast_support,
              ),
            ],
          )
        ],
      ),
    );
  }

  _buildMatIcon(BuildContext context, IconData iconData) {
    return Icon(
      iconData,
      size: 78,
      color: const Color(0xff3a3a3a),
    );
  }
}

class ItemFuncView extends StatelessWidget {
  final Widget icon;
  final String title;
  final String subtitle;
  final bool showOnCard;

  const ItemFuncView({
    Key? key,
    required this.icon,
    required this.title,
    this.subtitle = "",
    this.showOnCard = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (showOnCard) {
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: _buildContent(context),
      );
    } else {
      return _buildContent(context);
    }
  }

  Widget _buildContent(BuildContext context) {
    return Container(
      //color: Colors.greenAccent,
      width: 400,
      //constraints: const BoxConstraints(maxWidth: 400),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 36),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          const SizedBox(height: 16),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isDesktop(context) ? 22 : 20,
              fontWeight: FontWeight.w400,
              color: const Color(0xff3a3a3a),
            ),
          ),
          const SizedBox(height: 16),
          subtitle.isNotEmpty
              ? Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isDesktop(context) ? 18 : 14,
                    fontWeight: FontWeight.w300,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
