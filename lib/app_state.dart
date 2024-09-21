import 'package:flutter/material.dart';
import '/backend/sqlite/sqlite_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _isDatabaseInitialized = false;
  bool get isDatabaseInitialized => _isDatabaseInitialized;
  set isDatabaseInitialized(bool value) {
    _isDatabaseInitialized = value;
  }

  String _mainSearch = '';
  String get mainSearch => _mainSearch;
  set mainSearch(String value) {
    _mainSearch = value;
  }
}
