final List<String> listA = [
  "Muklah",
  "Diyar",
  "Noorhan",
  "Ali",
  "Abdulbasit",
  "Dena",
  "Saba",
  "Fadi",
  "Karrar",
  "Ahmed"
];

final List<String> listB = [
  "Diyar",
  "Noorhan",
  "Muklah",
  "Saba",
  "Mustafa",
  "Ahmed",
  "Fadi",
  "Dena",
  "Hassan",
  "Ali",
];

main() {
  var commonNames = listA.toSet().intersection(listB.toSet());
  print("common names: ${commonNames}");

  commonNames.retainWhere((name) => name.contains('m'));
  print("common names containing 'm': ${commonNames}");
}
