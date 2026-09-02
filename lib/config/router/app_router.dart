
import 'package:cinemapedia/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

//uso de go_router

final appRrouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen().name,
      builder: (context, state) => HomeScreen(),
    
    ),



  ]
);