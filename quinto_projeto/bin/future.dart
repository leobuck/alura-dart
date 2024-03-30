void main() {
  Future myFuture = Future(() {
    print('Going back to the Future');
    return 21;
  }).then((value) => print('The value is $value'));

  print('Done with main');
}
