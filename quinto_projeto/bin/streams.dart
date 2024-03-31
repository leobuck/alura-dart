import 'dart:async';

void main() {
  Stream myStream(int interval, [int? maxCount]) async* {
    int i = 1;
    while (i != maxCount) {
      print('Counting: $i');
      Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print('The Stream is finished');
  }

  StreamSubscription mySubscriber = myStream(1, 10).listen(
    (event) {
      if (event.isEven) {
        print('This number is Even!');
      }
    },
    onError: (e) {
      print('An error happend: $e');
    },
    onDone: () {
      print('The subscriber is gone.');
    },
  );

  print('Main is finished');
}
