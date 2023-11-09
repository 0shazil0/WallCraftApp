import 'package:flutter/material.dart';
import '/backend/backend.dart';
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

  List<String> _Images = [];
  List<String> get Images => _Images;
  set Images(List<String> _value) {
    _Images = _value;
  }

  void addToImages(String _value) {
    _Images.add(_value);
  }

  void removeFromImages(String _value) {
    _Images.remove(_value);
  }

  void removeAtIndexFromImages(int _index) {
    _Images.removeAt(_index);
  }

  void updateImagesAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _Images[_index] = updateFn(_Images[_index]);
  }

  void insertAtIndexInImages(int _index, String _value) {
    _Images.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
