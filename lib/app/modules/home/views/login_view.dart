// ignore_for_file: prefer_const_constructors, avoid_print

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tonarede/app/routes/app_pages.dart';
import 'package:http/http.dart' as http;
import '../controllers/perfil_controller.dart';

class LoginView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginView({super.key});

  Future<void> fazerLogin() async {
    String email = emailController.text;
    String senha = passwordController.text;

    var url = Uri.parse('http://192.168.141.61:8000/gram/token');

    var clientID = 'Uze8GEt5FqZ33ikKRNVHrZ4IsndsACVFekWadlSS';
    var clientSecret =
        'HyWMHDYEO5Kdxy5rrbHMHt8kXXqWziF7DtGKxPi3TjxKsSU9KycxquXQvvVUxGQMraN1IdQZKopE4D5KjzmNApiMD2ZAMB4Ow3gnTikcUAGAs1Imv5QIsbD1ZEbjTcOc';

    var response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: {
        'grant_type': 'password',
        'username': email,
        'password': senha,
        'client_id': 'Uze8GEt5FqZ33ikKRNVHrZ4IsndsACVFekWadlSS',
        'client_secret':
            'HyWMHDYEO5Kdxy5rrbHMHt8kXXqWziF7DtGKxPi3TjxKsSU9KycxquXQvvVUxGQMraN1IdQZKopE4D5KjzmNApiMD2ZAMB4Ow3gnTikcUAGAs1Imv5QIsbD1ZEbjTcOc',
      },
    );

    if (response.statusCode == 200) {
      // A solicitação foi bem-sucedida
      print('Response body: ${response.body}');
      //acessando os objetos
      var responseBody = jsonDecode(response.body);
      var userData = responseBody['user'];

      String emailUsuario = userData['email'];
      String nomeUsuario = userData['username'];

      print('Email do usuário: $emailUsuario, $nomeUsuario');

      // Converter o corpo da resposta em um objeto TokenResponse
      // Navegue para a próxima tela ou execute as ações necessárias
      Get.put(PerfilController(userEmail: emailUsuario, userName: nomeUsuario));
      Get.toNamed(Routes.home);
    } else {
      // A solicitação falhou
      print('Erro: ${response.body}');
      Get.snackbar('Erro', 'Credenciais inválidas');
      // Exiba uma mensagem de erro ou execute as ações necessárias
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 120.0,
              ),
              Image.asset(
                'images/logo.png',
                width: 390.0,
                height: 250.0,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 1.0,
              ),
              Text(
                'TôNaRede',
                style: TextStyle(fontSize: 24.0, fontFamily: 'Brand Bold'),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(fontSize: 14.0),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'Senha',
                          labelStyle: TextStyle(
                            fontSize: 14.0,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          )),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    SizedBox(
                      width: 200.0,
                      height: 50.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 10,
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0)),
                        ),
                        onPressed: fazerLogin,
                        child: Text('Login'),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed(Routes.RegiterView);
                },
                child: Text("Não tem uma conta? Cadastre-se aqui."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
