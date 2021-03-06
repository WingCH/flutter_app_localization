import 'package:flutter/material.dart';
import 'generated/l10n.dart';

/*'
教學: https://plugins.jetbrains.com/plugin/13666-flutter-intl
唔知點解會有e個error
I/flutter ( 9969): ════════
I/flutter ( 9969): Warning: This application's locale, zh_, is not supported by all of its
I/flutter ( 9969): localization delegates.
I/flutter ( 9969): > A MaterialLocalizations delegate that supports the zh_ locale was not found.
I/flutter ( 9969): See https://flutter.dev/tutorials/internationalization/ for more
I/flutter ( 9969): information about configuring an app's locale, supportedLocales,
I/flutter ( 9969): and localizationsDelegates parameters.
I/flutter ( 9969): ════════
 */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [S.delegate],
      supportedLocales: S.delegate.supportedLocales,
//      locale: Locale('zh', ''),
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Test(),
    );
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () => null,
              child: Text(
                S.of(context).pageHomeConfirm,
              ),
            ),
            Text(S.of(context).localeName),
            Text(S.of(context).pageHomeWelcome("John")),
            Text(S.of(context).pageHomeWelcomeGender("male")),
            Text(S.of(context).pageNotificationsCount(5)),
          ],
        ),
      ),
    );
  }
}
