/// Define routes for the app.

import 'package:conduit_flutter/routes/home/home.dart';
import 'package:conduit_flutter/routes/settings/settings.dart';
import 'package:flutter/material.dart';

/// Base app route of all routes.
abstract class AppRoute {}

class LoginRoute extends AppRoute {}

class RegisterRoute extends AppRoute {}

class EditorRoute extends AppRoute {
  final String slug;

  EditorRoute(this.slug);
}

class EditorCreateRoute extends AppRoute {}

class ArticleRoute extends AppRoute {
  final String slug;

  ArticleRoute(this.slug);
}

class SettingsRoute extends AppRoute {}

class ProfileFavoritesRoute extends AppRoute {
  final String username;

  ProfileFavoritesRoute(this.username);
}

class ProfileRoute extends AppRoute {
  final String username;

  ProfileRoute(this.username);
}

class HomeRoute extends AppRoute {}

/// Converts location strings to [AppRoute], and vice-versa.
class AppRouteInformationParser extends RouteInformationParser<AppRoute> {
  @override
  // Take a url location, and create an [AppRoute] from it.
  Future<AppRoute> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '/');

    if (uri == '/settings') {
      return SettingsRoute();
    }

    return HomeRoute();
  }

  @override
  // Convert an [AppRoute] into a string location.
  RouteInformation? restoreRouteInformation(AppRoute configuration) {
    if (configuration is HomeRoute) {
      return RouteInformation(location: '/');
    }

    if (configuration is SettingsRoute) {
      return RouteInformation(location: '/settings');
    }

    return null;
  }
}

/// Configure the routes.
class AppRouterDelegate extends RouterDelegate<AppRoute>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRoute> {
  final GlobalKey<NavigatorState> navigatorKey;

  AppRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  AppRoute? get currentConfiguration {
    return HomeRoute();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(
            key: ValueKey('HomePage'), child: HomePage(title: 'conduit')),
        MaterialPage(key: ValueKey('SettingsPage'), child: SettingsPage()),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }

        notifyListeners();

        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(AppRoute configuration) async {}
}
