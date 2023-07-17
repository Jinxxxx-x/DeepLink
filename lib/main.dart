import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'app/routes/app_pages.dart';

void main() {
  final HttpLink httpLink = HttpLink(
    'https://tonarede.souv.dev/graphql',
  );

  final AuthLink authLink = AuthLink(
    getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
  );

  final Link link = authLink.concat(httpLink);

  final client = ValueNotifier(
    GraphQLClient(
        link: link,
        // The default store is the InMemoryStore, which does NOT persist to disk
        cache: GraphQLCache() //(store: HiveStore()),
        ),
  );
  runApp(
    GraphQLProvider(
      client: client,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "ToNaRede",
        initialRoute: AppPages.initial,
        getPages: AppPages.routes,
      ),
    ),
  );
}
