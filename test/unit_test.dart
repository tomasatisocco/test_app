import 'package:flutter_test/flutter_test.dart';
import 'package:testing_app/counter.dart';

void main(){
  group('Testing counter', (){
    test('Testin the increment counter', (){
    //setup
    Counter counter = Counter(value: 5);
    //do
    counter.incrementCounter();
    //test 
    expect(counter.value, 6);
  });

  test('Testing the decrement counter', (){
    Counter counter = Counter(value: 4);

    counter.decrementCounter();

    expect(counter.value, 3);
  });
  });
} 