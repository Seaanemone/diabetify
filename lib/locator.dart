import 'package:get_it/get_it.dart';
import 'package:diabetify1/services.dart';


GetIt locator = GetIt.instance;
void setupLocator(){
  locator.registerLazySingleton(() => AnalyticsService());
}