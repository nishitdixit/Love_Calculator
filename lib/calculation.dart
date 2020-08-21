


void main() {
  String firstName ;

  String secondName ;

  // Calculation(this.firstName,this.secondName);

  int finalScore;
  List<String> firstList = firstName.toLowerCase().split('');
  List<String> secondList = secondName.toLowerCase().split('');

//making complete word "firstName + loves + second name"
  List<String> magicWord = firstList + "loves".split('') + secondList;

//Counting occurence of letters and storing them into map
  var nameMap = new Map();
  magicWord.forEach((f) {
    nameMap.containsKey(f) ? nameMap[f]++ : nameMap[f] = 1;
  });

  print(nameMap.values);
// adding all occurances to list
  List magicCode = nameMap.values.toList();

  print(magicCode);
  List score;
//repeating calculation until we get magicCode.length of 2
  while (magicCode.length > 2) {
    score = _calculate(magicCode);
    magicCode = score;
    print(score);
  }
//   print(magicCode);
  finalScore = magicCode[0] * 10 + magicCode[1];
  print(finalScore);
}

//calculation in loop
List _calculate(List magicCode) {
  int i = 0;
  List score = new List();
  do {
    score.add(magicCode.first + magicCode.last);
    magicCode.removeLast();
    magicCode.removeAt(0);
    i++;
//     print(i);
  } while (magicCode.length >= 2);

  return score;
}
