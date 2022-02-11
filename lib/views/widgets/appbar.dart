import 'package:flutter/material.dart';
import 'package:fluttericon/brandico_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:get/get.dart';
import 'package:rabi_kumar_portfolio/services/theme_service.dart';
import 'package:rabi_kumar_portfolio/widgets/theme_switch.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: Padding(
        padding:
            EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02),
        child: Text('Rabi Kumar'),
      ),
      actions: [
        IconButton(
          icon: const Icon(LineariconsFree.envelope),
          onPressed: () {
            contactDialog();
          },
        ),
        ThemeSwitch(onChanged: ThemeService().switchTheme)
      ],
    );
  }
}

contactDialog() {
  return Get.defaultDialog(
      title: 'Contacts',
      content: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.email_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Brandico.linkedin_1),
          ),
        ],
      ));
}
