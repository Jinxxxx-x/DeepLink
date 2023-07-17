// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tonarede/app/modules/home/views/NavBar/Maps_view.dart';
import 'package:tonarede/app/modules/home/views/NavBar/NaRede_view.dart';
import 'package:tonarede/app/modules/home/views/NavBar/Relato_view.dart';
import 'package:tonarede/app/modules/home/views/NavBar/Shopping_view.dart';
import 'package:tonarede/app/modules/home/views/Perfil/Configura%C3%A7ao.dart';
import 'package:tonarede/app/modules/home/views/Perfil/Notifica%C3%A7ao.dart';
import 'package:tonarede/app/modules/home/views/Perfil/Perfil.dart';
import 'package:tonarede/app/modules/home/views/home_view2.dart';
import 'package:tonarede/app/modules/home/views/login_view.dart';
import '../controllers/home_controller.dart';
import '../controllers/perfil_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  final HomeController controller = Get.put(HomeController());

  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PerfilController perfilController = Get.find();
    final String userEmail = perfilController.userEmail;
    final String userName = perfilController.userName;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 55,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 92, 97, 69),
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/semperfil.jpg'),
                ),
              ),
            );
          },
        ),
        title: GestureDetector(
          onTap: () {
            // Ação a ser executada quando o título for clicado
          },
          child: Image.asset(
            'images/logo.png',
            fit: BoxFit.cover,
            height: 45,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Get.to(() => NotifiView());
            },
          ),
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 217, 217),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => PerfilView());
                      },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('images/semperfil.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '$userName',
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '$userEmail',
                      style: TextStyle(color: Colors.black54, fontSize: 13),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notificações"),
                onTap: () {
                  Get.to(() => NotifiView());
                },
                // trailing: ClipOval(
                //   child: Container(
                //     color: Colors.red,
                //     width: 20,
                //     height: 20,
                //     child: Center(
                //       child: Text(
                //         '0',
                //         style: TextStyle(color: Colors.white, fontSize: 12),
                //       ),
                //     ),
                //   ),
                // ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Configurações'),
                onTap: () {
                  Get.to(() => ConfiView());
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Sair"),
                onTap: () {
                  Get.offAll(() => LoginView());
                },
              ),
            ],
          ),
        ),
      ),
      body: Obx(
        () {
          final selectedIndex = controller.selectedIndex.value;
          return IndexedStack(
            index: selectedIndex,
            children: [
              HomePage(),
              MapsPage(),
              RelatoPage(),
              ShoppingPage(),
              NaRedePage(),
            ],
          );
        },
      ),
      bottomNavigationBar: Obx(
        () {
          final selectedIndex = controller.selectedIndex.value;
          return NavigationBarTheme(
            data: NavigationBarThemeData(
              indicatorColor: Colors.white60,
              labelTextStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ),
            child: NavigationBar(
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
              animationDuration: Duration(seconds: 1),
              backgroundColor: Color.fromARGB(255, 92, 97, 69),
              height: 60,
              selectedIndex: selectedIndex,
              onDestinationSelected: controller.changeTabIndex,
              destinations: [
                NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: 'Inicio',
                ),
                NavigationDestination(
                  icon: Icon(Icons.map_outlined),
                  selectedIcon: Icon(Icons.map),
                  label: 'Maps',
                ),
                NavigationDestination(
                  icon: Icon(Icons.send_outlined),
                  selectedIcon: Icon(Icons.send),
                  label: 'Relato',
                ),
                NavigationDestination(
                  icon: Icon(Icons.shop_outlined),
                  selectedIcon: Icon(Icons.shop),
                  label: 'Shopping',
                ),
                NavigationDestination(
                  icon: Icon(Icons.alternate_email),
                  selectedIcon: Icon(Icons.alternate_email_outlined),
                  label: '@NaRede',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
