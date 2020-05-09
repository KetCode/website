import 'package:flutter/material.dart';
import 'package:inotech/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:inotech/widgets/call_to_action/call_to_action_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:inotech/extensions/hover_extensions.dart';
//agrupamento das configurações da tela do tablet e do celular
class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      tablet: CallToActionTabletDesktop(title),
    ).showCursorOnHover;
  }
}