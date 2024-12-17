import 'package:get/get.dart';

import '../modules/DAPURHOME/bindings/dapurhome_binding.dart';
import '../modules/DAPURHOME/views/dapurhome_view.dart';
import '../modules/Dapursukses/bindings/dapursukses_binding.dart';
import '../modules/Dapursukses/views/dapursukses_view.dart';
import '../modules/dapur1/bindings/dapur1_binding.dart';
import '../modules/dapur1/views/dapur1_view.dart';
import '../modules/dapur1bgian2/bindings/dapur1bgian2_binding.dart';
import '../modules/dapur1bgian2/views/dapur1bgian2_view.dart';
import '../modules/dapur1bgian3/bindings/dapur1bagian3.dart';
import '../modules/dapur1bgian3/views/dapur1%20bgian3.dart';
import '../modules/dapur2/bindings/dapur2_binding.dart';
import '../modules/dapur2/views/dapur2_view.dart';
import '../modules/dapur2bgian2/bindings/dapur2bgian2_binding.dart';
import '../modules/dapur2bgian2/views/dapur2bgian2_view.dart';
import '../modules/dapur2bgian3/bindings/dapur2bgian3_binding.dart';
import '../modules/dapur2bgian3/views/dapur2bgian3_view.dart';
import '../modules/dapur3/bindings/dapur3_binding.dart';
import '../modules/dapur3/views/dapur3_view.dart';
import '../modules/dapur3bgian2/bindings/dapur3bgian2_binding.dart';
import '../modules/dapur3bgian2/views/dapur3bgian2_view.dart';
import '../modules/dapur3bgian3/bindings/dapur3bgian3_binding.dart';
import '../modules/dapur3bgian3/views/dapur3bgian3_view.dart';
import '../modules/dapur4/bindings/dapur4_binding.dart';
import '../modules/dapur4/views/dapur4_view.dart';
import '../modules/dapur4bgian2/bindings/dapur4bgian2_binding.dart';
import '../modules/dapur4bgian2/views/dapur4bgian2_view.dart';
import '../modules/dapur4bgian3/bindings/dapur4bgian3_binding.dart';
import '../modules/dapur4bgian3/views/dapur4bgian3_view.dart';
import '../modules/historypage/bindings/historypage_binding.dart';
import '../modules/historypage/views/historypage_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home2/bindings/home2_binding.dart';
import '../modules/home2/views/home2_view.dart';
import '../modules/homeruangtamu/bindings/homeruangtamu_binding.dart';
import '../modules/homeruangtamu/views/homeruangtamu_view.dart';
import '../modules/interior1/bindings/interior1_binding.dart';
import '../modules/interior1/views/interior1_view.dart';
import '../modules/interior1ke2/bindings/interior1ke2_binding.dart';
import '../modules/interior1ke2/views/interior1ke2_view.dart';
import '../modules/interior1ke3/bindings/interior1ke3_binding.dart';
import '../modules/interior1ke3/views/interior1ke3_view.dart';
import '../modules/interior2/bindings/interior2_binding.dart';
import '../modules/interior2/views/interior2_view.dart';
import '../modules/interior2ke2/bindings/interior2ke2_binding.dart';
import '../modules/interior2ke2/views/interior2ke2_view.dart';
import '../modules/interior2ke3/bindings/interior2ke3_binding.dart';
import '../modules/interior2ke3/views/interior2ke3_view.dart';
import '../modules/interior3/bindings/interior3_binding.dart';
import '../modules/interior3/views/interior3_view.dart';
import '../modules/interior3ke2/bindings/interior3ke2_binding.dart';
import '../modules/interior3ke2/views/interior3ke2_view.dart';
import '../modules/interior3ke3/bindings/interior3ke3_binding.dart';
import '../modules/interior3ke3/views/interior3ke3_view.dart';
import '../modules/interior4/bindings/interior4_binding.dart';
import '../modules/interior4/views/interior4_view.dart';
import '../modules/interior4ke2/bindings/interior4ke2_binding.dart';
import '../modules/interior4ke2/views/interior4ke2_view.dart';
import '../modules/interior4ke3/bindings/interior4ke3_binding.dart';
import '../modules/interior4ke3/views/interior4ke3_view.dart';
import '../modules/interiorkesukses/bindings/interiorkesukses_binding.dart';
import '../modules/interiorkesukses/views/interiorkesukses_view.dart';
import '../modules/kamar/bindings/kamar_binding.dart';
import '../modules/kamar/views/kamar_view.dart';
import '../modules/kamaramerika1/bindings/kamaramerika1_binding.dart';
import '../modules/kamaramerika1/views/kamaramerika1_view.dart';
import '../modules/kamaramerika2/bindings/kamaramerika2_binding.dart';
import '../modules/kamaramerika2/views/kamaramerika2_view.dart';
import '../modules/kamaramerika3/bindings/kamaramerika3_binding.dart';
import '../modules/kamaramerika3/views/kamaramerika3_view.dart';
import '../modules/kamaramerika4/bindings/kamaramerika4_binding.dart';
import '../modules/kamaramerika4/views/kamaramerika4_view.dart';
import '../modules/kamareropa1/bindings/kamareropa1_binding.dart';
import '../modules/kamareropa1/views/kamareropa1_view.dart';
import '../modules/kamareropa2/bindings/kamareropa2_binding.dart';
import '../modules/kamareropa2/views/kamareropa2_view.dart';
import '../modules/kamareropa3/bindings/kamareropa3_binding.dart';
import '../modules/kamareropa3/views/kamareropa3_view.dart';
import '../modules/kamareropa4/bindings/kamareropa4_binding.dart';
import '../modules/kamareropa4/views/kamareropa4_view.dart';
import '../modules/kamarjapan1/bindings/kamarjapan1_binding.dart';
import '../modules/kamarjapan1/views/kamarjapan1_view.dart';
import '../modules/kamarjapan2/bindings/kamarjapan2_binding.dart';
import '../modules/kamarjapan2/views/kamarjapan2_view.dart';
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
import '../modules/profileinfo/bindings/profileinfo_binding.dart';
import '../modules/profileinfo/views/profileinfo_view.dart';
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
      name: _Paths.DAPURHOME,
      page: () => dapurhomeView(),
      binding: DapurhomeBinding(),
    ),
    GetPage(
      name: _Paths.DAPUR1,
      page: () => dapur1View(),
      binding: Dapur1Binding(),
    ),
    GetPage(
      name: _Paths.DAPUR2,
      page: () => Dapur2View(),
      binding: Dapur2Binding(),
    ),
    GetPage(
      name: _Paths.DAPUR3,
      page: () => Dapur3View(),
      binding: Dapur3Binding(),
    ),
    GetPage(
      name: _Paths.DAPUR4,
      page: () => dapur4View(),
      binding: Dapur4Binding(),
    ),
    GetPage(
      name: _Paths.DAPUR1BGIAN2,
      page: () => dapur1bgian2View(),
      binding: Dapur1bgian2Binding(),
    ),
    GetPage(
      name: _Paths.DAPUR1BGIAN3,
      page: () => dapur1bgian3View(),
      binding: dapur1bgian3Binding(),
    ),
    GetPage(
      name: _Paths.DAPUR1BGIAN2,
      page: () => dapur2bgian2View(),
      binding: Dapur2bgian2Binding(),
    ),
    GetPage(
      name: _Paths.DAPUR2BGIAN3,
      page: () => Dapur2bgian3View(),
      binding: Dapur2bgian3Binding(),
    ),
    GetPage(
      name: _Paths.DAPUR3BGIAN2,
      page: () => dapur3bgian2View(),
      binding: Dapur3bgian2Binding(),
    ),
    GetPage(
      name: _Paths.DAPUR3BGIAN3,
      page: () => dapur3bgian3View(),
      binding: Dapur3bgian3Binding(),
    ),
    GetPage(
      name: _Paths.DAPUR4BGIAN2,
      page: () => Dapur4bgian2View(),
      binding: Dapur4bgian2Binding(),
    ),
    GetPage(
      name: _Paths.DAPUR4BGIAN3,
      page: () => Dapur4bgian3View(),
      binding: Dapur4bgian3Binding(),
    ),
    GetPage(
      name: _Paths.DAPURSUKSES,
      page: () => DapursuksesView(),
      binding: dapursuksesBinding(),
    ),
    GetPage(
      name: _Paths.PROFILEPAGE,
      page: () => ProfilePage(),
      binding: ProfilepageBinding(),
    ),
    GetPage(
      name: _Paths.PROFILEINFO,
      page: () => ProfileInfoView(),
      binding: ProfileinfoBinding(),
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
    GetPage(
      name: _Paths.HOMERUANGTAMU,
      page: () => HomeruangtamuView(),
      binding: HomeruangtamuBinding(),
    ),
    GetPage(
      name: _Paths.INTERIOR1,
      page: () => Interior1View(),
      binding: Interior1Binding(),
    ),
    GetPage(
      name: _Paths.INTERIOR2,
      page: () => Interior2View(),
      binding: Interior2Binding(),
    ),
    GetPage(
      name: _Paths.INTERIOR3,
      page: () => Interior3View(),
      binding: Interior3Binding(),
    ),
    GetPage(
      name: _Paths.INTERIOR4,
      page: () => Interior4View(),
      binding: Interior4Binding(),
    ),
    GetPage(
      name: _Paths.INTERIOR1KE2,
      page: () => Interior1ke2View(),
      binding: Interior1ke2Binding(),
    ),
    GetPage(
      name: _Paths.INTERIOR1KE3,
      page: () => Interior1ke3View(),
      binding: Interior1ke3Binding(),
    ),
    GetPage(
      name: _Paths.INTERIOR2KE2,
      page: () => Interior2ke2View(),
      binding: Interior2ke2Binding(),
    ),
    GetPage(
      name: _Paths.INTERIOR2KE3,
      page: () => Interior2ke3View(),
      binding: Interior2ke3Binding(),
    ),
    GetPage(
      name: _Paths.INTERIOR3KE2,
      page: () => Interior3ke2View(),
      binding: Interior3ke2Binding(),
    ),
    GetPage(
      name: _Paths.INTERIOR3KE3,
      page: () => Interior3ke3View(),
      binding: Interior3ke3Binding(),
    ),
    GetPage(
      name: _Paths.INTERIOR4KE2,
      page: () => Interior4ke2View(),
      binding: Interior4ke2Binding(),
    ),
    GetPage(
      name: _Paths.INTERIOR4KE3,
      page: () => Interior4ke3View(),
      binding: Interior4ke3Binding(),
    ),
    GetPage(
      name: _Paths.INTERIORKESUKSES,
      page: () => InteriorSuksesView(),
      binding: InteriorkesuksesBinding(),
    ),
    GetPage(
      name: _Paths.KAMARJAPAN1,
      page: () => Kamarjapan1View(),
      binding: Kamarjapan1Binding(),
    ),
    GetPage(
      name: _Paths.KAMARJAPAN2,
      page: () => Kamarjapan2View(),
      binding: Kamarjapan2Binding(),
    ),
    GetPage(
      name: _Paths.KAMARAMERIKA1,
      page: () => Kamaramerika1View(),
      binding: Kamaramerika1Binding(),
    ),
    GetPage(
      name: _Paths.KAMARAMERIKA2,
      page: () => Kamaramerika2View(),
      binding: Kamaramerika2Binding(),
    ),
    GetPage(
      name: _Paths.KAMARAMERIKA3,
      page: () => Kamaramerika3View(),
      binding: Kamaramerika3Binding(),
    ),
    GetPage(
      name: _Paths.KAMARAMERIKA4,
      page: () => Kamaramerika4View(),
      binding: Kamaramerika4Binding(),
    ),
    GetPage(
      name: _Paths.KAMAREROPA1,
      page: () => Kamareropa1View(),
      binding: Kamareropa1Binding(),
    ),
    GetPage(
      name: _Paths.KAMAREROPA2,
      page: () => Kamareropa2View(),
      binding: Kamareropa2Binding(),
    ),
    GetPage(
      name: _Paths.KAMAREROPA3,
      page: () => Kamareropa3View(),
      binding: Kamareropa3Binding(),
    ),
    GetPage(
      name: _Paths.KAMAREROPA4,
      page: () => Kamareropa4View(),
      binding: Kamareropa4Binding(),
    ),
  ];
}
