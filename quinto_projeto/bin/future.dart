void main() {
  Future myFuture = Future(() {
    print('Going back to the Future');
    return 21;
  }).then((value) => print('The value is $value'));

  Future<int> myFutureFunc() async {
    print('I have a function in the Future');
    await Future.delayed(Duration(seconds: 5));
    return 12;
  }

  myFutureFunc().then((value) => print('My function value is: $value'));

  print('Done with main');
}
