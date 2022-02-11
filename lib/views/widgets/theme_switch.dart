import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rabi_kumar_portfolio/constants/assets_constants.dart';

class ThemeSwitch extends StatelessWidget {
  final Function onChanged;
  const ThemeSwitch({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _isDark = Get.isDarkMode ? true : false;
    var switchVal = _isDark.obs;
    return Obx(
      () => Switch(
        value: switchVal.value,
        onChanged: (val) {
          switchVal.value = val;
          onChanged();
        },
        activeThumbImage: const AssetImage(darkIcon),
        inactiveThumbImage: const AssetImage(lightIcon),
        activeColor: Colors.black,
        inactiveThumbColor: Colors.white,
      ),
    );
  }
}
