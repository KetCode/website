import 'package:flutter/material.dart';
import 'package:inotech/views/contato/contact_content_desktop.dart';
import 'package:inotech/views/contato/contact_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ContactContentMobile(),
      desktop: ContactsContentDesktop(),
    );
  }
}