import 'package:astro/app/modules/auth/bindings/auth_binding.dart';
import 'package:astro/core/theme.dart';
import 'package:astro/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

final ValueNotifier<bool> isLoading = ValueNotifier(false);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Roboto", "Yatra One");

    MaterialTheme theme = MaterialTheme(textTheme);
    return GetMaterialApp(
      title: "Astro",
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      initialRoute: FirebaseAuth.instance.currentUser != null
          ? Routes.HOME
          : AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: AuthBinding(),
      builder: (context, child) => ValueListenableBuilder(
        valueListenable: isLoading,
        builder: (context, value, child) => Stack(
          fit: StackFit.expand,
          children: [
            child!,
            if (value)
              const ColoredBox(
                color: Colors.black26,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          ],
        ),
        child: child!,
      ),
    );
  }
}
