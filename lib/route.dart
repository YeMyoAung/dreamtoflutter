import 'package:dreamtoflutter_widget/screen/screen_1.dart';
import 'package:dreamtoflutter_widget/screen/screen_4.dart';
import 'package:flutter/material.dart';

class AnonymousRouteExample extends StatelessWidget {
  const AnonymousRouteExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreenOne(),
    );
  }
}

class NameRouteExample extends StatelessWidget {
  const NameRouteExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/screen1': (a) => const ScreenOne(),
        '/screen2': (a) => const ScreenOne(),
        '/screen3': (a) => const ScreenOne(),
        '/screen4': (a) => const ScreenOne(),
      },
      initialRoute: '/screen1',
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (_) => const ScreenOne());
      },
    );
  }
}

extension fjkdasl on String {
  route(context) => Navigator.pushNamed(context, this);
}

// void a() {
//   ''.route();
// }

Route _go(Widget widget) => MaterialPageRoute(builder: (_) => widget);

bool _pointChecker(dynamic arguments) => arguments != null && arguments > 8;

class GeneratedRouteExample extends StatelessWidget {
  const GeneratedRouteExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        settings.arguments;

        ///check
        switch (settings.name) {
          case '/screen1':
            return _go(const ScreenOne());
          case '/scrren2':
            return _pointChecker(settings.arguments)
                ? _go(const ScreenOne())
                : _go(const Screen4());

          default:

          ///Unknown
        }
        return null;
      },
      // initialRoute: '/screens',
      onGenerateInitialRoutes: (initialRoute) {
        return [
          MaterialPageRoute(builder: (_) {
            return const ScreenOne();
          })
        ];
      },
    );
  }
}
