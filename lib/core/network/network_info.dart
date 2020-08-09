import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';

abstract class CNetworkInfo {
  Future<bool> get isConnected;
}

@LazySingleton(as: CNetworkInfo)
class NetworkInfo implements CNetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfo(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
