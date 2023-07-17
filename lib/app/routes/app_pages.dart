// ignore_for_file: prefer_const_constructors, constant_identifier_names
import 'package:get/get.dart';
import 'package:tonarede/app/modules/home/views/NavBar/Maps_view.dart';
import 'package:tonarede/app/modules/home/views/NavBar/NaRede_view.dart';
import 'package:tonarede/app/modules/home/views/NavBar/Profile_view.dart';
import 'package:tonarede/app/modules/home/views/NavBar/Relato_view.dart';
import 'package:tonarede/app/modules/home/views/NavBar/Shopping_view.dart';
import 'package:tonarede/app/modules/home/views/Perfil/Configura%C3%A7ao.dart';
import 'package:tonarede/app/modules/home/views/Perfil/Notifica%C3%A7ao.dart';
import 'package:tonarede/app/modules/home/views/Perfil/Perfil.dart';
import 'package:tonarede/app/modules/home/views/home_view.dart';
import 'package:tonarede/app/modules/home/views/home_view2.dart';
import 'package:tonarede/app/modules/home/views/login_view.dart';
import 'package:tonarede/app/modules/home/views/register_view.dart';

class AppPages {
  static const initial = Routes.login;

  static final routes = [
    GetPage(name: Routes.login, page: () => LoginView()),
    GetPage(name: Routes.RegiterView, page: () => RegisterView()),
    GetPage(name: Routes.home, page: () => HomeView()),
    GetPage(name: Routes.HomePage, page: () => HomePage()),
    GetPage(name: Routes.ShoppingPage, page: () => ShoppingPage()),
    GetPage(name: Routes.MapsPage, page: () => MapsPage()),
    GetPage(name: Routes.RelatoPage, page: () => RelatoPage()),
    GetPage(name: Routes.NaRedePage, page: () => NaRedePage()),
    GetPage(name: Routes.ProfilePages, page: () => ProfilePages()),
    GetPage(name: Routes.ConfiView, page: () => ConfiView()),
    GetPage(name: Routes.NotifiView, page: () => NotifiView()),
    GetPage(name: Routes.PerfilView, page: () => PerfilView()),
  ];
}

abstract class Routes {
  static const login = '/login';
  static const RegiterView = '/register';
  static const home = '/home';
  static const HomePage = '/HomePage';
  static const ShoppingPage = '/ShoppingPage';
  static const MapsPage = '/MapsPage';
  static const RelatoPage = '/RelatoPage';
  static const NaRedePage = '/NaRedePage';
  static const ProfilePages = '/ProfilePage';
  static const ConfiView = '/Configuraçao';
  static const NotifiView = '/Notificaçao';
  static const PerfilView = '/Perfil';
}
