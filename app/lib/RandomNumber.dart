

import 'dart:math';


class RandomeNumber {
  RandomeNumber._privateConstructor();
  static final RandomeNumber _instance = RandomeNumber._privateConstructor();
  final MAX_RANDOM_VALUE = 200000;

  final random = new Random();
  static RandomeNumber get instance {
    return _instance;
  }

  generateNumber(){
    return random.nextInt(MAX_RANDOM_VALUE);
  }

  generateNumderInRange(int range){
    return  random.nextInt(range -1);
  }
}
