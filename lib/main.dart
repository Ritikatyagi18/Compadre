import 'package:compadre_app/services/locator.dart';
import 'package:compadre_app/services/navigation_service.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}
//final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
class MyApp extends StatelessWidget{
  const MyApp({Key?key}): super(key: key);
  @override
  Widget build(BuildContext contect){
    return MaterialApp(

      //home: InitialPage(),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: (routeSettings) {
        switch (routeSettings.name) {
          case 'info':
            return MaterialPageRoute(builder: (context) => Information());
          case 'tasks':
            return MaterialPageRoute(builder: (context) => Tasks());
          case 'swot':
            return MaterialPageRoute(builder: (context) => Swot());

          default:
            return MaterialPageRoute(builder: (context) => InitialPage());
        }
      },
      home: InitialPage(),
    )
  }

  );

}

/*
Widget build(BuildContext contect){

    return MaterialApp(
      //home: InitialPage(),
        navigatorKey: locator<NavigationService>().navigatorKey,
        onGenerateRoute: (routeSettings) {
          switch (routeSettings.name) {
            case 'info':
              return MaterialPageRoute(builder: (context) => Information());
            case 'tasks':
              return MaterialPageRoute(builder: (context) => Tasks());
            case 'swot':
              return MaterialPageRoute(builder: (context) => Swot());

            default:
              return MaterialPageRoute(builder: (context) => InitialPage());
          }
        },
        home: InitialPage(),

    );
  }
 */