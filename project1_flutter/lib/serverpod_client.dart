import 'package:injectable/injectable.dart';
import 'package:project1_client/project1_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

@module
abstract class Project1ClientModule {
  Client get client => Client('http://$localhost:8080/')
    ..connectivityMonitor = FlutterConnectivityMonitor();
}