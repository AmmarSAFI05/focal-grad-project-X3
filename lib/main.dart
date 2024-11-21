import 'package:flutter/material.dart';
import '../view/landing_screen/view/landing_page.dart';
import '../core/constant/app_sizes.dart';
import 'core/constant/app_page_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    AppSize.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale("ar"),
      title: 'Flutter Demo',
      initialRoute: PageRouter.landingPage,
      onGenerateRoute: PageRouter.generateRoute,
      theme: ThemeData(
        fontFamily: 'Tajawal',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      home: const LandingPage(),
    );
  }
}