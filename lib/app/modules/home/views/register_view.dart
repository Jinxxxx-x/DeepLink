// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tonarede/app/modules/home/views/login_view.dart';
import 'package:tonarede/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:tonarede/sucess_dialog.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void register() async {
    String firstname = firstNameController.text;
    String lastname = lastNameController.text;
    String email = emailController.text;
    String password = passwordController.text;
    String password2 = confirmPasswordController.text;

    // Exemplo de validação simples
    if (firstname.isNotEmpty &&
        lastname.isNotEmpty &&
        email.isNotEmpty &&
        password.isNotEmpty &&
        password2.isNotEmpty) {
      // Verifica se as senhas coincidem
      if (password == password2) {
        // Chamada da API para registro
        try {
          var response = await http.post(
            Uri.parse('http://192.168.141.61:8000/cadastrar-usuario/'),
            body: {
              'first_name': firstname,
              'last_name': lastname,
              'email': email,
              'password': password,
              'password2': password2,
            },
          );

          if (response.statusCode == 201) {
            // Registro bem-sucedido
            showDialog(
              context: context,
              barrierDismissible:
                  false, // Impede fechar o diálogo clicando fora
              builder: (BuildContext context) {
                return SuccessDialog(message: 'Usuário cadastrado!');
              },
            );

            //Aguarda 2 segundos antes de redirecionar para LoginView
            await Future.delayed(Duration(seconds: 3));
            // Redireciona para a página de login
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginView()),
            );
          } else {
            // Algo deu errado na chamada da API
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Erro'),
                  content: Text('Não foi possível concluir o registro.'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('OK'),
                    ),
                  ],
                );
              },
            );
          }
        } catch (e) {
          // Exceção ocorreu durante a chamada da API
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Erro'),
                content: Text('Ocorreu um erro durante o registro.'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        }
      } else {
        // Senhas não coincidem
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Aviso'),
              content: Text('As senhas não coincidem.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } else {
      // Campos obrigatórios vazios
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Aviso'),
            content: Text('Todos os campos são obrigatórios.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15.0),
            Image.asset(
              'images/logo.png',
              width: 500.0,
              height: 250.0,
              alignment: Alignment.center,
            ),
            Text(
              'Registre-se',
              style: TextStyle(fontSize: 24.0, fontFamily: 'Brand Bold'),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: 1.0),
                  TextField(
                    controller: firstNameController,
                    decoration: InputDecoration(
                      labelText: 'Nome',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: lastNameController,
                    decoration: InputDecoration(
                      labelText: 'Sobrenome',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
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
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: confirmPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Confirmar Senha',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 18.0),
                  SizedBox(
                    width: 200.0,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      onPressed: register,
                      child: Text('Registrar'),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.login);
              },
              child: Text("Já tem uma conta? Entre aqui!"),
            ),
          ],
        ),
      ),
    );
  }
}
