import 'package:flutter/material.dart';
import '../../view/landing_screen/view/landing_page.dart';
import '../../view/records_page/view/one_course_page.dart';
import '../../view/records_page/view/two_courses_page.dart';
import '../../view/search_page/view/search_page.dart';
import '../../view/video_preview_page/view/video_preview_page.dart';
import '../../view/login_page/view/login_page.dart';

class PageRouter {
  static const String landingPage = '/';
  static const String loginPage = '/login';
  static const String oneCoursePage = '/oneCourse';
  static const String twoCoursesPage = '/twoCourses';
  static const String searchPage = '/search';
  static const String videoPreviewPage = '/videoPreview';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case landingPage:
        return MaterialPageRoute(builder: (context) => LandingPage());
      case loginPage:
        return MaterialPageRoute(builder: (context) => LoginPage());
      case oneCoursePage:
        return MaterialPageRoute(builder: (context) => OneCoursePage());
      case twoCoursesPage:
        return MaterialPageRoute(builder: (context) => TwoCoursesPage());
      case searchPage:
        return MaterialPageRoute(builder: (context) => SearchPage());
      case videoPreviewPage:
        return MaterialPageRoute(builder: (context) => VideoPreviewPage());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
