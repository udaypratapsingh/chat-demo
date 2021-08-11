import 'dart:async';

abstract class Bloc<T> {
  T _t;
  final _streamController = StreamController<T>.broadcast();
  Stream<T> get stream => _streamController.stream;
  T get state => _t;

  void emit(T data) {
    _t = data;
    _streamController.sink.add(data);
  }

  void dispose() {
    _streamController.close();
  }

  void emitWithNoStateUpdate(T data) {
    _streamController.sink.add(data);
  }
}
