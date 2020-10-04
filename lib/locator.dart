import 'package:get_it/get_it.dart';
import 'package:tour_mesh/core/services/authentication_service.dart';
import 'package:tour_mesh/core/services/navigation_service.dart';

import 'core/model/login_model.dart';

GetIt locator = GetIt.I;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => AuthenticationService());

  locator.registerFactory(() => LoginModel());
}
