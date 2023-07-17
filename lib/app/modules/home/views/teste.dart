import 'package:flutter/material.dart';
import 'package:tonarede/graphql/graphql.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          const Text("USER"),
          Query_getMe_Widget(
            builder: (result, {fetchMore, refetch}) {
              if (result.isLoading) {
                return Container(
                  alignment: Alignment.center,
                  child: const FractionallySizedBox(
                    widthFactor: 0.2,
                    child: CircularProgressIndicator(),
                  ),
                );
              }

              final user = result.parsedData?.userMe;
              return ListTile(
                leading: Image.network(user?.avatar ?? ''),
                title: Text(user?.username ?? ''),
                subtitle: Text('${user?.fullName} <${user?.email}>'),
              );
            },
          ),
          //
          const Text("RELATOS"),
          Query_listFeed_Widget(
            builder: (result, {fetchMore, refetch}) {
              if (result.isLoading) {
                return Container(
                  alignment: Alignment.center,
                  child: const FractionallySizedBox(
                    widthFactor: 0.2,
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              final list =
                  result.parsedData?.reportsFeed.edges.map((e) => e.node) ?? [];

              if (list.isEmpty) {
                return const Text('No reports found.');
              }

              return Column(
                children: [
                  ...list.map((report) {
                    return Card(
                      elevation: 10,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        leading:
                            Image.network(report.image?.paths[0].url ?? ''),
                        title: Text(report.title),
                        subtitle: Text(report.message ?? ''),
                      ),
                    );
                  }),
                ],
              );
            },
          ),
        ],
      ),
    ));
  }
}
