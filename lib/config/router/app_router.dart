
import 'package:cinemapedia/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

//uso de go_router, se configura lo necesario para su uso. 
//además de instalarlo en el puspect

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