import 'dart:async';

void main() {
  //Normalerweise kann man nur einen listener pro Stream einbauen
  NumberGenerator numberGenerator = NumberGenerator();

  StreamSubscription sub1 = numberGenerator.getStream.listen((counter) {
    print(counter);
  }, onError: (error) {
    // Was passiert bei einem Error
    //handleError
    print("error");
  }, onDone: () {
    // Was passiert wenn Stream geschlossen/closed wird
    print('done');
  }, cancelOnError: false); //Stream läuft weiter nach error if false

  //Mit Broadcaststream lassen sich zugleich mehrere listener pro Stream einbauen
  Stream numberStream = NumberGenerator().getStream.asBroadcastStream();

  StreamSubscription sub2 = numberStream.listen((event) {
    print(event);
  });

  StreamSubscription sub3 = numberStream.listen((event) {
    print("sub3 : " + event.toString());
  });

  //Pause stream
  sub1.pause();
  //Resume stream
  sub1.resume();
  //Cancel/Close stream
  sub2.cancel();
}

class NumberGenerator {
  int _counter = 0;

  //initialize Stream(controller)
  StreamController<int> _controller = StreamController<int>();

  //getter
  Stream<int> get getStream => _controller.stream;

  //default constructor
  NumberGenerator() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _controller.sink.add(_counter);
      _counter++;
    });
  }
}


//Abstract Infos
//Um einen Stream zu manipulieren brauchst du einen controller
//Mit .sink.add kannst du Werte hinzufügen
//Um auf einen Stream zu hören, musst du eine Subscription erstellen
// Mit .listen kannst du auf einen Stream hören und für jedes event Code ausführen