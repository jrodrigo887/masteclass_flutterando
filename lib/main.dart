import 'package:exercicio1_masteclass/pages/tinder_mock.dart';
import 'package:exercicio1_masteclass/pages/your_money_mock.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone App',
      theme: ThemeData(
          primaryColor: Colors.white, applyElevationOverlayColor: false),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const AppMock(),
        '/tinder': (_) => const TinderMock(),
        '/money': (_) => const YourMoneyMock()
      },
    );
  }
}

class AppMock extends StatelessWidget {
  const AppMock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/tinder');
            },
            child: const Text('App Tinder'),
          ),
          const SizedBox(
            height: 16.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/money');
            },
            child: const Text('App Get Money'),
          ),
        ],
      ),
    ));
  }
}
