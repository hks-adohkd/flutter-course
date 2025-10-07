import 'dart:isolate';

// ***** 1. Futures *****
void introduceFutures() {
  print('Fetching data...');
  Future<String> fetchData() {
    return Future.delayed(Duration(seconds: 2), () => 'Data received!');
  }

  fetchData()
      .then((data) {
        print(data);
      })
      .catchError((error) {
        print('Error: $error');
      });
  print('Request sent.');
}

// ***** 2. Async/Await *****
Future<String> fetchUser() async {
  print('Getting user info...');
  await Future.delayed(Duration(seconds: 2));
  return 'User: Alice';
}

void introduceAsyncAwait() async {
  print('Start');
  String user = await fetchUser();
  print(user);
  print('End');
}

// ***** 3. Streams *****
void introduceStreams() {
  Stream<int> countStream() async* {
    for (int i = 1; i <= 5; i++) {
      await Future.delayed(Duration(seconds: 1));
      yield i;
    }
  }

  countStream().listen(
    (data) => print('Received: $data'),
    onDone: () => print('Stream closed.'),
  );
}

// ***** 5. Isolates *****
void heavyComputation(SendPort sendPort) {
  int sum = 0;
  for (int i = 0; i < 100000000; i++) {
    sum += i;
  }
  sendPort.send(sum);
}

void introduceIsolates() async {
  ReceivePort receivePort = ReceivePort();
  await Isolate.spawn(heavyComputation, receivePort.sendPort);
  print('Waiting for result...');
  int result = await receivePort.first;
  print('Sum from isolate: $result');
}
