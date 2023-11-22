import 'dart:async';

void main(List<String> args) {
  final numberGenerator = NumberGenerator();

  StreamSubscription sub1 = numberGenerator.stream.listen((event) {
    print('Sub1: $event');
  });

  late StreamSubscription sub2;

  // menjalankan stream kedua setelah 5 detik
  Future.delayed(Duration(seconds: 5), () {
    sub2 = numberGenerator.stream.listen((event) {
      print('Sub2: ${event * event}');
    });
  });

  Future.delayed(Duration(seconds: 10), () {
    sub1.cancel();
    sub2.cancel();
  });
}

class NumberGenerator {
  int _counter = 0;

  // tambahkan .broadcast() untuk membuat stream bisa di listen lebih dari 1
  StreamController<int> _controller = StreamController<int>.broadcast();

  Stream<int> get stream => _controller.stream;

  NumberGenerator() {
    final Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
      // sends an event to the stream every second
      _controller.add(_counter);
      // _controller.add(0);
      // tambahkan disini untuk code yang akan di kerjakan oleh stream
      _counter++;
    });

    Future.delayed(Duration(seconds: 10), () {
      // close the stream after 10 seconds
      timer.cancel();
      _controller.close();
    });
  }
}
