import 'package:get/get.dart';

import '../modules/dapur1/bindings/dapur_binding.dart';
import '../modules/dapur1/views/dapur1_view.dart';
import '../modules/dapur2/bindings/dapur2_binding.dart';
import '../modules/dapur2/views/dapur2_view.dart';
import '../modules/dapur3/bindings/dapur3_binding.dart';
import '../modules/dapur3/views/dapur3_view.dart';
import '../modules/dapur4/bindings/dapur4_binding.dart';
import '../modules/dapur4/views/dapur4_view.dart';
import '../modules/dapur5/bindings/dapur5_binding.dart';
import '../modules/dapur5/views/dapur5_view.dart';
import '../modules/historypage/bindings/historypage_binding.dart';
import '../modules/historypage/views/historypage_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home2/bindings/home2_binding.dart';
import '../modules/home2/views/home2_view.dart';
import '../modules/kamar/bindings/kamar_binding.dart';
import '../modules/kamar/views/kamar_view.dart';
import '../modules/kamarspanyol1/bindings/kamarspanyol_binding.dart';
import '../modules/kamarspanyol1/views/kamarspanyol1_view.dart';
import '../modules/kamarspanyol2/bindings/kamarspanyol2_binding.dart';
import '../modules/kamarspanyol2/views/kamarspanyol2_view.dart';
import '../modules/kamarspanyol3/bindings/kamarspanyol3_binding.dart';
import '../modules/kamarspanyol3/views/kamarspanyol3_view.dart';
import '../modules/kamarspanyol4/bindings/kamarspanyol4_binding.dart';
import '../modules/kamarspanyol4/views/kamarspanyol4_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/lupapassword/bindings/lupapassword_binding.dart';
import '../modules/lupapassword/views/lupapassword_view.dart';
import '../modules/passwordbaru/bindings/passwordbaru_binding.dart';
import '../modules/passwordbaru/views/passwordbaru_view.dart';
import '../modules/profilepage/bindings/profilepage_binding.dart';
import '../modules/profilepage/views/profilepage_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/spanyol1sukses/bindings/spanyol1sukses_binding.dart';
import '../modules/spanyol1sukses/views/spanyol1sukses_view.dart';
import '../modules/suksesdaftar/bindings/suksesdaftar_binding.dart';
import '../modules/suksesdaftar/views/success_registration_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.SUKSESDAFTAR,
      page: () => SuccessRegistrationView(),
      binding: SuksesdaftarBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.LUPAPASSWORD,
      page: () => LupaPasswordView(),
      binding: LupapasswordBinding(),
    ),
    GetPage(
      name: _Paths.PASSWORDBARU,
      page: () => PasswordBaruView(),
      binding: PasswordbaruBinding(),
    ),
    GetPage(
      name: _Paths.HOME2,
      page: () => HomePage(),
      binding: Home2Binding(),
    ),
    GetPage(
      name: _Paths.HISTORYPAGE,
      page: () => HistoryPage(),
      binding: HistorypageBinding(),
    ),
    GetPage(
      name: _Paths.KAMAR,
      page: () => KamarView(),
      binding: KamarBinding(),
    ),
    GetPage(
      name: _Paths.KAMARSPANYOL,
      page: () => Kamarspanyol1View(),
      binding: KamarspanyolBinding(),
    ),
    GetPage(
      name: _Paths.KAMARSPANYOL2,
      page: () => KamarSpanyol2View(),
      binding: Kamarspanyol2Binding(),
    ),
    GetPage(
      name: _Paths.KAMARSPANYOL3,
      page: () => Kamarspanyol3View(),
      binding: Kamarspanyol3Binding(),
    ),
    GetPage(
      name: _Paths.DAPUR,
      page: () => Dapur1View(),
      binding: DapurBinding(),
    ),
    GetPage(
      name: _Paths.DAPUR2,
      page: () => dapur2View(),
      binding: Dapur2Binding(),
    ),
    GetPage(
      name: _Paths.DAPUR3,
      page: () => Dapur3View(),
      binding: Dapur3Binding(),
    ),
    GetPage(
      name: _Paths.DAPUR4,
      page: () => Dapur4View(),
      binding: Dapur4Binding(),
    ),
    GetPage(
      name: _Paths.DAPUR5,
      page: () => Dapur5View(),
      binding: Dapur5Binding(),
    ),
    GetPage(
      name: _Paths.PROFILEPAGE,
      page: () => ProfilePage(),
      binding: ProfilepageBinding(),
    ),
    GetPage(
      name: _Paths.KAMARSPANYOL4,
      page: () => Kamarspanyol4View(),
      binding: Kamarspanyol4Binding(),
    ),
    GetPage(
      name: _Paths.SPANYOL1SUKSES,
      page: () => Spanyol1SuksesView(),
      binding: Spanyol1suksesBinding(),
    ),
  ];
}
