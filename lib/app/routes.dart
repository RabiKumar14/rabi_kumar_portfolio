import 'package:get/get.dart';
import 'package:rabi_kumar_portfolio/views/main_view.dart';

class AppPages {
  static const initial = Routes.main;

  static final routes = [
    // GetPage(
    //   name: _Paths.lobby,
    //   page: () => const LobbyView(),
    //   // binding: HomeBinding(),
    // ),
    GetPage(
      name: _Paths.main,
      page: () => const MainView(),
      // binding: HomeBinding(),
    ),
  ];
}

abstract class Routes {
  // static const lobby = _Paths.lobby;
  static const main = _Paths.main;
}

abstract class _Paths {
  // static const lobby = '/';
  static const main = '/main';
}
