import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
GetIt configInjection(String env) => $initGetIt(getIt, environment: env);

@module
abstract class ThirdPartyModule {
  @lazySingleton
  DataConnectionChecker get dataConnectionChecker => DataConnectionChecker();

  @lazySingleton
  http.Client get httpClient => http.Client();
}
