// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tonarede/graphql/graphql.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
              final list =
                  result.parsedData?.reportsFeed.edges.map((e) => e.node) ?? [];

              if (list.isEmpty) {
                return const Text('No reports found.');
              }

              return Column(
                children: [
                  ...list.map(
                    (report) {
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
                                  SizedBox(width: 8.0),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Nome',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Horario da Postagem',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                constraints: BoxConstraints(maxWidth: 300.0),
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
                                    style: TextStyle(color: Colors.blueGrey),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    //compartilhar
                                  },
                                  child: Text(
                                    'Compartilhar',
                                    style: TextStyle(color: Colors.blueGrey),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
