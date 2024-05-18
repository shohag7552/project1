import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:project1_client/project1_client.dart';
import 'package:project1_flutter/counter/view/counter_page.dart';
import 'package:project1_flutter/l10n/l10n.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  void initState() {
    super.initState();

    final client = GetIt.I<Client>();
    client.example.hello('world').then((value) {
      print('===============>>>>. $value');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CounterPage(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

