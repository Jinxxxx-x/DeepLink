// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:tonarede/graphql/graphql.dart';
import 'package:get/get.dart';
import '../../controllers/perfil_controller.dart';

class PerfilView extends StatelessWidget {
  const PerfilView({Key? key});

  @override
  Widget build(BuildContext context) {
    final PerfilController perfilController = Get.find();
    final String userEmail = perfilController.userEmail;
    final String userName = perfilController.userName;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 92, 97, 69),
        title: const Text('Perfil'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              color: Colors.grey[300],
              child: Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/semperfil.jpg'),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                '$userName',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                '$userEmail',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ),
            const SizedBox(height: 16),
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                const SizedBox(height: 18.0),
                Query_listFeed_Widget(
                  builder: (result, {fetchMore, refetch}) {
                    if (result.isLoading) {
                      return Container(
                        alignment: Alignment.center,
                        child: const CircularProgressIndicator(),
                      );
                    }
                    final list = result.parsedData?.reportsFeed.edges
                            .map((e) => e.node) ??
                        [];

                    if (list.isEmpty) {
                      return const Text('No reports found.');
                    }

                    return Column(
                      children: [
                        ...list.map((report) {
                          return Card(
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'images/semperfil.jpg',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Container(
                                    constraints:
                                        BoxConstraints(maxWidth: 300.0),
                                    child: Text(
                                      report.title,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(report.message ?? ''),
                                ),
                                Image.network(
                                  report.image?.paths[0].url ?? '',
                                ),
                                ButtonBar(
                                  alignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        //curti
                                      },
                                      child: Text(
                                        'Gostei',
                                        style:
                                            TextStyle(color: Colors.blueGrey),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        //compartilhar
                                      },
                                      child: Text(
                                        'Compartilhar',
                                        style:
                                            TextStyle(color: Colors.blueGrey),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                      ],
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
